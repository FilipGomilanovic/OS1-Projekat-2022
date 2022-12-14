#include "../h/riscv.hpp"
#include "../h/codes.hpp"
#include "../h/syscall_c.h"

SleepingThreadList Riscv::sleepingThreads;
List<_sem>* Riscv::listOfClosedSemaphores;
Buffer* Riscv::putCBuffer = nullptr;
Buffer* Riscv::getCBuffer = nullptr;
Riscv::Node* Riscv::head = nullptr;
bool Riscv:: userMode = false;


void Riscv::setMode(bool value) {
    userMode = value;
}

void Riscv::popSppSpie()
{
    if (userMode) {
        mc_sstatus(Riscv::SSTATUS_SPP);
    }
    else {
        ms_sstatus(Riscv::SSTATUS_SPP);
    }
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

        if (code == MEM_ALLOC) {
            size_t brojBlokova;
             void *ret;
            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (brojBlokova));

            __asm__ volatile("ld t2, 8*12(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (ret));


            Node* temp = head;
            while (temp && temp->size < brojBlokova*MEM_BLOCK_SIZE) {    //while temp and temp->size < brojBLokova * min_block_size...
                if (temp->size >= brojBlokova) {
                    if (temp == head) {

                        size_t size = brojBlokova*MEM_BLOCK_SIZE;
                        head = (Node*)((char*)head + size);
                        head->size = size;
                        head->next = temp->next;
                    }
                }
                ret = (void *)temp;

                temp = temp->next;
            }
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

        else if (code == MEM_FREE) {

        }
        else if (code == THREAD_CREATE){
            TCB::Body start_routine;
            void* args = nullptr;
            uint64 *stack;
            thread_t* handle;
            int *ret;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (handle));

            __asm__ volatile("ld t1, 8*12(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));

            __asm__ volatile("ld t1, 8*13(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (args));

            __asm__ volatile("ld t1, 8*14(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (stack));

            __asm__ volatile("ld t1, 8*15(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (ret));

            if (!(TCB::createThread(handle, start_routine, args, stack))){
                *ret = -1;
            }
            else {
                *ret = 0;
            }
        }
        else if (code == THREAD_EXIT){
            TCB::running->setFinished(true);
            TCB* t = TCB::running;
            TCB::dispatch();
            delete t;
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (code == THREAD_DISPATCH){
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if (code == SEM_OPEN){
            sem_t* handle;
            unsigned init;
            int *ret;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (handle));

            __asm__ volatile("ld t2, 8*12(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (init));

            __asm__ volatile("ld t1, 8*13(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (ret));

            if (!(_sem::createSemaphore(handle, init))){
                *ret = -1;
            } else {
                *ret = 0;
            }

        }
        else if (code == SEM_CLOSE){
            sem_t handle;
            int *ret;
            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (handle));

            __asm__ volatile("ld t2, 8*12(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (ret));

            *ret = handle->close();

        }
        else if (code == SEM_WAIT){
            sem_t id;
            int *ret;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (id));

            __asm__ volatile("ld t1, 8*12(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (ret));

            *ret = id->wait();

        }
        else if (code == SEM_SIGNAL){
            sem_t id;
            int *ret;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (id));

            __asm__ volatile("ld t1, 8*12(fp)");
            __asm__ volatile("mv %0, t1" : "=r" (ret));

            *ret = id->signal();
        }
        else if (code == TIME_SLEEP){
            time_t slice;
            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (slice));

            if(slice != 0) {
                TCB::running->setSleeping(true);
                Riscv::sleepingThreads.put(TCB::running, slice);
            }

            TCB::dispatch();

        }
        else if (code == GET_C){
            char *ret;

            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (ret));

            *ret = getCBuffer->getc();
        }
        else if (code == PUT_C){
            char c;
            __asm__ volatile("ld t2, 8*11(fp)");
            __asm__ volatile("mv %0, t2" : "=r" (c));

            putCBuffer->putc(c);

        }
        else {
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
//         TIMER
//         interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        time_t temp = Riscv::sleepingThreads.peekFirstSlice();
        time_t t1 = -1;

        if (temp != t1){
            Riscv::sleepingThreads.decFirst();
            if (Riscv::sleepingThreads.peekFirstSlice() == 0) {
                Riscv::sleepingThreads.removeFinishedThreads();
            }
        }
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
//          interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        int irq = plic_claim();
        while (*((char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT) {

            char c = (*(char*)CONSOLE_RX_DATA);
            getCBuffer->putc(c);

        }
        plic_complete(irq);
    }
    else
    {
        // unexpected trap cause
    }
}