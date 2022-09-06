//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];
    printString("Adresa koja je u threads[0] (handle) :   ");
    printInteger((uint64)&(*(threads[0])));
    printString("\n");

    thread_create(&threads[1], workerBodyA, nullptr);
    printString("Adresa koja je u threads[1] (handle) :   ");
    printInteger((uint64)&(*(threads[1])));
    printString("\n");
    printString("ThreadA created\n");

    thread_create(&threads[2], workerBodyB, nullptr);
    printString("Adresa koja je u threads[2] (handle) :   ");
    printInteger((uint64)&(*(threads[2])));
    printString("\n");
    printString("ThreadB created\n");

    thread_create(&threads[3], workerBodyC, nullptr);
    printString("Adresa koja je u threads[3] (handle) :   ");
    printInteger((uint64)&(*(threads[3])));
    printString("\n");
    printString("ThreadC created\n");

    thread_create(&threads[4], workerBodyD, nullptr);
    printString("Adresa koja je u threads[4] (handle) :   ");
    printInteger((uint64)&(*(threads[4])));
    printString("\n");
    printString("ThreadD created\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    printString("Finished\n");

    return 0;





}
