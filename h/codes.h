//
// Created by os on 9/5/22.
//
#include "../lib/hw.h"
#ifndef PROJECT_BASE_V1_1_CODES_H
#define PROJECT_BASE_V1_1_CODES_H
__attribute__((unused)) static char karakter;
constexpr uint64 MEM_ALLOC = 1;
constexpr uint64 MEM_FREE = 2;

constexpr uint64 THREAD_CREATE = 11;
constexpr uint64 THREAD_EXIT = 12;
constexpr uint64 THREAD_DISPATCH = 13;

constexpr uint64 SEM_OPEN = 21;
constexpr uint64 SEM_CLOSE = 22;
constexpr uint64 SEM_WAIT = 23;
constexpr uint64 SEM_SIGNAL = 24;

constexpr uint64 TIME_SLEEP = 31;

constexpr uint64 GET_C = 41;
constexpr uint64 PUT_C = 42;
//static uint64 count = 0;
//static uint64 returnValue[256];

#endif //PROJECT_BASE_V1_1_CODES_H
