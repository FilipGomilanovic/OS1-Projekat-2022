//
// Created by os on 9/5/22.
//
#include "../lib/hw.h"
#ifndef PROJECT_BASE_V1_1_CODES_H
#define PROJECT_BASE_V1_1_CODES_H
constexpr uint64 MemAlloc = 1;
constexpr uint64 MemFree = 2;

constexpr uint64 ThreadCreate = 11;
constexpr uint64 ThreadExit = 12;
constexpr uint64 ThreadDispatch = 13;

constexpr uint64 SemOpen = 21;
constexpr uint64 SemClose = 22;
constexpr uint64 SemWait = 23;
constexpr uint64 SemSignal = 24;

constexpr uint64 TimeSleep = 31;

constexpr uint64 GetC = 41;
constexpr uint64 PutC = 42;
#endif //PROJECT_BASE_V1_1_CODES_H
