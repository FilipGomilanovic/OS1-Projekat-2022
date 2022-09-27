#include "../h/syscall_c.h"
#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "../h/codes.hpp"
#include "../h/riscv.hpp"

void* mem_alloc (size_t size) {
//    char c = 'k';
//    void* ret = &c;
//    size_t brojBlokova;
//    if (size % MEM_BLOCK_SIZE == 0) {
//        brojBlokova = size/MEM_BLOCK_SIZE;
//    } else {
//        brojBlokova = size/MEM_BLOCK_SIZE + 1;
//    }
//    __asm__ volatile("mv a2, %0" : : "r" (ret));
//    __asm__ volatile("mv a1, %0" : : "r" (brojBlokova));
//    __asm__ volatile("mv a0, %0" : : "r" (MEM_ALLOC));
//    __asm__ volatile ("ecall");
//
//    return ret;     ne znam zasto je optimized out, uvek vrati null;

    return __mem_alloc(size);
}

int mem_free (void* v) {
    return __mem_free(v);
}


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {

    int x = 0;
    int *ret = &x;

    auto *stack = (uint64*)(new uint64[DEFAULT_STACK_SIZE]);
    __asm__ volatile("mv a4, %0" : : "r" (stack));
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_CREATE));
    __asm__ volatile("mv a5, %0" : : "r" (ret));
    __asm__ volatile ("ecall");

    return *ret;
}

int thread_exit () {
    if (TCB::running->getMain()) {
        return -1;
    }
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_EXIT));
    __asm__ volatile ("ecall");
    return 0;
}

void thread_dispatch () {
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_DISPATCH));
    __asm__ volatile ("ecall");
}

int sem_open (sem_t* handle, unsigned init) {

    int x = 0;
    int *ret = &x;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (SEM_OPEN));
    __asm__ volatile("mv a3, %0" : : "r" (ret));
    __asm__ volatile ("ecall");
    return *ret;
}

int sem_close (sem_t handle) {
    if (handle == nullptr) {
        return -1;
    }

    int x = 0;
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (SEM_CLOSE));
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    __asm__ volatile ("ecall");
    return *ret;
}

int sem_wait (sem_t id) {
    if (id == nullptr) {
        return -1;
    }

    int x = 0;
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (SEM_WAIT));
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    __asm__ volatile ("ecall");
    return *ret;
}

int sem_signal (sem_t id) {
    if (id == nullptr) {
        return -1;
    }

    int x = 0;
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (SEM_SIGNAL));
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    __asm__ volatile ("ecall");
    return *ret;
}

int time_sleep (time_t slice) {
    __asm__ volatile("mv a1, %0" : : "r" (slice));
    __asm__ volatile("mv a0, %0" : : "r" (TIME_SLEEP));
    __asm__ volatile ("ecall");
    return 0;
}

char getc () {
    __asm__ volatile("mv a0, %0" : : "r" (GET_C));
    char c = 's';
    char* ret = &c;
    __asm__ volatile("mv a1, %0" : : "r" (ret));
    __asm__ volatile ("ecall");

    if (ret != nullptr)
        return *ret;
    else {
        return ' ';
    }
}

void putc (char c){
    __asm__ volatile("mv a1, %0" : : "r" (c));
    __asm__ volatile("mv a0, %0" : : "r" (PUT_C));
    __asm__ volatile ("ecall");
}