//
// Created by marko on 20.4.22..
//

#include "../lib/mem.h"
#include "../h/print.hpp"
#include "../h/syscall_c.h"


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
//    printString("ALokacija + ");
//    printInteger(n);
//    printString("\n");
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
//    printString("Alokacija steka = ");
//    printInteger(n);
//    printString("\n");
    return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
    __mem_free(p);
}

void operator delete[](void *p) noexcept
{
    __mem_free(p);
}

