#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

//void* operator new (size_t size) {
//    return mem_alloc(size);
//}
//void operator delete (void* adr) {
//    mem_free(adr);
//}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle = nullptr;
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    myHandle->setFinished(true);
    delete myHandle;
}

int Thread::start() {
    myHandle->start();
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    time_sleep(time);
    return 0;
}

Thread::Thread() {
    myHandle = nullptr;
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
}

void Thread::threadWrapper(void *thread) {
    ((Thread*)thread)->run();
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    sem_wait(myHandle);
    return 0;
}

int Semaphore::signal() {
    sem_signal(myHandle);
    return 0;
}

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period){}
