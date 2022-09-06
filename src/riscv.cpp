//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/codes.h"
#include "../h/syscall_c.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
//         interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 code;
        __asm__ volatile("ld t1, 8*10(fp)");
        __asm__ volatile("mv %0, t1" : "=r" (code));

        if (code == MemAlloc) {

        }
        else if (code == MemFree) {

        }
        else if (code == ThreadCreate){
            TCB::Body start_routine;
            void* args = nullptr;
            uint64 *stack;
            thread_t* handle;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (handle));

            __asm__ volatile("ld t1, 8*12(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));

            __asm__ volatile("ld t1, 8*13(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (args));

            __asm__ volatile("ld t1, 8*14(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (stack));



//            printString("Code = ");
//            printInteger(code);
//            printString("\n");
//
//            printString("stack = ");
//            printInteger(*stack);
//            printString("\n");

            TCB::createThread(handle, start_routine, args, stack);
//            if (handle != nullptr){
//                printInteger(handle);
//            }

        }
        else if (code == ThreadExit){

        }
        else if (code == ThreadDispatch){

        }
        else if (code == SemOpen){

        }
        else if (code == SemClose){

        }
        else if (code == SemWait){

        }
        else if (code == SemSignal){

        }
        else if (code == TimeSleep){

        }
        else if (code == GetC){

        }
        else if (code == PutC){

        }
        else {
            uint64 volatile sepc = r_sepc() + 4;
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        // unexpected trap cause
    }
}