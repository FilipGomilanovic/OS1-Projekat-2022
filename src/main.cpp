//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"


bool finishedTastatura = false;
_sem* sem;
extern void userMain();

void TastaturaWorker(void* arg) {
    for (uint64 i = 0; i < 16; i++) {

        printString2("Tastatura: i="); printInteger(i); printString2("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    int count = Riscv::getCBuffer->getCount();
    while (count >= 0){
        --count;
        char x = getc();
        putc(x);
    }
    printString2("\nTastatura finished!\n");
    finishedTastatura = true;

}

void tastaturaTest(){
    thread_t Tastatura;
    thread_create(&Tastatura, TastaturaWorker, nullptr);
    printString2("Tastatura created\n");

    while (!finishedTastatura) {
        thread_dispatch();
    }
}

void userMain2() {
//    producerConsumer_C_API();
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    testSleeping();       // ThreadSleeping test
    tastaturaTest();
}

void user_wrapper(void *sem)
{
    printString2("userMain() started\n");
    userMain();
    printString2("userMain() finished\n");
    sem_signal((sem_t)sem);
}

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    Riscv::putCBuffer = new Buffer();
    Riscv::getCBuffer = new Buffer();
    TCB* outputThread;
    thread_create(&outputThread, &TCB::outputThreadBody, nullptr);

    TCB* main;
    thread_create(&main, nullptr, nullptr);
    TCB::running = main;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    userMain2();
//    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

//    sem_t user_sem;
//    sem_open(&user_sem, 0);

//    thread_t user;
//    thread_create(&user, user_wrapper, user_sem);

    // čekanje korisnika

//    sem_wait(user_sem);
    printString2("Finished\n");
    return 0;

}
