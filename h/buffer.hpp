#ifndef PROJECT_BASE_V1_1_BUFFER_HPP
#define PROJECT_BASE_V1_1_BUFFER_HPP
#include "../lib/hw.h"
#include "../h/_sem.hpp"

class Buffer {
public:
    Buffer();
    char getc ();
    void putc (char c);
    uint64 getCount() { return count; }
private:
    _sem *itemAvailable;
    static const uint64 KB_SIZE = 256;
    char buffer[KB_SIZE];
    uint64 head = 0, tail = 0, count = 0;
};

#endif //PROJECT_BASE_V1_1_BUFFER_HPP
