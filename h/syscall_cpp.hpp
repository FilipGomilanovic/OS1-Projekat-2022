//
// Created by os on 9/14/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
#define PROJECT_BASE_V1_1_SYSCALL_CPP_HPP

#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.h"
//void* ::operator new (size_t);
//void ::operator delete (void*);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
    static void threadWrapper(void *);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
};

class Semaphore {
public:
    explicit Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
protected:
    explicit PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    void run() override {
        while(true){
            periodicActivation();
            time_sleep(period);
        }
    }
private:
    time_t period;
};
class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif
#endif //PROJECT_BASE_V1_1_SYSCALL_CPP_HPP
