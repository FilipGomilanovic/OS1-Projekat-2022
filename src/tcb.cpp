#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

TCB *TCB::running = nullptr;
int TCB::x = 0;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(TCB** handle, Body body, void* arg, uint64* stack_space)
{
    *handle = new TCB(body, DEFAULT_TIME_SLICE, arg, stack_space);
    x++;
    return *handle;
}

void TCB::outputThreadBody(void *) {
    while(true){
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)){
            char c = Riscv::putCBuffer->getc();
            *((char*)CONSOLE_TX_DATA) = c;
        }
    }
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isSleeping() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    if (old != running) {
        TCB::contextSwitch(&old->context, &running->context);
    }
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}
