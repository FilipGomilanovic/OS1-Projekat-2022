//
// Created by os on 9/7/22.
//
#include "../h/_sem.h"
#include "../lib/mem.h"

int _sem::wait() {
    val--;
    if (val<0){
//        printString("Nit ");
//        printInteger(TCB::running->getId());
//        printString(" blokirana\n");
        block();
    }
    if (!closed)    //Ako semafor nije zatvoren
        return 0;
    else {          //Ako je semafor zatvoren NE VRACA -1 UVEK! Ako je broj blokiranih niti 0 to znaci da se nit prvo
                    //oslobodila sa signal pa je onda dealociran semafor(sto je regularno)
        if (NumOfBlockedThreads == 0)
            return 0;
        else {
            NumOfBlockedThreads--;
            return -1;
        }
    }
}

int _sem::signal() {
    val++;
    if (val<=0) {
        deblock();
    }
    return 0;
}

int _sem::close() {
    if (closed)
        return -1;
    if (blocked.peekFirst() != nullptr) {
        while (blocked.peekFirst()) {
            blocked.peekFirst()->setBlocked(false);
            Scheduler::put(blocked.peekFirst());
            blocked.removeFirst();
        }
    }
    closed = true;
    return 0;
}

void _sem::block() {
    NumOfBlockedThreads++;
    TCB::running->setBlocked(true);
    blocked.addLast(TCB::running);
    TCB::dispatch();
}

void _sem::deblock() {
    NumOfBlockedThreads--;
    TCB* temp = blocked.removeFirst();
    temp->setBlocked(false);
//    printString("Nit ");
//    printInteger(temp->getId());
//    printString(" odblokirana\n");

    Scheduler::put(temp);

}

_sem *_sem::createSemaphore(_sem **handle, unsigned int init) {
    *handle = new _sem(init);
    return *handle;
}

_sem::~_sem() {
    int ret = close();
    if (ret == -2){

    }
}


