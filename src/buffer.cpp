#include "../h/buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer() : head(0),tail(0),count(0) {
    sem_open(&itemAvailable, 0);
}

char Buffer::getc () {
    itemAvailable->wait();
    char c = buffer[head];
    head = (head+1)%KB_SIZE;
    count--;
    return c;
}
void Buffer::putc (char c) {
    if (count<KB_SIZE) {
        buffer[tail] = c;
        tail = (tail+1)%KB_SIZE;
        count++;
        itemAvailable->signal();
    }
}

