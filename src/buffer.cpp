//
// Created by os on 9/11/22.
//

#include "../h/buffer.h"

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
    else {

    }
}

