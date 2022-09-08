//
// Created by os on 9/7/22.
//
#include "../h/_sem.h"
#include "../lib/mem.h"

void _sem::wait() {
    val--;
    if (val<0){
        printString("Nit ");
        printInteger(TCB::running->getId());
        printString(" blokirana\n");
        block();
    }
}

void _sem::signal() {
    val++;
    if (val<=0) {
        deblock();
    }
}

void _sem::block() {
    TCB::running->setBlocked(true);
    blocked.addLast(TCB::running);
}

void _sem::deblock() {
    TCB* temp = blocked.removeFirst();
    temp->setBlocked(false);
    printString("Nit ");
    printInteger(temp->getId());
    printString(" odblokirana\n");

    Scheduler::put(temp);

}

_sem *_sem::createSemaphore(_sem **handle, unsigned int init) {
    *handle = new _sem(init);
    return *handle;
}


