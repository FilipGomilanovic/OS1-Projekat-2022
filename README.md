# Operating-system-kernel

OS kernel is implemented for **RISC V** architecture and is ran in qemu emulator. No external libraries are used, meaning that it's not allowed to use any host's operating system system calls (threads, memory allocation, semaphores, interrupts etc. ) and everything is written from scratch.

---

The kernel provides three interfaces to the user program that are organized in layers.

![Layers Image](https://github.com/Ognjenjebot/Operating-system-kernel/blob/main/Layers.jpg?raw=true)

Code for all the layers is being run in a unique address space. Kernel code and code with hardware access runs in privileged mode(system mode), while everything under the dark line runs in user mode.

ABI(application binary interface) is an binary interface for system calls, which are called by software interrupts. This layer provides sending arguments to system calls thru processor registers, changing mode from system to user and going into kernel code.

C API(application programming interface) is a classic, procedural programming interface for system calls implemented as C functions. These functions act as a wrapper for ABI interface.

C++ API is an object oriented API which serves as a wrapper for functions from C API.

| Number | Function                                                                                                                 | Description                                                                                                                                                                                                                                                                    |
| :----- | :----------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 0x01   | `void* mem_alloc(size_t size);`                                                                                          | Alocates size bytes of memory, rounded and aligned on block of size MEM_BLOCK_SIZE. Returns a pointer to the memory block if successfull, or null if not.                                                                                                                      |
| 0x02   | `int mem_free(void*);`                                                                                                   | Free's memory previously alocated with mem_alloc. Return's 0 in case of success or else, negative value (error code). Argument must be a returned value of mem_alloc. If that's not the case, action is undefined: kernel might return an error or do something unpredictable. |
| 0x11   | `class _thread; typedef _thread* thread_t; int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);` | Starts a thread of function start_routine, calling it with argument arg. In case of success, \*handle will contain the handle for the thread and return value will be 0, or else a negative value. "Handle" is used to indentify threads.                                      |
| 0x12   | `int thread_exit(); `                                                                                                    | Turns off the active thread. In case of an error, return a negative value.                                                                                                                                                                                                     |
| 0x13   | `void thread_dispach();`                                                                                                 | Potentially takes the processor from active thread and gives it to some other thread.                                                                                                                                                                                          |
| 0x21   | `class _sem; typedef _sem* sem_t; int sem_open(sem_t* handle, unsigned init);`                                           | Creates a semaphore with an initial value of init. In case of success, \*handle will contain the handle for the semaphore and the return value will be 0, or else, return would be a negative value. "Handle" is used to identify semaphores.                                  |
| 0x22   | `int sem_close(sem_t handle);`                                                                                           | Free's the semaphore with the handle identifier. All threads that were blocked on this semaphore are deblocked, and their `wait` returns an error. Returns 0 in case of succes, or else a negative value.                                                                      |
| 0x23   | `int sem_wait(sem_t id);`                                                                                                | Operation wait for semaphore in argument. Returns 0 in case of succes, or else even in the situation when the semaphore is dealocated while the active thread is waiting on him, returns a negative value.                                                                     |
| 0x24   | `int sem_signal(sem_t id);`                                                                                              | Operation signal for semaphore in argument. Returns 0 in case of succes, or else a negative value.                                                                                                                                                                             |
| 0x31   | `typedef unsigned long time_t; int time_sleep(time_t);`                                                                  | Sleeps the active thread for timer periods. Returns 0 in case of succes, or else a negative value.                                                                                                                                                                             |
| 0x41   | `const int EOF = -1; char getc();`                                                                                       | Loads a character from the character buffer loaded from console. In case the buffer is empty, suspends active thread until a character appears. Returns loaded char in case of success, or else EOF.                                                                           |
| 0x42   | `void putc(char);`                                                                                                       | Writes char from argument in to the console.                                                                                                                                                                                                                                   |

> In short, the kernel provides:

- Synchronous context change
- Asynchronous context change
- Two modes, system and user mode
- Interrupt handling
- Fully implemented threads and semaphores
- Memory allocation and deallocation (yet to be implemented)
- Thread sleep method
- Collecting characters from console and writing them on it
