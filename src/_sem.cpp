#include "../h/_sem.hpp"
#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

int _sem::wait() {
    val--;
    if (val<0){
        block();
    }
    if (!closed)
        return 0;
    else {                              //Ako je semafor zatvoren NE VRACA -1 UVEK!
        if (NumOfBlockedThreads == 0)   // Ako je broj blokiranih niti 0 to znaci da se nit prvo oslobodila sa signal
            return 0;                   // pa je tek onda zatvoren semafor (sto je regularno).
        else {
            NumOfBlockedThreads--;
            return -1;
        }
    }
}

int _sem::signal() {
    if (closed) {
        return -1;
    }
    val++;
    if (val<=0) {
        deblock();
    }
    return 0;
}

int _sem::close() {
    if (closed)
        return -1;
    closed = true;
    if (blocked.peekFirst() != nullptr) {
        while (blocked.peekFirst()) {
            blocked.peekFirst()->setBlocked(false);
            Scheduler::put(blocked.peekFirst());
            blocked.removeFirst();
        }
    }
    Riscv::listOfClosedSemaphores->addLast(this);
    return 0;
}

void _sem::block() {
    NumOfBlockedThreads++;
    TCB::running->setBlocked(true);
    blocked.addLast(TCB::running);
    thread_dispatch();
}

void _sem::deblock() {
    NumOfBlockedThreads--;
    TCB* temp = blocked.removeFirst();
    temp->setBlocked(false);
    Scheduler::put(temp);
}

_sem *_sem::createSemaphore(_sem **handle, unsigned int init) {
    *handle = new _sem(init);
    return *handle;
}

_sem::~_sem(){
    close();
}



