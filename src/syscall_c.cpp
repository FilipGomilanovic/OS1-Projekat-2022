#include "../h/syscall_c.h"
#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "../h/codes.h"



void* mem_alloc (size_t size) {
    return __mem_alloc(size);
}

int mem_free (void* v) {
    return __mem_free(v);
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
//Ovde moze nastati problem oko registara.

    auto *stack = (uint64*)(new uint64[DEFAULT_STACK_SIZE]);
    __asm__ volatile("mv a4, %0" : : "r" (stack));
    __asm__ volatile("mv a0, %0" : : "r" (ThreadCreate));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a3, %0" : : "r" (arg));

//    __asm__ volatile("mv a2, %0" : : "r" (handle));
//    __asm__ volatile("mv a1, %0" : : "r" (start_routine));
//    __asm__ volatile("mv a5, %0" : : "r" (arg));
//    __asm__ volatile("mv a3, %0" : : "r" (ThreadCreate));
//    __asm__ volatile("mv a4, %0" : : "r" (stack));
    __asm__ volatile ("ecall");
    return 0;

}

int thread_exit () {
    printString("Gasimo nit: ");
    printInteger(TCB::running->getId());
    printString("\n");
    __asm__ volatile("mv a0, %0" : : "r" (ThreadExit));
    __asm__ volatile ("ecall");
    return 0;
}

void thread_dispatch () {

    __asm__ volatile("mv a0, %0" : : "r" (ThreadDispatch));
    __asm__ volatile ("ecall");

}
//
//int sem_signal (sem_t id) {
//
//}

int time_sleep (time_t slice) {

    printString("Nit ");
    printInteger(TCB::running->getId());
    printString(" uspavana na: ");
    printInteger(slice / 10);
    printString(" sekundi\n");

    __asm__ volatile("mv a0, %0" : : "r" (TimeSleep));
    __asm__ volatile("mv a1, %0" : : "r" (slice));
    __asm__ volatile ("ecall");
    return 0;
}

//char getc () {
//
//}

//void putc (char){
//
//}