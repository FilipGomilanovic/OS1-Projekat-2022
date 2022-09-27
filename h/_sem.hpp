#ifndef PROJECT_BASE_V1_1__SEM_HPP
#define PROJECT_BASE_V1_1__SEM_HPP
#include "list.hpp"

class TCB;

class _sem
{
public:
    explicit _sem (int initValue=0) : closed(false), val(initValue) {}
    ~_sem();
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
    int NumOfBlockedThreads = 0;
private:
    List<TCB> blocked;
};

#endif //PROJECT_BASE_V1_1__SEM_HPP
