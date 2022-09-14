//
// Created by marko on 20.4.22..
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"


// Thread Control Block
class TCB
{
public:
    ~TCB() {
        delete[] stack;
    }

    static void outputThreadBody(void*);

    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }

    bool isSleeping() const { return sleeping; }
    void setSleeping(bool value) { sleeping = value; }

    bool isBlocked() const { return blocked; }
    void setBlocked(bool value) { blocked = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);
    static TCB *createThread(TCB** handle, Body body, void* arg, uint64* stack_space);
    static void yield();
    int getId() { return id; }

    static TCB *running;
    static int x;

private:
//    TCB(Body body, uint64 timeSlice) :
//            body(body),
//
//            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
//            context({(uint64) &threadWrapper,
//                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
//                    }),
//            timeSlice(timeSlice),
//
//            finished(false)
//    {
//        if (body != nullptr) { Scheduler::put(this); }
//    }

    TCB(Body body, uint64 timeSlice, void* arg, uint64* stack_space) :
            arg(arg),
            body(body),
            stack(body != nullptr ? stack_space : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            id(x),
            finished(false),
            sleeping(false),
            blocked(false)
    {
        if (body != nullptr) {
            Scheduler::put(this);
        }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    void* arg;
    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    int id;
    bool finished;
    bool sleeping;
    bool blocked;

    friend class Riscv;
    friend class _sem;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);
    static void dispatch();

    static uint64 timeSliceCounter;

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
