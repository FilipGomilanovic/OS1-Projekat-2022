//
// Created by os on 9/10/22.
//

#ifndef PROJECT_BASE_V1_1_BUFFER_H
#define PROJECT_BASE_V1_1_BUFFER_H
#include "../h/_sem.h"

class Buffer {
public:
    Buffer() : head(0),tail(0),count(0) {}
    char getc ();
    void putc (char c);

    _sem *itemAvailable;
    uint64 getCount() { return count; }
private:
    static const uint64 KB_SIZE = 256;
    char buffer[KB_SIZE];
    uint64 head = 0, tail = 0, count = 0;
};

#endif //PROJECT_BASE_V1_1_BUFFER_H
