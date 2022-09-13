//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_V1_1_SLEEPINGTHREADSLIST_H
#define PROJECT_BASE_V1_1_SLEEPINGTHREADSLIST_H

#include "syscall_c.h"
#include "scheduler.hpp"

class SleepingThreadList
{
private:
    struct Elem
    {
        TCB *data;
        Elem *next;
        time_t relativeTime;

        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(nullptr), tail(nullptr) {}

    SleepingThreadList(const SleepingThreadList&) = delete;

    SleepingThreadList &operator=(const SleepingThreadList&) = delete;

    void decFirst(){
        if (head != nullptr) {
            head->relativeTime -= 1;
        }
    }
    time_t peekFirstSlice()
    {
        if (!head) { return -1; }
        return head->relativeTime;
    }

    void removeFinishedThreads()
    {
        while (head != nullptr && head->relativeTime == 0){
            Elem *elem = head;
            head = head->next;
            if (!head) { tail = nullptr; }
            elem->data->setSleeping(false);
            Scheduler::put(elem->data);
            delete elem;
        }
    }

    void put(TCB* thread, time_t slice){
        if (head == nullptr) {
            head = new Elem(thread, nullptr, slice);
            tail = head;
        }
        else {
            Elem* temp = head;
            Elem* prev = nullptr;
            while (temp != tail && slice >= temp->relativeTime) {
                slice -= temp->relativeTime;
                prev = temp;
                temp = temp->next;
            }
            if (temp == tail){
                if (slice >= tail->relativeTime){
                    Elem* novi = new Elem(thread, nullptr, slice - tail->relativeTime);
                    tail->next = novi;
                    tail = novi;
                }
                else {
                    Elem* novi = new Elem(thread, tail, slice);
                    if (prev != nullptr){
                        prev->next = novi;
                    }
                    else {
                        head = novi;
                    }
                    tail->relativeTime -= slice;
                }
            }
            else {
                Elem* novi = new Elem(thread, temp, slice);
                if (prev) {
                    prev->next = novi;
                }
                else {
                    head = novi;
                }
                temp->relativeTime -= slice;
            }
        }
    }
};

#endif //PROJECT_BASE_V1_1_SLEEPINGTHREADSLIST_H
