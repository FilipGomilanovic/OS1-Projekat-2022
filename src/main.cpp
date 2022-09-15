//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/print.hpp"

//void TastaturaWorker(void* arg) {
//    for (uint64 i = 0; i < 16; i++) {
//
//        printString2("Tastatura: i="); printInteger(i); printString2("\n");
//        for (uint64 j = 0; j < 10000; j++) {
//            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
//            thread_dispatch();
//        }
//    }
//    int count = Riscv::getCBuffer->getCount();
//    while (count >= 0){
//        --count;
//        char x = getc();
//        putc(x);
//    }
//    printString2("\nTastatura finished!\n");
//    finishedTastatura = true;
//
//}
//
//void tastaturaTest(){
//    thread_t Tastatura;
//    thread_create(&Tastatura, TastaturaWorker, nullptr);
//    printString2("Tastatura created\n");
//
//    while (!finishedTastatura) {
//        thread_dispatch();
//    }
//}
//
//void userMain2() {
//    tastaturaTest();
//}


class TestPeriod: public PeriodicThread{
    void periodicActivation() override {
        for (int i = 0; i < 10; i++){
            printString2("i = ");printInteger(i);printString2("\n");

            for (int j = 0; j < 10000; j++){
                for (int k = 0; k < 3000; k++);
            }
        }
    }

public:
    TestPeriod(time_t period) : PeriodicThread(period) {}

//    Thread* t = new PeriodicThread(10);
//    printString2("Pokretanje");
//    TestPeriod* p = new TestPeriod(100);
//    p->start();
//    p = p;

};

bool finishedMain = false;
extern void userMain();
void user_wrapper(void*)
{
    putc('u'); putc('s'); putc('e'); putc('r'); putc('M'); putc('a'); putc('i'); putc('n'); putc('(');
    putc(')'); putc(' '); putc('s'); putc('t'); putc('a'); putc('r'); putc('t'); putc('e'); putc('d');
    putc('\n'); putc('\n');
    userMain();
    putc('u'); putc('s'); putc('e'); putc('r'); putc('M'); putc('a'); putc('i'); putc('n'); putc('(');
    putc(')'); putc('f'); putc('i'); putc('n'); putc('i'); putc('s'); putc('h'); putc('e'); putc('d');
    putc('\n');
    finishedMain = true;
}

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::InitMem();

    Riscv::putCBuffer = new Buffer();
    Riscv::getCBuffer = new Buffer();

    TCB* outputThread;
    thread_create(&outputThread, &TCB::outputThreadBody, nullptr);

    TCB* main;
    thread_create(&main, nullptr, nullptr);
    TCB::running = main;

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    Riscv::setMode(true);
    __asm__ volatile ("ecall");
    printString2("UserMode Started \n");

    thread_t user;
    thread_create(&user, user_wrapper, nullptr);

    while (!finishedMain) {
        thread_dispatch();
    }

    printString2("UserMode Ended\n");
    Riscv::setMode(false);
    __asm__ volatile ("ecall");
    return 0;

}
