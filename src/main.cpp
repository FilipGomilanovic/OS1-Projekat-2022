#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/print.hpp"

bool finishedMain = false;
extern void userMain();
void user_wrapper(void*)
{
    printStringForUserMode("UserMain() started.\n\n");
    userMain();
    printStringForUserMode("userMain() finished.\n");
    finishedMain = true;
}

int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::InitMem();

    Riscv::putCBuffer = new Buffer();
    Riscv::getCBuffer = new Buffer();
    Riscv::listOfClosedSemaphores = new List<_sem>;

    TCB *outputThread;
    thread_create(&outputThread, &TCB::outputThreadBody, nullptr);

    TCB *main;
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

    while (Riscv::putCBuffer->getCount() > 0) {
        thread_dispatch();
    }

    printString2("UserMode Ended\n");
    Riscv::setMode(false);
    __asm__ volatile ("ecall");

    while (Riscv::listOfClosedSemaphores->peekFirst()) {
        delete Riscv::listOfClosedSemaphores->removeFirst();
    }

    delete Riscv::listOfClosedSemaphores;
    delete user;
    delete outputThread;
    delete Riscv::putCBuffer;
    delete Riscv::getCBuffer;

    return 0;
}
