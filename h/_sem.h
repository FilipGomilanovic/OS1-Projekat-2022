//
// Created by os on 9/7/22.
//

#ifndef PROJECT_BASE_V1_1__SEM_H
#define PROJECT_BASE_V1_1__SEM_H

#include "tcb.hpp"

class _sem
{
public:
    explicit _sem (int initValue=0) : closed(false), val(initValue) {
    }

    void operator delete(void *ptr) {
        printString("Pozove se ovaj i ne uradi nista\n");
        printString("NIJE ZAVRSENO");
    }

    ~_sem ();
    int wait ();
    int signal ();
    int close ();
    int value () const { return val; };

    static _sem *createSemaphore(_sem** handle, unsigned init);
protected:
    void block ();
    void deblock ();
    bool closed;
    int val;
    int properlyClosed = 0;
    int NumOfBlockedThreads = 0;
private:
    List<TCB> blocked;
};

#endif //PROJECT_BASE_V1_1__SEM_H
