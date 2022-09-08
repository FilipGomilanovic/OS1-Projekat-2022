//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"
#include "../h/_sem.h"
#include "../h/ThreadSleep_C_API_test.hpp"

bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;
_sem* sem;


uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA2(void* arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
//        thread_exit();
    }
    printString("A finished!\n");
    finishedA = true;
}

void workerBodyB2(void* arg) {
    for (uint64 i = 0; i < 16; i++) {
        if (i == 15){
            sem_signal(sem);
        }
        if (i == 8){
            time_sleep(50);
            sem_signal(sem);
        }
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();
}

void workerBodyC2(void* arg) {
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    }
    sem_wait(sem);
    printString("C: dispatch\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1="); printInteger(t1); printString("\n");

    uint64 result = fibonacci(12);
    printString("C: fibonaci="); printInteger(result); printString("\n");
    time_sleep(100);
    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    }

    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

void workerBodyD2(void* arg) {
    uint8 i = 10;

    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
        if (i == 10) {
            sem_wait(sem);
        }
    }

    printString("D: dispatch\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(16);
    printString("D: fibonaci="); printInteger(result); printString("\n");

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    }

    printString("D finished!\n");
    finishedD = true;
    thread_dispatch();
}


void Threads_C_API_test() {
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA2, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB2, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC2, nullptr);
    printString("ThreadC created\n");

    thread_create(&threads[3], workerBodyD2, nullptr);
    printString("ThreadD created\n");

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    }

}

void userMain() {
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    testSleeping();       // ThreadSleeping test
}


int main()
{

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB* main;
    sem_open(&sem,0);

    thread_create(&main, nullptr, nullptr);
    TCB::running = main;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    userMain();


    printString("Finished\n");

    return 0;


//    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//    TCB *threads[5];
//
//    thread_create(&threads[0], nullptr, nullptr);
//    TCB::running = threads[0];
//    printString("Adresa koja je u threads[0] (handle) :   ");
//    printInteger((uint64)&(*(threads[0])));
//    printString("\n");
//
//    thread_create(&threads[1], workerBodyA, nullptr);
//    printString("Adresa koja je u threads[1] (handle) :   ");
//    printInteger((uint64)&(*(threads[1])));
//    printString("\n");
//    printString("ThreadA created\n");
//
//    thread_create(&threads[2], workerBodyB, nullptr);
//    printString("Adresa koja je u threads[2] (handle) :   ");
//    printInteger((uint64)&(*(threads[2])));
//    printString("\n");
//    printString("ThreadB created\n");
//
//    thread_create(&threads[3], workerBodyC, nullptr);
//    printString("Adresa koja je u threads[3] (handle) :   ");
//    printInteger((uint64)&(*(threads[3])));
//    printString("\n");
//    printString("ThreadC created\n");
//
//    thread_create(&threads[4], workerBodyD, nullptr);
//    printString("Adresa koja je u threads[4] (handle) :   ");
//    printInteger((uint64)&(*(threads[4])));
//    printString("\n");
//    printString("ThreadD created\n");
//
//    userMain();
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//    while (!(threads[1]->isFinished() &&
//             threads[2]->isFinished() &&
//             threads[3]->isFinished() &&
//             threads[4]->isFinished()))
//    {
//        TCB::yield();
//    }
//
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }
//    printString("Finished\n");
//
//    return 0;

}
