//
// Created by os on 9/7/22.
//

#ifndef PROJECT_BASE_V1_1__SEM_H
#define PROJECT_BASE_V1_1__SEM_H

#include "tcb.hpp"

class _sem
{
public:
    explicit _sem (int initValue=1) : val(initValue) {}
    void wait ();
    void signal ();
    int value () const { return val; };

    static _sem *createSemaphore(_sem** handle, unsigned init);
protected:
    void block ();
    void deblock ();
    int val;
private:
    List<TCB> blocked;
};

#endif //PROJECT_BASE_V1_1__SEM_H
