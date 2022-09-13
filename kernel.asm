
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	d6813103          	ld	sp,-664(sp) # 80006d68 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	565020ef          	jal	ra,80002d80 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	134010ef          	jal	ra,800021b8 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z9mem_allocm>:
#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "../h/codes.h"


void* mem_alloc (size_t size) {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00813023          	sd	s0,0(sp)
    80001130:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001134:	00004097          	auipc	ra,0x4
    80001138:	dd4080e7          	jalr	-556(ra) # 80004f08 <__mem_alloc>
}
    8000113c:	00813083          	ld	ra,8(sp)
    80001140:	00013403          	ld	s0,0(sp)
    80001144:	01010113          	addi	sp,sp,16
    80001148:	00008067          	ret

000000008000114c <_Z8mem_freePv>:

int mem_free (void* v) {
    8000114c:	ff010113          	addi	sp,sp,-16
    80001150:	00113423          	sd	ra,8(sp)
    80001154:	00813023          	sd	s0,0(sp)
    80001158:	01010413          	addi	s0,sp,16
    return __mem_free(v);
    8000115c:	00004097          	auipc	ra,0x4
    80001160:	ce0080e7          	jalr	-800(ra) # 80004e3c <__mem_free>
}
    80001164:	00813083          	ld	ra,8(sp)
    80001168:	00013403          	ld	s0,0(sp)
    8000116c:	01010113          	addi	sp,sp,16
    80001170:	00008067          	ret

0000000080001174 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001174:	fd010113          	addi	sp,sp,-48
    80001178:	02113423          	sd	ra,40(sp)
    8000117c:	02813023          	sd	s0,32(sp)
    80001180:	00913c23          	sd	s1,24(sp)
    80001184:	01213823          	sd	s2,16(sp)
    80001188:	01313423          	sd	s3,8(sp)
    8000118c:	03010413          	addi	s0,sp,48
    80001190:	00050493          	mv	s1,a0
    80001194:	00058913          	mv	s2,a1
    80001198:	00060993          	mv	s3,a2
//Ovde moze nastati problem oko registara.

    auto *stack = (uint64*)(new uint64[DEFAULT_STACK_SIZE]);
    8000119c:	00008537          	lui	a0,0x8
    800011a0:	00001097          	auipc	ra,0x1
    800011a4:	f28080e7          	jalr	-216(ra) # 800020c8 <_Znam>
    __asm__ volatile("mv a4, %0" : : "r" (stack));
    800011a8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800011ac:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800011b0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800011b4:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_CREATE));
    800011b8:	00b00793          	li	a5,11
    800011bc:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800011c0:	00000073          	ecall
    return 0;

}
    800011c4:	00000513          	li	a0,0
    800011c8:	02813083          	ld	ra,40(sp)
    800011cc:	02013403          	ld	s0,32(sp)
    800011d0:	01813483          	ld	s1,24(sp)
    800011d4:	01013903          	ld	s2,16(sp)
    800011d8:	00813983          	ld	s3,8(sp)
    800011dc:	03010113          	addi	sp,sp,48
    800011e0:	00008067          	ret

00000000800011e4 <_Z11thread_exitv>:

int thread_exit () {
    800011e4:	ff010113          	addi	sp,sp,-16
    800011e8:	00113423          	sd	ra,8(sp)
    800011ec:	00813023          	sd	s0,0(sp)
    800011f0:	01010413          	addi	s0,sp,16
    printString("Gasimo nit: ");
    800011f4:	00005517          	auipc	a0,0x5
    800011f8:	e2c50513          	addi	a0,a0,-468 # 80006020 <CONSOLE_STATUS+0x10>
    800011fc:	00002097          	auipc	ra,0x2
    80001200:	a58080e7          	jalr	-1448(ra) # 80002c54 <_Z11printStringPKc>
    printInteger(TCB::running->getId());
    80001204:	00006797          	auipc	a5,0x6
    80001208:	b747b783          	ld	a5,-1164(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000120c:	0007b783          	ld	a5,0(a5)
    80001210:	0307a503          	lw	a0,48(a5)
    80001214:	00002097          	auipc	ra,0x2
    80001218:	ab0080e7          	jalr	-1360(ra) # 80002cc4 <_Z12printIntegerm>
    printString("\n");
    8000121c:	00005517          	auipc	a0,0x5
    80001220:	f9c50513          	addi	a0,a0,-100 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001224:	00002097          	auipc	ra,0x2
    80001228:	a30080e7          	jalr	-1488(ra) # 80002c54 <_Z11printStringPKc>
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_EXIT));
    8000122c:	00c00793          	li	a5,12
    80001230:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001234:	00000073          	ecall
    return 0;
}
    80001238:	00000513          	li	a0,0
    8000123c:	00813083          	ld	ra,8(sp)
    80001240:	00013403          	ld	s0,0(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <_Z15thread_dispatchv>:

void thread_dispatch () {
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00813423          	sd	s0,8(sp)
    80001254:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a0, %0" : : "r" (THREAD_DISPATCH));
    80001258:	00d00793          	li	a5,13
    8000125c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001260:	00000073          	ecall

}
    80001264:	00813403          	ld	s0,8(sp)
    80001268:	01010113          	addi	sp,sp,16
    8000126c:	00008067          	ret

0000000080001270 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle, unsigned init) {
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00813423          	sd	s0,8(sp)
    80001278:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_OPEN));
    80001280:	01500793          	li	a5,21
    80001284:	00078513          	mv	a0,a5
    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001288:	00058613          	mv	a2,a1
    __asm__ volatile ("ecall");
    8000128c:	00000073          	ecall
    return 0;
}
    80001290:	00000513          	li	a0,0
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle) {
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00813423          	sd	s0,8(sp)
    800012a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012ac:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_CLOSE));
    800012b0:	01600793          	li	a5,22
    800012b4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800012b8:	00000073          	ecall
    return 0;
}
    800012bc:	00000513          	li	a0,0
    800012c0:	00813403          	ld	s0,8(sp)
    800012c4:	01010113          	addi	sp,sp,16
    800012c8:	00008067          	ret

00000000800012cc <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id) {
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    800012d8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_WAIT));
    800012dc:	01700793          	li	a5,23
    800012e0:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800012e4:	00000073          	ecall
    return 0;
}
    800012e8:	00000513          	li	a0,0
    800012ec:	00813403          	ld	s0,8(sp)
    800012f0:	01010113          	addi	sp,sp,16
    800012f4:	00008067          	ret

00000000800012f8 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id) {
    800012f8:	ff010113          	addi	sp,sp,-16
    800012fc:	00813423          	sd	s0,8(sp)
    80001300:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001304:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_SIGNAL));
    80001308:	01800793          	li	a5,24
    8000130c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001310:	00000073          	ecall
    return 0;
}
    80001314:	00000513          	li	a0,0
    80001318:	00813403          	ld	s0,8(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <_Z10time_sleepm>:

int time_sleep (time_t slice) {
    80001324:	fe010113          	addi	sp,sp,-32
    80001328:	00113c23          	sd	ra,24(sp)
    8000132c:	00813823          	sd	s0,16(sp)
    80001330:	00913423          	sd	s1,8(sp)
    80001334:	02010413          	addi	s0,sp,32
    80001338:	00050493          	mv	s1,a0

    printString("Nit ");
    8000133c:	00005517          	auipc	a0,0x5
    80001340:	cf450513          	addi	a0,a0,-780 # 80006030 <CONSOLE_STATUS+0x20>
    80001344:	00002097          	auipc	ra,0x2
    80001348:	910080e7          	jalr	-1776(ra) # 80002c54 <_Z11printStringPKc>
    printInteger(TCB::running->getId());
    8000134c:	00006797          	auipc	a5,0x6
    80001350:	a2c7b783          	ld	a5,-1492(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001354:	0007b783          	ld	a5,0(a5)
    80001358:	0307a503          	lw	a0,48(a5)
    8000135c:	00002097          	auipc	ra,0x2
    80001360:	968080e7          	jalr	-1688(ra) # 80002cc4 <_Z12printIntegerm>
    printString(" uspavana na: ");
    80001364:	00005517          	auipc	a0,0x5
    80001368:	cd450513          	addi	a0,a0,-812 # 80006038 <CONSOLE_STATUS+0x28>
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	8e8080e7          	jalr	-1816(ra) # 80002c54 <_Z11printStringPKc>
    printInteger(slice / 10);
    80001374:	00a00513          	li	a0,10
    80001378:	02a4d533          	divu	a0,s1,a0
    8000137c:	00002097          	auipc	ra,0x2
    80001380:	948080e7          	jalr	-1720(ra) # 80002cc4 <_Z12printIntegerm>
    printString(" sekundi\n");
    80001384:	00005517          	auipc	a0,0x5
    80001388:	cc450513          	addi	a0,a0,-828 # 80006048 <CONSOLE_STATUS+0x38>
    8000138c:	00002097          	auipc	ra,0x2
    80001390:	8c8080e7          	jalr	-1848(ra) # 80002c54 <_Z11printStringPKc>

    __asm__ volatile("mv a0, %0" : : "r" (TIME_SLEEP));
    80001394:	01f00793          	li	a5,31
    80001398:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (slice));
    8000139c:	00048593          	mv	a1,s1
    __asm__ volatile ("ecall");
    800013a0:	00000073          	ecall
    return 0;
}
    800013a4:	00000513          	li	a0,0
    800013a8:	01813083          	ld	ra,24(sp)
    800013ac:	01013403          	ld	s0,16(sp)
    800013b0:	00813483          	ld	s1,8(sp)
    800013b4:	02010113          	addi	sp,sp,32
    800013b8:	00008067          	ret

00000000800013bc <_Z4getcv>:

char getc () {
    800013bc:	fe010113          	addi	sp,sp,-32
    800013c0:	00813c23          	sd	s0,24(sp)
    800013c4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" : : "r" (GET_C));
    800013c8:	02900793          	li	a5,41
    800013cc:	00078513          	mv	a0,a5
    char c = 's';
    800013d0:	07300793          	li	a5,115
    800013d4:	fef407a3          	sb	a5,-17(s0)
    char* ret = &c;
    __asm__ volatile("mv a1, %0" : : "r" (ret));
    800013d8:	fef40793          	addi	a5,s0,-17
    800013dc:	00078593          	mv	a1,a5
    __asm__ volatile ("ecall");
    800013e0:	00000073          	ecall
        return *ret;
    else {
        return '!';
    }

}
    800013e4:	fef44503          	lbu	a0,-17(s0)
    800013e8:	01813403          	ld	s0,24(sp)
    800013ec:	02010113          	addi	sp,sp,32
    800013f0:	00008067          	ret

00000000800013f4 <_Z4putcc>:

void putc (char c){
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00813423          	sd	s0,8(sp)
    800013fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    80001400:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (PUT_C));
    80001404:	02a00793          	li	a5,42
    80001408:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000140c:	00000073          	ecall
    80001410:	00813403          	ld	s0,8(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_Z9sleepyRunPv>:
#include "../h/syscall_c.h"
#include "../h/print.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000141c:	fe010113          	addi	sp,sp,-32
    80001420:	00113c23          	sd	ra,24(sp)
    80001424:	00813823          	sd	s0,16(sp)
    80001428:	00913423          	sd	s1,8(sp)
    8000142c:	01213023          	sd	s2,0(sp)
    80001430:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80001434:	00053903          	ld	s2,0(a0)
    int i = 6;
    80001438:	00600493          	li	s1,6
    while (--i > 0) {
    8000143c:	fff4849b          	addiw	s1,s1,-1
    80001440:	04905063          	blez	s1,80001480 <_Z9sleepyRunPv+0x64>

        printString("Hello ");
    80001444:	00005517          	auipc	a0,0x5
    80001448:	c1450513          	addi	a0,a0,-1004 # 80006058 <CONSOLE_STATUS+0x48>
    8000144c:	00002097          	auipc	ra,0x2
    80001450:	808080e7          	jalr	-2040(ra) # 80002c54 <_Z11printStringPKc>
        printInteger(sleep_time);
    80001454:	00090513          	mv	a0,s2
    80001458:	00002097          	auipc	ra,0x2
    8000145c:	86c080e7          	jalr	-1940(ra) # 80002cc4 <_Z12printIntegerm>
        printString(" !\n");
    80001460:	00005517          	auipc	a0,0x5
    80001464:	c0050513          	addi	a0,a0,-1024 # 80006060 <CONSOLE_STATUS+0x50>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	7ec080e7          	jalr	2028(ra) # 80002c54 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80001470:	00090513          	mv	a0,s2
    80001474:	00000097          	auipc	ra,0x0
    80001478:	eb0080e7          	jalr	-336(ra) # 80001324 <_Z10time_sleepm>
    while (--i > 0) {
    8000147c:	fc1ff06f          	j	8000143c <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80001480:	00a00793          	li	a5,10
    80001484:	02f95933          	divu	s2,s2,a5
    80001488:	fff90913          	addi	s2,s2,-1
    8000148c:	00006797          	auipc	a5,0x6
    80001490:	94478793          	addi	a5,a5,-1724 # 80006dd0 <finished>
    80001494:	01278933          	add	s2,a5,s2
    80001498:	00100793          	li	a5,1
    8000149c:	00f90023          	sb	a5,0(s2)
}
    800014a0:	01813083          	ld	ra,24(sp)
    800014a4:	01013403          	ld	s0,16(sp)
    800014a8:	00813483          	ld	s1,8(sp)
    800014ac:	00013903          	ld	s2,0(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret

00000000800014b8 <_Z12workerBodyA2Pv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA2(void* arg) {
    800014b8:	fd010113          	addi	sp,sp,-48
    800014bc:	02113423          	sd	ra,40(sp)
    800014c0:	02813023          	sd	s0,32(sp)
    800014c4:	00913c23          	sd	s1,24(sp)
    800014c8:	01213823          	sd	s2,16(sp)
    800014cc:	03010413          	addi	s0,sp,48
    for (uint64 i = 0; i < 10; i++) {
    800014d0:	00000913          	li	s2,0
    800014d4:	0380006f          	j	8000150c <_Z12workerBodyA2Pv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
            thread_dispatch();
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	d74080e7          	jalr	-652(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800014e0:	00148493          	addi	s1,s1,1
    800014e4:	000027b7          	lui	a5,0x2
    800014e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014ec:	0097ee63          	bltu	a5,s1,80001508 <_Z12workerBodyA2Pv+0x50>
            for (uint64 k = 0; k < 3000; k++) { /* busy wait */ }
    800014f0:	00000713          	li	a4,0
    800014f4:	000017b7          	lui	a5,0x1
    800014f8:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    800014fc:	fce7eee3          	bltu	a5,a4,800014d8 <_Z12workerBodyA2Pv+0x20>
    80001500:	00170713          	addi	a4,a4,1
    80001504:	ff1ff06f          	j	800014f4 <_Z12workerBodyA2Pv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001508:	00190913          	addi	s2,s2,1
    8000150c:	00900793          	li	a5,9
    80001510:	0327ec63          	bltu	a5,s2,80001548 <_Z12workerBodyA2Pv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80001514:	00005517          	auipc	a0,0x5
    80001518:	b5450513          	addi	a0,a0,-1196 # 80006068 <CONSOLE_STATUS+0x58>
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	738080e7          	jalr	1848(ra) # 80002c54 <_Z11printStringPKc>
    80001524:	00090513          	mv	a0,s2
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	79c080e7          	jalr	1948(ra) # 80002cc4 <_Z12printIntegerm>
    80001530:	00005517          	auipc	a0,0x5
    80001534:	c8850513          	addi	a0,a0,-888 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	71c080e7          	jalr	1820(ra) # 80002c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001540:	00000493          	li	s1,0
    80001544:	fa1ff06f          	j	800014e4 <_Z12workerBodyA2Pv+0x2c>
        }
//        thread_exit();
    }
//    putc('A');
    volatile char x = getc();
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	e74080e7          	jalr	-396(ra) # 800013bc <_Z4getcv>
    80001550:	fca40fa3          	sb	a0,-33(s0)
    volatile char y = getc();
    80001554:	00000097          	auipc	ra,0x0
    80001558:	e68080e7          	jalr	-408(ra) # 800013bc <_Z4getcv>
    8000155c:	fca40f23          	sb	a0,-34(s0)
//    printString("x = "); putc(x); printString("\n");
//    printString("y = "); putc(y); printString("\n");
    putc(x);
    80001560:	fdf44503          	lbu	a0,-33(s0)
    80001564:	0ff57513          	andi	a0,a0,255
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	e8c080e7          	jalr	-372(ra) # 800013f4 <_Z4putcc>
    putc(y);
    80001570:	fde44503          	lbu	a0,-34(s0)
    80001574:	0ff57513          	andi	a0,a0,255
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	e7c080e7          	jalr	-388(ra) # 800013f4 <_Z4putcc>
//    putc(x);
        printString("A finished!\n");
    80001580:	00005517          	auipc	a0,0x5
    80001584:	af050513          	addi	a0,a0,-1296 # 80006070 <CONSOLE_STATUS+0x60>
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	6cc080e7          	jalr	1740(ra) # 80002c54 <_Z11printStringPKc>
    finishedA = true;
    80001590:	00100793          	li	a5,1
    80001594:	00006717          	auipc	a4,0x6
    80001598:	82f70f23          	sb	a5,-1986(a4) # 80006dd2 <finishedA>
}
    8000159c:	02813083          	ld	ra,40(sp)
    800015a0:	02013403          	ld	s0,32(sp)
    800015a4:	01813483          	ld	s1,24(sp)
    800015a8:	01013903          	ld	s2,16(sp)
    800015ac:	03010113          	addi	sp,sp,48
    800015b0:	00008067          	ret

00000000800015b4 <_Z15TastaturaWorkerPv>:
    printString("D finished!\n");
    finishedD = true;
    thread_dispatch();
}

void TastaturaWorker(void* arg) {
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	01213023          	sd	s2,0(sp)
    800015c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800015cc:	00000913          	li	s2,0
    800015d0:	0480006f          	j	80001618 <_Z15TastaturaWorkerPv+0x64>
        if (i == 15){
//            sem_signal(sem);
        }
        if (i == 8){
            time_sleep(50);
    800015d4:	03200513          	li	a0,50
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	d4c080e7          	jalr	-692(ra) # 80001324 <_Z10time_sleepm>
    800015e0:	0480006f          	j	80001628 <_Z15TastaturaWorkerPv+0x74>
        }

        printString("Tastatura: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	c68080e7          	jalr	-920(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800015ec:	00148493          	addi	s1,s1,1
    800015f0:	000027b7          	lui	a5,0x2
    800015f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015f8:	0097ee63          	bltu	a5,s1,80001614 <_Z15TastaturaWorkerPv+0x60>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800015fc:	00000713          	li	a4,0
    80001600:	000077b7          	lui	a5,0x7
    80001604:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001608:	fce7eee3          	bltu	a5,a4,800015e4 <_Z15TastaturaWorkerPv+0x30>
    8000160c:	00170713          	addi	a4,a4,1
    80001610:	ff1ff06f          	j	80001600 <_Z15TastaturaWorkerPv+0x4c>
    for (uint64 i = 0; i < 16; i++) {
    80001614:	00190913          	addi	s2,s2,1
    80001618:	00f00793          	li	a5,15
    8000161c:	0527e063          	bltu	a5,s2,8000165c <_Z15TastaturaWorkerPv+0xa8>
        if (i == 8){
    80001620:	00800793          	li	a5,8
    80001624:	faf908e3          	beq	s2,a5,800015d4 <_Z15TastaturaWorkerPv+0x20>
        printString("Tastatura: i="); printInteger(i); printString("\n");
    80001628:	00005517          	auipc	a0,0x5
    8000162c:	a5850513          	addi	a0,a0,-1448 # 80006080 <CONSOLE_STATUS+0x70>
    80001630:	00001097          	auipc	ra,0x1
    80001634:	624080e7          	jalr	1572(ra) # 80002c54 <_Z11printStringPKc>
    80001638:	00090513          	mv	a0,s2
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	688080e7          	jalr	1672(ra) # 80002cc4 <_Z12printIntegerm>
    80001644:	00005517          	auipc	a0,0x5
    80001648:	b7450513          	addi	a0,a0,-1164 # 800061b8 <CONSOLE_STATUS+0x1a8>
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	608080e7          	jalr	1544(ra) # 80002c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001654:	00000493          	li	s1,0
    80001658:	f99ff06f          	j	800015f0 <_Z15TastaturaWorkerPv+0x3c>
    Buffer() : head(0),tail(0),count(0) {}
    char getc ();
    void putc (char c);

    _sem *itemAvailable;
    uint64 getCount() { return count; }
    8000165c:	00005797          	auipc	a5,0x5
    80001660:	6e47b783          	ld	a5,1764(a5) # 80006d40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001664:	1187b783          	ld	a5,280(a5)
        }
    }
    while (Riscv::getCBuffer.getCount() > 0){
    80001668:	00078c63          	beqz	a5,80001680 <_Z15TastaturaWorkerPv+0xcc>
        char x = getc();
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	d50080e7          	jalr	-688(ra) # 800013bc <_Z4getcv>
        putc(x);
    80001674:	00000097          	auipc	ra,0x0
    80001678:	d80080e7          	jalr	-640(ra) # 800013f4 <_Z4putcc>
    while (Riscv::getCBuffer.getCount() > 0){
    8000167c:	fe1ff06f          	j	8000165c <_Z15TastaturaWorkerPv+0xa8>
    }
    printString("\nTastatura finished!\n");
    80001680:	00005517          	auipc	a0,0x5
    80001684:	a1050513          	addi	a0,a0,-1520 # 80006090 <CONSOLE_STATUS+0x80>
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	5cc080e7          	jalr	1484(ra) # 80002c54 <_Z11printStringPKc>
    finishedTastatura = true;
    80001690:	00100793          	li	a5,1
    80001694:	00005717          	auipc	a4,0x5
    80001698:	72f70fa3          	sb	a5,1855(a4) # 80006dd3 <finishedTastatura>
    thread_dispatch();
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	bb0080e7          	jalr	-1104(ra) # 8000124c <_Z15thread_dispatchv>
}
    800016a4:	01813083          	ld	ra,24(sp)
    800016a8:	01013403          	ld	s0,16(sp)
    800016ac:	00813483          	ld	s1,8(sp)
    800016b0:	00013903          	ld	s2,0(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret

00000000800016bc <_Z12workerBodyB2Pv>:
void workerBodyB2(void* arg) {
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00113c23          	sd	ra,24(sp)
    800016c4:	00813823          	sd	s0,16(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	01213023          	sd	s2,0(sp)
    800016d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800016d4:	00000913          	li	s2,0
    800016d8:	06c0006f          	j	80001744 <_Z12workerBodyB2Pv+0x88>
            sem_signal(sem);
    800016dc:	00005517          	auipc	a0,0x5
    800016e0:	6fc53503          	ld	a0,1788(a0) # 80006dd8 <sem>
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	c14080e7          	jalr	-1004(ra) # 800012f8 <_Z10sem_signalP4_sem>
    800016ec:	0640006f          	j	80001750 <_Z12workerBodyB2Pv+0x94>
            time_sleep(50);
    800016f0:	03200513          	li	a0,50
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	c30080e7          	jalr	-976(ra) # 80001324 <_Z10time_sleepm>
            sem_signal(sem);
    800016fc:	00005517          	auipc	a0,0x5
    80001700:	6dc53503          	ld	a0,1756(a0) # 80006dd8 <sem>
    80001704:	00000097          	auipc	ra,0x0
    80001708:	bf4080e7          	jalr	-1036(ra) # 800012f8 <_Z10sem_signalP4_sem>
    8000170c:	04c0006f          	j	80001758 <_Z12workerBodyB2Pv+0x9c>
            thread_dispatch();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	b3c080e7          	jalr	-1220(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001718:	00148493          	addi	s1,s1,1
    8000171c:	000027b7          	lui	a5,0x2
    80001720:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001724:	0097ee63          	bltu	a5,s1,80001740 <_Z12workerBodyB2Pv+0x84>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001728:	00000713          	li	a4,0
    8000172c:	000077b7          	lui	a5,0x7
    80001730:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001734:	fce7eee3          	bltu	a5,a4,80001710 <_Z12workerBodyB2Pv+0x54>
    80001738:	00170713          	addi	a4,a4,1
    8000173c:	ff1ff06f          	j	8000172c <_Z12workerBodyB2Pv+0x70>
    for (uint64 i = 0; i < 16; i++) {
    80001740:	00190913          	addi	s2,s2,1
    80001744:	00f00793          	li	a5,15
    80001748:	0527e263          	bltu	a5,s2,8000178c <_Z12workerBodyB2Pv+0xd0>
        if (i == 15){
    8000174c:	f8f908e3          	beq	s2,a5,800016dc <_Z12workerBodyB2Pv+0x20>
        if (i == 8){
    80001750:	00800793          	li	a5,8
    80001754:	f8f90ee3          	beq	s2,a5,800016f0 <_Z12workerBodyB2Pv+0x34>
        printString("B: i="); printInteger(i); printString("\n");
    80001758:	00005517          	auipc	a0,0x5
    8000175c:	95050513          	addi	a0,a0,-1712 # 800060a8 <CONSOLE_STATUS+0x98>
    80001760:	00001097          	auipc	ra,0x1
    80001764:	4f4080e7          	jalr	1268(ra) # 80002c54 <_Z11printStringPKc>
    80001768:	00090513          	mv	a0,s2
    8000176c:	00001097          	auipc	ra,0x1
    80001770:	558080e7          	jalr	1368(ra) # 80002cc4 <_Z12printIntegerm>
    80001774:	00005517          	auipc	a0,0x5
    80001778:	a4450513          	addi	a0,a0,-1468 # 800061b8 <CONSOLE_STATUS+0x1a8>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	4d8080e7          	jalr	1240(ra) # 80002c54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001784:	00000493          	li	s1,0
    80001788:	f95ff06f          	j	8000171c <_Z12workerBodyB2Pv+0x60>
    printString("B finished!\n");
    8000178c:	00005517          	auipc	a0,0x5
    80001790:	92450513          	addi	a0,a0,-1756 # 800060b0 <CONSOLE_STATUS+0xa0>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	4c0080e7          	jalr	1216(ra) # 80002c54 <_Z11printStringPKc>
    finishedB = true;
    8000179c:	00100793          	li	a5,1
    800017a0:	00005717          	auipc	a4,0x5
    800017a4:	64f70023          	sb	a5,1600(a4) # 80006de0 <finishedB>
    thread_dispatch();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	aa4080e7          	jalr	-1372(ra) # 8000124c <_Z15thread_dispatchv>
}
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	00013903          	ld	s2,0(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_Z12testSleepingv>:

void testSleeping() {
    800017c8:	fc010113          	addi	sp,sp,-64
    800017cc:	02113c23          	sd	ra,56(sp)
    800017d0:	02813823          	sd	s0,48(sp)
    800017d4:	02913423          	sd	s1,40(sp)
    800017d8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800017dc:	00a00793          	li	a5,10
    800017e0:	fcf43823          	sd	a5,-48(s0)
    800017e4:	01400793          	li	a5,20
    800017e8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800017ec:	00000493          	li	s1,0
    800017f0:	02c0006f          	j	8000181c <_Z12testSleepingv+0x54>
        if (sleep_times == nullptr) {
        }
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800017f4:	00349793          	slli	a5,s1,0x3
    800017f8:	fd040613          	addi	a2,s0,-48
    800017fc:	00f60633          	add	a2,a2,a5
    80001800:	00000597          	auipc	a1,0x0
    80001804:	c1c58593          	addi	a1,a1,-996 # 8000141c <_Z9sleepyRunPv>
    80001808:	fc040513          	addi	a0,s0,-64
    8000180c:	00f50533          	add	a0,a0,a5
    80001810:	00000097          	auipc	ra,0x0
    80001814:	964080e7          	jalr	-1692(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80001818:	0014849b          	addiw	s1,s1,1
    8000181c:	00100793          	li	a5,1
    80001820:	fc97dae3          	bge	a5,s1,800017f4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80001824:	00005797          	auipc	a5,0x5
    80001828:	5ac7c783          	lbu	a5,1452(a5) # 80006dd0 <finished>
    8000182c:	fe078ce3          	beqz	a5,80001824 <_Z12testSleepingv+0x5c>
    80001830:	00005797          	auipc	a5,0x5
    80001834:	5a17c783          	lbu	a5,1441(a5) # 80006dd1 <finished+0x1>
    80001838:	fe0786e3          	beqz	a5,80001824 <_Z12testSleepingv+0x5c>
}
    8000183c:	03813083          	ld	ra,56(sp)
    80001840:	03013403          	ld	s0,48(sp)
    80001844:	02813483          	ld	s1,40(sp)
    80001848:	04010113          	addi	sp,sp,64
    8000184c:	00008067          	ret

0000000080001850 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80001850:	fe010113          	addi	sp,sp,-32
    80001854:	00113c23          	sd	ra,24(sp)
    80001858:	00813823          	sd	s0,16(sp)
    8000185c:	00913423          	sd	s1,8(sp)
    80001860:	01213023          	sd	s2,0(sp)
    80001864:	02010413          	addi	s0,sp,32
    80001868:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000186c:	00100793          	li	a5,1
    80001870:	02a7f863          	bgeu	a5,a0,800018a0 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001874:	00a00793          	li	a5,10
    80001878:	02f577b3          	remu	a5,a0,a5
    8000187c:	02078e63          	beqz	a5,800018b8 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001880:	fff48513          	addi	a0,s1,-1
    80001884:	00000097          	auipc	ra,0x0
    80001888:	fcc080e7          	jalr	-52(ra) # 80001850 <_Z9fibonaccim>
    8000188c:	00050913          	mv	s2,a0
    80001890:	ffe48513          	addi	a0,s1,-2
    80001894:	00000097          	auipc	ra,0x0
    80001898:	fbc080e7          	jalr	-68(ra) # 80001850 <_Z9fibonaccim>
    8000189c:	00a90533          	add	a0,s2,a0
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	00813483          	ld	s1,8(sp)
    800018ac:	00013903          	ld	s2,0(sp)
    800018b0:	02010113          	addi	sp,sp,32
    800018b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	994080e7          	jalr	-1644(ra) # 8000124c <_Z15thread_dispatchv>
    800018c0:	fc1ff06f          	j	80001880 <_Z9fibonaccim+0x30>

00000000800018c4 <_Z12workerBodyC2Pv>:
void workerBodyC2(void* arg) {
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	01213023          	sd	s2,0(sp)
    800018d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018dc:	00000493          	li	s1,0
    800018e0:	0380006f          	j	80001918 <_Z12workerBodyC2Pv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    800018e4:	00004517          	auipc	a0,0x4
    800018e8:	7dc50513          	addi	a0,a0,2012 # 800060c0 <CONSOLE_STATUS+0xb0>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	368080e7          	jalr	872(ra) # 80002c54 <_Z11printStringPKc>
    800018f4:	00048513          	mv	a0,s1
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	3cc080e7          	jalr	972(ra) # 80002cc4 <_Z12printIntegerm>
    80001900:	00005517          	auipc	a0,0x5
    80001904:	8b850513          	addi	a0,a0,-1864 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001908:	00001097          	auipc	ra,0x1
    8000190c:	34c080e7          	jalr	844(ra) # 80002c54 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001910:	0014849b          	addiw	s1,s1,1
    80001914:	0ff4f493          	andi	s1,s1,255
    80001918:	00200793          	li	a5,2
    8000191c:	fc97f4e3          	bgeu	a5,s1,800018e4 <_Z12workerBodyC2Pv+0x20>
    sem_wait(sem);
    80001920:	00005517          	auipc	a0,0x5
    80001924:	4b853503          	ld	a0,1208(a0) # 80006dd8 <sem>
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	9a4080e7          	jalr	-1628(ra) # 800012cc <_Z8sem_waitP4_sem>
    printString("C: dispatch\n");
    80001930:	00004517          	auipc	a0,0x4
    80001934:	79850513          	addi	a0,a0,1944 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	31c080e7          	jalr	796(ra) # 80002c54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001940:	00700313          	li	t1,7
    thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	908080e7          	jalr	-1784(ra) # 8000124c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000194c:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    80001950:	00004517          	auipc	a0,0x4
    80001954:	78850513          	addi	a0,a0,1928 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	2fc080e7          	jalr	764(ra) # 80002c54 <_Z11printStringPKc>
    80001960:	00090513          	mv	a0,s2
    80001964:	00001097          	auipc	ra,0x1
    80001968:	360080e7          	jalr	864(ra) # 80002cc4 <_Z12printIntegerm>
    8000196c:	00005517          	auipc	a0,0x5
    80001970:	84c50513          	addi	a0,a0,-1972 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	2e0080e7          	jalr	736(ra) # 80002c54 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000197c:	00c00513          	li	a0,12
    80001980:	00000097          	auipc	ra,0x0
    80001984:	ed0080e7          	jalr	-304(ra) # 80001850 <_Z9fibonaccim>
    80001988:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    8000198c:	00004517          	auipc	a0,0x4
    80001990:	75450513          	addi	a0,a0,1876 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001994:	00001097          	auipc	ra,0x1
    80001998:	2c0080e7          	jalr	704(ra) # 80002c54 <_Z11printStringPKc>
    8000199c:	00090513          	mv	a0,s2
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	324080e7          	jalr	804(ra) # 80002cc4 <_Z12printIntegerm>
    800019a8:	00005517          	auipc	a0,0x5
    800019ac:	81050513          	addi	a0,a0,-2032 # 800061b8 <CONSOLE_STATUS+0x1a8>
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	2a4080e7          	jalr	676(ra) # 80002c54 <_Z11printStringPKc>
    time_sleep(100);
    800019b8:	06400513          	li	a0,100
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	968080e7          	jalr	-1688(ra) # 80001324 <_Z10time_sleepm>
    800019c4:	0380006f          	j	800019fc <_Z12workerBodyC2Pv+0x138>
        printString("C: i="); printInteger(i); printString("\n");
    800019c8:	00004517          	auipc	a0,0x4
    800019cc:	6f850513          	addi	a0,a0,1784 # 800060c0 <CONSOLE_STATUS+0xb0>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	284080e7          	jalr	644(ra) # 80002c54 <_Z11printStringPKc>
    800019d8:	00048513          	mv	a0,s1
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	2e8080e7          	jalr	744(ra) # 80002cc4 <_Z12printIntegerm>
    800019e4:	00004517          	auipc	a0,0x4
    800019e8:	7d450513          	addi	a0,a0,2004 # 800061b8 <CONSOLE_STATUS+0x1a8>
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	268080e7          	jalr	616(ra) # 80002c54 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800019f4:	0014849b          	addiw	s1,s1,1
    800019f8:	0ff4f493          	andi	s1,s1,255
    800019fc:	00500793          	li	a5,5
    80001a00:	fc97f4e3          	bgeu	a5,s1,800019c8 <_Z12workerBodyC2Pv+0x104>
    printString("C finished!\n");
    80001a04:	00004517          	auipc	a0,0x4
    80001a08:	6ec50513          	addi	a0,a0,1772 # 800060f0 <CONSOLE_STATUS+0xe0>
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	248080e7          	jalr	584(ra) # 80002c54 <_Z11printStringPKc>
    finishedC = true;
    80001a14:	00100793          	li	a5,1
    80001a18:	00005717          	auipc	a4,0x5
    80001a1c:	3cf704a3          	sb	a5,969(a4) # 80006de1 <finishedC>
    thread_dispatch();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	82c080e7          	jalr	-2004(ra) # 8000124c <_Z15thread_dispatchv>
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	00013903          	ld	s2,0(sp)
    80001a38:	02010113          	addi	sp,sp,32
    80001a3c:	00008067          	ret

0000000080001a40 <_Z12workerBodyD2Pv>:
void workerBodyD2(void* arg) {
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	01213023          	sd	s2,0(sp)
    80001a54:	02010413          	addi	s0,sp,32
    putc('\n');
    80001a58:	00a00513          	li	a0,10
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	998080e7          	jalr	-1640(ra) # 800013f4 <_Z4putcc>
    putc('L');
    80001a64:	04c00513          	li	a0,76
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	98c080e7          	jalr	-1652(ra) # 800013f4 <_Z4putcc>
    putc('\n');
    80001a70:	00a00513          	li	a0,10
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	980080e7          	jalr	-1664(ra) # 800013f4 <_Z4putcc>
    uint8 i = 10;
    80001a7c:	00a00493          	li	s1,10
    80001a80:	01c0006f          	j	80001a9c <_Z12workerBodyD2Pv+0x5c>
            sem_wait(sem);
    80001a84:	00005517          	auipc	a0,0x5
    80001a88:	35453503          	ld	a0,852(a0) # 80006dd8 <sem>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	840080e7          	jalr	-1984(ra) # 800012cc <_Z8sem_waitP4_sem>
    for (; i < 13; i++) {
    80001a94:	0014849b          	addiw	s1,s1,1
    80001a98:	0ff4f493          	andi	s1,s1,255
    80001a9c:	00c00793          	li	a5,12
    80001aa0:	0297ee63          	bltu	a5,s1,80001adc <_Z12workerBodyD2Pv+0x9c>
        printString("D: i="); printInteger(i); printString("\n");
    80001aa4:	00004517          	auipc	a0,0x4
    80001aa8:	65c50513          	addi	a0,a0,1628 # 80006100 <CONSOLE_STATUS+0xf0>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	1a8080e7          	jalr	424(ra) # 80002c54 <_Z11printStringPKc>
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	20c080e7          	jalr	524(ra) # 80002cc4 <_Z12printIntegerm>
    80001ac0:	00004517          	auipc	a0,0x4
    80001ac4:	6f850513          	addi	a0,a0,1784 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	18c080e7          	jalr	396(ra) # 80002c54 <_Z11printStringPKc>
        if (i == 10) {
    80001ad0:	00a00793          	li	a5,10
    80001ad4:	fcf490e3          	bne	s1,a5,80001a94 <_Z12workerBodyD2Pv+0x54>
    80001ad8:	fadff06f          	j	80001a84 <_Z12workerBodyD2Pv+0x44>
    printString("D: dispatch\n");
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	62c50513          	addi	a0,a0,1580 # 80006108 <CONSOLE_STATUS+0xf8>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	170080e7          	jalr	368(ra) # 80002c54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001aec:	00500313          	li	t1,5
    thread_dispatch();
    80001af0:	fffff097          	auipc	ra,0xfffff
    80001af4:	75c080e7          	jalr	1884(ra) # 8000124c <_Z15thread_dispatchv>
    uint64 result = fibonacci(16);
    80001af8:	01000513          	li	a0,16
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	d54080e7          	jalr	-684(ra) # 80001850 <_Z9fibonaccim>
    80001b04:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80001b08:	00004517          	auipc	a0,0x4
    80001b0c:	61050513          	addi	a0,a0,1552 # 80006118 <CONSOLE_STATUS+0x108>
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	144080e7          	jalr	324(ra) # 80002c54 <_Z11printStringPKc>
    80001b18:	00090513          	mv	a0,s2
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	1a8080e7          	jalr	424(ra) # 80002cc4 <_Z12printIntegerm>
    80001b24:	00004517          	auipc	a0,0x4
    80001b28:	69450513          	addi	a0,a0,1684 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	128080e7          	jalr	296(ra) # 80002c54 <_Z11printStringPKc>
    80001b34:	0380006f          	j	80001b6c <_Z12workerBodyD2Pv+0x12c>
        printString("D: i="); printInteger(i); printString("\n");
    80001b38:	00004517          	auipc	a0,0x4
    80001b3c:	5c850513          	addi	a0,a0,1480 # 80006100 <CONSOLE_STATUS+0xf0>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	114080e7          	jalr	276(ra) # 80002c54 <_Z11printStringPKc>
    80001b48:	00048513          	mv	a0,s1
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	178080e7          	jalr	376(ra) # 80002cc4 <_Z12printIntegerm>
    80001b54:	00004517          	auipc	a0,0x4
    80001b58:	66450513          	addi	a0,a0,1636 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	0f8080e7          	jalr	248(ra) # 80002c54 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001b64:	0014849b          	addiw	s1,s1,1
    80001b68:	0ff4f493          	andi	s1,s1,255
    80001b6c:	00f00793          	li	a5,15
    80001b70:	fc97f4e3          	bgeu	a5,s1,80001b38 <_Z12workerBodyD2Pv+0xf8>
    printString("D finished!\n");
    80001b74:	00004517          	auipc	a0,0x4
    80001b78:	5b450513          	addi	a0,a0,1460 # 80006128 <CONSOLE_STATUS+0x118>
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	0d8080e7          	jalr	216(ra) # 80002c54 <_Z11printStringPKc>
    finishedD = true;
    80001b84:	00100793          	li	a5,1
    80001b88:	00005717          	auipc	a4,0x5
    80001b8c:	24f70d23          	sb	a5,602(a4) # 80006de2 <finishedD>
    thread_dispatch();
    80001b90:	fffff097          	auipc	ra,0xfffff
    80001b94:	6bc080e7          	jalr	1724(ra) # 8000124c <_Z15thread_dispatchv>
}
    80001b98:	01813083          	ld	ra,24(sp)
    80001b9c:	01013403          	ld	s0,16(sp)
    80001ba0:	00813483          	ld	s1,8(sp)
    80001ba4:	00013903          	ld	s2,0(sp)
    80001ba8:	02010113          	addi	sp,sp,32
    80001bac:	00008067          	ret

0000000080001bb0 <_Z18Threads_C_API_testv>:



void Threads_C_API_test() {
    80001bb0:	fd010113          	addi	sp,sp,-48
    80001bb4:	02113423          	sd	ra,40(sp)
    80001bb8:	02813023          	sd	s0,32(sp)
    80001bbc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA2, nullptr);
    80001bc0:	00000613          	li	a2,0
    80001bc4:	00000597          	auipc	a1,0x0
    80001bc8:	8f458593          	addi	a1,a1,-1804 # 800014b8 <_Z12workerBodyA2Pv>
    80001bcc:	fd040513          	addi	a0,s0,-48
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	5a4080e7          	jalr	1444(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001bd8:	00004517          	auipc	a0,0x4
    80001bdc:	56050513          	addi	a0,a0,1376 # 80006138 <CONSOLE_STATUS+0x128>
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	074080e7          	jalr	116(ra) # 80002c54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB2, nullptr);
    80001be8:	00000613          	li	a2,0
    80001bec:	00000597          	auipc	a1,0x0
    80001bf0:	ad058593          	addi	a1,a1,-1328 # 800016bc <_Z12workerBodyB2Pv>
    80001bf4:	fd840513          	addi	a0,s0,-40
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	57c080e7          	jalr	1404(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001c00:	00004517          	auipc	a0,0x4
    80001c04:	55050513          	addi	a0,a0,1360 # 80006150 <CONSOLE_STATUS+0x140>
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	04c080e7          	jalr	76(ra) # 80002c54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC2, nullptr);
    80001c10:	00000613          	li	a2,0
    80001c14:	00000597          	auipc	a1,0x0
    80001c18:	cb058593          	addi	a1,a1,-848 # 800018c4 <_Z12workerBodyC2Pv>
    80001c1c:	fe040513          	addi	a0,s0,-32
    80001c20:	fffff097          	auipc	ra,0xfffff
    80001c24:	554080e7          	jalr	1364(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001c28:	00004517          	auipc	a0,0x4
    80001c2c:	54050513          	addi	a0,a0,1344 # 80006168 <CONSOLE_STATUS+0x158>
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	024080e7          	jalr	36(ra) # 80002c54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD2, nullptr);
    80001c38:	00000613          	li	a2,0
    80001c3c:	00000597          	auipc	a1,0x0
    80001c40:	e0458593          	addi	a1,a1,-508 # 80001a40 <_Z12workerBodyD2Pv>
    80001c44:	fe840513          	addi	a0,s0,-24
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	52c080e7          	jalr	1324(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001c50:	00004517          	auipc	a0,0x4
    80001c54:	53050513          	addi	a0,a0,1328 # 80006180 <CONSOLE_STATUS+0x170>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	ffc080e7          	jalr	-4(ra) # 80002c54 <_Z11printStringPKc>
    80001c60:	00c0006f          	j	80001c6c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80001c64:	fffff097          	auipc	ra,0xfffff
    80001c68:	5e8080e7          	jalr	1512(ra) # 8000124c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001c6c:	00005797          	auipc	a5,0x5
    80001c70:	1667c783          	lbu	a5,358(a5) # 80006dd2 <finishedA>
    80001c74:	fe0788e3          	beqz	a5,80001c64 <_Z18Threads_C_API_testv+0xb4>
    80001c78:	00005797          	auipc	a5,0x5
    80001c7c:	1687c783          	lbu	a5,360(a5) # 80006de0 <finishedB>
    80001c80:	fe0782e3          	beqz	a5,80001c64 <_Z18Threads_C_API_testv+0xb4>
    80001c84:	00005797          	auipc	a5,0x5
    80001c88:	15d7c783          	lbu	a5,349(a5) # 80006de1 <finishedC>
    80001c8c:	fc078ce3          	beqz	a5,80001c64 <_Z18Threads_C_API_testv+0xb4>
    80001c90:	00005797          	auipc	a5,0x5
    80001c94:	1527c783          	lbu	a5,338(a5) # 80006de2 <finishedD>
    80001c98:	fc0786e3          	beqz	a5,80001c64 <_Z18Threads_C_API_testv+0xb4>
    }
//    while (!(finishedA)) {
//        thread_dispatch();
//    }
}
    80001c9c:	02813083          	ld	ra,40(sp)
    80001ca0:	02013403          	ld	s0,32(sp)
    80001ca4:	03010113          	addi	sp,sp,48
    80001ca8:	00008067          	ret

0000000080001cac <_Z13tastaturaTestv>:

void tastaturaTest(){
    80001cac:	fe010113          	addi	sp,sp,-32
    80001cb0:	00113c23          	sd	ra,24(sp)
    80001cb4:	00813823          	sd	s0,16(sp)
    80001cb8:	02010413          	addi	s0,sp,32
    thread_t Tastatura;
    thread_create(&Tastatura, TastaturaWorker, nullptr);
    80001cbc:	00000613          	li	a2,0
    80001cc0:	00000597          	auipc	a1,0x0
    80001cc4:	8f458593          	addi	a1,a1,-1804 # 800015b4 <_Z15TastaturaWorkerPv>
    80001cc8:	fe840513          	addi	a0,s0,-24
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	4a8080e7          	jalr	1192(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Tastatura created\n");
    80001cd4:	00004517          	auipc	a0,0x4
    80001cd8:	4c450513          	addi	a0,a0,1220 # 80006198 <CONSOLE_STATUS+0x188>
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	f78080e7          	jalr	-136(ra) # 80002c54 <_Z11printStringPKc>

    while (!finishedTastatura) {
    80001ce4:	00005797          	auipc	a5,0x5
    80001ce8:	0ef7c783          	lbu	a5,239(a5) # 80006dd3 <finishedTastatura>
    80001cec:	00079863          	bnez	a5,80001cfc <_Z13tastaturaTestv+0x50>
        thread_dispatch();
    80001cf0:	fffff097          	auipc	ra,0xfffff
    80001cf4:	55c080e7          	jalr	1372(ra) # 8000124c <_Z15thread_dispatchv>
    80001cf8:	fedff06f          	j	80001ce4 <_Z13tastaturaTestv+0x38>
    }
}
    80001cfc:	01813083          	ld	ra,24(sp)
    80001d00:	01013403          	ld	s0,16(sp)
    80001d04:	02010113          	addi	sp,sp,32
    80001d08:	00008067          	ret

0000000080001d0c <_Z8userMainv>:

void userMain() {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    testSleeping();       // ThreadSleeping test
    tastaturaTest();
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	f90080e7          	jalr	-112(ra) # 80001cac <_Z13tastaturaTestv>
}
    80001d24:	00813083          	ld	ra,8(sp)
    80001d28:	00013403          	ld	s0,0(sp)
    80001d2c:	01010113          	addi	sp,sp,16
    80001d30:	00008067          	ret

0000000080001d34 <main>:

int main()
{
    80001d34:	fe010113          	addi	sp,sp,-32
    80001d38:	00113c23          	sd	ra,24(sp)
    80001d3c:	00813823          	sd	s0,16(sp)
    80001d40:	02010413          	addi	s0,sp,32
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001d44:	00005797          	auipc	a5,0x5
    80001d48:	0047b783          	ld	a5,4(a5) # 80006d48 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001d4c:	10579073          	csrw	stvec,a5
    TCB* outputThread;
    thread_create(&outputThread, &TCB::outputThreadBody, nullptr);
    80001d50:	00000613          	li	a2,0
    80001d54:	00005597          	auipc	a1,0x5
    80001d58:	01c5b583          	ld	a1,28(a1) # 80006d70 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001d5c:	fe840513          	addi	a0,s0,-24
    80001d60:	fffff097          	auipc	ra,0xfffff
    80001d64:	414080e7          	jalr	1044(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    Riscv::putCBuffer.itemAvailable = new _sem();
    80001d68:	02000513          	li	a0,32
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	334080e7          	jalr	820(ra) # 800020a0 <_Znwm>
#include "tcb.hpp"

class _sem
{
public:
    explicit _sem (int initValue=0) : closed(false), val(initValue) {
    80001d74:	00050023          	sb	zero,0(a0)
    80001d78:	00052223          	sw	zero,4(a0)
    80001d7c:	00052423          	sw	zero,8(a0)
    80001d80:	00052623          	sw	zero,12(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001d84:	00053823          	sd	zero,16(a0)
    80001d88:	00053c23          	sd	zero,24(a0)
    80001d8c:	00005797          	auipc	a5,0x5
    80001d90:	fcc7b783          	ld	a5,-52(a5) # 80006d58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d94:	00a7b023          	sd	a0,0(a5)
    Riscv::getCBuffer.itemAvailable = new _sem();
    80001d98:	02000513          	li	a0,32
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	304080e7          	jalr	772(ra) # 800020a0 <_Znwm>
    80001da4:	00050023          	sb	zero,0(a0)
    80001da8:	00052223          	sw	zero,4(a0)
    80001dac:	00052423          	sw	zero,8(a0)
    80001db0:	00052623          	sw	zero,12(a0)
    80001db4:	00053823          	sd	zero,16(a0)
    80001db8:	00053c23          	sd	zero,24(a0)
    80001dbc:	00005797          	auipc	a5,0x5
    80001dc0:	f847b783          	ld	a5,-124(a5) # 80006d40 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001dc4:	00a7b023          	sd	a0,0(a5)

    TCB* main;
    sem_open(&sem,0);
    80001dc8:	00000593          	li	a1,0
    80001dcc:	00005517          	auipc	a0,0x5
    80001dd0:	00c50513          	addi	a0,a0,12 # 80006dd8 <sem>
    80001dd4:	fffff097          	auipc	ra,0xfffff
    80001dd8:	49c080e7          	jalr	1180(ra) # 80001270 <_Z8sem_openPP4_semj>
    thread_create(&main, nullptr, nullptr);
    80001ddc:	00000613          	li	a2,0
    80001de0:	00000593          	li	a1,0
    80001de4:	fe040513          	addi	a0,s0,-32
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	38c080e7          	jalr	908(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80001df0:	00005797          	auipc	a5,0x5
    80001df4:	f887b783          	ld	a5,-120(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001df8:	fe043703          	ld	a4,-32(s0)
    80001dfc:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e00:	00200793          	li	a5,2
    80001e04:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	f04080e7          	jalr	-252(ra) # 80001d0c <_Z8userMainv>


    printString("Finished\n");
    80001e10:	00004517          	auipc	a0,0x4
    80001e14:	3a050513          	addi	a0,a0,928 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	e3c080e7          	jalr	-452(ra) # 80002c54 <_Z11printStringPKc>
//    }
//    printString("Finished\n");
//
//    return 0;

}
    80001e20:	00000513          	li	a0,0
    80001e24:	01813083          	ld	ra,24(sp)
    80001e28:	01013403          	ld	s0,16(sp)
    80001e2c:	02010113          	addi	sp,sp,32
    80001e30:	00008067          	ret

0000000080001e34 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
TCB *TCB::running = nullptr;
int TCB::x = 0;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(TCB** handle, Body body, void* arg, uint64* stack_space)
{
    80001e34:	fc010113          	addi	sp,sp,-64
    80001e38:	02113c23          	sd	ra,56(sp)
    80001e3c:	02813823          	sd	s0,48(sp)
    80001e40:	02913423          	sd	s1,40(sp)
    80001e44:	03213023          	sd	s2,32(sp)
    80001e48:	01313c23          	sd	s3,24(sp)
    80001e4c:	01413823          	sd	s4,16(sp)
    80001e50:	01513423          	sd	s5,8(sp)
    80001e54:	04010413          	addi	s0,sp,64
    80001e58:	00050a13          	mv	s4,a0
    80001e5c:	00058993          	mv	s3,a1
    80001e60:	00060a93          	mv	s5,a2
    80001e64:	00068913          	mv	s2,a3
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    80001e68:	03800513          	li	a0,56
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	234080e7          	jalr	564(ra) # 800020a0 <_Znwm>
    80001e74:	00050493          	mv	s1,a0
                    }),
            timeSlice(timeSlice),
            id(x),
            finished(false),
            sleeping(false),
            blocked(false)
    80001e78:	01553023          	sd	s5,0(a0)
    80001e7c:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? stack_space : nullptr),
    80001e80:	04098c63          	beqz	s3,80001ed8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xa4>
            blocked(false)
    80001e84:	0124b823          	sd	s2,16(s1)
    80001e88:	00000797          	auipc	a5,0x0
    80001e8c:	14078793          	addi	a5,a5,320 # 80001fc8 <_ZN3TCB13threadWrapperEv>
    80001e90:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001e94:	04090663          	beqz	s2,80001ee0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xac>
    80001e98:	000086b7          	lui	a3,0x8
    80001e9c:	00d90933          	add	s2,s2,a3
            blocked(false)
    80001ea0:	0324b023          	sd	s2,32(s1)
    80001ea4:	00200793          	li	a5,2
    80001ea8:	02f4b423          	sd	a5,40(s1)
    80001eac:	00005797          	auipc	a5,0x5
    80001eb0:	f3c7a783          	lw	a5,-196(a5) # 80006de8 <_ZN3TCB1xE>
    80001eb4:	02f4a823          	sw	a5,48(s1)
    80001eb8:	02048a23          	sb	zero,52(s1)
    80001ebc:	02048aa3          	sb	zero,53(s1)
    80001ec0:	02048b23          	sb	zero,54(s1)
    {
        if (body != nullptr) {
    80001ec4:	02098263          	beqz	s3,80001ee8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xb4>
            Scheduler::put(this);
    80001ec8:	00048513          	mv	a0,s1
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	c30080e7          	jalr	-976(ra) # 80002afc <_ZN9Scheduler3putEP3TCB>
    80001ed4:	0140006f          	j	80001ee8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xb4>
            stack(body != nullptr ? stack_space : nullptr),
    80001ed8:	00000913          	li	s2,0
    80001edc:	fa9ff06f          	j	80001e84 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ee0:	00000913          	li	s2,0
    80001ee4:	fbdff06f          	j	80001ea0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x6c>
    80001ee8:	009a3023          	sd	s1,0(s4)
//    printString("handle iz createThread ");
//    printInteger(x);
    x++;
    80001eec:	00005717          	auipc	a4,0x5
    80001ef0:	efc70713          	addi	a4,a4,-260 # 80006de8 <_ZN3TCB1xE>
    80001ef4:	00072783          	lw	a5,0(a4)
    80001ef8:	0017879b          	addiw	a5,a5,1
    80001efc:	00f72023          	sw	a5,0(a4)
//    printString(":                ");
//    printInteger((uint64)&(**handle));
//    printString("\n");
    return *handle;
    80001f00:	000a3503          	ld	a0,0(s4)
}
    80001f04:	03813083          	ld	ra,56(sp)
    80001f08:	03013403          	ld	s0,48(sp)
    80001f0c:	02813483          	ld	s1,40(sp)
    80001f10:	02013903          	ld	s2,32(sp)
    80001f14:	01813983          	ld	s3,24(sp)
    80001f18:	01013a03          	ld	s4,16(sp)
    80001f1c:	00813a83          	ld	s5,8(sp)
    80001f20:	04010113          	addi	sp,sp,64
    80001f24:	00008067          	ret
    80001f28:	00050913          	mv	s2,a0
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	1c0080e7          	jalr	448(ra) # 800020f0 <_ZdlPv>
    80001f38:	00090513          	mv	a0,s2
    80001f3c:	00006097          	auipc	ra,0x6
    80001f40:	1ec080e7          	jalr	492(ra) # 80008128 <_Unwind_Resume>

0000000080001f44 <_ZN3TCB16outputThreadBodyEPv>:

void TCB::outputThreadBody(void *) {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00c0006f          	j	80001f60 <_ZN3TCB16outputThreadBodyEPv+0x1c>
    while(true){
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT) && (Riscv::putCBuffer.getCount() > 0)){
            char c = Riscv::putCBuffer.getc();
            *((char*)CONSOLE_TX_DATA) = c;
        }
        thread_dispatch();
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	2f4080e7          	jalr	756(ra) # 8000124c <_Z15thread_dispatchv>
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT) && (Riscv::putCBuffer.getCount() > 0)){
    80001f60:	00005797          	auipc	a5,0x5
    80001f64:	dd87b783          	ld	a5,-552(a5) # 80006d38 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001f68:	0007b783          	ld	a5,0(a5)
    80001f6c:	0007c783          	lbu	a5,0(a5)
    80001f70:	0207f793          	andi	a5,a5,32
    80001f74:	fe0782e3          	beqz	a5,80001f58 <_ZN3TCB16outputThreadBodyEPv+0x14>
    80001f78:	00005797          	auipc	a5,0x5
    80001f7c:	de07b783          	ld	a5,-544(a5) # 80006d58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f80:	1187b783          	ld	a5,280(a5)
    80001f84:	fc078ae3          	beqz	a5,80001f58 <_ZN3TCB16outputThreadBodyEPv+0x14>
            char c = Riscv::putCBuffer.getc();
    80001f88:	00005517          	auipc	a0,0x5
    80001f8c:	dd053503          	ld	a0,-560(a0) # 80006d58 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	c0c080e7          	jalr	-1012(ra) # 80002b9c <_ZN6Buffer4getcEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80001f98:	00005797          	auipc	a5,0x5
    80001f9c:	dc87b783          	ld	a5,-568(a5) # 80006d60 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001fa0:	0007b783          	ld	a5,0(a5)
    80001fa4:	00a78023          	sb	a0,0(a5)
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT) && (Riscv::putCBuffer.getCount() > 0)){
    80001fa8:	fb9ff06f          	j	80001f60 <_ZN3TCB16outputThreadBodyEPv+0x1c>

0000000080001fac <_ZN3TCB5yieldEv>:
    }
}

void TCB::yield()
{
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00813423          	sd	s0,8(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001fb8:	00000073          	ecall
}
    80001fbc:	00813403          	ld	s0,8(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN3TCB13threadWrapperEv>:
        TCB::contextSwitch(&old->context, &running->context);
    }
}

void TCB::threadWrapper()
{
    80001fc8:	fe010113          	addi	sp,sp,-32
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00813823          	sd	s0,16(sp)
    80001fd4:	00913423          	sd	s1,8(sp)
    80001fd8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	1bc080e7          	jalr	444(ra) # 80002198 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001fe4:	00005497          	auipc	s1,0x5
    80001fe8:	e0448493          	addi	s1,s1,-508 # 80006de8 <_ZN3TCB1xE>
    80001fec:	0084b783          	ld	a5,8(s1)
    80001ff0:	0087b703          	ld	a4,8(a5)
    80001ff4:	0007b503          	ld	a0,0(a5)
    80001ff8:	000700e7          	jalr	a4
    running->setFinished(true);
    80001ffc:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    80002000:	00100713          	li	a4,1
    80002004:	02e78a23          	sb	a4,52(a5)
    TCB::yield();
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	fa4080e7          	jalr	-92(ra) # 80001fac <_ZN3TCB5yieldEv>
}
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret

0000000080002024 <_ZN3TCB8dispatchEv>:
{
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002038:	00005497          	auipc	s1,0x5
    8000203c:	db84b483          	ld	s1,-584(s1) # 80006df0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002040:	0344c783          	lbu	a5,52(s1)
    if (!old->isFinished() && !old->isSleeping() && !old->isBlocked()) { Scheduler::put(old); }
    80002044:	00079a63          	bnez	a5,80002058 <_ZN3TCB8dispatchEv+0x34>
    bool isSleeping() const { return sleeping; }
    80002048:	0354c783          	lbu	a5,53(s1)
    8000204c:	00079663          	bnez	a5,80002058 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return blocked; }
    80002050:	0364c783          	lbu	a5,54(s1)
    80002054:	02078e63          	beqz	a5,80002090 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	a3c080e7          	jalr	-1476(ra) # 80002a94 <_ZN9Scheduler3getEv>
    80002060:	00005797          	auipc	a5,0x5
    80002064:	d8a7b823          	sd	a0,-624(a5) # 80006df0 <_ZN3TCB7runningE>
    if (old != running) {
    80002068:	00a48a63          	beq	s1,a0,8000207c <_ZN3TCB8dispatchEv+0x58>
        TCB::contextSwitch(&old->context, &running->context);
    8000206c:	01850593          	addi	a1,a0,24
    80002070:	01848513          	addi	a0,s1,24
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	09c080e7          	jalr	156(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret
    if (!old->isFinished() && !old->isSleeping() && !old->isBlocked()) { Scheduler::put(old); }
    80002090:	00048513          	mv	a0,s1
    80002094:	00001097          	auipc	ra,0x1
    80002098:	a68080e7          	jalr	-1432(ra) # 80002afc <_ZN9Scheduler3putEP3TCB>
    8000209c:	fbdff06f          	j	80002058 <_ZN3TCB8dispatchEv+0x34>

00000000800020a0 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00113423          	sd	ra,8(sp)
    800020a8:	00813023          	sd	s0,0(sp)
    800020ac:	01010413          	addi	s0,sp,16
//    printString("ALokacija + ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    800020b0:	00003097          	auipc	ra,0x3
    800020b4:	e58080e7          	jalr	-424(ra) # 80004f08 <__mem_alloc>
}
    800020b8:	00813083          	ld	ra,8(sp)
    800020bc:	00013403          	ld	s0,0(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_Znam>:

void *operator new[](size_t n)
{
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
//    printString("Alokacija steka = ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    800020d8:	00003097          	auipc	ra,0x3
    800020dc:	e30080e7          	jalr	-464(ra) # 80004f08 <__mem_alloc>
}
    800020e0:	00813083          	ld	ra,8(sp)
    800020e4:	00013403          	ld	s0,0(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00113423          	sd	ra,8(sp)
    800020f8:	00813023          	sd	s0,0(sp)
    800020fc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002100:	00003097          	auipc	ra,0x3
    80002104:	d3c080e7          	jalr	-708(ra) # 80004e3c <__mem_free>
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00113423          	sd	ra,8(sp)
    80002120:	00813023          	sd	s0,0(sp)
    80002124:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002128:	00003097          	auipc	ra,0x3
    8000212c:	d14080e7          	jalr	-748(ra) # 80004e3c <__mem_free>
}
    80002130:	00813083          	ld	ra,8(sp)
    80002134:	00013403          	ld	s0,0(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_Z41__static_initialization_and_destruction_0ii>:
    }
    else
    {
        // unexpected trap cause
    }
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00813423          	sd	s0,8(sp)
    80002148:	01010413          	addi	s0,sp,16
    8000214c:	00100793          	li	a5,1
    80002150:	00f50863          	beq	a0,a5,80002160 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002154:	00813403          	ld	s0,8(sp)
    80002158:	01010113          	addi	sp,sp,16
    8000215c:	00008067          	ret
    80002160:	000107b7          	lui	a5,0x10
    80002164:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002168:	fef596e3          	bne	a1,a5,80002154 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(nullptr), tail(nullptr) {}
    8000216c:	00005797          	auipc	a5,0x5
    80002170:	c9478793          	addi	a5,a5,-876 # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    80002174:	0007b023          	sd	zero,0(a5)
    80002178:	0007b423          	sd	zero,8(a5)
    Buffer() : head(0),tail(0),count(0) {}
    8000217c:	1007bc23          	sd	zero,280(a5)
    80002180:	1207b023          	sd	zero,288(a5)
    80002184:	1207b423          	sd	zero,296(a5)
    80002188:	2207bc23          	sd	zero,568(a5)
    8000218c:	2407b023          	sd	zero,576(a5)
    80002190:	2407b423          	sd	zero,584(a5)
    80002194:	fc1ff06f          	j	80002154 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002198 <_ZN5Riscv10popSppSpieEv>:
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800021a4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800021a8:	10200073          	sret
}
    800021ac:	00813403          	ld	s0,8(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    800021b8:	f6010113          	addi	sp,sp,-160
    800021bc:	08113c23          	sd	ra,152(sp)
    800021c0:	08813823          	sd	s0,144(sp)
    800021c4:	08913423          	sd	s1,136(sp)
    800021c8:	09213023          	sd	s2,128(sp)
    800021cc:	07313c23          	sd	s3,120(sp)
    800021d0:	07413823          	sd	s4,112(sp)
    800021d4:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021d8:	142027f3          	csrr	a5,scause
    800021dc:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    800021e0:	f9843703          	ld	a4,-104(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800021e4:	ff870693          	addi	a3,a4,-8
    800021e8:	00100793          	li	a5,1
    800021ec:	02d7fa63          	bgeu	a5,a3,80002220 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
    else if (scause == 0x8000000000000001UL)
    800021f0:	fff00793          	li	a5,-1
    800021f4:	03f79793          	slli	a5,a5,0x3f
    800021f8:	00178793          	addi	a5,a5,1
    800021fc:	3cf70063          	beq	a4,a5,800025bc <_ZN5Riscv20handleSupervisorTrapEv+0x404>
    else if (scause == 0x8000000000000009UL)
    80002200:	fff00793          	li	a5,-1
    80002204:	03f79793          	slli	a5,a5,0x3f
    80002208:	00978793          	addi	a5,a5,9
    8000220c:	12f71263          	bne	a4,a5,80002330 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
        uint64 irq = plic_claim();
    80002210:	00001097          	auipc	ra,0x1
    80002214:	3c4080e7          	jalr	964(ra) # 800035d4 <plic_claim>
    80002218:	00050493          	mv	s1,a0
    8000221c:	4b40006f          	j	800026d0 <_ZN5Riscv20handleSupervisorTrapEv+0x518>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002220:	141027f3          	csrr	a5,sepc
    80002224:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80002228:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000222c:	00478793          	addi	a5,a5,4
    80002230:	f6f43423          	sd	a5,-152(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002234:	100027f3          	csrr	a5,sstatus
    80002238:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    8000223c:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sstatus = r_sstatus();
    80002240:	f6f43823          	sd	a5,-144(s0)
        __asm__ volatile("ld t1, 8*10(fp)");
    80002244:	05043303          	ld	t1,80(s0)
        __asm__ volatile("mv %0, t1" : "=r" (code));
    80002248:	00030793          	mv	a5,t1
        if (code == MEM_ALLOC) {
    8000224c:	00100713          	li	a4,1
    80002250:	0ce78863          	beq	a5,a4,80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        else if (code == MEM_FREE) {
    80002254:	00200713          	li	a4,2
    80002258:	0ce78463          	beq	a5,a4,80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        else if (code == THREAD_CREATE){
    8000225c:	00b00713          	li	a4,11
    80002260:	08e78c63          	beq	a5,a4,800022f8 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if (code == THREAD_EXIT){
    80002264:	00c00713          	li	a4,12
    80002268:	0ee78463          	beq	a5,a4,80002350 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if (code == THREAD_DISPATCH){
    8000226c:	00d00713          	li	a4,13
    80002270:	10e78863          	beq	a5,a4,80002380 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
        else if (code == SEM_OPEN){
    80002274:	01500713          	li	a4,21
    80002278:	12e78863          	beq	a5,a4,800023a8 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
        else if (code == SEM_CLOSE){
    8000227c:	01600713          	li	a4,22
    80002280:	14e78463          	beq	a5,a4,800023c8 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        else if (code == SEM_WAIT){
    80002284:	01700713          	li	a4,23
    80002288:	14e78663          	beq	a5,a4,800023d4 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
        else if (code == SEM_SIGNAL){
    8000228c:	01800713          	li	a4,24
    80002290:	14e78c63          	beq	a5,a4,800023e8 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        else if (code == TIME_SLEEP){
    80002294:	01f00713          	li	a4,31
    80002298:	16e78263          	beq	a5,a4,800023fc <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        else if (code == GET_C){
    8000229c:	02900713          	li	a4,41
    800022a0:	2ae78a63          	beq	a5,a4,80002554 <_ZN5Riscv20handleSupervisorTrapEv+0x39c>
        else if (code == PUT_C){
    800022a4:	02a00713          	li	a4,42
    800022a8:	2ee78a63          	beq	a5,a4,8000259c <_ZN5Riscv20handleSupervisorTrapEv+0x3e4>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022ac:	141027f3          	csrr	a5,sepc
    800022b0:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800022b4:	fb843783          	ld	a5,-72(s0)
            uint64 volatile sepc = r_sepc() + 4;
    800022b8:	00478793          	addi	a5,a5,4
    800022bc:	f6f43c23          	sd	a5,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022c0:	100027f3          	csrr	a5,sstatus
    800022c4:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800022c8:	fb043783          	ld	a5,-80(s0)
            uint64 volatile sstatus = r_sstatus();
    800022cc:	f8f43023          	sd	a5,-128(s0)
            TCB::timeSliceCounter = 0;
    800022d0:	00005797          	auipc	a5,0x5
    800022d4:	a807b783          	ld	a5,-1408(a5) # 80006d50 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022d8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	d48080e7          	jalr	-696(ra) # 80002024 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800022e4:	f8043783          	ld	a5,-128(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800022e8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800022ec:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800022f0:	14179073          	csrw	sepc,a5
}
    800022f4:	02c0006f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800022f8:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    800022fc:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    80002300:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));
    80002304:	00030593          	mv	a1,t1
            __asm__ volatile("ld t1, 8*13(fp)");
    80002308:	06843303          	ld	t1,104(s0)
            __asm__ volatile("mv %0, t1" : "=r" (args));
    8000230c:	00030613          	mv	a2,t1
            __asm__ volatile("ld t1, 8*14(fp)");
    80002310:	07043303          	ld	t1,112(s0)
            __asm__ volatile("mv %0, t1" : "=r" (stack));
    80002314:	00030693          	mv	a3,t1
            TCB::createThread(handle, start_routine, args, stack);
    80002318:	00000097          	auipc	ra,0x0
    8000231c:	b1c080e7          	jalr	-1252(ra) # 80001e34 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
        w_sstatus(sstatus);
    80002320:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002324:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002328:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000232c:	14179073          	csrw	sepc,a5
    80002330:	09813083          	ld	ra,152(sp)
    80002334:	09013403          	ld	s0,144(sp)
    80002338:	08813483          	ld	s1,136(sp)
    8000233c:	08013903          	ld	s2,128(sp)
    80002340:	07813983          	ld	s3,120(sp)
    80002344:	07013a03          	ld	s4,112(sp)
    80002348:	0a010113          	addi	sp,sp,160
    8000234c:	00008067          	ret
            TCB::running->setFinished(true);
    80002350:	00005797          	auipc	a5,0x5
    80002354:	a287b783          	ld	a5,-1496(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002358:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    8000235c:	00100713          	li	a4,1
    80002360:	02e78a23          	sb	a4,52(a5)
            TCB::dispatch();
    80002364:	00000097          	auipc	ra,0x0
    80002368:	cc0080e7          	jalr	-832(ra) # 80002024 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000236c:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002370:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002374:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002378:	14179073          	csrw	sepc,a5
}
    8000237c:	fa5ff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            TCB::timeSliceCounter = 0;
    80002380:	00005797          	auipc	a5,0x5
    80002384:	9d07b783          	ld	a5,-1584(a5) # 80006d50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002388:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	c98080e7          	jalr	-872(ra) # 80002024 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002394:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002398:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000239c:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023a0:	14179073          	csrw	sepc,a5
}
    800023a4:	f7dff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800023a8:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    800023ac:	00038513          	mv	a0,t2
            __asm__ volatile("ld t2, 8*12(fp)");
    800023b0:	06043383          	ld	t2,96(s0)
            __asm__ volatile("mv %0, t2" : "=r" (init));
    800023b4:	00038593          	mv	a1,t2
            _sem::createSemaphore(handle, init);
    800023b8:	0005859b          	sext.w	a1,a1
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	610080e7          	jalr	1552(ra) # 800029cc <_ZN4_sem15createSemaphoreEPPS_j>
    800023c4:	f5dff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800023c8:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    800023cc:	00038793          	mv	a5,t2
    800023d0:	f51ff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800023d4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (id));
    800023d8:	00038513          	mv	a0,t2
            id->wait();
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	4bc080e7          	jalr	1212(ra) # 80002898 <_ZN4_sem4waitEv>
    800023e4:	f3dff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800023e8:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (id));
    800023ec:	00038513          	mv	a0,t2
            id->signal();
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	594080e7          	jalr	1428(ra) # 80002984 <_ZN4_sem6signalEv>
    800023f8:	f29ff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile("ld t2, 8*11(fp)");
    800023fc:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (slice));
    80002400:	00038913          	mv	s2,t2
            if(slice != 0) {
    80002404:	00091863          	bnez	s2,80002414 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
            TCB::dispatch();
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	c1c080e7          	jalr	-996(ra) # 80002024 <_ZN3TCB8dispatchEv>
    80002410:	f11ff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
                TCB::running->setSleeping(true);
    80002414:	00005797          	auipc	a5,0x5
    80002418:	9647b783          	ld	a5,-1692(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000241c:	0007ba03          	ld	s4,0(a5)
    void setSleeping(bool value) { sleeping = value; }
    80002420:	00100793          	li	a5,1
    80002424:	02fa0aa3          	sb	a5,53(s4)
            delete elem;
        }
    }

    void put(TCB* thread, time_t slice){
        if (head == nullptr) {
    80002428:	00005497          	auipc	s1,0x5
    8000242c:	9d84b483          	ld	s1,-1576(s1) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    80002430:	02048663          	beqz	s1,8000245c <_ZN5Riscv20handleSupervisorTrapEv+0x2a4>
            head = new Elem(thread, nullptr, slice);
            tail = head;
        }
        else {
            Elem* temp = head;
            Elem* prev = nullptr;
    80002434:	00000993          	li	s3,0
            while (temp != tail && slice >= temp->relativeTime) {
    80002438:	00005717          	auipc	a4,0x5
    8000243c:	9d073703          	ld	a4,-1584(a4) # 80006e08 <_ZN5Riscv15sleepingThreadsE+0x8>
    80002440:	04970463          	beq	a4,s1,80002488 <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
    80002444:	0104b783          	ld	a5,16(s1)
    80002448:	04f96063          	bltu	s2,a5,80002488 <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
                slice -= temp->relativeTime;
    8000244c:	40f90933          	sub	s2,s2,a5
                prev = temp;
    80002450:	00048993          	mv	s3,s1
                temp = temp->next;
    80002454:	0084b483          	ld	s1,8(s1)
            while (temp != tail && slice >= temp->relativeTime) {
    80002458:	fe1ff06f          	j	80002438 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
            head = new Elem(thread, nullptr, slice);
    8000245c:	01800513          	li	a0,24
    80002460:	00000097          	auipc	ra,0x0
    80002464:	c40080e7          	jalr	-960(ra) # 800020a0 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80002468:	01453023          	sd	s4,0(a0)
    8000246c:	00053423          	sd	zero,8(a0)
    80002470:	01253823          	sd	s2,16(a0)
            head = new Elem(thread, nullptr, slice);
    80002474:	00005717          	auipc	a4,0x5
    80002478:	98c70713          	addi	a4,a4,-1652 # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    8000247c:	00a73023          	sd	a0,0(a4)
            tail = head;
    80002480:	00a73423          	sd	a0,8(a4)
    80002484:	f85ff06f          	j	80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
            }
            if (temp == tail){
    80002488:	02970a63          	beq	a4,s1,800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x304>
                    }
                    tail->relativeTime -= slice;
                }
            }
            else {
                Elem* novi = new Elem(thread, temp, slice);
    8000248c:	01800513          	li	a0,24
    80002490:	00000097          	auipc	ra,0x0
    80002494:	c10080e7          	jalr	-1008(ra) # 800020a0 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80002498:	01453023          	sd	s4,0(a0)
    8000249c:	00953423          	sd	s1,8(a0)
    800024a0:	01253823          	sd	s2,16(a0)
                if (prev) {
    800024a4:	0a098263          	beqz	s3,80002548 <_ZN5Riscv20handleSupervisorTrapEv+0x390>
                    prev->next = novi;
    800024a8:	00a9b423          	sd	a0,8(s3)
                }
                else {
                    head = novi;
                }
                temp->relativeTime -= slice;
    800024ac:	0104b783          	ld	a5,16(s1)
    800024b0:	41278933          	sub	s2,a5,s2
    800024b4:	0124b823          	sd	s2,16(s1)
            }
        }
    }
    800024b8:	f51ff06f          	j	80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                if (slice >= tail->relativeTime){
    800024bc:	01073783          	ld	a5,16(a4)
    800024c0:	02f96e63          	bltu	s2,a5,800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x344>
                    Elem* novi = new Elem(thread, nullptr, slice - tail->relativeTime);
    800024c4:	01800513          	li	a0,24
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	bd8080e7          	jalr	-1064(ra) # 800020a0 <_Znwm>
    800024d0:	00005697          	auipc	a3,0x5
    800024d4:	93068693          	addi	a3,a3,-1744 # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    800024d8:	0086b603          	ld	a2,8(a3)
    800024dc:	01063703          	ld	a4,16(a2)
    800024e0:	40e90933          	sub	s2,s2,a4
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    800024e4:	01453023          	sd	s4,0(a0)
    800024e8:	00053423          	sd	zero,8(a0)
    800024ec:	01253823          	sd	s2,16(a0)
                    tail->next = novi;
    800024f0:	00a63423          	sd	a0,8(a2)
                    tail = novi;
    800024f4:	00a6b423          	sd	a0,8(a3)
    800024f8:	f11ff06f          	j	80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                    Elem* novi = new Elem(thread, tail, slice);
    800024fc:	01800513          	li	a0,24
    80002500:	00000097          	auipc	ra,0x0
    80002504:	ba0080e7          	jalr	-1120(ra) # 800020a0 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80002508:	01453023          	sd	s4,0(a0)
    8000250c:	00005717          	auipc	a4,0x5
    80002510:	8fc73703          	ld	a4,-1796(a4) # 80006e08 <_ZN5Riscv15sleepingThreadsE+0x8>
    80002514:	00e53423          	sd	a4,8(a0)
    80002518:	01253823          	sd	s2,16(a0)
                    if (prev != nullptr){
    8000251c:	02098063          	beqz	s3,8000253c <_ZN5Riscv20handleSupervisorTrapEv+0x384>
                        prev->next = novi;
    80002520:	00a9b423          	sd	a0,8(s3)
                    tail->relativeTime -= slice;
    80002524:	00005717          	auipc	a4,0x5
    80002528:	8e473703          	ld	a4,-1820(a4) # 80006e08 <_ZN5Riscv15sleepingThreadsE+0x8>
    8000252c:	01073783          	ld	a5,16(a4)
    80002530:	41278933          	sub	s2,a5,s2
    80002534:	01273823          	sd	s2,16(a4)
    80002538:	ed1ff06f          	j	80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                        head = novi;
    8000253c:	00005717          	auipc	a4,0x5
    80002540:	8ca73223          	sd	a0,-1852(a4) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    80002544:	fe1ff06f          	j	80002524 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
                    head = novi;
    80002548:	00005717          	auipc	a4,0x5
    8000254c:	8aa73c23          	sd	a0,-1864(a4) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    80002550:	f5dff06f          	j	800024ac <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
            __asm__ volatile("ld t2, 8*11(fp)");
    80002554:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (ret));
    80002558:	00038493          	mv	s1,t2
            *ret = getCBuffer.getc();
    8000255c:	00005517          	auipc	a0,0x5
    80002560:	9d450513          	addi	a0,a0,-1580 # 80006f30 <_ZN5Riscv10getCBufferE>
    80002564:	00000097          	auipc	ra,0x0
    80002568:	638080e7          	jalr	1592(ra) # 80002b9c <_ZN6Buffer4getcEv>
    8000256c:	00a48023          	sb	a0,0(s1)
            if (ret == nullptr){
    80002570:	00048c63          	beqz	s1,80002588 <_ZN5Riscv20handleSupervisorTrapEv+0x3d0>
            w_sstatus(sstatus);
    80002574:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002578:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000257c:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002580:	14179073          	csrw	sepc,a5
}
    80002584:	d9dff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
                printString("pusenje");
    80002588:	00004517          	auipc	a0,0x4
    8000258c:	c3850513          	addi	a0,a0,-968 # 800061c0 <CONSOLE_STATUS+0x1b0>
    80002590:	00000097          	auipc	ra,0x0
    80002594:	6c4080e7          	jalr	1732(ra) # 80002c54 <_Z11printStringPKc>
    80002598:	fddff06f          	j	80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
            __asm__ volatile("ld t2, 8*11(fp)");
    8000259c:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (c));
    800025a0:	00038593          	mv	a1,t2
            putCBuffer.putc(c);
    800025a4:	0ff5f593          	andi	a1,a1,255
    800025a8:	00005517          	auipc	a0,0x5
    800025ac:	86850513          	addi	a0,a0,-1944 # 80006e10 <_ZN5Riscv10putCBufferE>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	648080e7          	jalr	1608(ra) # 80002bf8 <_ZN6Buffer4putcEc>
    800025b8:	d69ff06f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        if (!head) { return -1; }
    800025bc:	00005717          	auipc	a4,0x5
    800025c0:	84473703          	ld	a4,-1980(a4) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    800025c4:	00070e63          	beqz	a4,800025e0 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
        return head->relativeTime;
    800025c8:	01073783          	ld	a5,16(a4)
        if (temp != t1){
    800025cc:	fff00693          	li	a3,-1
    800025d0:	00d78863          	beq	a5,a3,800025e0 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
            head->relativeTime -= 1;
    800025d4:	fff78793          	addi	a5,a5,-1
    800025d8:	00f73823          	sd	a5,16(a4)
            if (Riscv::sleepingThreads.peekFirstSlice() == 0) {
    800025dc:	08078e63          	beqz	a5,80002678 <_ZN5Riscv20handleSupervisorTrapEv+0x4c0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800025e0:	00200793          	li	a5,2
    800025e4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800025e8:	00004717          	auipc	a4,0x4
    800025ec:	76873703          	ld	a4,1896(a4) # 80006d50 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025f0:	00073783          	ld	a5,0(a4)
    800025f4:	00178793          	addi	a5,a5,1
    800025f8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800025fc:	00004717          	auipc	a4,0x4
    80002600:	77c73703          	ld	a4,1916(a4) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002604:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002608:	02873703          	ld	a4,40(a4)
    8000260c:	d2e7e2e3          	bltu	a5,a4,80002330 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002610:	141027f3          	csrr	a5,sepc
    80002614:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002618:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    8000261c:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002620:	100027f3          	csrr	a5,sstatus
    80002624:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002628:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    8000262c:	f8f43823          	sd	a5,-112(s0)
            TCB::timeSliceCounter = 0;
    80002630:	00004797          	auipc	a5,0x4
    80002634:	7207b783          	ld	a5,1824(a5) # 80006d50 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002638:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	9e8080e7          	jalr	-1560(ra) # 80002024 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002644:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002648:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000264c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002650:	14179073          	csrw	sepc,a5
}
    80002654:	cddff06f          	j	80002330 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            if (!head) { tail = nullptr; }
    80002658:	00004797          	auipc	a5,0x4
    8000265c:	7a07b823          	sd	zero,1968(a5) # 80006e08 <_ZN5Riscv15sleepingThreadsE+0x8>
            elem->data->setSleeping(false);
    80002660:	0004b783          	ld	a5,0(s1)
    void setSleeping(bool value) { sleeping = value; }
    80002664:	02078aa3          	sb	zero,53(a5)
            Scheduler::put(elem->data);
    80002668:	0004b503          	ld	a0,0(s1)
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	490080e7          	jalr	1168(ra) # 80002afc <_ZN9Scheduler3putEP3TCB>
            delete elem;
    80002674:	02049663          	bnez	s1,800026a0 <_ZN5Riscv20handleSupervisorTrapEv+0x4e8>
        while (head != nullptr && head->relativeTime == 0){
    80002678:	00004497          	auipc	s1,0x4
    8000267c:	7884b483          	ld	s1,1928(s1) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
    80002680:	f60480e3          	beqz	s1,800025e0 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
    80002684:	0104b783          	ld	a5,16(s1)
    80002688:	f4079ce3          	bnez	a5,800025e0 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
            head = head->next;
    8000268c:	0084b783          	ld	a5,8(s1)
    80002690:	00004717          	auipc	a4,0x4
    80002694:	76f73823          	sd	a5,1904(a4) # 80006e00 <_ZN5Riscv15sleepingThreadsE>
            if (!head) { tail = nullptr; }
    80002698:	fc0794e3          	bnez	a5,80002660 <_ZN5Riscv20handleSupervisorTrapEv+0x4a8>
    8000269c:	fbdff06f          	j	80002658 <_ZN5Riscv20handleSupervisorTrapEv+0x4a0>
            delete elem;
    800026a0:	00048513          	mv	a0,s1
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	a4c080e7          	jalr	-1460(ra) # 800020f0 <_ZdlPv>
    800026ac:	fcdff06f          	j	80002678 <_ZN5Riscv20handleSupervisorTrapEv+0x4c0>
            char c = (*(char*)CONSOLE_RX_DATA);
    800026b0:	00004797          	auipc	a5,0x4
    800026b4:	6807b783          	ld	a5,1664(a5) # 80006d30 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026b8:	0007b783          	ld	a5,0(a5)
            getCBuffer.putc(c);
    800026bc:	0007c583          	lbu	a1,0(a5)
    800026c0:	00005517          	auipc	a0,0x5
    800026c4:	87050513          	addi	a0,a0,-1936 # 80006f30 <_ZN5Riscv10getCBufferE>
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	530080e7          	jalr	1328(ra) # 80002bf8 <_ZN6Buffer4putcEc>
        while (*((char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT) {
    800026d0:	00004797          	auipc	a5,0x4
    800026d4:	6687b783          	ld	a5,1640(a5) # 80006d38 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026d8:	0007b783          	ld	a5,0(a5)
    800026dc:	0007c783          	lbu	a5,0(a5)
    800026e0:	0017f793          	andi	a5,a5,1
    800026e4:	04078063          	beqz	a5,80002724 <_ZN5Riscv20handleSupervisorTrapEv+0x56c>
            if (getCBuffer.itemAvailable == nullptr) {
    800026e8:	00005797          	auipc	a5,0x5
    800026ec:	8487b783          	ld	a5,-1976(a5) # 80006f30 <_ZN5Riscv10getCBufferE>
    800026f0:	fc0790e3          	bnez	a5,800026b0 <_ZN5Riscv20handleSupervisorTrapEv+0x4f8>
                getCBuffer.itemAvailable = new _sem(0);
    800026f4:	02000513          	li	a0,32
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	9a8080e7          	jalr	-1624(ra) # 800020a0 <_Znwm>
    80002700:	00050023          	sb	zero,0(a0)
    80002704:	00052223          	sw	zero,4(a0)
    80002708:	00052423          	sw	zero,8(a0)
    8000270c:	00052623          	sw	zero,12(a0)
    80002710:	00053823          	sd	zero,16(a0)
    80002714:	00053c23          	sd	zero,24(a0)
    80002718:	00005797          	auipc	a5,0x5
    8000271c:	80a7bc23          	sd	a0,-2024(a5) # 80006f30 <_ZN5Riscv10getCBufferE>
    80002720:	f91ff06f          	j	800026b0 <_ZN5Riscv20handleSupervisorTrapEv+0x4f8>
        plic_complete(irq);
    80002724:	00048513          	mv	a0,s1
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	ee4080e7          	jalr	-284(ra) # 8000360c <plic_complete>
    80002730:	c01ff06f          	j	80002330 <_ZN5Riscv20handleSupervisorTrapEv+0x178>

0000000080002734 <_GLOBAL__sub_I__ZN5Riscv15sleepingThreadsE>:
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    80002744:	000105b7          	lui	a1,0x10
    80002748:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000274c:	00100513          	li	a0,1
    80002750:	00000097          	auipc	ra,0x0
    80002754:	9f0080e7          	jalr	-1552(ra) # 80002140 <_Z41__static_initialization_and_destruction_0ii>
    80002758:	00813083          	ld	ra,8(sp)
    8000275c:	00013403          	ld	s0,0(sp)
    80002760:	01010113          	addi	sp,sp,16
    80002764:	00008067          	ret

0000000080002768 <_ZN4_sem5closeEv>:
    }
    return 0;
}

int _sem::close() {
    if (closed)
    80002768:	00054783          	lbu	a5,0(a0)
    8000276c:	08079c63          	bnez	a5,80002804 <_ZN4_sem5closeEv+0x9c>
int _sem::close() {
    80002770:	fe010113          	addi	sp,sp,-32
    80002774:	00113c23          	sd	ra,24(sp)
    80002778:	00813823          	sd	s0,16(sp)
    8000277c:	00913423          	sd	s1,8(sp)
    80002780:	02010413          	addi	s0,sp,32
    80002784:	00050493          	mv	s1,a0
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002788:	01053783          	ld	a5,16(a0)
    8000278c:	00078663          	beqz	a5,80002798 <_ZN4_sem5closeEv+0x30>
        return head->data;
    80002790:	0007b783          	ld	a5,0(a5)
        return -1;
    if (blocked.peekFirst() != nullptr) {
    80002794:	02079863          	bnez	a5,800027c4 <_ZN4_sem5closeEv+0x5c>
            blocked.peekFirst()->setBlocked(false);
            Scheduler::put(blocked.peekFirst());
            blocked.removeFirst();
        }
    }
    closed = true;
    80002798:	00100793          	li	a5,1
    8000279c:	00f48023          	sb	a5,0(s1)
    return 0;
    800027a0:	00000513          	li	a0,0
}
    800027a4:	01813083          	ld	ra,24(sp)
    800027a8:	01013403          	ld	s0,16(sp)
    800027ac:	00813483          	ld	s1,8(sp)
    800027b0:	02010113          	addi	sp,sp,32
    800027b4:	00008067          	ret
        if (!head) { tail = 0; }
    800027b8:	0004bc23          	sd	zero,24(s1)
        delete elem;
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	934080e7          	jalr	-1740(ra) # 800020f0 <_ZdlPv>
        if (!head) { return 0; }
    800027c4:	0104b783          	ld	a5,16(s1)
    800027c8:	fc0788e3          	beqz	a5,80002798 <_ZN4_sem5closeEv+0x30>
        return head->data;
    800027cc:	0007b783          	ld	a5,0(a5)
        while (blocked.peekFirst()) {
    800027d0:	fc0784e3          	beqz	a5,80002798 <_ZN4_sem5closeEv+0x30>
    void setBlocked(bool value) { blocked = value; }
    800027d4:	02078b23          	sb	zero,54(a5)
        if (!head) { return 0; }
    800027d8:	0104b503          	ld	a0,16(s1)
    800027dc:	00050463          	beqz	a0,800027e4 <_ZN4_sem5closeEv+0x7c>
        return head->data;
    800027e0:	00053503          	ld	a0,0(a0)
            Scheduler::put(blocked.peekFirst());
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	318080e7          	jalr	792(ra) # 80002afc <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800027ec:	0104b503          	ld	a0,16(s1)
    800027f0:	fc050ae3          	beqz	a0,800027c4 <_ZN4_sem5closeEv+0x5c>
        head = head->next;
    800027f4:	00853783          	ld	a5,8(a0)
    800027f8:	00f4b823          	sd	a5,16(s1)
        if (!head) { tail = 0; }
    800027fc:	fc0790e3          	bnez	a5,800027bc <_ZN4_sem5closeEv+0x54>
    80002800:	fb9ff06f          	j	800027b8 <_ZN4_sem5closeEv+0x50>
        return -1;
    80002804:	fff00513          	li	a0,-1
}
    80002808:	00008067          	ret

000000008000280c <_ZN4_sem5blockEv>:

void _sem::block() {
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00113c23          	sd	ra,24(sp)
    80002814:	00813823          	sd	s0,16(sp)
    80002818:	00913423          	sd	s1,8(sp)
    8000281c:	01213023          	sd	s2,0(sp)
    80002820:	02010413          	addi	s0,sp,32
    80002824:	00050493          	mv	s1,a0
    NumOfBlockedThreads++;
    80002828:	00c52783          	lw	a5,12(a0)
    8000282c:	0017879b          	addiw	a5,a5,1
    80002830:	00f52623          	sw	a5,12(a0)
    TCB::running->setBlocked(true);
    80002834:	00004797          	auipc	a5,0x4
    80002838:	5447b783          	ld	a5,1348(a5) # 80006d78 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000283c:	0007b903          	ld	s2,0(a5)
    80002840:	00100793          	li	a5,1
    80002844:	02f90b23          	sb	a5,54(s2)
        Elem *elem = new Elem(data, 0);
    80002848:	01000513          	li	a0,16
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	854080e7          	jalr	-1964(ra) # 800020a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002854:	01253023          	sd	s2,0(a0)
    80002858:	00053423          	sd	zero,8(a0)
        if (tail)
    8000285c:	0184b783          	ld	a5,24(s1)
    80002860:	02078663          	beqz	a5,8000288c <_ZN4_sem5blockEv+0x80>
            tail->next = elem;
    80002864:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002868:	00a4bc23          	sd	a0,24(s1)
    blocked.addLast(TCB::running);
    TCB::dispatch();
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	7b8080e7          	jalr	1976(ra) # 80002024 <_ZN3TCB8dispatchEv>
}
    80002874:	01813083          	ld	ra,24(sp)
    80002878:	01013403          	ld	s0,16(sp)
    8000287c:	00813483          	ld	s1,8(sp)
    80002880:	00013903          	ld	s2,0(sp)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00008067          	ret
            head = tail = elem;
    8000288c:	00a4bc23          	sd	a0,24(s1)
    80002890:	00a4b823          	sd	a0,16(s1)
    80002894:	fd9ff06f          	j	8000286c <_ZN4_sem5blockEv+0x60>

0000000080002898 <_ZN4_sem4waitEv>:
int _sem::wait() {
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	02010413          	addi	s0,sp,32
    800028ac:	00050493          	mv	s1,a0
    val--;
    800028b0:	00452783          	lw	a5,4(a0)
    800028b4:	fff7879b          	addiw	a5,a5,-1
    800028b8:	00f52223          	sw	a5,4(a0)
    if (val<0){
    800028bc:	02079713          	slli	a4,a5,0x20
    800028c0:	02074463          	bltz	a4,800028e8 <_ZN4_sem4waitEv+0x50>
    if (!closed)    //Ako semafor nije zatvoren
    800028c4:	0004c783          	lbu	a5,0(s1)
    800028c8:	02078e63          	beqz	a5,80002904 <_ZN4_sem4waitEv+0x6c>
        if (NumOfBlockedThreads == 0)
    800028cc:	00c4a503          	lw	a0,12(s1)
    800028d0:	02051263          	bnez	a0,800028f4 <_ZN4_sem4waitEv+0x5c>
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	02010113          	addi	sp,sp,32
    800028e4:	00008067          	ret
        block();
    800028e8:	00000097          	auipc	ra,0x0
    800028ec:	f24080e7          	jalr	-220(ra) # 8000280c <_ZN4_sem5blockEv>
    800028f0:	fd5ff06f          	j	800028c4 <_ZN4_sem4waitEv+0x2c>
            NumOfBlockedThreads--;
    800028f4:	fff5051b          	addiw	a0,a0,-1
    800028f8:	00a4a623          	sw	a0,12(s1)
            return -1;
    800028fc:	fff00513          	li	a0,-1
    80002900:	fd5ff06f          	j	800028d4 <_ZN4_sem4waitEv+0x3c>
        return 0;
    80002904:	00000513          	li	a0,0
    80002908:	fcdff06f          	j	800028d4 <_ZN4_sem4waitEv+0x3c>

000000008000290c <_ZN4_sem7deblockEv>:

void _sem::deblock() {
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050793          	mv	a5,a0
    NumOfBlockedThreads--;
    80002924:	00c52703          	lw	a4,12(a0)
    80002928:	fff7071b          	addiw	a4,a4,-1
    8000292c:	00e52623          	sw	a4,12(a0)
        if (!head) { return 0; }
    80002930:	01053503          	ld	a0,16(a0)
    80002934:	04050463          	beqz	a0,8000297c <_ZN4_sem7deblockEv+0x70>
        head = head->next;
    80002938:	00853703          	ld	a4,8(a0)
    8000293c:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    80002940:	02070a63          	beqz	a4,80002974 <_ZN4_sem7deblockEv+0x68>
        T *ret = elem->data;
    80002944:	00053483          	ld	s1,0(a0)
        delete elem;
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	7a8080e7          	jalr	1960(ra) # 800020f0 <_ZdlPv>
    80002950:	02048b23          	sb	zero,54(s1)
    temp->setBlocked(false);
//    printString("Nit ");
//    printInteger(temp->getId());
//    printString(" odblokirana\n");

    Scheduler::put(temp);
    80002954:	00048513          	mv	a0,s1
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	1a4080e7          	jalr	420(ra) # 80002afc <_ZN9Scheduler3putEP3TCB>

}
    80002960:	01813083          	ld	ra,24(sp)
    80002964:	01013403          	ld	s0,16(sp)
    80002968:	00813483          	ld	s1,8(sp)
    8000296c:	02010113          	addi	sp,sp,32
    80002970:	00008067          	ret
        if (!head) { tail = 0; }
    80002974:	0007bc23          	sd	zero,24(a5)
    80002978:	fcdff06f          	j	80002944 <_ZN4_sem7deblockEv+0x38>
        if (!head) { return 0; }
    8000297c:	00050493          	mv	s1,a0
    80002980:	fd1ff06f          	j	80002950 <_ZN4_sem7deblockEv+0x44>

0000000080002984 <_ZN4_sem6signalEv>:
    val++;
    80002984:	00452783          	lw	a5,4(a0)
    80002988:	0017879b          	addiw	a5,a5,1
    8000298c:	0007871b          	sext.w	a4,a5
    80002990:	00f52223          	sw	a5,4(a0)
    if (val<=0) {
    80002994:	00e05663          	blez	a4,800029a0 <_ZN4_sem6signalEv+0x1c>
}
    80002998:	00000513          	li	a0,0
    8000299c:	00008067          	ret
int _sem::signal() {
    800029a0:	ff010113          	addi	sp,sp,-16
    800029a4:	00113423          	sd	ra,8(sp)
    800029a8:	00813023          	sd	s0,0(sp)
    800029ac:	01010413          	addi	s0,sp,16
        deblock();
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	f5c080e7          	jalr	-164(ra) # 8000290c <_ZN4_sem7deblockEv>
}
    800029b8:	00000513          	li	a0,0
    800029bc:	00813083          	ld	ra,8(sp)
    800029c0:	00013403          	ld	s0,0(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <_ZN4_sem15createSemaphoreEPPS_j>:

_sem *_sem::createSemaphore(_sem **handle, unsigned int init) {
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00113c23          	sd	ra,24(sp)
    800029d4:	00813823          	sd	s0,16(sp)
    800029d8:	00913423          	sd	s1,8(sp)
    800029dc:	01213023          	sd	s2,0(sp)
    800029e0:	02010413          	addi	s0,sp,32
    800029e4:	00050493          	mv	s1,a0
    800029e8:	00058913          	mv	s2,a1
    *handle = new _sem(init);
    800029ec:	02000513          	li	a0,32
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	6b0080e7          	jalr	1712(ra) # 800020a0 <_Znwm>
#include "tcb.hpp"

class _sem
{
public:
    explicit _sem (int initValue=0) : closed(false), val(initValue) {
    800029f8:	00050023          	sb	zero,0(a0)
    800029fc:	01252223          	sw	s2,4(a0)
    80002a00:	00052423          	sw	zero,8(a0)
    80002a04:	00052623          	sw	zero,12(a0)
    List() : head(0), tail(0) {}
    80002a08:	00053823          	sd	zero,16(a0)
    80002a0c:	00053c23          	sd	zero,24(a0)
    80002a10:	00a4b023          	sd	a0,0(s1)
    return *handle;
}
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	00013903          	ld	s2,0(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret

0000000080002a2c <_ZN4_semD1Ev>:

_sem::~_sem() {
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	00813023          	sd	s0,0(sp)
    80002a38:	01010413          	addi	s0,sp,16
    int ret = close();
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	d2c080e7          	jalr	-724(ra) # 80002768 <_ZN4_sem5closeEv>
    if (ret == -2){

    }
}
    80002a44:	00813083          	ld	ra,8(sp)
    80002a48:	00013403          	ld	s0,0(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret

0000000080002a54 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    80002a60:	00100793          	li	a5,1
    80002a64:	00f50863          	beq	a0,a5,80002a74 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a68:	00813403          	ld	s0,8(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret
    80002a74:	000107b7          	lui	a5,0x10
    80002a78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a7c:	fef596e3          	bne	a1,a5,80002a68 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002a80:	00004797          	auipc	a5,0x4
    80002a84:	5d078793          	addi	a5,a5,1488 # 80007050 <_ZN9Scheduler16readyThreadQueueE>
    80002a88:	0007b023          	sd	zero,0(a5)
    80002a8c:	0007b423          	sd	zero,8(a5)
    80002a90:	fd9ff06f          	j	80002a68 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a94 <_ZN9Scheduler3getEv>:
{
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002aa8:	00004517          	auipc	a0,0x4
    80002aac:	5a853503          	ld	a0,1448(a0) # 80007050 <_ZN9Scheduler16readyThreadQueueE>
    80002ab0:	04050263          	beqz	a0,80002af4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002ab4:	00853783          	ld	a5,8(a0)
    80002ab8:	00004717          	auipc	a4,0x4
    80002abc:	58f73c23          	sd	a5,1432(a4) # 80007050 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002ac0:	02078463          	beqz	a5,80002ae8 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002ac4:	00053483          	ld	s1,0(a0)
        delete elem;
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	628080e7          	jalr	1576(ra) # 800020f0 <_ZdlPv>
}
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	01813083          	ld	ra,24(sp)
    80002ad8:	01013403          	ld	s0,16(sp)
    80002adc:	00813483          	ld	s1,8(sp)
    80002ae0:	02010113          	addi	sp,sp,32
    80002ae4:	00008067          	ret
        if (!head) { tail = 0; }
    80002ae8:	00004797          	auipc	a5,0x4
    80002aec:	5607b823          	sd	zero,1392(a5) # 80007058 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002af0:	fd5ff06f          	j	80002ac4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002af4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002af8:	fd9ff06f          	j	80002ad0 <_ZN9Scheduler3getEv+0x3c>

0000000080002afc <_ZN9Scheduler3putEP3TCB>:
{
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	02010413          	addi	s0,sp,32
    80002b10:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002b14:	01000513          	li	a0,16
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	588080e7          	jalr	1416(ra) # 800020a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b20:	00953023          	sd	s1,0(a0)
    80002b24:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b28:	00004797          	auipc	a5,0x4
    80002b2c:	5307b783          	ld	a5,1328(a5) # 80007058 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b30:	02078263          	beqz	a5,80002b54 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002b34:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b38:	00004797          	auipc	a5,0x4
    80002b3c:	52a7b023          	sd	a0,1312(a5) # 80007058 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b40:	01813083          	ld	ra,24(sp)
    80002b44:	01013403          	ld	s0,16(sp)
    80002b48:	00813483          	ld	s1,8(sp)
    80002b4c:	02010113          	addi	sp,sp,32
    80002b50:	00008067          	ret
            head = tail = elem;
    80002b54:	00004797          	auipc	a5,0x4
    80002b58:	4fc78793          	addi	a5,a5,1276 # 80007050 <_ZN9Scheduler16readyThreadQueueE>
    80002b5c:	00a7b423          	sd	a0,8(a5)
    80002b60:	00a7b023          	sd	a0,0(a5)
    80002b64:	fddff06f          	j	80002b40 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b68 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002b68:	ff010113          	addi	sp,sp,-16
    80002b6c:	00113423          	sd	ra,8(sp)
    80002b70:	00813023          	sd	s0,0(sp)
    80002b74:	01010413          	addi	s0,sp,16
    80002b78:	000105b7          	lui	a1,0x10
    80002b7c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b80:	00100513          	li	a0,1
    80002b84:	00000097          	auipc	ra,0x0
    80002b88:	ed0080e7          	jalr	-304(ra) # 80002a54 <_Z41__static_initialization_and_destruction_0ii>
    80002b8c:	00813083          	ld	ra,8(sp)
    80002b90:	00013403          	ld	s0,0(sp)
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00008067          	ret

0000000080002b9c <_ZN6Buffer4getcEv>:
// Created by os on 9/11/22.
//

#include "../h/buffer.h"

char Buffer::getc () {
    80002b9c:	fe010113          	addi	sp,sp,-32
    80002ba0:	00113c23          	sd	ra,24(sp)
    80002ba4:	00813823          	sd	s0,16(sp)
    80002ba8:	00913423          	sd	s1,8(sp)
    80002bac:	02010413          	addi	s0,sp,32
    80002bb0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002bb4:	00053503          	ld	a0,0(a0)
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	ce0080e7          	jalr	-800(ra) # 80002898 <_ZN4_sem4waitEv>
    char c = buffer[head];
    80002bc0:	1084b783          	ld	a5,264(s1)
    80002bc4:	00f48733          	add	a4,s1,a5
    80002bc8:	00874503          	lbu	a0,8(a4)
    head = (head+1)%KB_SIZE;
    80002bcc:	00178793          	addi	a5,a5,1
    80002bd0:	0ff7f793          	andi	a5,a5,255
    80002bd4:	10f4b423          	sd	a5,264(s1)
    count--;
    80002bd8:	1184b783          	ld	a5,280(s1)
    80002bdc:	fff78793          	addi	a5,a5,-1
    80002be0:	10f4bc23          	sd	a5,280(s1)
    return c;
}
    80002be4:	01813083          	ld	ra,24(sp)
    80002be8:	01013403          	ld	s0,16(sp)
    80002bec:	00813483          	ld	s1,8(sp)
    80002bf0:	02010113          	addi	sp,sp,32
    80002bf4:	00008067          	ret

0000000080002bf8 <_ZN6Buffer4putcEc>:
void Buffer::putc (char c) {
    if (count<KB_SIZE) {
    80002bf8:	11853783          	ld	a5,280(a0)
    80002bfc:	0ff00713          	li	a4,255
    80002c00:	00f77463          	bgeu	a4,a5,80002c08 <_ZN6Buffer4putcEc+0x10>
    80002c04:	00008067          	ret
void Buffer::putc (char c) {
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00113423          	sd	ra,8(sp)
    80002c10:	00813023          	sd	s0,0(sp)
    80002c14:	01010413          	addi	s0,sp,16
        buffer[tail] = c;
    80002c18:	11053703          	ld	a4,272(a0)
    80002c1c:	00e506b3          	add	a3,a0,a4
    80002c20:	00b68423          	sb	a1,8(a3)
        tail = (tail+1)%KB_SIZE;
    80002c24:	00170713          	addi	a4,a4,1
    80002c28:	0ff77713          	andi	a4,a4,255
    80002c2c:	10e53823          	sd	a4,272(a0)
        count++;
    80002c30:	00178793          	addi	a5,a5,1
    80002c34:	10f53c23          	sd	a5,280(a0)
        itemAvailable->signal();
    80002c38:	00053503          	ld	a0,0(a0)
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	d48080e7          	jalr	-696(ra) # 80002984 <_ZN4_sem6signalEv>
    }
    else {

    }
}
    80002c44:	00813083          	ld	ra,8(sp)
    80002c48:	00013403          	ld	s0,0(sp)
    80002c4c:	01010113          	addi	sp,sp,16
    80002c50:	00008067          	ret

0000000080002c54 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
//#include "../lib/console.h"

void printString(char const *string)
{
    80002c54:	fd010113          	addi	sp,sp,-48
    80002c58:	02113423          	sd	ra,40(sp)
    80002c5c:	02813023          	sd	s0,32(sp)
    80002c60:	00913c23          	sd	s1,24(sp)
    80002c64:	01213823          	sd	s2,16(sp)
    80002c68:	03010413          	addi	s0,sp,48
    80002c6c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002c70:	100027f3          	csrr	a5,sstatus
    80002c74:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002c78:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002c7c:	00200793          	li	a5,2
    80002c80:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002c84:	0004c503          	lbu	a0,0(s1)
    80002c88:	00050a63          	beqz	a0,80002c9c <_Z11printStringPKc+0x48>
    {
        putc(*string);
    80002c8c:	ffffe097          	auipc	ra,0xffffe
    80002c90:	768080e7          	jalr	1896(ra) # 800013f4 <_Z4putcc>
        string++;
    80002c94:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002c98:	fedff06f          	j	80002c84 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002c9c:	0009091b          	sext.w	s2,s2
    80002ca0:	00297913          	andi	s2,s2,2
    80002ca4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ca8:	10092073          	csrs	sstatus,s2
}
    80002cac:	02813083          	ld	ra,40(sp)
    80002cb0:	02013403          	ld	s0,32(sp)
    80002cb4:	01813483          	ld	s1,24(sp)
    80002cb8:	01013903          	ld	s2,16(sp)
    80002cbc:	03010113          	addi	sp,sp,48
    80002cc0:	00008067          	ret

0000000080002cc4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002cc4:	fc010113          	addi	sp,sp,-64
    80002cc8:	02113c23          	sd	ra,56(sp)
    80002ccc:	02813823          	sd	s0,48(sp)
    80002cd0:	02913423          	sd	s1,40(sp)
    80002cd4:	03213023          	sd	s2,32(sp)
    80002cd8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002cdc:	100027f3          	csrr	a5,sstatus
    80002ce0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002ce4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002ce8:	00200793          	li	a5,2
    80002cec:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002cf0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002cf4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002cf8:	00a00613          	li	a2,10
    80002cfc:	02c5773b          	remuw	a4,a0,a2
    80002d00:	02071693          	slli	a3,a4,0x20
    80002d04:	0206d693          	srli	a3,a3,0x20
    80002d08:	00003717          	auipc	a4,0x3
    80002d0c:	4c070713          	addi	a4,a4,1216 # 800061c8 <_ZZ12printIntegermE6digits>
    80002d10:	00d70733          	add	a4,a4,a3
    80002d14:	00074703          	lbu	a4,0(a4)
    80002d18:	fe040693          	addi	a3,s0,-32
    80002d1c:	009687b3          	add	a5,a3,s1
    80002d20:	0014849b          	addiw	s1,s1,1
    80002d24:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002d28:	0005071b          	sext.w	a4,a0
    80002d2c:	02c5553b          	divuw	a0,a0,a2
    80002d30:	00900793          	li	a5,9
    80002d34:	fce7e2e3          	bltu	a5,a4,80002cf8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { putc(buf[i]); }
    80002d38:	fff4849b          	addiw	s1,s1,-1
    80002d3c:	0004ce63          	bltz	s1,80002d58 <_Z12printIntegerm+0x94>
    80002d40:	fe040793          	addi	a5,s0,-32
    80002d44:	009787b3          	add	a5,a5,s1
    80002d48:	ff07c503          	lbu	a0,-16(a5)
    80002d4c:	ffffe097          	auipc	ra,0xffffe
    80002d50:	6a8080e7          	jalr	1704(ra) # 800013f4 <_Z4putcc>
    80002d54:	fe5ff06f          	j	80002d38 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002d58:	0009091b          	sext.w	s2,s2
    80002d5c:	00297913          	andi	s2,s2,2
    80002d60:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002d64:	10092073          	csrs	sstatus,s2
    80002d68:	03813083          	ld	ra,56(sp)
    80002d6c:	03013403          	ld	s0,48(sp)
    80002d70:	02813483          	ld	s1,40(sp)
    80002d74:	02013903          	ld	s2,32(sp)
    80002d78:	04010113          	addi	sp,sp,64
    80002d7c:	00008067          	ret

0000000080002d80 <start>:
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00813423          	sd	s0,8(sp)
    80002d88:	01010413          	addi	s0,sp,16
    80002d8c:	300027f3          	csrr	a5,mstatus
    80002d90:	ffffe737          	lui	a4,0xffffe
    80002d94:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff652f>
    80002d98:	00e7f7b3          	and	a5,a5,a4
    80002d9c:	00001737          	lui	a4,0x1
    80002da0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002da4:	00e7e7b3          	or	a5,a5,a4
    80002da8:	30079073          	csrw	mstatus,a5
    80002dac:	00000797          	auipc	a5,0x0
    80002db0:	16078793          	addi	a5,a5,352 # 80002f0c <system_main>
    80002db4:	34179073          	csrw	mepc,a5
    80002db8:	00000793          	li	a5,0
    80002dbc:	18079073          	csrw	satp,a5
    80002dc0:	000107b7          	lui	a5,0x10
    80002dc4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002dc8:	30279073          	csrw	medeleg,a5
    80002dcc:	30379073          	csrw	mideleg,a5
    80002dd0:	104027f3          	csrr	a5,sie
    80002dd4:	2227e793          	ori	a5,a5,546
    80002dd8:	10479073          	csrw	sie,a5
    80002ddc:	fff00793          	li	a5,-1
    80002de0:	00a7d793          	srli	a5,a5,0xa
    80002de4:	3b079073          	csrw	pmpaddr0,a5
    80002de8:	00f00793          	li	a5,15
    80002dec:	3a079073          	csrw	pmpcfg0,a5
    80002df0:	f14027f3          	csrr	a5,mhartid
    80002df4:	0200c737          	lui	a4,0x200c
    80002df8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002dfc:	0007869b          	sext.w	a3,a5
    80002e00:	00269713          	slli	a4,a3,0x2
    80002e04:	000f4637          	lui	a2,0xf4
    80002e08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002e0c:	00d70733          	add	a4,a4,a3
    80002e10:	0037979b          	slliw	a5,a5,0x3
    80002e14:	020046b7          	lui	a3,0x2004
    80002e18:	00d787b3          	add	a5,a5,a3
    80002e1c:	00c585b3          	add	a1,a1,a2
    80002e20:	00371693          	slli	a3,a4,0x3
    80002e24:	00004717          	auipc	a4,0x4
    80002e28:	23c70713          	addi	a4,a4,572 # 80007060 <timer_scratch>
    80002e2c:	00b7b023          	sd	a1,0(a5)
    80002e30:	00d70733          	add	a4,a4,a3
    80002e34:	00f73c23          	sd	a5,24(a4)
    80002e38:	02c73023          	sd	a2,32(a4)
    80002e3c:	34071073          	csrw	mscratch,a4
    80002e40:	00000797          	auipc	a5,0x0
    80002e44:	6e078793          	addi	a5,a5,1760 # 80003520 <timervec>
    80002e48:	30579073          	csrw	mtvec,a5
    80002e4c:	300027f3          	csrr	a5,mstatus
    80002e50:	0087e793          	ori	a5,a5,8
    80002e54:	30079073          	csrw	mstatus,a5
    80002e58:	304027f3          	csrr	a5,mie
    80002e5c:	0807e793          	ori	a5,a5,128
    80002e60:	30479073          	csrw	mie,a5
    80002e64:	f14027f3          	csrr	a5,mhartid
    80002e68:	0007879b          	sext.w	a5,a5
    80002e6c:	00078213          	mv	tp,a5
    80002e70:	30200073          	mret
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <timerinit>:
    80002e80:	ff010113          	addi	sp,sp,-16
    80002e84:	00813423          	sd	s0,8(sp)
    80002e88:	01010413          	addi	s0,sp,16
    80002e8c:	f14027f3          	csrr	a5,mhartid
    80002e90:	0200c737          	lui	a4,0x200c
    80002e94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002e98:	0007869b          	sext.w	a3,a5
    80002e9c:	00269713          	slli	a4,a3,0x2
    80002ea0:	000f4637          	lui	a2,0xf4
    80002ea4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002ea8:	00d70733          	add	a4,a4,a3
    80002eac:	0037979b          	slliw	a5,a5,0x3
    80002eb0:	020046b7          	lui	a3,0x2004
    80002eb4:	00d787b3          	add	a5,a5,a3
    80002eb8:	00c585b3          	add	a1,a1,a2
    80002ebc:	00371693          	slli	a3,a4,0x3
    80002ec0:	00004717          	auipc	a4,0x4
    80002ec4:	1a070713          	addi	a4,a4,416 # 80007060 <timer_scratch>
    80002ec8:	00b7b023          	sd	a1,0(a5)
    80002ecc:	00d70733          	add	a4,a4,a3
    80002ed0:	00f73c23          	sd	a5,24(a4)
    80002ed4:	02c73023          	sd	a2,32(a4)
    80002ed8:	34071073          	csrw	mscratch,a4
    80002edc:	00000797          	auipc	a5,0x0
    80002ee0:	64478793          	addi	a5,a5,1604 # 80003520 <timervec>
    80002ee4:	30579073          	csrw	mtvec,a5
    80002ee8:	300027f3          	csrr	a5,mstatus
    80002eec:	0087e793          	ori	a5,a5,8
    80002ef0:	30079073          	csrw	mstatus,a5
    80002ef4:	304027f3          	csrr	a5,mie
    80002ef8:	0807e793          	ori	a5,a5,128
    80002efc:	30479073          	csrw	mie,a5
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <system_main>:
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	0c4080e7          	jalr	196(ra) # 80002fe4 <cpuid>
    80002f28:	00004497          	auipc	s1,0x4
    80002f2c:	e7848493          	addi	s1,s1,-392 # 80006da0 <started>
    80002f30:	02050263          	beqz	a0,80002f54 <system_main+0x48>
    80002f34:	0004a783          	lw	a5,0(s1)
    80002f38:	0007879b          	sext.w	a5,a5
    80002f3c:	fe078ce3          	beqz	a5,80002f34 <system_main+0x28>
    80002f40:	0ff0000f          	fence
    80002f44:	00003517          	auipc	a0,0x3
    80002f48:	2c450513          	addi	a0,a0,708 # 80006208 <_ZZ12printIntegermE6digits+0x40>
    80002f4c:	00001097          	auipc	ra,0x1
    80002f50:	a70080e7          	jalr	-1424(ra) # 800039bc <panic>
    80002f54:	00001097          	auipc	ra,0x1
    80002f58:	9c4080e7          	jalr	-1596(ra) # 80003918 <consoleinit>
    80002f5c:	00001097          	auipc	ra,0x1
    80002f60:	150080e7          	jalr	336(ra) # 800040ac <printfinit>
    80002f64:	00003517          	auipc	a0,0x3
    80002f68:	25450513          	addi	a0,a0,596 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	aac080e7          	jalr	-1364(ra) # 80003a18 <__printf>
    80002f74:	00003517          	auipc	a0,0x3
    80002f78:	26450513          	addi	a0,a0,612 # 800061d8 <_ZZ12printIntegermE6digits+0x10>
    80002f7c:	00001097          	auipc	ra,0x1
    80002f80:	a9c080e7          	jalr	-1380(ra) # 80003a18 <__printf>
    80002f84:	00003517          	auipc	a0,0x3
    80002f88:	23450513          	addi	a0,a0,564 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002f8c:	00001097          	auipc	ra,0x1
    80002f90:	a8c080e7          	jalr	-1396(ra) # 80003a18 <__printf>
    80002f94:	00001097          	auipc	ra,0x1
    80002f98:	4a4080e7          	jalr	1188(ra) # 80004438 <kinit>
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	148080e7          	jalr	328(ra) # 800030e4 <trapinit>
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	16c080e7          	jalr	364(ra) # 80003110 <trapinithart>
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	5b4080e7          	jalr	1460(ra) # 80003560 <plicinit>
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	5d4080e7          	jalr	1492(ra) # 80003588 <plicinithart>
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	078080e7          	jalr	120(ra) # 80003034 <userinit>
    80002fc4:	0ff0000f          	fence
    80002fc8:	00100793          	li	a5,1
    80002fcc:	00003517          	auipc	a0,0x3
    80002fd0:	22450513          	addi	a0,a0,548 # 800061f0 <_ZZ12printIntegermE6digits+0x28>
    80002fd4:	00f4a023          	sw	a5,0(s1)
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	a40080e7          	jalr	-1472(ra) # 80003a18 <__printf>
    80002fe0:	0000006f          	j	80002fe0 <system_main+0xd4>

0000000080002fe4 <cpuid>:
    80002fe4:	ff010113          	addi	sp,sp,-16
    80002fe8:	00813423          	sd	s0,8(sp)
    80002fec:	01010413          	addi	s0,sp,16
    80002ff0:	00020513          	mv	a0,tp
    80002ff4:	00813403          	ld	s0,8(sp)
    80002ff8:	0005051b          	sext.w	a0,a0
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <mycpu>:
    80003004:	ff010113          	addi	sp,sp,-16
    80003008:	00813423          	sd	s0,8(sp)
    8000300c:	01010413          	addi	s0,sp,16
    80003010:	00020793          	mv	a5,tp
    80003014:	00813403          	ld	s0,8(sp)
    80003018:	0007879b          	sext.w	a5,a5
    8000301c:	00779793          	slli	a5,a5,0x7
    80003020:	00005517          	auipc	a0,0x5
    80003024:	07050513          	addi	a0,a0,112 # 80008090 <cpus>
    80003028:	00f50533          	add	a0,a0,a5
    8000302c:	01010113          	addi	sp,sp,16
    80003030:	00008067          	ret

0000000080003034 <userinit>:
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
    80003040:	00813403          	ld	s0,8(sp)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	fffff317          	auipc	t1,0xfffff
    8000304c:	cec30067          	jr	-788(t1) # 80001d34 <main>

0000000080003050 <either_copyout>:
    80003050:	ff010113          	addi	sp,sp,-16
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	00113423          	sd	ra,8(sp)
    8000305c:	01010413          	addi	s0,sp,16
    80003060:	02051663          	bnez	a0,8000308c <either_copyout+0x3c>
    80003064:	00058513          	mv	a0,a1
    80003068:	00060593          	mv	a1,a2
    8000306c:	0006861b          	sext.w	a2,a3
    80003070:	00002097          	auipc	ra,0x2
    80003074:	c54080e7          	jalr	-940(ra) # 80004cc4 <__memmove>
    80003078:	00813083          	ld	ra,8(sp)
    8000307c:	00013403          	ld	s0,0(sp)
    80003080:	00000513          	li	a0,0
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret
    8000308c:	00003517          	auipc	a0,0x3
    80003090:	1a450513          	addi	a0,a0,420 # 80006230 <_ZZ12printIntegermE6digits+0x68>
    80003094:	00001097          	auipc	ra,0x1
    80003098:	928080e7          	jalr	-1752(ra) # 800039bc <panic>

000000008000309c <either_copyin>:
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00813023          	sd	s0,0(sp)
    800030a4:	00113423          	sd	ra,8(sp)
    800030a8:	01010413          	addi	s0,sp,16
    800030ac:	02059463          	bnez	a1,800030d4 <either_copyin+0x38>
    800030b0:	00060593          	mv	a1,a2
    800030b4:	0006861b          	sext.w	a2,a3
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	c0c080e7          	jalr	-1012(ra) # 80004cc4 <__memmove>
    800030c0:	00813083          	ld	ra,8(sp)
    800030c4:	00013403          	ld	s0,0(sp)
    800030c8:	00000513          	li	a0,0
    800030cc:	01010113          	addi	sp,sp,16
    800030d0:	00008067          	ret
    800030d4:	00003517          	auipc	a0,0x3
    800030d8:	18450513          	addi	a0,a0,388 # 80006258 <_ZZ12printIntegermE6digits+0x90>
    800030dc:	00001097          	auipc	ra,0x1
    800030e0:	8e0080e7          	jalr	-1824(ra) # 800039bc <panic>

00000000800030e4 <trapinit>:
    800030e4:	ff010113          	addi	sp,sp,-16
    800030e8:	00813423          	sd	s0,8(sp)
    800030ec:	01010413          	addi	s0,sp,16
    800030f0:	00813403          	ld	s0,8(sp)
    800030f4:	00003597          	auipc	a1,0x3
    800030f8:	18c58593          	addi	a1,a1,396 # 80006280 <_ZZ12printIntegermE6digits+0xb8>
    800030fc:	00005517          	auipc	a0,0x5
    80003100:	01450513          	addi	a0,a0,20 # 80008110 <tickslock>
    80003104:	01010113          	addi	sp,sp,16
    80003108:	00001317          	auipc	t1,0x1
    8000310c:	5c030067          	jr	1472(t1) # 800046c8 <initlock>

0000000080003110 <trapinithart>:
    80003110:	ff010113          	addi	sp,sp,-16
    80003114:	00813423          	sd	s0,8(sp)
    80003118:	01010413          	addi	s0,sp,16
    8000311c:	00000797          	auipc	a5,0x0
    80003120:	2f478793          	addi	a5,a5,756 # 80003410 <kernelvec>
    80003124:	10579073          	csrw	stvec,a5
    80003128:	00813403          	ld	s0,8(sp)
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret

0000000080003134 <usertrap>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00813403          	ld	s0,8(sp)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <usertrapret>:
    8000314c:	ff010113          	addi	sp,sp,-16
    80003150:	00813423          	sd	s0,8(sp)
    80003154:	01010413          	addi	s0,sp,16
    80003158:	00813403          	ld	s0,8(sp)
    8000315c:	01010113          	addi	sp,sp,16
    80003160:	00008067          	ret

0000000080003164 <kerneltrap>:
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	142025f3          	csrr	a1,scause
    8000317c:	100027f3          	csrr	a5,sstatus
    80003180:	0027f793          	andi	a5,a5,2
    80003184:	10079c63          	bnez	a5,8000329c <kerneltrap+0x138>
    80003188:	142027f3          	csrr	a5,scause
    8000318c:	0207ce63          	bltz	a5,800031c8 <kerneltrap+0x64>
    80003190:	00003517          	auipc	a0,0x3
    80003194:	13850513          	addi	a0,a0,312 # 800062c8 <_ZZ12printIntegermE6digits+0x100>
    80003198:	00001097          	auipc	ra,0x1
    8000319c:	880080e7          	jalr	-1920(ra) # 80003a18 <__printf>
    800031a0:	141025f3          	csrr	a1,sepc
    800031a4:	14302673          	csrr	a2,stval
    800031a8:	00003517          	auipc	a0,0x3
    800031ac:	13050513          	addi	a0,a0,304 # 800062d8 <_ZZ12printIntegermE6digits+0x110>
    800031b0:	00001097          	auipc	ra,0x1
    800031b4:	868080e7          	jalr	-1944(ra) # 80003a18 <__printf>
    800031b8:	00003517          	auipc	a0,0x3
    800031bc:	13850513          	addi	a0,a0,312 # 800062f0 <_ZZ12printIntegermE6digits+0x128>
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	7fc080e7          	jalr	2044(ra) # 800039bc <panic>
    800031c8:	0ff7f713          	andi	a4,a5,255
    800031cc:	00900693          	li	a3,9
    800031d0:	04d70063          	beq	a4,a3,80003210 <kerneltrap+0xac>
    800031d4:	fff00713          	li	a4,-1
    800031d8:	03f71713          	slli	a4,a4,0x3f
    800031dc:	00170713          	addi	a4,a4,1
    800031e0:	fae798e3          	bne	a5,a4,80003190 <kerneltrap+0x2c>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	e00080e7          	jalr	-512(ra) # 80002fe4 <cpuid>
    800031ec:	06050663          	beqz	a0,80003258 <kerneltrap+0xf4>
    800031f0:	144027f3          	csrr	a5,sip
    800031f4:	ffd7f793          	andi	a5,a5,-3
    800031f8:	14479073          	csrw	sip,a5
    800031fc:	01813083          	ld	ra,24(sp)
    80003200:	01013403          	ld	s0,16(sp)
    80003204:	00813483          	ld	s1,8(sp)
    80003208:	02010113          	addi	sp,sp,32
    8000320c:	00008067          	ret
    80003210:	00000097          	auipc	ra,0x0
    80003214:	3c4080e7          	jalr	964(ra) # 800035d4 <plic_claim>
    80003218:	00a00793          	li	a5,10
    8000321c:	00050493          	mv	s1,a0
    80003220:	06f50863          	beq	a0,a5,80003290 <kerneltrap+0x12c>
    80003224:	fc050ce3          	beqz	a0,800031fc <kerneltrap+0x98>
    80003228:	00050593          	mv	a1,a0
    8000322c:	00003517          	auipc	a0,0x3
    80003230:	07c50513          	addi	a0,a0,124 # 800062a8 <_ZZ12printIntegermE6digits+0xe0>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	7e4080e7          	jalr	2020(ra) # 80003a18 <__printf>
    8000323c:	01013403          	ld	s0,16(sp)
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	00048513          	mv	a0,s1
    80003248:	00813483          	ld	s1,8(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00000317          	auipc	t1,0x0
    80003254:	3bc30067          	jr	956(t1) # 8000360c <plic_complete>
    80003258:	00005517          	auipc	a0,0x5
    8000325c:	eb850513          	addi	a0,a0,-328 # 80008110 <tickslock>
    80003260:	00001097          	auipc	ra,0x1
    80003264:	48c080e7          	jalr	1164(ra) # 800046ec <acquire>
    80003268:	00004717          	auipc	a4,0x4
    8000326c:	b3c70713          	addi	a4,a4,-1220 # 80006da4 <ticks>
    80003270:	00072783          	lw	a5,0(a4)
    80003274:	00005517          	auipc	a0,0x5
    80003278:	e9c50513          	addi	a0,a0,-356 # 80008110 <tickslock>
    8000327c:	0017879b          	addiw	a5,a5,1
    80003280:	00f72023          	sw	a5,0(a4)
    80003284:	00001097          	auipc	ra,0x1
    80003288:	534080e7          	jalr	1332(ra) # 800047b8 <release>
    8000328c:	f65ff06f          	j	800031f0 <kerneltrap+0x8c>
    80003290:	00001097          	auipc	ra,0x1
    80003294:	090080e7          	jalr	144(ra) # 80004320 <uartintr>
    80003298:	fa5ff06f          	j	8000323c <kerneltrap+0xd8>
    8000329c:	00003517          	auipc	a0,0x3
    800032a0:	fec50513          	addi	a0,a0,-20 # 80006288 <_ZZ12printIntegermE6digits+0xc0>
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	718080e7          	jalr	1816(ra) # 800039bc <panic>

00000000800032ac <clockintr>:
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	00113c23          	sd	ra,24(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	00005497          	auipc	s1,0x5
    800032c4:	e5048493          	addi	s1,s1,-432 # 80008110 <tickslock>
    800032c8:	00048513          	mv	a0,s1
    800032cc:	00001097          	auipc	ra,0x1
    800032d0:	420080e7          	jalr	1056(ra) # 800046ec <acquire>
    800032d4:	00004717          	auipc	a4,0x4
    800032d8:	ad070713          	addi	a4,a4,-1328 # 80006da4 <ticks>
    800032dc:	00072783          	lw	a5,0(a4)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	01813083          	ld	ra,24(sp)
    800032e8:	00048513          	mv	a0,s1
    800032ec:	0017879b          	addiw	a5,a5,1
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	00f72023          	sw	a5,0(a4)
    800032f8:	02010113          	addi	sp,sp,32
    800032fc:	00001317          	auipc	t1,0x1
    80003300:	4bc30067          	jr	1212(t1) # 800047b8 <release>

0000000080003304 <devintr>:
    80003304:	142027f3          	csrr	a5,scause
    80003308:	00000513          	li	a0,0
    8000330c:	0007c463          	bltz	a5,80003314 <devintr+0x10>
    80003310:	00008067          	ret
    80003314:	fe010113          	addi	sp,sp,-32
    80003318:	00813823          	sd	s0,16(sp)
    8000331c:	00113c23          	sd	ra,24(sp)
    80003320:	00913423          	sd	s1,8(sp)
    80003324:	02010413          	addi	s0,sp,32
    80003328:	0ff7f713          	andi	a4,a5,255
    8000332c:	00900693          	li	a3,9
    80003330:	04d70c63          	beq	a4,a3,80003388 <devintr+0x84>
    80003334:	fff00713          	li	a4,-1
    80003338:	03f71713          	slli	a4,a4,0x3f
    8000333c:	00170713          	addi	a4,a4,1
    80003340:	00e78c63          	beq	a5,a4,80003358 <devintr+0x54>
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00813483          	ld	s1,8(sp)
    80003350:	02010113          	addi	sp,sp,32
    80003354:	00008067          	ret
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	c8c080e7          	jalr	-884(ra) # 80002fe4 <cpuid>
    80003360:	06050663          	beqz	a0,800033cc <devintr+0xc8>
    80003364:	144027f3          	csrr	a5,sip
    80003368:	ffd7f793          	andi	a5,a5,-3
    8000336c:	14479073          	csrw	sip,a5
    80003370:	01813083          	ld	ra,24(sp)
    80003374:	01013403          	ld	s0,16(sp)
    80003378:	00813483          	ld	s1,8(sp)
    8000337c:	00200513          	li	a0,2
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	24c080e7          	jalr	588(ra) # 800035d4 <plic_claim>
    80003390:	00a00793          	li	a5,10
    80003394:	00050493          	mv	s1,a0
    80003398:	06f50663          	beq	a0,a5,80003404 <devintr+0x100>
    8000339c:	00100513          	li	a0,1
    800033a0:	fa0482e3          	beqz	s1,80003344 <devintr+0x40>
    800033a4:	00048593          	mv	a1,s1
    800033a8:	00003517          	auipc	a0,0x3
    800033ac:	f0050513          	addi	a0,a0,-256 # 800062a8 <_ZZ12printIntegermE6digits+0xe0>
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	668080e7          	jalr	1640(ra) # 80003a18 <__printf>
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	250080e7          	jalr	592(ra) # 8000360c <plic_complete>
    800033c4:	00100513          	li	a0,1
    800033c8:	f7dff06f          	j	80003344 <devintr+0x40>
    800033cc:	00005517          	auipc	a0,0x5
    800033d0:	d4450513          	addi	a0,a0,-700 # 80008110 <tickslock>
    800033d4:	00001097          	auipc	ra,0x1
    800033d8:	318080e7          	jalr	792(ra) # 800046ec <acquire>
    800033dc:	00004717          	auipc	a4,0x4
    800033e0:	9c870713          	addi	a4,a4,-1592 # 80006da4 <ticks>
    800033e4:	00072783          	lw	a5,0(a4)
    800033e8:	00005517          	auipc	a0,0x5
    800033ec:	d2850513          	addi	a0,a0,-728 # 80008110 <tickslock>
    800033f0:	0017879b          	addiw	a5,a5,1
    800033f4:	00f72023          	sw	a5,0(a4)
    800033f8:	00001097          	auipc	ra,0x1
    800033fc:	3c0080e7          	jalr	960(ra) # 800047b8 <release>
    80003400:	f65ff06f          	j	80003364 <devintr+0x60>
    80003404:	00001097          	auipc	ra,0x1
    80003408:	f1c080e7          	jalr	-228(ra) # 80004320 <uartintr>
    8000340c:	fadff06f          	j	800033b8 <devintr+0xb4>

0000000080003410 <kernelvec>:
    80003410:	f0010113          	addi	sp,sp,-256
    80003414:	00113023          	sd	ra,0(sp)
    80003418:	00213423          	sd	sp,8(sp)
    8000341c:	00313823          	sd	gp,16(sp)
    80003420:	00413c23          	sd	tp,24(sp)
    80003424:	02513023          	sd	t0,32(sp)
    80003428:	02613423          	sd	t1,40(sp)
    8000342c:	02713823          	sd	t2,48(sp)
    80003430:	02813c23          	sd	s0,56(sp)
    80003434:	04913023          	sd	s1,64(sp)
    80003438:	04a13423          	sd	a0,72(sp)
    8000343c:	04b13823          	sd	a1,80(sp)
    80003440:	04c13c23          	sd	a2,88(sp)
    80003444:	06d13023          	sd	a3,96(sp)
    80003448:	06e13423          	sd	a4,104(sp)
    8000344c:	06f13823          	sd	a5,112(sp)
    80003450:	07013c23          	sd	a6,120(sp)
    80003454:	09113023          	sd	a7,128(sp)
    80003458:	09213423          	sd	s2,136(sp)
    8000345c:	09313823          	sd	s3,144(sp)
    80003460:	09413c23          	sd	s4,152(sp)
    80003464:	0b513023          	sd	s5,160(sp)
    80003468:	0b613423          	sd	s6,168(sp)
    8000346c:	0b713823          	sd	s7,176(sp)
    80003470:	0b813c23          	sd	s8,184(sp)
    80003474:	0d913023          	sd	s9,192(sp)
    80003478:	0da13423          	sd	s10,200(sp)
    8000347c:	0db13823          	sd	s11,208(sp)
    80003480:	0dc13c23          	sd	t3,216(sp)
    80003484:	0fd13023          	sd	t4,224(sp)
    80003488:	0fe13423          	sd	t5,232(sp)
    8000348c:	0ff13823          	sd	t6,240(sp)
    80003490:	cd5ff0ef          	jal	ra,80003164 <kerneltrap>
    80003494:	00013083          	ld	ra,0(sp)
    80003498:	00813103          	ld	sp,8(sp)
    8000349c:	01013183          	ld	gp,16(sp)
    800034a0:	02013283          	ld	t0,32(sp)
    800034a4:	02813303          	ld	t1,40(sp)
    800034a8:	03013383          	ld	t2,48(sp)
    800034ac:	03813403          	ld	s0,56(sp)
    800034b0:	04013483          	ld	s1,64(sp)
    800034b4:	04813503          	ld	a0,72(sp)
    800034b8:	05013583          	ld	a1,80(sp)
    800034bc:	05813603          	ld	a2,88(sp)
    800034c0:	06013683          	ld	a3,96(sp)
    800034c4:	06813703          	ld	a4,104(sp)
    800034c8:	07013783          	ld	a5,112(sp)
    800034cc:	07813803          	ld	a6,120(sp)
    800034d0:	08013883          	ld	a7,128(sp)
    800034d4:	08813903          	ld	s2,136(sp)
    800034d8:	09013983          	ld	s3,144(sp)
    800034dc:	09813a03          	ld	s4,152(sp)
    800034e0:	0a013a83          	ld	s5,160(sp)
    800034e4:	0a813b03          	ld	s6,168(sp)
    800034e8:	0b013b83          	ld	s7,176(sp)
    800034ec:	0b813c03          	ld	s8,184(sp)
    800034f0:	0c013c83          	ld	s9,192(sp)
    800034f4:	0c813d03          	ld	s10,200(sp)
    800034f8:	0d013d83          	ld	s11,208(sp)
    800034fc:	0d813e03          	ld	t3,216(sp)
    80003500:	0e013e83          	ld	t4,224(sp)
    80003504:	0e813f03          	ld	t5,232(sp)
    80003508:	0f013f83          	ld	t6,240(sp)
    8000350c:	10010113          	addi	sp,sp,256
    80003510:	10200073          	sret
    80003514:	00000013          	nop
    80003518:	00000013          	nop
    8000351c:	00000013          	nop

0000000080003520 <timervec>:
    80003520:	34051573          	csrrw	a0,mscratch,a0
    80003524:	00b53023          	sd	a1,0(a0)
    80003528:	00c53423          	sd	a2,8(a0)
    8000352c:	00d53823          	sd	a3,16(a0)
    80003530:	01853583          	ld	a1,24(a0)
    80003534:	02053603          	ld	a2,32(a0)
    80003538:	0005b683          	ld	a3,0(a1)
    8000353c:	00c686b3          	add	a3,a3,a2
    80003540:	00d5b023          	sd	a3,0(a1)
    80003544:	00200593          	li	a1,2
    80003548:	14459073          	csrw	sip,a1
    8000354c:	01053683          	ld	a3,16(a0)
    80003550:	00853603          	ld	a2,8(a0)
    80003554:	00053583          	ld	a1,0(a0)
    80003558:	34051573          	csrrw	a0,mscratch,a0
    8000355c:	30200073          	mret

0000000080003560 <plicinit>:
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813423          	sd	s0,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    8000356c:	00813403          	ld	s0,8(sp)
    80003570:	0c0007b7          	lui	a5,0xc000
    80003574:	00100713          	li	a4,1
    80003578:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000357c:	00e7a223          	sw	a4,4(a5)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret

0000000080003588 <plicinithart>:
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813023          	sd	s0,0(sp)
    80003590:	00113423          	sd	ra,8(sp)
    80003594:	01010413          	addi	s0,sp,16
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	a4c080e7          	jalr	-1460(ra) # 80002fe4 <cpuid>
    800035a0:	0085171b          	slliw	a4,a0,0x8
    800035a4:	0c0027b7          	lui	a5,0xc002
    800035a8:	00e787b3          	add	a5,a5,a4
    800035ac:	40200713          	li	a4,1026
    800035b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800035b4:	00813083          	ld	ra,8(sp)
    800035b8:	00013403          	ld	s0,0(sp)
    800035bc:	00d5151b          	slliw	a0,a0,0xd
    800035c0:	0c2017b7          	lui	a5,0xc201
    800035c4:	00a78533          	add	a0,a5,a0
    800035c8:	00052023          	sw	zero,0(a0)
    800035cc:	01010113          	addi	sp,sp,16
    800035d0:	00008067          	ret

00000000800035d4 <plic_claim>:
    800035d4:	ff010113          	addi	sp,sp,-16
    800035d8:	00813023          	sd	s0,0(sp)
    800035dc:	00113423          	sd	ra,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	a00080e7          	jalr	-1536(ra) # 80002fe4 <cpuid>
    800035ec:	00813083          	ld	ra,8(sp)
    800035f0:	00013403          	ld	s0,0(sp)
    800035f4:	00d5151b          	slliw	a0,a0,0xd
    800035f8:	0c2017b7          	lui	a5,0xc201
    800035fc:	00a78533          	add	a0,a5,a0
    80003600:	00452503          	lw	a0,4(a0)
    80003604:	01010113          	addi	sp,sp,16
    80003608:	00008067          	ret

000000008000360c <plic_complete>:
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	00050493          	mv	s1,a0
    80003624:	00000097          	auipc	ra,0x0
    80003628:	9c0080e7          	jalr	-1600(ra) # 80002fe4 <cpuid>
    8000362c:	01813083          	ld	ra,24(sp)
    80003630:	01013403          	ld	s0,16(sp)
    80003634:	00d5179b          	slliw	a5,a0,0xd
    80003638:	0c201737          	lui	a4,0xc201
    8000363c:	00f707b3          	add	a5,a4,a5
    80003640:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	02010113          	addi	sp,sp,32
    8000364c:	00008067          	ret

0000000080003650 <consolewrite>:
    80003650:	fb010113          	addi	sp,sp,-80
    80003654:	04813023          	sd	s0,64(sp)
    80003658:	04113423          	sd	ra,72(sp)
    8000365c:	02913c23          	sd	s1,56(sp)
    80003660:	03213823          	sd	s2,48(sp)
    80003664:	03313423          	sd	s3,40(sp)
    80003668:	03413023          	sd	s4,32(sp)
    8000366c:	01513c23          	sd	s5,24(sp)
    80003670:	05010413          	addi	s0,sp,80
    80003674:	06c05c63          	blez	a2,800036ec <consolewrite+0x9c>
    80003678:	00060993          	mv	s3,a2
    8000367c:	00050a13          	mv	s4,a0
    80003680:	00058493          	mv	s1,a1
    80003684:	00000913          	li	s2,0
    80003688:	fff00a93          	li	s5,-1
    8000368c:	01c0006f          	j	800036a8 <consolewrite+0x58>
    80003690:	fbf44503          	lbu	a0,-65(s0)
    80003694:	0019091b          	addiw	s2,s2,1
    80003698:	00148493          	addi	s1,s1,1
    8000369c:	00001097          	auipc	ra,0x1
    800036a0:	a9c080e7          	jalr	-1380(ra) # 80004138 <uartputc>
    800036a4:	03298063          	beq	s3,s2,800036c4 <consolewrite+0x74>
    800036a8:	00048613          	mv	a2,s1
    800036ac:	00100693          	li	a3,1
    800036b0:	000a0593          	mv	a1,s4
    800036b4:	fbf40513          	addi	a0,s0,-65
    800036b8:	00000097          	auipc	ra,0x0
    800036bc:	9e4080e7          	jalr	-1564(ra) # 8000309c <either_copyin>
    800036c0:	fd5518e3          	bne	a0,s5,80003690 <consolewrite+0x40>
    800036c4:	04813083          	ld	ra,72(sp)
    800036c8:	04013403          	ld	s0,64(sp)
    800036cc:	03813483          	ld	s1,56(sp)
    800036d0:	02813983          	ld	s3,40(sp)
    800036d4:	02013a03          	ld	s4,32(sp)
    800036d8:	01813a83          	ld	s5,24(sp)
    800036dc:	00090513          	mv	a0,s2
    800036e0:	03013903          	ld	s2,48(sp)
    800036e4:	05010113          	addi	sp,sp,80
    800036e8:	00008067          	ret
    800036ec:	00000913          	li	s2,0
    800036f0:	fd5ff06f          	j	800036c4 <consolewrite+0x74>

00000000800036f4 <consoleread>:
    800036f4:	f9010113          	addi	sp,sp,-112
    800036f8:	06813023          	sd	s0,96(sp)
    800036fc:	04913c23          	sd	s1,88(sp)
    80003700:	05213823          	sd	s2,80(sp)
    80003704:	05313423          	sd	s3,72(sp)
    80003708:	05413023          	sd	s4,64(sp)
    8000370c:	03513c23          	sd	s5,56(sp)
    80003710:	03613823          	sd	s6,48(sp)
    80003714:	03713423          	sd	s7,40(sp)
    80003718:	03813023          	sd	s8,32(sp)
    8000371c:	06113423          	sd	ra,104(sp)
    80003720:	01913c23          	sd	s9,24(sp)
    80003724:	07010413          	addi	s0,sp,112
    80003728:	00060b93          	mv	s7,a2
    8000372c:	00050913          	mv	s2,a0
    80003730:	00058c13          	mv	s8,a1
    80003734:	00060b1b          	sext.w	s6,a2
    80003738:	00005497          	auipc	s1,0x5
    8000373c:	a0048493          	addi	s1,s1,-1536 # 80008138 <cons>
    80003740:	00400993          	li	s3,4
    80003744:	fff00a13          	li	s4,-1
    80003748:	00a00a93          	li	s5,10
    8000374c:	05705e63          	blez	s7,800037a8 <consoleread+0xb4>
    80003750:	09c4a703          	lw	a4,156(s1)
    80003754:	0984a783          	lw	a5,152(s1)
    80003758:	0007071b          	sext.w	a4,a4
    8000375c:	08e78463          	beq	a5,a4,800037e4 <consoleread+0xf0>
    80003760:	07f7f713          	andi	a4,a5,127
    80003764:	00e48733          	add	a4,s1,a4
    80003768:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000376c:	0017869b          	addiw	a3,a5,1
    80003770:	08d4ac23          	sw	a3,152(s1)
    80003774:	00070c9b          	sext.w	s9,a4
    80003778:	0b370663          	beq	a4,s3,80003824 <consoleread+0x130>
    8000377c:	00100693          	li	a3,1
    80003780:	f9f40613          	addi	a2,s0,-97
    80003784:	000c0593          	mv	a1,s8
    80003788:	00090513          	mv	a0,s2
    8000378c:	f8e40fa3          	sb	a4,-97(s0)
    80003790:	00000097          	auipc	ra,0x0
    80003794:	8c0080e7          	jalr	-1856(ra) # 80003050 <either_copyout>
    80003798:	01450863          	beq	a0,s4,800037a8 <consoleread+0xb4>
    8000379c:	001c0c13          	addi	s8,s8,1
    800037a0:	fffb8b9b          	addiw	s7,s7,-1
    800037a4:	fb5c94e3          	bne	s9,s5,8000374c <consoleread+0x58>
    800037a8:	000b851b          	sext.w	a0,s7
    800037ac:	06813083          	ld	ra,104(sp)
    800037b0:	06013403          	ld	s0,96(sp)
    800037b4:	05813483          	ld	s1,88(sp)
    800037b8:	05013903          	ld	s2,80(sp)
    800037bc:	04813983          	ld	s3,72(sp)
    800037c0:	04013a03          	ld	s4,64(sp)
    800037c4:	03813a83          	ld	s5,56(sp)
    800037c8:	02813b83          	ld	s7,40(sp)
    800037cc:	02013c03          	ld	s8,32(sp)
    800037d0:	01813c83          	ld	s9,24(sp)
    800037d4:	40ab053b          	subw	a0,s6,a0
    800037d8:	03013b03          	ld	s6,48(sp)
    800037dc:	07010113          	addi	sp,sp,112
    800037e0:	00008067          	ret
    800037e4:	00001097          	auipc	ra,0x1
    800037e8:	1d8080e7          	jalr	472(ra) # 800049bc <push_on>
    800037ec:	0984a703          	lw	a4,152(s1)
    800037f0:	09c4a783          	lw	a5,156(s1)
    800037f4:	0007879b          	sext.w	a5,a5
    800037f8:	fef70ce3          	beq	a4,a5,800037f0 <consoleread+0xfc>
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	234080e7          	jalr	564(ra) # 80004a30 <pop_on>
    80003804:	0984a783          	lw	a5,152(s1)
    80003808:	07f7f713          	andi	a4,a5,127
    8000380c:	00e48733          	add	a4,s1,a4
    80003810:	01874703          	lbu	a4,24(a4)
    80003814:	0017869b          	addiw	a3,a5,1
    80003818:	08d4ac23          	sw	a3,152(s1)
    8000381c:	00070c9b          	sext.w	s9,a4
    80003820:	f5371ee3          	bne	a4,s3,8000377c <consoleread+0x88>
    80003824:	000b851b          	sext.w	a0,s7
    80003828:	f96bf2e3          	bgeu	s7,s6,800037ac <consoleread+0xb8>
    8000382c:	08f4ac23          	sw	a5,152(s1)
    80003830:	f7dff06f          	j	800037ac <consoleread+0xb8>

0000000080003834 <consputc>:
    80003834:	10000793          	li	a5,256
    80003838:	00f50663          	beq	a0,a5,80003844 <consputc+0x10>
    8000383c:	00001317          	auipc	t1,0x1
    80003840:	9f430067          	jr	-1548(t1) # 80004230 <uartputc_sync>
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00113423          	sd	ra,8(sp)
    8000384c:	00813023          	sd	s0,0(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	00800513          	li	a0,8
    80003858:	00001097          	auipc	ra,0x1
    8000385c:	9d8080e7          	jalr	-1576(ra) # 80004230 <uartputc_sync>
    80003860:	02000513          	li	a0,32
    80003864:	00001097          	auipc	ra,0x1
    80003868:	9cc080e7          	jalr	-1588(ra) # 80004230 <uartputc_sync>
    8000386c:	00013403          	ld	s0,0(sp)
    80003870:	00813083          	ld	ra,8(sp)
    80003874:	00800513          	li	a0,8
    80003878:	01010113          	addi	sp,sp,16
    8000387c:	00001317          	auipc	t1,0x1
    80003880:	9b430067          	jr	-1612(t1) # 80004230 <uartputc_sync>

0000000080003884 <consoleintr>:
    80003884:	fe010113          	addi	sp,sp,-32
    80003888:	00813823          	sd	s0,16(sp)
    8000388c:	00913423          	sd	s1,8(sp)
    80003890:	01213023          	sd	s2,0(sp)
    80003894:	00113c23          	sd	ra,24(sp)
    80003898:	02010413          	addi	s0,sp,32
    8000389c:	00005917          	auipc	s2,0x5
    800038a0:	89c90913          	addi	s2,s2,-1892 # 80008138 <cons>
    800038a4:	00050493          	mv	s1,a0
    800038a8:	00090513          	mv	a0,s2
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	e40080e7          	jalr	-448(ra) # 800046ec <acquire>
    800038b4:	02048c63          	beqz	s1,800038ec <consoleintr+0x68>
    800038b8:	0a092783          	lw	a5,160(s2)
    800038bc:	09892703          	lw	a4,152(s2)
    800038c0:	07f00693          	li	a3,127
    800038c4:	40e7873b          	subw	a4,a5,a4
    800038c8:	02e6e263          	bltu	a3,a4,800038ec <consoleintr+0x68>
    800038cc:	00d00713          	li	a4,13
    800038d0:	04e48063          	beq	s1,a4,80003910 <consoleintr+0x8c>
    800038d4:	07f7f713          	andi	a4,a5,127
    800038d8:	00e90733          	add	a4,s2,a4
    800038dc:	0017879b          	addiw	a5,a5,1
    800038e0:	0af92023          	sw	a5,160(s2)
    800038e4:	00970c23          	sb	s1,24(a4)
    800038e8:	08f92e23          	sw	a5,156(s2)
    800038ec:	01013403          	ld	s0,16(sp)
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	00005517          	auipc	a0,0x5
    80003900:	83c50513          	addi	a0,a0,-1988 # 80008138 <cons>
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00001317          	auipc	t1,0x1
    8000390c:	eb030067          	jr	-336(t1) # 800047b8 <release>
    80003910:	00a00493          	li	s1,10
    80003914:	fc1ff06f          	j	800038d4 <consoleintr+0x50>

0000000080003918 <consoleinit>:
    80003918:	fe010113          	addi	sp,sp,-32
    8000391c:	00113c23          	sd	ra,24(sp)
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00913423          	sd	s1,8(sp)
    80003928:	02010413          	addi	s0,sp,32
    8000392c:	00005497          	auipc	s1,0x5
    80003930:	80c48493          	addi	s1,s1,-2036 # 80008138 <cons>
    80003934:	00048513          	mv	a0,s1
    80003938:	00003597          	auipc	a1,0x3
    8000393c:	9c858593          	addi	a1,a1,-1592 # 80006300 <_ZZ12printIntegermE6digits+0x138>
    80003940:	00001097          	auipc	ra,0x1
    80003944:	d88080e7          	jalr	-632(ra) # 800046c8 <initlock>
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	7ac080e7          	jalr	1964(ra) # 800040f4 <uartinit>
    80003950:	01813083          	ld	ra,24(sp)
    80003954:	01013403          	ld	s0,16(sp)
    80003958:	00000797          	auipc	a5,0x0
    8000395c:	d9c78793          	addi	a5,a5,-612 # 800036f4 <consoleread>
    80003960:	0af4bc23          	sd	a5,184(s1)
    80003964:	00000797          	auipc	a5,0x0
    80003968:	cec78793          	addi	a5,a5,-788 # 80003650 <consolewrite>
    8000396c:	0cf4b023          	sd	a5,192(s1)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <console_read>:
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00813423          	sd	s0,8(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	00813403          	ld	s0,8(sp)
    8000398c:	00005317          	auipc	t1,0x5
    80003990:	86433303          	ld	t1,-1948(t1) # 800081f0 <devsw+0x10>
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00030067          	jr	t1

000000008000399c <console_write>:
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00813423          	sd	s0,8(sp)
    800039a4:	01010413          	addi	s0,sp,16
    800039a8:	00813403          	ld	s0,8(sp)
    800039ac:	00005317          	auipc	t1,0x5
    800039b0:	84c33303          	ld	t1,-1972(t1) # 800081f8 <devsw+0x18>
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00030067          	jr	t1

00000000800039bc <panic>:
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	02010413          	addi	s0,sp,32
    800039d0:	00050493          	mv	s1,a0
    800039d4:	00003517          	auipc	a0,0x3
    800039d8:	93450513          	addi	a0,a0,-1740 # 80006308 <_ZZ12printIntegermE6digits+0x140>
    800039dc:	00005797          	auipc	a5,0x5
    800039e0:	8a07ae23          	sw	zero,-1860(a5) # 80008298 <pr+0x18>
    800039e4:	00000097          	auipc	ra,0x0
    800039e8:	034080e7          	jalr	52(ra) # 80003a18 <__printf>
    800039ec:	00048513          	mv	a0,s1
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	028080e7          	jalr	40(ra) # 80003a18 <__printf>
    800039f8:	00002517          	auipc	a0,0x2
    800039fc:	7c050513          	addi	a0,a0,1984 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	018080e7          	jalr	24(ra) # 80003a18 <__printf>
    80003a08:	00100793          	li	a5,1
    80003a0c:	00003717          	auipc	a4,0x3
    80003a10:	38f72e23          	sw	a5,924(a4) # 80006da8 <panicked>
    80003a14:	0000006f          	j	80003a14 <panic+0x58>

0000000080003a18 <__printf>:
    80003a18:	f3010113          	addi	sp,sp,-208
    80003a1c:	08813023          	sd	s0,128(sp)
    80003a20:	07313423          	sd	s3,104(sp)
    80003a24:	09010413          	addi	s0,sp,144
    80003a28:	05813023          	sd	s8,64(sp)
    80003a2c:	08113423          	sd	ra,136(sp)
    80003a30:	06913c23          	sd	s1,120(sp)
    80003a34:	07213823          	sd	s2,112(sp)
    80003a38:	07413023          	sd	s4,96(sp)
    80003a3c:	05513c23          	sd	s5,88(sp)
    80003a40:	05613823          	sd	s6,80(sp)
    80003a44:	05713423          	sd	s7,72(sp)
    80003a48:	03913c23          	sd	s9,56(sp)
    80003a4c:	03a13823          	sd	s10,48(sp)
    80003a50:	03b13423          	sd	s11,40(sp)
    80003a54:	00005317          	auipc	t1,0x5
    80003a58:	82c30313          	addi	t1,t1,-2004 # 80008280 <pr>
    80003a5c:	01832c03          	lw	s8,24(t1)
    80003a60:	00b43423          	sd	a1,8(s0)
    80003a64:	00c43823          	sd	a2,16(s0)
    80003a68:	00d43c23          	sd	a3,24(s0)
    80003a6c:	02e43023          	sd	a4,32(s0)
    80003a70:	02f43423          	sd	a5,40(s0)
    80003a74:	03043823          	sd	a6,48(s0)
    80003a78:	03143c23          	sd	a7,56(s0)
    80003a7c:	00050993          	mv	s3,a0
    80003a80:	4a0c1663          	bnez	s8,80003f2c <__printf+0x514>
    80003a84:	60098c63          	beqz	s3,8000409c <__printf+0x684>
    80003a88:	0009c503          	lbu	a0,0(s3)
    80003a8c:	00840793          	addi	a5,s0,8
    80003a90:	f6f43c23          	sd	a5,-136(s0)
    80003a94:	00000493          	li	s1,0
    80003a98:	22050063          	beqz	a0,80003cb8 <__printf+0x2a0>
    80003a9c:	00002a37          	lui	s4,0x2
    80003aa0:	00018ab7          	lui	s5,0x18
    80003aa4:	000f4b37          	lui	s6,0xf4
    80003aa8:	00989bb7          	lui	s7,0x989
    80003aac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003ab0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003ab4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003ab8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003abc:	00148c9b          	addiw	s9,s1,1
    80003ac0:	02500793          	li	a5,37
    80003ac4:	01998933          	add	s2,s3,s9
    80003ac8:	38f51263          	bne	a0,a5,80003e4c <__printf+0x434>
    80003acc:	00094783          	lbu	a5,0(s2)
    80003ad0:	00078c9b          	sext.w	s9,a5
    80003ad4:	1e078263          	beqz	a5,80003cb8 <__printf+0x2a0>
    80003ad8:	0024849b          	addiw	s1,s1,2
    80003adc:	07000713          	li	a4,112
    80003ae0:	00998933          	add	s2,s3,s1
    80003ae4:	38e78a63          	beq	a5,a4,80003e78 <__printf+0x460>
    80003ae8:	20f76863          	bltu	a4,a5,80003cf8 <__printf+0x2e0>
    80003aec:	42a78863          	beq	a5,a0,80003f1c <__printf+0x504>
    80003af0:	06400713          	li	a4,100
    80003af4:	40e79663          	bne	a5,a4,80003f00 <__printf+0x4e8>
    80003af8:	f7843783          	ld	a5,-136(s0)
    80003afc:	0007a603          	lw	a2,0(a5)
    80003b00:	00878793          	addi	a5,a5,8
    80003b04:	f6f43c23          	sd	a5,-136(s0)
    80003b08:	42064a63          	bltz	a2,80003f3c <__printf+0x524>
    80003b0c:	00a00713          	li	a4,10
    80003b10:	02e677bb          	remuw	a5,a2,a4
    80003b14:	00003d97          	auipc	s11,0x3
    80003b18:	81cd8d93          	addi	s11,s11,-2020 # 80006330 <digits>
    80003b1c:	00900593          	li	a1,9
    80003b20:	0006051b          	sext.w	a0,a2
    80003b24:	00000c93          	li	s9,0
    80003b28:	02079793          	slli	a5,a5,0x20
    80003b2c:	0207d793          	srli	a5,a5,0x20
    80003b30:	00fd87b3          	add	a5,s11,a5
    80003b34:	0007c783          	lbu	a5,0(a5)
    80003b38:	02e656bb          	divuw	a3,a2,a4
    80003b3c:	f8f40023          	sb	a5,-128(s0)
    80003b40:	14c5d863          	bge	a1,a2,80003c90 <__printf+0x278>
    80003b44:	06300593          	li	a1,99
    80003b48:	00100c93          	li	s9,1
    80003b4c:	02e6f7bb          	remuw	a5,a3,a4
    80003b50:	02079793          	slli	a5,a5,0x20
    80003b54:	0207d793          	srli	a5,a5,0x20
    80003b58:	00fd87b3          	add	a5,s11,a5
    80003b5c:	0007c783          	lbu	a5,0(a5)
    80003b60:	02e6d73b          	divuw	a4,a3,a4
    80003b64:	f8f400a3          	sb	a5,-127(s0)
    80003b68:	12a5f463          	bgeu	a1,a0,80003c90 <__printf+0x278>
    80003b6c:	00a00693          	li	a3,10
    80003b70:	00900593          	li	a1,9
    80003b74:	02d777bb          	remuw	a5,a4,a3
    80003b78:	02079793          	slli	a5,a5,0x20
    80003b7c:	0207d793          	srli	a5,a5,0x20
    80003b80:	00fd87b3          	add	a5,s11,a5
    80003b84:	0007c503          	lbu	a0,0(a5)
    80003b88:	02d757bb          	divuw	a5,a4,a3
    80003b8c:	f8a40123          	sb	a0,-126(s0)
    80003b90:	48e5f263          	bgeu	a1,a4,80004014 <__printf+0x5fc>
    80003b94:	06300513          	li	a0,99
    80003b98:	02d7f5bb          	remuw	a1,a5,a3
    80003b9c:	02059593          	slli	a1,a1,0x20
    80003ba0:	0205d593          	srli	a1,a1,0x20
    80003ba4:	00bd85b3          	add	a1,s11,a1
    80003ba8:	0005c583          	lbu	a1,0(a1)
    80003bac:	02d7d7bb          	divuw	a5,a5,a3
    80003bb0:	f8b401a3          	sb	a1,-125(s0)
    80003bb4:	48e57263          	bgeu	a0,a4,80004038 <__printf+0x620>
    80003bb8:	3e700513          	li	a0,999
    80003bbc:	02d7f5bb          	remuw	a1,a5,a3
    80003bc0:	02059593          	slli	a1,a1,0x20
    80003bc4:	0205d593          	srli	a1,a1,0x20
    80003bc8:	00bd85b3          	add	a1,s11,a1
    80003bcc:	0005c583          	lbu	a1,0(a1)
    80003bd0:	02d7d7bb          	divuw	a5,a5,a3
    80003bd4:	f8b40223          	sb	a1,-124(s0)
    80003bd8:	46e57663          	bgeu	a0,a4,80004044 <__printf+0x62c>
    80003bdc:	02d7f5bb          	remuw	a1,a5,a3
    80003be0:	02059593          	slli	a1,a1,0x20
    80003be4:	0205d593          	srli	a1,a1,0x20
    80003be8:	00bd85b3          	add	a1,s11,a1
    80003bec:	0005c583          	lbu	a1,0(a1)
    80003bf0:	02d7d7bb          	divuw	a5,a5,a3
    80003bf4:	f8b402a3          	sb	a1,-123(s0)
    80003bf8:	46ea7863          	bgeu	s4,a4,80004068 <__printf+0x650>
    80003bfc:	02d7f5bb          	remuw	a1,a5,a3
    80003c00:	02059593          	slli	a1,a1,0x20
    80003c04:	0205d593          	srli	a1,a1,0x20
    80003c08:	00bd85b3          	add	a1,s11,a1
    80003c0c:	0005c583          	lbu	a1,0(a1)
    80003c10:	02d7d7bb          	divuw	a5,a5,a3
    80003c14:	f8b40323          	sb	a1,-122(s0)
    80003c18:	3eeaf863          	bgeu	s5,a4,80004008 <__printf+0x5f0>
    80003c1c:	02d7f5bb          	remuw	a1,a5,a3
    80003c20:	02059593          	slli	a1,a1,0x20
    80003c24:	0205d593          	srli	a1,a1,0x20
    80003c28:	00bd85b3          	add	a1,s11,a1
    80003c2c:	0005c583          	lbu	a1,0(a1)
    80003c30:	02d7d7bb          	divuw	a5,a5,a3
    80003c34:	f8b403a3          	sb	a1,-121(s0)
    80003c38:	42eb7e63          	bgeu	s6,a4,80004074 <__printf+0x65c>
    80003c3c:	02d7f5bb          	remuw	a1,a5,a3
    80003c40:	02059593          	slli	a1,a1,0x20
    80003c44:	0205d593          	srli	a1,a1,0x20
    80003c48:	00bd85b3          	add	a1,s11,a1
    80003c4c:	0005c583          	lbu	a1,0(a1)
    80003c50:	02d7d7bb          	divuw	a5,a5,a3
    80003c54:	f8b40423          	sb	a1,-120(s0)
    80003c58:	42ebfc63          	bgeu	s7,a4,80004090 <__printf+0x678>
    80003c5c:	02079793          	slli	a5,a5,0x20
    80003c60:	0207d793          	srli	a5,a5,0x20
    80003c64:	00fd8db3          	add	s11,s11,a5
    80003c68:	000dc703          	lbu	a4,0(s11)
    80003c6c:	00a00793          	li	a5,10
    80003c70:	00900c93          	li	s9,9
    80003c74:	f8e404a3          	sb	a4,-119(s0)
    80003c78:	00065c63          	bgez	a2,80003c90 <__printf+0x278>
    80003c7c:	f9040713          	addi	a4,s0,-112
    80003c80:	00f70733          	add	a4,a4,a5
    80003c84:	02d00693          	li	a3,45
    80003c88:	fed70823          	sb	a3,-16(a4)
    80003c8c:	00078c93          	mv	s9,a5
    80003c90:	f8040793          	addi	a5,s0,-128
    80003c94:	01978cb3          	add	s9,a5,s9
    80003c98:	f7f40d13          	addi	s10,s0,-129
    80003c9c:	000cc503          	lbu	a0,0(s9)
    80003ca0:	fffc8c93          	addi	s9,s9,-1
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	b90080e7          	jalr	-1136(ra) # 80003834 <consputc>
    80003cac:	ffac98e3          	bne	s9,s10,80003c9c <__printf+0x284>
    80003cb0:	00094503          	lbu	a0,0(s2)
    80003cb4:	e00514e3          	bnez	a0,80003abc <__printf+0xa4>
    80003cb8:	1a0c1663          	bnez	s8,80003e64 <__printf+0x44c>
    80003cbc:	08813083          	ld	ra,136(sp)
    80003cc0:	08013403          	ld	s0,128(sp)
    80003cc4:	07813483          	ld	s1,120(sp)
    80003cc8:	07013903          	ld	s2,112(sp)
    80003ccc:	06813983          	ld	s3,104(sp)
    80003cd0:	06013a03          	ld	s4,96(sp)
    80003cd4:	05813a83          	ld	s5,88(sp)
    80003cd8:	05013b03          	ld	s6,80(sp)
    80003cdc:	04813b83          	ld	s7,72(sp)
    80003ce0:	04013c03          	ld	s8,64(sp)
    80003ce4:	03813c83          	ld	s9,56(sp)
    80003ce8:	03013d03          	ld	s10,48(sp)
    80003cec:	02813d83          	ld	s11,40(sp)
    80003cf0:	0d010113          	addi	sp,sp,208
    80003cf4:	00008067          	ret
    80003cf8:	07300713          	li	a4,115
    80003cfc:	1ce78a63          	beq	a5,a4,80003ed0 <__printf+0x4b8>
    80003d00:	07800713          	li	a4,120
    80003d04:	1ee79e63          	bne	a5,a4,80003f00 <__printf+0x4e8>
    80003d08:	f7843783          	ld	a5,-136(s0)
    80003d0c:	0007a703          	lw	a4,0(a5)
    80003d10:	00878793          	addi	a5,a5,8
    80003d14:	f6f43c23          	sd	a5,-136(s0)
    80003d18:	28074263          	bltz	a4,80003f9c <__printf+0x584>
    80003d1c:	00002d97          	auipc	s11,0x2
    80003d20:	614d8d93          	addi	s11,s11,1556 # 80006330 <digits>
    80003d24:	00f77793          	andi	a5,a4,15
    80003d28:	00fd87b3          	add	a5,s11,a5
    80003d2c:	0007c683          	lbu	a3,0(a5)
    80003d30:	00f00613          	li	a2,15
    80003d34:	0007079b          	sext.w	a5,a4
    80003d38:	f8d40023          	sb	a3,-128(s0)
    80003d3c:	0047559b          	srliw	a1,a4,0x4
    80003d40:	0047569b          	srliw	a3,a4,0x4
    80003d44:	00000c93          	li	s9,0
    80003d48:	0ee65063          	bge	a2,a4,80003e28 <__printf+0x410>
    80003d4c:	00f6f693          	andi	a3,a3,15
    80003d50:	00dd86b3          	add	a3,s11,a3
    80003d54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003d58:	0087d79b          	srliw	a5,a5,0x8
    80003d5c:	00100c93          	li	s9,1
    80003d60:	f8d400a3          	sb	a3,-127(s0)
    80003d64:	0cb67263          	bgeu	a2,a1,80003e28 <__printf+0x410>
    80003d68:	00f7f693          	andi	a3,a5,15
    80003d6c:	00dd86b3          	add	a3,s11,a3
    80003d70:	0006c583          	lbu	a1,0(a3)
    80003d74:	00f00613          	li	a2,15
    80003d78:	0047d69b          	srliw	a3,a5,0x4
    80003d7c:	f8b40123          	sb	a1,-126(s0)
    80003d80:	0047d593          	srli	a1,a5,0x4
    80003d84:	28f67e63          	bgeu	a2,a5,80004020 <__printf+0x608>
    80003d88:	00f6f693          	andi	a3,a3,15
    80003d8c:	00dd86b3          	add	a3,s11,a3
    80003d90:	0006c503          	lbu	a0,0(a3)
    80003d94:	0087d813          	srli	a6,a5,0x8
    80003d98:	0087d69b          	srliw	a3,a5,0x8
    80003d9c:	f8a401a3          	sb	a0,-125(s0)
    80003da0:	28b67663          	bgeu	a2,a1,8000402c <__printf+0x614>
    80003da4:	00f6f693          	andi	a3,a3,15
    80003da8:	00dd86b3          	add	a3,s11,a3
    80003dac:	0006c583          	lbu	a1,0(a3)
    80003db0:	00c7d513          	srli	a0,a5,0xc
    80003db4:	00c7d69b          	srliw	a3,a5,0xc
    80003db8:	f8b40223          	sb	a1,-124(s0)
    80003dbc:	29067a63          	bgeu	a2,a6,80004050 <__printf+0x638>
    80003dc0:	00f6f693          	andi	a3,a3,15
    80003dc4:	00dd86b3          	add	a3,s11,a3
    80003dc8:	0006c583          	lbu	a1,0(a3)
    80003dcc:	0107d813          	srli	a6,a5,0x10
    80003dd0:	0107d69b          	srliw	a3,a5,0x10
    80003dd4:	f8b402a3          	sb	a1,-123(s0)
    80003dd8:	28a67263          	bgeu	a2,a0,8000405c <__printf+0x644>
    80003ddc:	00f6f693          	andi	a3,a3,15
    80003de0:	00dd86b3          	add	a3,s11,a3
    80003de4:	0006c683          	lbu	a3,0(a3)
    80003de8:	0147d79b          	srliw	a5,a5,0x14
    80003dec:	f8d40323          	sb	a3,-122(s0)
    80003df0:	21067663          	bgeu	a2,a6,80003ffc <__printf+0x5e4>
    80003df4:	02079793          	slli	a5,a5,0x20
    80003df8:	0207d793          	srli	a5,a5,0x20
    80003dfc:	00fd8db3          	add	s11,s11,a5
    80003e00:	000dc683          	lbu	a3,0(s11)
    80003e04:	00800793          	li	a5,8
    80003e08:	00700c93          	li	s9,7
    80003e0c:	f8d403a3          	sb	a3,-121(s0)
    80003e10:	00075c63          	bgez	a4,80003e28 <__printf+0x410>
    80003e14:	f9040713          	addi	a4,s0,-112
    80003e18:	00f70733          	add	a4,a4,a5
    80003e1c:	02d00693          	li	a3,45
    80003e20:	fed70823          	sb	a3,-16(a4)
    80003e24:	00078c93          	mv	s9,a5
    80003e28:	f8040793          	addi	a5,s0,-128
    80003e2c:	01978cb3          	add	s9,a5,s9
    80003e30:	f7f40d13          	addi	s10,s0,-129
    80003e34:	000cc503          	lbu	a0,0(s9)
    80003e38:	fffc8c93          	addi	s9,s9,-1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	9f8080e7          	jalr	-1544(ra) # 80003834 <consputc>
    80003e44:	ff9d18e3          	bne	s10,s9,80003e34 <__printf+0x41c>
    80003e48:	0100006f          	j	80003e58 <__printf+0x440>
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	9e8080e7          	jalr	-1560(ra) # 80003834 <consputc>
    80003e54:	000c8493          	mv	s1,s9
    80003e58:	00094503          	lbu	a0,0(s2)
    80003e5c:	c60510e3          	bnez	a0,80003abc <__printf+0xa4>
    80003e60:	e40c0ee3          	beqz	s8,80003cbc <__printf+0x2a4>
    80003e64:	00004517          	auipc	a0,0x4
    80003e68:	41c50513          	addi	a0,a0,1052 # 80008280 <pr>
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	94c080e7          	jalr	-1716(ra) # 800047b8 <release>
    80003e74:	e49ff06f          	j	80003cbc <__printf+0x2a4>
    80003e78:	f7843783          	ld	a5,-136(s0)
    80003e7c:	03000513          	li	a0,48
    80003e80:	01000d13          	li	s10,16
    80003e84:	00878713          	addi	a4,a5,8
    80003e88:	0007bc83          	ld	s9,0(a5)
    80003e8c:	f6e43c23          	sd	a4,-136(s0)
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	9a4080e7          	jalr	-1628(ra) # 80003834 <consputc>
    80003e98:	07800513          	li	a0,120
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	998080e7          	jalr	-1640(ra) # 80003834 <consputc>
    80003ea4:	00002d97          	auipc	s11,0x2
    80003ea8:	48cd8d93          	addi	s11,s11,1164 # 80006330 <digits>
    80003eac:	03ccd793          	srli	a5,s9,0x3c
    80003eb0:	00fd87b3          	add	a5,s11,a5
    80003eb4:	0007c503          	lbu	a0,0(a5)
    80003eb8:	fffd0d1b          	addiw	s10,s10,-1
    80003ebc:	004c9c93          	slli	s9,s9,0x4
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	974080e7          	jalr	-1676(ra) # 80003834 <consputc>
    80003ec8:	fe0d12e3          	bnez	s10,80003eac <__printf+0x494>
    80003ecc:	f8dff06f          	j	80003e58 <__printf+0x440>
    80003ed0:	f7843783          	ld	a5,-136(s0)
    80003ed4:	0007bc83          	ld	s9,0(a5)
    80003ed8:	00878793          	addi	a5,a5,8
    80003edc:	f6f43c23          	sd	a5,-136(s0)
    80003ee0:	000c9a63          	bnez	s9,80003ef4 <__printf+0x4dc>
    80003ee4:	1080006f          	j	80003fec <__printf+0x5d4>
    80003ee8:	001c8c93          	addi	s9,s9,1
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	948080e7          	jalr	-1720(ra) # 80003834 <consputc>
    80003ef4:	000cc503          	lbu	a0,0(s9)
    80003ef8:	fe0518e3          	bnez	a0,80003ee8 <__printf+0x4d0>
    80003efc:	f5dff06f          	j	80003e58 <__printf+0x440>
    80003f00:	02500513          	li	a0,37
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	930080e7          	jalr	-1744(ra) # 80003834 <consputc>
    80003f0c:	000c8513          	mv	a0,s9
    80003f10:	00000097          	auipc	ra,0x0
    80003f14:	924080e7          	jalr	-1756(ra) # 80003834 <consputc>
    80003f18:	f41ff06f          	j	80003e58 <__printf+0x440>
    80003f1c:	02500513          	li	a0,37
    80003f20:	00000097          	auipc	ra,0x0
    80003f24:	914080e7          	jalr	-1772(ra) # 80003834 <consputc>
    80003f28:	f31ff06f          	j	80003e58 <__printf+0x440>
    80003f2c:	00030513          	mv	a0,t1
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	7bc080e7          	jalr	1980(ra) # 800046ec <acquire>
    80003f38:	b4dff06f          	j	80003a84 <__printf+0x6c>
    80003f3c:	40c0053b          	negw	a0,a2
    80003f40:	00a00713          	li	a4,10
    80003f44:	02e576bb          	remuw	a3,a0,a4
    80003f48:	00002d97          	auipc	s11,0x2
    80003f4c:	3e8d8d93          	addi	s11,s11,1000 # 80006330 <digits>
    80003f50:	ff700593          	li	a1,-9
    80003f54:	02069693          	slli	a3,a3,0x20
    80003f58:	0206d693          	srli	a3,a3,0x20
    80003f5c:	00dd86b3          	add	a3,s11,a3
    80003f60:	0006c683          	lbu	a3,0(a3)
    80003f64:	02e557bb          	divuw	a5,a0,a4
    80003f68:	f8d40023          	sb	a3,-128(s0)
    80003f6c:	10b65e63          	bge	a2,a1,80004088 <__printf+0x670>
    80003f70:	06300593          	li	a1,99
    80003f74:	02e7f6bb          	remuw	a3,a5,a4
    80003f78:	02069693          	slli	a3,a3,0x20
    80003f7c:	0206d693          	srli	a3,a3,0x20
    80003f80:	00dd86b3          	add	a3,s11,a3
    80003f84:	0006c683          	lbu	a3,0(a3)
    80003f88:	02e7d73b          	divuw	a4,a5,a4
    80003f8c:	00200793          	li	a5,2
    80003f90:	f8d400a3          	sb	a3,-127(s0)
    80003f94:	bca5ece3          	bltu	a1,a0,80003b6c <__printf+0x154>
    80003f98:	ce5ff06f          	j	80003c7c <__printf+0x264>
    80003f9c:	40e007bb          	negw	a5,a4
    80003fa0:	00002d97          	auipc	s11,0x2
    80003fa4:	390d8d93          	addi	s11,s11,912 # 80006330 <digits>
    80003fa8:	00f7f693          	andi	a3,a5,15
    80003fac:	00dd86b3          	add	a3,s11,a3
    80003fb0:	0006c583          	lbu	a1,0(a3)
    80003fb4:	ff100613          	li	a2,-15
    80003fb8:	0047d69b          	srliw	a3,a5,0x4
    80003fbc:	f8b40023          	sb	a1,-128(s0)
    80003fc0:	0047d59b          	srliw	a1,a5,0x4
    80003fc4:	0ac75e63          	bge	a4,a2,80004080 <__printf+0x668>
    80003fc8:	00f6f693          	andi	a3,a3,15
    80003fcc:	00dd86b3          	add	a3,s11,a3
    80003fd0:	0006c603          	lbu	a2,0(a3)
    80003fd4:	00f00693          	li	a3,15
    80003fd8:	0087d79b          	srliw	a5,a5,0x8
    80003fdc:	f8c400a3          	sb	a2,-127(s0)
    80003fe0:	d8b6e4e3          	bltu	a3,a1,80003d68 <__printf+0x350>
    80003fe4:	00200793          	li	a5,2
    80003fe8:	e2dff06f          	j	80003e14 <__printf+0x3fc>
    80003fec:	00002c97          	auipc	s9,0x2
    80003ff0:	324c8c93          	addi	s9,s9,804 # 80006310 <_ZZ12printIntegermE6digits+0x148>
    80003ff4:	02800513          	li	a0,40
    80003ff8:	ef1ff06f          	j	80003ee8 <__printf+0x4d0>
    80003ffc:	00700793          	li	a5,7
    80004000:	00600c93          	li	s9,6
    80004004:	e0dff06f          	j	80003e10 <__printf+0x3f8>
    80004008:	00700793          	li	a5,7
    8000400c:	00600c93          	li	s9,6
    80004010:	c69ff06f          	j	80003c78 <__printf+0x260>
    80004014:	00300793          	li	a5,3
    80004018:	00200c93          	li	s9,2
    8000401c:	c5dff06f          	j	80003c78 <__printf+0x260>
    80004020:	00300793          	li	a5,3
    80004024:	00200c93          	li	s9,2
    80004028:	de9ff06f          	j	80003e10 <__printf+0x3f8>
    8000402c:	00400793          	li	a5,4
    80004030:	00300c93          	li	s9,3
    80004034:	dddff06f          	j	80003e10 <__printf+0x3f8>
    80004038:	00400793          	li	a5,4
    8000403c:	00300c93          	li	s9,3
    80004040:	c39ff06f          	j	80003c78 <__printf+0x260>
    80004044:	00500793          	li	a5,5
    80004048:	00400c93          	li	s9,4
    8000404c:	c2dff06f          	j	80003c78 <__printf+0x260>
    80004050:	00500793          	li	a5,5
    80004054:	00400c93          	li	s9,4
    80004058:	db9ff06f          	j	80003e10 <__printf+0x3f8>
    8000405c:	00600793          	li	a5,6
    80004060:	00500c93          	li	s9,5
    80004064:	dadff06f          	j	80003e10 <__printf+0x3f8>
    80004068:	00600793          	li	a5,6
    8000406c:	00500c93          	li	s9,5
    80004070:	c09ff06f          	j	80003c78 <__printf+0x260>
    80004074:	00800793          	li	a5,8
    80004078:	00700c93          	li	s9,7
    8000407c:	bfdff06f          	j	80003c78 <__printf+0x260>
    80004080:	00100793          	li	a5,1
    80004084:	d91ff06f          	j	80003e14 <__printf+0x3fc>
    80004088:	00100793          	li	a5,1
    8000408c:	bf1ff06f          	j	80003c7c <__printf+0x264>
    80004090:	00900793          	li	a5,9
    80004094:	00800c93          	li	s9,8
    80004098:	be1ff06f          	j	80003c78 <__printf+0x260>
    8000409c:	00002517          	auipc	a0,0x2
    800040a0:	27c50513          	addi	a0,a0,636 # 80006318 <_ZZ12printIntegermE6digits+0x150>
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	918080e7          	jalr	-1768(ra) # 800039bc <panic>

00000000800040ac <printfinit>:
    800040ac:	fe010113          	addi	sp,sp,-32
    800040b0:	00813823          	sd	s0,16(sp)
    800040b4:	00913423          	sd	s1,8(sp)
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	02010413          	addi	s0,sp,32
    800040c0:	00004497          	auipc	s1,0x4
    800040c4:	1c048493          	addi	s1,s1,448 # 80008280 <pr>
    800040c8:	00048513          	mv	a0,s1
    800040cc:	00002597          	auipc	a1,0x2
    800040d0:	25c58593          	addi	a1,a1,604 # 80006328 <_ZZ12printIntegermE6digits+0x160>
    800040d4:	00000097          	auipc	ra,0x0
    800040d8:	5f4080e7          	jalr	1524(ra) # 800046c8 <initlock>
    800040dc:	01813083          	ld	ra,24(sp)
    800040e0:	01013403          	ld	s0,16(sp)
    800040e4:	0004ac23          	sw	zero,24(s1)
    800040e8:	00813483          	ld	s1,8(sp)
    800040ec:	02010113          	addi	sp,sp,32
    800040f0:	00008067          	ret

00000000800040f4 <uartinit>:
    800040f4:	ff010113          	addi	sp,sp,-16
    800040f8:	00813423          	sd	s0,8(sp)
    800040fc:	01010413          	addi	s0,sp,16
    80004100:	100007b7          	lui	a5,0x10000
    80004104:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004108:	f8000713          	li	a4,-128
    8000410c:	00e781a3          	sb	a4,3(a5)
    80004110:	00300713          	li	a4,3
    80004114:	00e78023          	sb	a4,0(a5)
    80004118:	000780a3          	sb	zero,1(a5)
    8000411c:	00e781a3          	sb	a4,3(a5)
    80004120:	00700693          	li	a3,7
    80004124:	00d78123          	sb	a3,2(a5)
    80004128:	00e780a3          	sb	a4,1(a5)
    8000412c:	00813403          	ld	s0,8(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <uartputc>:
    80004138:	00003797          	auipc	a5,0x3
    8000413c:	c707a783          	lw	a5,-912(a5) # 80006da8 <panicked>
    80004140:	00078463          	beqz	a5,80004148 <uartputc+0x10>
    80004144:	0000006f          	j	80004144 <uartputc+0xc>
    80004148:	fd010113          	addi	sp,sp,-48
    8000414c:	02813023          	sd	s0,32(sp)
    80004150:	00913c23          	sd	s1,24(sp)
    80004154:	01213823          	sd	s2,16(sp)
    80004158:	01313423          	sd	s3,8(sp)
    8000415c:	02113423          	sd	ra,40(sp)
    80004160:	03010413          	addi	s0,sp,48
    80004164:	00003917          	auipc	s2,0x3
    80004168:	c4c90913          	addi	s2,s2,-948 # 80006db0 <uart_tx_r>
    8000416c:	00093783          	ld	a5,0(s2)
    80004170:	00003497          	auipc	s1,0x3
    80004174:	c4848493          	addi	s1,s1,-952 # 80006db8 <uart_tx_w>
    80004178:	0004b703          	ld	a4,0(s1)
    8000417c:	02078693          	addi	a3,a5,32
    80004180:	00050993          	mv	s3,a0
    80004184:	02e69c63          	bne	a3,a4,800041bc <uartputc+0x84>
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	834080e7          	jalr	-1996(ra) # 800049bc <push_on>
    80004190:	00093783          	ld	a5,0(s2)
    80004194:	0004b703          	ld	a4,0(s1)
    80004198:	02078793          	addi	a5,a5,32
    8000419c:	00e79463          	bne	a5,a4,800041a4 <uartputc+0x6c>
    800041a0:	0000006f          	j	800041a0 <uartputc+0x68>
    800041a4:	00001097          	auipc	ra,0x1
    800041a8:	88c080e7          	jalr	-1908(ra) # 80004a30 <pop_on>
    800041ac:	00093783          	ld	a5,0(s2)
    800041b0:	0004b703          	ld	a4,0(s1)
    800041b4:	02078693          	addi	a3,a5,32
    800041b8:	fce688e3          	beq	a3,a4,80004188 <uartputc+0x50>
    800041bc:	01f77693          	andi	a3,a4,31
    800041c0:	00004597          	auipc	a1,0x4
    800041c4:	0e058593          	addi	a1,a1,224 # 800082a0 <uart_tx_buf>
    800041c8:	00d586b3          	add	a3,a1,a3
    800041cc:	00170713          	addi	a4,a4,1
    800041d0:	01368023          	sb	s3,0(a3)
    800041d4:	00e4b023          	sd	a4,0(s1)
    800041d8:	10000637          	lui	a2,0x10000
    800041dc:	02f71063          	bne	a4,a5,800041fc <uartputc+0xc4>
    800041e0:	0340006f          	j	80004214 <uartputc+0xdc>
    800041e4:	00074703          	lbu	a4,0(a4)
    800041e8:	00f93023          	sd	a5,0(s2)
    800041ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800041f0:	00093783          	ld	a5,0(s2)
    800041f4:	0004b703          	ld	a4,0(s1)
    800041f8:	00f70e63          	beq	a4,a5,80004214 <uartputc+0xdc>
    800041fc:	00564683          	lbu	a3,5(a2)
    80004200:	01f7f713          	andi	a4,a5,31
    80004204:	00e58733          	add	a4,a1,a4
    80004208:	0206f693          	andi	a3,a3,32
    8000420c:	00178793          	addi	a5,a5,1
    80004210:	fc069ae3          	bnez	a3,800041e4 <uartputc+0xac>
    80004214:	02813083          	ld	ra,40(sp)
    80004218:	02013403          	ld	s0,32(sp)
    8000421c:	01813483          	ld	s1,24(sp)
    80004220:	01013903          	ld	s2,16(sp)
    80004224:	00813983          	ld	s3,8(sp)
    80004228:	03010113          	addi	sp,sp,48
    8000422c:	00008067          	ret

0000000080004230 <uartputc_sync>:
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00813423          	sd	s0,8(sp)
    80004238:	01010413          	addi	s0,sp,16
    8000423c:	00003717          	auipc	a4,0x3
    80004240:	b6c72703          	lw	a4,-1172(a4) # 80006da8 <panicked>
    80004244:	02071663          	bnez	a4,80004270 <uartputc_sync+0x40>
    80004248:	00050793          	mv	a5,a0
    8000424c:	100006b7          	lui	a3,0x10000
    80004250:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004254:	02077713          	andi	a4,a4,32
    80004258:	fe070ce3          	beqz	a4,80004250 <uartputc_sync+0x20>
    8000425c:	0ff7f793          	andi	a5,a5,255
    80004260:	00f68023          	sb	a5,0(a3)
    80004264:	00813403          	ld	s0,8(sp)
    80004268:	01010113          	addi	sp,sp,16
    8000426c:	00008067          	ret
    80004270:	0000006f          	j	80004270 <uartputc_sync+0x40>

0000000080004274 <uartstart>:
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00813423          	sd	s0,8(sp)
    8000427c:	01010413          	addi	s0,sp,16
    80004280:	00003617          	auipc	a2,0x3
    80004284:	b3060613          	addi	a2,a2,-1232 # 80006db0 <uart_tx_r>
    80004288:	00003517          	auipc	a0,0x3
    8000428c:	b3050513          	addi	a0,a0,-1232 # 80006db8 <uart_tx_w>
    80004290:	00063783          	ld	a5,0(a2)
    80004294:	00053703          	ld	a4,0(a0)
    80004298:	04f70263          	beq	a4,a5,800042dc <uartstart+0x68>
    8000429c:	100005b7          	lui	a1,0x10000
    800042a0:	00004817          	auipc	a6,0x4
    800042a4:	00080813          	mv	a6,a6
    800042a8:	01c0006f          	j	800042c4 <uartstart+0x50>
    800042ac:	0006c703          	lbu	a4,0(a3)
    800042b0:	00f63023          	sd	a5,0(a2)
    800042b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042b8:	00063783          	ld	a5,0(a2)
    800042bc:	00053703          	ld	a4,0(a0)
    800042c0:	00f70e63          	beq	a4,a5,800042dc <uartstart+0x68>
    800042c4:	01f7f713          	andi	a4,a5,31
    800042c8:	00e806b3          	add	a3,a6,a4
    800042cc:	0055c703          	lbu	a4,5(a1)
    800042d0:	00178793          	addi	a5,a5,1
    800042d4:	02077713          	andi	a4,a4,32
    800042d8:	fc071ae3          	bnez	a4,800042ac <uartstart+0x38>
    800042dc:	00813403          	ld	s0,8(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <uartgetc>:
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00813423          	sd	s0,8(sp)
    800042f0:	01010413          	addi	s0,sp,16
    800042f4:	10000737          	lui	a4,0x10000
    800042f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800042fc:	0017f793          	andi	a5,a5,1
    80004300:	00078c63          	beqz	a5,80004318 <uartgetc+0x30>
    80004304:	00074503          	lbu	a0,0(a4)
    80004308:	0ff57513          	andi	a0,a0,255
    8000430c:	00813403          	ld	s0,8(sp)
    80004310:	01010113          	addi	sp,sp,16
    80004314:	00008067          	ret
    80004318:	fff00513          	li	a0,-1
    8000431c:	ff1ff06f          	j	8000430c <uartgetc+0x24>

0000000080004320 <uartintr>:
    80004320:	100007b7          	lui	a5,0x10000
    80004324:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004328:	0017f793          	andi	a5,a5,1
    8000432c:	0a078463          	beqz	a5,800043d4 <uartintr+0xb4>
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00813823          	sd	s0,16(sp)
    80004338:	00913423          	sd	s1,8(sp)
    8000433c:	00113c23          	sd	ra,24(sp)
    80004340:	02010413          	addi	s0,sp,32
    80004344:	100004b7          	lui	s1,0x10000
    80004348:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000434c:	0ff57513          	andi	a0,a0,255
    80004350:	fffff097          	auipc	ra,0xfffff
    80004354:	534080e7          	jalr	1332(ra) # 80003884 <consoleintr>
    80004358:	0054c783          	lbu	a5,5(s1)
    8000435c:	0017f793          	andi	a5,a5,1
    80004360:	fe0794e3          	bnez	a5,80004348 <uartintr+0x28>
    80004364:	00003617          	auipc	a2,0x3
    80004368:	a4c60613          	addi	a2,a2,-1460 # 80006db0 <uart_tx_r>
    8000436c:	00003517          	auipc	a0,0x3
    80004370:	a4c50513          	addi	a0,a0,-1460 # 80006db8 <uart_tx_w>
    80004374:	00063783          	ld	a5,0(a2)
    80004378:	00053703          	ld	a4,0(a0)
    8000437c:	04f70263          	beq	a4,a5,800043c0 <uartintr+0xa0>
    80004380:	100005b7          	lui	a1,0x10000
    80004384:	00004817          	auipc	a6,0x4
    80004388:	f1c80813          	addi	a6,a6,-228 # 800082a0 <uart_tx_buf>
    8000438c:	01c0006f          	j	800043a8 <uartintr+0x88>
    80004390:	0006c703          	lbu	a4,0(a3)
    80004394:	00f63023          	sd	a5,0(a2)
    80004398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000439c:	00063783          	ld	a5,0(a2)
    800043a0:	00053703          	ld	a4,0(a0)
    800043a4:	00f70e63          	beq	a4,a5,800043c0 <uartintr+0xa0>
    800043a8:	01f7f713          	andi	a4,a5,31
    800043ac:	00e806b3          	add	a3,a6,a4
    800043b0:	0055c703          	lbu	a4,5(a1)
    800043b4:	00178793          	addi	a5,a5,1
    800043b8:	02077713          	andi	a4,a4,32
    800043bc:	fc071ae3          	bnez	a4,80004390 <uartintr+0x70>
    800043c0:	01813083          	ld	ra,24(sp)
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	00813483          	ld	s1,8(sp)
    800043cc:	02010113          	addi	sp,sp,32
    800043d0:	00008067          	ret
    800043d4:	00003617          	auipc	a2,0x3
    800043d8:	9dc60613          	addi	a2,a2,-1572 # 80006db0 <uart_tx_r>
    800043dc:	00003517          	auipc	a0,0x3
    800043e0:	9dc50513          	addi	a0,a0,-1572 # 80006db8 <uart_tx_w>
    800043e4:	00063783          	ld	a5,0(a2)
    800043e8:	00053703          	ld	a4,0(a0)
    800043ec:	04f70263          	beq	a4,a5,80004430 <uartintr+0x110>
    800043f0:	100005b7          	lui	a1,0x10000
    800043f4:	00004817          	auipc	a6,0x4
    800043f8:	eac80813          	addi	a6,a6,-340 # 800082a0 <uart_tx_buf>
    800043fc:	01c0006f          	j	80004418 <uartintr+0xf8>
    80004400:	0006c703          	lbu	a4,0(a3)
    80004404:	00f63023          	sd	a5,0(a2)
    80004408:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000440c:	00063783          	ld	a5,0(a2)
    80004410:	00053703          	ld	a4,0(a0)
    80004414:	02f70063          	beq	a4,a5,80004434 <uartintr+0x114>
    80004418:	01f7f713          	andi	a4,a5,31
    8000441c:	00e806b3          	add	a3,a6,a4
    80004420:	0055c703          	lbu	a4,5(a1)
    80004424:	00178793          	addi	a5,a5,1
    80004428:	02077713          	andi	a4,a4,32
    8000442c:	fc071ae3          	bnez	a4,80004400 <uartintr+0xe0>
    80004430:	00008067          	ret
    80004434:	00008067          	ret

0000000080004438 <kinit>:
    80004438:	fc010113          	addi	sp,sp,-64
    8000443c:	02913423          	sd	s1,40(sp)
    80004440:	fffff7b7          	lui	a5,0xfffff
    80004444:	00005497          	auipc	s1,0x5
    80004448:	e8b48493          	addi	s1,s1,-373 # 800092cf <end+0xfff>
    8000444c:	02813823          	sd	s0,48(sp)
    80004450:	01313c23          	sd	s3,24(sp)
    80004454:	00f4f4b3          	and	s1,s1,a5
    80004458:	02113c23          	sd	ra,56(sp)
    8000445c:	03213023          	sd	s2,32(sp)
    80004460:	01413823          	sd	s4,16(sp)
    80004464:	01513423          	sd	s5,8(sp)
    80004468:	04010413          	addi	s0,sp,64
    8000446c:	000017b7          	lui	a5,0x1
    80004470:	01100993          	li	s3,17
    80004474:	00f487b3          	add	a5,s1,a5
    80004478:	01b99993          	slli	s3,s3,0x1b
    8000447c:	06f9e063          	bltu	s3,a5,800044dc <kinit+0xa4>
    80004480:	00004a97          	auipc	s5,0x4
    80004484:	e50a8a93          	addi	s5,s5,-432 # 800082d0 <end>
    80004488:	0754ec63          	bltu	s1,s5,80004500 <kinit+0xc8>
    8000448c:	0734fa63          	bgeu	s1,s3,80004500 <kinit+0xc8>
    80004490:	00088a37          	lui	s4,0x88
    80004494:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004498:	00003917          	auipc	s2,0x3
    8000449c:	92890913          	addi	s2,s2,-1752 # 80006dc0 <kmem>
    800044a0:	00ca1a13          	slli	s4,s4,0xc
    800044a4:	0140006f          	j	800044b8 <kinit+0x80>
    800044a8:	000017b7          	lui	a5,0x1
    800044ac:	00f484b3          	add	s1,s1,a5
    800044b0:	0554e863          	bltu	s1,s5,80004500 <kinit+0xc8>
    800044b4:	0534f663          	bgeu	s1,s3,80004500 <kinit+0xc8>
    800044b8:	00001637          	lui	a2,0x1
    800044bc:	00100593          	li	a1,1
    800044c0:	00048513          	mv	a0,s1
    800044c4:	00000097          	auipc	ra,0x0
    800044c8:	5e4080e7          	jalr	1508(ra) # 80004aa8 <__memset>
    800044cc:	00093783          	ld	a5,0(s2)
    800044d0:	00f4b023          	sd	a5,0(s1)
    800044d4:	00993023          	sd	s1,0(s2)
    800044d8:	fd4498e3          	bne	s1,s4,800044a8 <kinit+0x70>
    800044dc:	03813083          	ld	ra,56(sp)
    800044e0:	03013403          	ld	s0,48(sp)
    800044e4:	02813483          	ld	s1,40(sp)
    800044e8:	02013903          	ld	s2,32(sp)
    800044ec:	01813983          	ld	s3,24(sp)
    800044f0:	01013a03          	ld	s4,16(sp)
    800044f4:	00813a83          	ld	s5,8(sp)
    800044f8:	04010113          	addi	sp,sp,64
    800044fc:	00008067          	ret
    80004500:	00002517          	auipc	a0,0x2
    80004504:	e4850513          	addi	a0,a0,-440 # 80006348 <digits+0x18>
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	4b4080e7          	jalr	1204(ra) # 800039bc <panic>

0000000080004510 <freerange>:
    80004510:	fc010113          	addi	sp,sp,-64
    80004514:	000017b7          	lui	a5,0x1
    80004518:	02913423          	sd	s1,40(sp)
    8000451c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004520:	009504b3          	add	s1,a0,s1
    80004524:	fffff537          	lui	a0,0xfffff
    80004528:	02813823          	sd	s0,48(sp)
    8000452c:	02113c23          	sd	ra,56(sp)
    80004530:	03213023          	sd	s2,32(sp)
    80004534:	01313c23          	sd	s3,24(sp)
    80004538:	01413823          	sd	s4,16(sp)
    8000453c:	01513423          	sd	s5,8(sp)
    80004540:	01613023          	sd	s6,0(sp)
    80004544:	04010413          	addi	s0,sp,64
    80004548:	00a4f4b3          	and	s1,s1,a0
    8000454c:	00f487b3          	add	a5,s1,a5
    80004550:	06f5e463          	bltu	a1,a5,800045b8 <freerange+0xa8>
    80004554:	00004a97          	auipc	s5,0x4
    80004558:	d7ca8a93          	addi	s5,s5,-644 # 800082d0 <end>
    8000455c:	0954e263          	bltu	s1,s5,800045e0 <freerange+0xd0>
    80004560:	01100993          	li	s3,17
    80004564:	01b99993          	slli	s3,s3,0x1b
    80004568:	0734fc63          	bgeu	s1,s3,800045e0 <freerange+0xd0>
    8000456c:	00058a13          	mv	s4,a1
    80004570:	00003917          	auipc	s2,0x3
    80004574:	85090913          	addi	s2,s2,-1968 # 80006dc0 <kmem>
    80004578:	00002b37          	lui	s6,0x2
    8000457c:	0140006f          	j	80004590 <freerange+0x80>
    80004580:	000017b7          	lui	a5,0x1
    80004584:	00f484b3          	add	s1,s1,a5
    80004588:	0554ec63          	bltu	s1,s5,800045e0 <freerange+0xd0>
    8000458c:	0534fa63          	bgeu	s1,s3,800045e0 <freerange+0xd0>
    80004590:	00001637          	lui	a2,0x1
    80004594:	00100593          	li	a1,1
    80004598:	00048513          	mv	a0,s1
    8000459c:	00000097          	auipc	ra,0x0
    800045a0:	50c080e7          	jalr	1292(ra) # 80004aa8 <__memset>
    800045a4:	00093703          	ld	a4,0(s2)
    800045a8:	016487b3          	add	a5,s1,s6
    800045ac:	00e4b023          	sd	a4,0(s1)
    800045b0:	00993023          	sd	s1,0(s2)
    800045b4:	fcfa76e3          	bgeu	s4,a5,80004580 <freerange+0x70>
    800045b8:	03813083          	ld	ra,56(sp)
    800045bc:	03013403          	ld	s0,48(sp)
    800045c0:	02813483          	ld	s1,40(sp)
    800045c4:	02013903          	ld	s2,32(sp)
    800045c8:	01813983          	ld	s3,24(sp)
    800045cc:	01013a03          	ld	s4,16(sp)
    800045d0:	00813a83          	ld	s5,8(sp)
    800045d4:	00013b03          	ld	s6,0(sp)
    800045d8:	04010113          	addi	sp,sp,64
    800045dc:	00008067          	ret
    800045e0:	00002517          	auipc	a0,0x2
    800045e4:	d6850513          	addi	a0,a0,-664 # 80006348 <digits+0x18>
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	3d4080e7          	jalr	980(ra) # 800039bc <panic>

00000000800045f0 <kfree>:
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00113c23          	sd	ra,24(sp)
    800045fc:	00913423          	sd	s1,8(sp)
    80004600:	02010413          	addi	s0,sp,32
    80004604:	03451793          	slli	a5,a0,0x34
    80004608:	04079c63          	bnez	a5,80004660 <kfree+0x70>
    8000460c:	00004797          	auipc	a5,0x4
    80004610:	cc478793          	addi	a5,a5,-828 # 800082d0 <end>
    80004614:	00050493          	mv	s1,a0
    80004618:	04f56463          	bltu	a0,a5,80004660 <kfree+0x70>
    8000461c:	01100793          	li	a5,17
    80004620:	01b79793          	slli	a5,a5,0x1b
    80004624:	02f57e63          	bgeu	a0,a5,80004660 <kfree+0x70>
    80004628:	00001637          	lui	a2,0x1
    8000462c:	00100593          	li	a1,1
    80004630:	00000097          	auipc	ra,0x0
    80004634:	478080e7          	jalr	1144(ra) # 80004aa8 <__memset>
    80004638:	00002797          	auipc	a5,0x2
    8000463c:	78878793          	addi	a5,a5,1928 # 80006dc0 <kmem>
    80004640:	0007b703          	ld	a4,0(a5)
    80004644:	01813083          	ld	ra,24(sp)
    80004648:	01013403          	ld	s0,16(sp)
    8000464c:	00e4b023          	sd	a4,0(s1)
    80004650:	0097b023          	sd	s1,0(a5)
    80004654:	00813483          	ld	s1,8(sp)
    80004658:	02010113          	addi	sp,sp,32
    8000465c:	00008067          	ret
    80004660:	00002517          	auipc	a0,0x2
    80004664:	ce850513          	addi	a0,a0,-792 # 80006348 <digits+0x18>
    80004668:	fffff097          	auipc	ra,0xfffff
    8000466c:	354080e7          	jalr	852(ra) # 800039bc <panic>

0000000080004670 <kalloc>:
    80004670:	fe010113          	addi	sp,sp,-32
    80004674:	00813823          	sd	s0,16(sp)
    80004678:	00913423          	sd	s1,8(sp)
    8000467c:	00113c23          	sd	ra,24(sp)
    80004680:	02010413          	addi	s0,sp,32
    80004684:	00002797          	auipc	a5,0x2
    80004688:	73c78793          	addi	a5,a5,1852 # 80006dc0 <kmem>
    8000468c:	0007b483          	ld	s1,0(a5)
    80004690:	02048063          	beqz	s1,800046b0 <kalloc+0x40>
    80004694:	0004b703          	ld	a4,0(s1)
    80004698:	00001637          	lui	a2,0x1
    8000469c:	00500593          	li	a1,5
    800046a0:	00048513          	mv	a0,s1
    800046a4:	00e7b023          	sd	a4,0(a5)
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	400080e7          	jalr	1024(ra) # 80004aa8 <__memset>
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00048513          	mv	a0,s1
    800046bc:	00813483          	ld	s1,8(sp)
    800046c0:	02010113          	addi	sp,sp,32
    800046c4:	00008067          	ret

00000000800046c8 <initlock>:
    800046c8:	ff010113          	addi	sp,sp,-16
    800046cc:	00813423          	sd	s0,8(sp)
    800046d0:	01010413          	addi	s0,sp,16
    800046d4:	00813403          	ld	s0,8(sp)
    800046d8:	00b53423          	sd	a1,8(a0)
    800046dc:	00052023          	sw	zero,0(a0)
    800046e0:	00053823          	sd	zero,16(a0)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret

00000000800046ec <acquire>:
    800046ec:	fe010113          	addi	sp,sp,-32
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	00113c23          	sd	ra,24(sp)
    800046fc:	01213023          	sd	s2,0(sp)
    80004700:	02010413          	addi	s0,sp,32
    80004704:	00050493          	mv	s1,a0
    80004708:	10002973          	csrr	s2,sstatus
    8000470c:	100027f3          	csrr	a5,sstatus
    80004710:	ffd7f793          	andi	a5,a5,-3
    80004714:	10079073          	csrw	sstatus,a5
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	8ec080e7          	jalr	-1812(ra) # 80003004 <mycpu>
    80004720:	07852783          	lw	a5,120(a0)
    80004724:	06078e63          	beqz	a5,800047a0 <acquire+0xb4>
    80004728:	fffff097          	auipc	ra,0xfffff
    8000472c:	8dc080e7          	jalr	-1828(ra) # 80003004 <mycpu>
    80004730:	07852783          	lw	a5,120(a0)
    80004734:	0004a703          	lw	a4,0(s1)
    80004738:	0017879b          	addiw	a5,a5,1
    8000473c:	06f52c23          	sw	a5,120(a0)
    80004740:	04071063          	bnez	a4,80004780 <acquire+0x94>
    80004744:	00100713          	li	a4,1
    80004748:	00070793          	mv	a5,a4
    8000474c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004750:	0007879b          	sext.w	a5,a5
    80004754:	fe079ae3          	bnez	a5,80004748 <acquire+0x5c>
    80004758:	0ff0000f          	fence
    8000475c:	fffff097          	auipc	ra,0xfffff
    80004760:	8a8080e7          	jalr	-1880(ra) # 80003004 <mycpu>
    80004764:	01813083          	ld	ra,24(sp)
    80004768:	01013403          	ld	s0,16(sp)
    8000476c:	00a4b823          	sd	a0,16(s1)
    80004770:	00013903          	ld	s2,0(sp)
    80004774:	00813483          	ld	s1,8(sp)
    80004778:	02010113          	addi	sp,sp,32
    8000477c:	00008067          	ret
    80004780:	0104b903          	ld	s2,16(s1)
    80004784:	fffff097          	auipc	ra,0xfffff
    80004788:	880080e7          	jalr	-1920(ra) # 80003004 <mycpu>
    8000478c:	faa91ce3          	bne	s2,a0,80004744 <acquire+0x58>
    80004790:	00002517          	auipc	a0,0x2
    80004794:	bc050513          	addi	a0,a0,-1088 # 80006350 <digits+0x20>
    80004798:	fffff097          	auipc	ra,0xfffff
    8000479c:	224080e7          	jalr	548(ra) # 800039bc <panic>
    800047a0:	00195913          	srli	s2,s2,0x1
    800047a4:	fffff097          	auipc	ra,0xfffff
    800047a8:	860080e7          	jalr	-1952(ra) # 80003004 <mycpu>
    800047ac:	00197913          	andi	s2,s2,1
    800047b0:	07252e23          	sw	s2,124(a0)
    800047b4:	f75ff06f          	j	80004728 <acquire+0x3c>

00000000800047b8 <release>:
    800047b8:	fe010113          	addi	sp,sp,-32
    800047bc:	00813823          	sd	s0,16(sp)
    800047c0:	00113c23          	sd	ra,24(sp)
    800047c4:	00913423          	sd	s1,8(sp)
    800047c8:	01213023          	sd	s2,0(sp)
    800047cc:	02010413          	addi	s0,sp,32
    800047d0:	00052783          	lw	a5,0(a0)
    800047d4:	00079a63          	bnez	a5,800047e8 <release+0x30>
    800047d8:	00002517          	auipc	a0,0x2
    800047dc:	b8050513          	addi	a0,a0,-1152 # 80006358 <digits+0x28>
    800047e0:	fffff097          	auipc	ra,0xfffff
    800047e4:	1dc080e7          	jalr	476(ra) # 800039bc <panic>
    800047e8:	01053903          	ld	s2,16(a0)
    800047ec:	00050493          	mv	s1,a0
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	814080e7          	jalr	-2028(ra) # 80003004 <mycpu>
    800047f8:	fea910e3          	bne	s2,a0,800047d8 <release+0x20>
    800047fc:	0004b823          	sd	zero,16(s1)
    80004800:	0ff0000f          	fence
    80004804:	0f50000f          	fence	iorw,ow
    80004808:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000480c:	ffffe097          	auipc	ra,0xffffe
    80004810:	7f8080e7          	jalr	2040(ra) # 80003004 <mycpu>
    80004814:	100027f3          	csrr	a5,sstatus
    80004818:	0027f793          	andi	a5,a5,2
    8000481c:	04079a63          	bnez	a5,80004870 <release+0xb8>
    80004820:	07852783          	lw	a5,120(a0)
    80004824:	02f05e63          	blez	a5,80004860 <release+0xa8>
    80004828:	fff7871b          	addiw	a4,a5,-1
    8000482c:	06e52c23          	sw	a4,120(a0)
    80004830:	00071c63          	bnez	a4,80004848 <release+0x90>
    80004834:	07c52783          	lw	a5,124(a0)
    80004838:	00078863          	beqz	a5,80004848 <release+0x90>
    8000483c:	100027f3          	csrr	a5,sstatus
    80004840:	0027e793          	ori	a5,a5,2
    80004844:	10079073          	csrw	sstatus,a5
    80004848:	01813083          	ld	ra,24(sp)
    8000484c:	01013403          	ld	s0,16(sp)
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	00013903          	ld	s2,0(sp)
    80004858:	02010113          	addi	sp,sp,32
    8000485c:	00008067          	ret
    80004860:	00002517          	auipc	a0,0x2
    80004864:	b1850513          	addi	a0,a0,-1256 # 80006378 <digits+0x48>
    80004868:	fffff097          	auipc	ra,0xfffff
    8000486c:	154080e7          	jalr	340(ra) # 800039bc <panic>
    80004870:	00002517          	auipc	a0,0x2
    80004874:	af050513          	addi	a0,a0,-1296 # 80006360 <digits+0x30>
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	144080e7          	jalr	324(ra) # 800039bc <panic>

0000000080004880 <holding>:
    80004880:	00052783          	lw	a5,0(a0)
    80004884:	00079663          	bnez	a5,80004890 <holding+0x10>
    80004888:	00000513          	li	a0,0
    8000488c:	00008067          	ret
    80004890:	fe010113          	addi	sp,sp,-32
    80004894:	00813823          	sd	s0,16(sp)
    80004898:	00913423          	sd	s1,8(sp)
    8000489c:	00113c23          	sd	ra,24(sp)
    800048a0:	02010413          	addi	s0,sp,32
    800048a4:	01053483          	ld	s1,16(a0)
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	75c080e7          	jalr	1884(ra) # 80003004 <mycpu>
    800048b0:	01813083          	ld	ra,24(sp)
    800048b4:	01013403          	ld	s0,16(sp)
    800048b8:	40a48533          	sub	a0,s1,a0
    800048bc:	00153513          	seqz	a0,a0
    800048c0:	00813483          	ld	s1,8(sp)
    800048c4:	02010113          	addi	sp,sp,32
    800048c8:	00008067          	ret

00000000800048cc <push_off>:
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00813823          	sd	s0,16(sp)
    800048d4:	00113c23          	sd	ra,24(sp)
    800048d8:	00913423          	sd	s1,8(sp)
    800048dc:	02010413          	addi	s0,sp,32
    800048e0:	100024f3          	csrr	s1,sstatus
    800048e4:	100027f3          	csrr	a5,sstatus
    800048e8:	ffd7f793          	andi	a5,a5,-3
    800048ec:	10079073          	csrw	sstatus,a5
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	714080e7          	jalr	1812(ra) # 80003004 <mycpu>
    800048f8:	07852783          	lw	a5,120(a0)
    800048fc:	02078663          	beqz	a5,80004928 <push_off+0x5c>
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	704080e7          	jalr	1796(ra) # 80003004 <mycpu>
    80004908:	07852783          	lw	a5,120(a0)
    8000490c:	01813083          	ld	ra,24(sp)
    80004910:	01013403          	ld	s0,16(sp)
    80004914:	0017879b          	addiw	a5,a5,1
    80004918:	06f52c23          	sw	a5,120(a0)
    8000491c:	00813483          	ld	s1,8(sp)
    80004920:	02010113          	addi	sp,sp,32
    80004924:	00008067          	ret
    80004928:	0014d493          	srli	s1,s1,0x1
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	6d8080e7          	jalr	1752(ra) # 80003004 <mycpu>
    80004934:	0014f493          	andi	s1,s1,1
    80004938:	06952e23          	sw	s1,124(a0)
    8000493c:	fc5ff06f          	j	80004900 <push_off+0x34>

0000000080004940 <pop_off>:
    80004940:	ff010113          	addi	sp,sp,-16
    80004944:	00813023          	sd	s0,0(sp)
    80004948:	00113423          	sd	ra,8(sp)
    8000494c:	01010413          	addi	s0,sp,16
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	6b4080e7          	jalr	1716(ra) # 80003004 <mycpu>
    80004958:	100027f3          	csrr	a5,sstatus
    8000495c:	0027f793          	andi	a5,a5,2
    80004960:	04079663          	bnez	a5,800049ac <pop_off+0x6c>
    80004964:	07852783          	lw	a5,120(a0)
    80004968:	02f05a63          	blez	a5,8000499c <pop_off+0x5c>
    8000496c:	fff7871b          	addiw	a4,a5,-1
    80004970:	06e52c23          	sw	a4,120(a0)
    80004974:	00071c63          	bnez	a4,8000498c <pop_off+0x4c>
    80004978:	07c52783          	lw	a5,124(a0)
    8000497c:	00078863          	beqz	a5,8000498c <pop_off+0x4c>
    80004980:	100027f3          	csrr	a5,sstatus
    80004984:	0027e793          	ori	a5,a5,2
    80004988:	10079073          	csrw	sstatus,a5
    8000498c:	00813083          	ld	ra,8(sp)
    80004990:	00013403          	ld	s0,0(sp)
    80004994:	01010113          	addi	sp,sp,16
    80004998:	00008067          	ret
    8000499c:	00002517          	auipc	a0,0x2
    800049a0:	9dc50513          	addi	a0,a0,-1572 # 80006378 <digits+0x48>
    800049a4:	fffff097          	auipc	ra,0xfffff
    800049a8:	018080e7          	jalr	24(ra) # 800039bc <panic>
    800049ac:	00002517          	auipc	a0,0x2
    800049b0:	9b450513          	addi	a0,a0,-1612 # 80006360 <digits+0x30>
    800049b4:	fffff097          	auipc	ra,0xfffff
    800049b8:	008080e7          	jalr	8(ra) # 800039bc <panic>

00000000800049bc <push_on>:
    800049bc:	fe010113          	addi	sp,sp,-32
    800049c0:	00813823          	sd	s0,16(sp)
    800049c4:	00113c23          	sd	ra,24(sp)
    800049c8:	00913423          	sd	s1,8(sp)
    800049cc:	02010413          	addi	s0,sp,32
    800049d0:	100024f3          	csrr	s1,sstatus
    800049d4:	100027f3          	csrr	a5,sstatus
    800049d8:	0027e793          	ori	a5,a5,2
    800049dc:	10079073          	csrw	sstatus,a5
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	624080e7          	jalr	1572(ra) # 80003004 <mycpu>
    800049e8:	07852783          	lw	a5,120(a0)
    800049ec:	02078663          	beqz	a5,80004a18 <push_on+0x5c>
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	614080e7          	jalr	1556(ra) # 80003004 <mycpu>
    800049f8:	07852783          	lw	a5,120(a0)
    800049fc:	01813083          	ld	ra,24(sp)
    80004a00:	01013403          	ld	s0,16(sp)
    80004a04:	0017879b          	addiw	a5,a5,1
    80004a08:	06f52c23          	sw	a5,120(a0)
    80004a0c:	00813483          	ld	s1,8(sp)
    80004a10:	02010113          	addi	sp,sp,32
    80004a14:	00008067          	ret
    80004a18:	0014d493          	srli	s1,s1,0x1
    80004a1c:	ffffe097          	auipc	ra,0xffffe
    80004a20:	5e8080e7          	jalr	1512(ra) # 80003004 <mycpu>
    80004a24:	0014f493          	andi	s1,s1,1
    80004a28:	06952e23          	sw	s1,124(a0)
    80004a2c:	fc5ff06f          	j	800049f0 <push_on+0x34>

0000000080004a30 <pop_on>:
    80004a30:	ff010113          	addi	sp,sp,-16
    80004a34:	00813023          	sd	s0,0(sp)
    80004a38:	00113423          	sd	ra,8(sp)
    80004a3c:	01010413          	addi	s0,sp,16
    80004a40:	ffffe097          	auipc	ra,0xffffe
    80004a44:	5c4080e7          	jalr	1476(ra) # 80003004 <mycpu>
    80004a48:	100027f3          	csrr	a5,sstatus
    80004a4c:	0027f793          	andi	a5,a5,2
    80004a50:	04078463          	beqz	a5,80004a98 <pop_on+0x68>
    80004a54:	07852783          	lw	a5,120(a0)
    80004a58:	02f05863          	blez	a5,80004a88 <pop_on+0x58>
    80004a5c:	fff7879b          	addiw	a5,a5,-1
    80004a60:	06f52c23          	sw	a5,120(a0)
    80004a64:	07853783          	ld	a5,120(a0)
    80004a68:	00079863          	bnez	a5,80004a78 <pop_on+0x48>
    80004a6c:	100027f3          	csrr	a5,sstatus
    80004a70:	ffd7f793          	andi	a5,a5,-3
    80004a74:	10079073          	csrw	sstatus,a5
    80004a78:	00813083          	ld	ra,8(sp)
    80004a7c:	00013403          	ld	s0,0(sp)
    80004a80:	01010113          	addi	sp,sp,16
    80004a84:	00008067          	ret
    80004a88:	00002517          	auipc	a0,0x2
    80004a8c:	91850513          	addi	a0,a0,-1768 # 800063a0 <digits+0x70>
    80004a90:	fffff097          	auipc	ra,0xfffff
    80004a94:	f2c080e7          	jalr	-212(ra) # 800039bc <panic>
    80004a98:	00002517          	auipc	a0,0x2
    80004a9c:	8e850513          	addi	a0,a0,-1816 # 80006380 <digits+0x50>
    80004aa0:	fffff097          	auipc	ra,0xfffff
    80004aa4:	f1c080e7          	jalr	-228(ra) # 800039bc <panic>

0000000080004aa8 <__memset>:
    80004aa8:	ff010113          	addi	sp,sp,-16
    80004aac:	00813423          	sd	s0,8(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    80004ab4:	1a060e63          	beqz	a2,80004c70 <__memset+0x1c8>
    80004ab8:	40a007b3          	neg	a5,a0
    80004abc:	0077f793          	andi	a5,a5,7
    80004ac0:	00778693          	addi	a3,a5,7
    80004ac4:	00b00813          	li	a6,11
    80004ac8:	0ff5f593          	andi	a1,a1,255
    80004acc:	fff6071b          	addiw	a4,a2,-1
    80004ad0:	1b06e663          	bltu	a3,a6,80004c7c <__memset+0x1d4>
    80004ad4:	1cd76463          	bltu	a4,a3,80004c9c <__memset+0x1f4>
    80004ad8:	1a078e63          	beqz	a5,80004c94 <__memset+0x1ec>
    80004adc:	00b50023          	sb	a1,0(a0)
    80004ae0:	00100713          	li	a4,1
    80004ae4:	1ae78463          	beq	a5,a4,80004c8c <__memset+0x1e4>
    80004ae8:	00b500a3          	sb	a1,1(a0)
    80004aec:	00200713          	li	a4,2
    80004af0:	1ae78a63          	beq	a5,a4,80004ca4 <__memset+0x1fc>
    80004af4:	00b50123          	sb	a1,2(a0)
    80004af8:	00300713          	li	a4,3
    80004afc:	18e78463          	beq	a5,a4,80004c84 <__memset+0x1dc>
    80004b00:	00b501a3          	sb	a1,3(a0)
    80004b04:	00400713          	li	a4,4
    80004b08:	1ae78263          	beq	a5,a4,80004cac <__memset+0x204>
    80004b0c:	00b50223          	sb	a1,4(a0)
    80004b10:	00500713          	li	a4,5
    80004b14:	1ae78063          	beq	a5,a4,80004cb4 <__memset+0x20c>
    80004b18:	00b502a3          	sb	a1,5(a0)
    80004b1c:	00700713          	li	a4,7
    80004b20:	18e79e63          	bne	a5,a4,80004cbc <__memset+0x214>
    80004b24:	00b50323          	sb	a1,6(a0)
    80004b28:	00700e93          	li	t4,7
    80004b2c:	00859713          	slli	a4,a1,0x8
    80004b30:	00e5e733          	or	a4,a1,a4
    80004b34:	01059e13          	slli	t3,a1,0x10
    80004b38:	01c76e33          	or	t3,a4,t3
    80004b3c:	01859313          	slli	t1,a1,0x18
    80004b40:	006e6333          	or	t1,t3,t1
    80004b44:	02059893          	slli	a7,a1,0x20
    80004b48:	40f60e3b          	subw	t3,a2,a5
    80004b4c:	011368b3          	or	a7,t1,a7
    80004b50:	02859813          	slli	a6,a1,0x28
    80004b54:	0108e833          	or	a6,a7,a6
    80004b58:	03059693          	slli	a3,a1,0x30
    80004b5c:	003e589b          	srliw	a7,t3,0x3
    80004b60:	00d866b3          	or	a3,a6,a3
    80004b64:	03859713          	slli	a4,a1,0x38
    80004b68:	00389813          	slli	a6,a7,0x3
    80004b6c:	00f507b3          	add	a5,a0,a5
    80004b70:	00e6e733          	or	a4,a3,a4
    80004b74:	000e089b          	sext.w	a7,t3
    80004b78:	00f806b3          	add	a3,a6,a5
    80004b7c:	00e7b023          	sd	a4,0(a5)
    80004b80:	00878793          	addi	a5,a5,8
    80004b84:	fed79ce3          	bne	a5,a3,80004b7c <__memset+0xd4>
    80004b88:	ff8e7793          	andi	a5,t3,-8
    80004b8c:	0007871b          	sext.w	a4,a5
    80004b90:	01d787bb          	addw	a5,a5,t4
    80004b94:	0ce88e63          	beq	a7,a4,80004c70 <__memset+0x1c8>
    80004b98:	00f50733          	add	a4,a0,a5
    80004b9c:	00b70023          	sb	a1,0(a4)
    80004ba0:	0017871b          	addiw	a4,a5,1
    80004ba4:	0cc77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004ba8:	00e50733          	add	a4,a0,a4
    80004bac:	00b70023          	sb	a1,0(a4)
    80004bb0:	0027871b          	addiw	a4,a5,2
    80004bb4:	0ac77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004bb8:	00e50733          	add	a4,a0,a4
    80004bbc:	00b70023          	sb	a1,0(a4)
    80004bc0:	0037871b          	addiw	a4,a5,3
    80004bc4:	0ac77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004bc8:	00e50733          	add	a4,a0,a4
    80004bcc:	00b70023          	sb	a1,0(a4)
    80004bd0:	0047871b          	addiw	a4,a5,4
    80004bd4:	08c77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004bd8:	00e50733          	add	a4,a0,a4
    80004bdc:	00b70023          	sb	a1,0(a4)
    80004be0:	0057871b          	addiw	a4,a5,5
    80004be4:	08c77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004be8:	00e50733          	add	a4,a0,a4
    80004bec:	00b70023          	sb	a1,0(a4)
    80004bf0:	0067871b          	addiw	a4,a5,6
    80004bf4:	06c77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004bf8:	00e50733          	add	a4,a0,a4
    80004bfc:	00b70023          	sb	a1,0(a4)
    80004c00:	0077871b          	addiw	a4,a5,7
    80004c04:	06c77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c08:	00e50733          	add	a4,a0,a4
    80004c0c:	00b70023          	sb	a1,0(a4)
    80004c10:	0087871b          	addiw	a4,a5,8
    80004c14:	04c77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c18:	00e50733          	add	a4,a0,a4
    80004c1c:	00b70023          	sb	a1,0(a4)
    80004c20:	0097871b          	addiw	a4,a5,9
    80004c24:	04c77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c28:	00e50733          	add	a4,a0,a4
    80004c2c:	00b70023          	sb	a1,0(a4)
    80004c30:	00a7871b          	addiw	a4,a5,10
    80004c34:	02c77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c38:	00e50733          	add	a4,a0,a4
    80004c3c:	00b70023          	sb	a1,0(a4)
    80004c40:	00b7871b          	addiw	a4,a5,11
    80004c44:	02c77663          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c48:	00e50733          	add	a4,a0,a4
    80004c4c:	00b70023          	sb	a1,0(a4)
    80004c50:	00c7871b          	addiw	a4,a5,12
    80004c54:	00c77e63          	bgeu	a4,a2,80004c70 <__memset+0x1c8>
    80004c58:	00e50733          	add	a4,a0,a4
    80004c5c:	00b70023          	sb	a1,0(a4)
    80004c60:	00d7879b          	addiw	a5,a5,13
    80004c64:	00c7f663          	bgeu	a5,a2,80004c70 <__memset+0x1c8>
    80004c68:	00f507b3          	add	a5,a0,a5
    80004c6c:	00b78023          	sb	a1,0(a5)
    80004c70:	00813403          	ld	s0,8(sp)
    80004c74:	01010113          	addi	sp,sp,16
    80004c78:	00008067          	ret
    80004c7c:	00b00693          	li	a3,11
    80004c80:	e55ff06f          	j	80004ad4 <__memset+0x2c>
    80004c84:	00300e93          	li	t4,3
    80004c88:	ea5ff06f          	j	80004b2c <__memset+0x84>
    80004c8c:	00100e93          	li	t4,1
    80004c90:	e9dff06f          	j	80004b2c <__memset+0x84>
    80004c94:	00000e93          	li	t4,0
    80004c98:	e95ff06f          	j	80004b2c <__memset+0x84>
    80004c9c:	00000793          	li	a5,0
    80004ca0:	ef9ff06f          	j	80004b98 <__memset+0xf0>
    80004ca4:	00200e93          	li	t4,2
    80004ca8:	e85ff06f          	j	80004b2c <__memset+0x84>
    80004cac:	00400e93          	li	t4,4
    80004cb0:	e7dff06f          	j	80004b2c <__memset+0x84>
    80004cb4:	00500e93          	li	t4,5
    80004cb8:	e75ff06f          	j	80004b2c <__memset+0x84>
    80004cbc:	00600e93          	li	t4,6
    80004cc0:	e6dff06f          	j	80004b2c <__memset+0x84>

0000000080004cc4 <__memmove>:
    80004cc4:	ff010113          	addi	sp,sp,-16
    80004cc8:	00813423          	sd	s0,8(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	0e060863          	beqz	a2,80004dc0 <__memmove+0xfc>
    80004cd4:	fff6069b          	addiw	a3,a2,-1
    80004cd8:	0006881b          	sext.w	a6,a3
    80004cdc:	0ea5e863          	bltu	a1,a0,80004dcc <__memmove+0x108>
    80004ce0:	00758713          	addi	a4,a1,7
    80004ce4:	00a5e7b3          	or	a5,a1,a0
    80004ce8:	40a70733          	sub	a4,a4,a0
    80004cec:	0077f793          	andi	a5,a5,7
    80004cf0:	00f73713          	sltiu	a4,a4,15
    80004cf4:	00174713          	xori	a4,a4,1
    80004cf8:	0017b793          	seqz	a5,a5
    80004cfc:	00e7f7b3          	and	a5,a5,a4
    80004d00:	10078863          	beqz	a5,80004e10 <__memmove+0x14c>
    80004d04:	00900793          	li	a5,9
    80004d08:	1107f463          	bgeu	a5,a6,80004e10 <__memmove+0x14c>
    80004d0c:	0036581b          	srliw	a6,a2,0x3
    80004d10:	fff8081b          	addiw	a6,a6,-1
    80004d14:	02081813          	slli	a6,a6,0x20
    80004d18:	01d85893          	srli	a7,a6,0x1d
    80004d1c:	00858813          	addi	a6,a1,8
    80004d20:	00058793          	mv	a5,a1
    80004d24:	00050713          	mv	a4,a0
    80004d28:	01088833          	add	a6,a7,a6
    80004d2c:	0007b883          	ld	a7,0(a5)
    80004d30:	00878793          	addi	a5,a5,8
    80004d34:	00870713          	addi	a4,a4,8
    80004d38:	ff173c23          	sd	a7,-8(a4)
    80004d3c:	ff0798e3          	bne	a5,a6,80004d2c <__memmove+0x68>
    80004d40:	ff867713          	andi	a4,a2,-8
    80004d44:	02071793          	slli	a5,a4,0x20
    80004d48:	0207d793          	srli	a5,a5,0x20
    80004d4c:	00f585b3          	add	a1,a1,a5
    80004d50:	40e686bb          	subw	a3,a3,a4
    80004d54:	00f507b3          	add	a5,a0,a5
    80004d58:	06e60463          	beq	a2,a4,80004dc0 <__memmove+0xfc>
    80004d5c:	0005c703          	lbu	a4,0(a1)
    80004d60:	00e78023          	sb	a4,0(a5)
    80004d64:	04068e63          	beqz	a3,80004dc0 <__memmove+0xfc>
    80004d68:	0015c603          	lbu	a2,1(a1)
    80004d6c:	00100713          	li	a4,1
    80004d70:	00c780a3          	sb	a2,1(a5)
    80004d74:	04e68663          	beq	a3,a4,80004dc0 <__memmove+0xfc>
    80004d78:	0025c603          	lbu	a2,2(a1)
    80004d7c:	00200713          	li	a4,2
    80004d80:	00c78123          	sb	a2,2(a5)
    80004d84:	02e68e63          	beq	a3,a4,80004dc0 <__memmove+0xfc>
    80004d88:	0035c603          	lbu	a2,3(a1)
    80004d8c:	00300713          	li	a4,3
    80004d90:	00c781a3          	sb	a2,3(a5)
    80004d94:	02e68663          	beq	a3,a4,80004dc0 <__memmove+0xfc>
    80004d98:	0045c603          	lbu	a2,4(a1)
    80004d9c:	00400713          	li	a4,4
    80004da0:	00c78223          	sb	a2,4(a5)
    80004da4:	00e68e63          	beq	a3,a4,80004dc0 <__memmove+0xfc>
    80004da8:	0055c603          	lbu	a2,5(a1)
    80004dac:	00500713          	li	a4,5
    80004db0:	00c782a3          	sb	a2,5(a5)
    80004db4:	00e68663          	beq	a3,a4,80004dc0 <__memmove+0xfc>
    80004db8:	0065c703          	lbu	a4,6(a1)
    80004dbc:	00e78323          	sb	a4,6(a5)
    80004dc0:	00813403          	ld	s0,8(sp)
    80004dc4:	01010113          	addi	sp,sp,16
    80004dc8:	00008067          	ret
    80004dcc:	02061713          	slli	a4,a2,0x20
    80004dd0:	02075713          	srli	a4,a4,0x20
    80004dd4:	00e587b3          	add	a5,a1,a4
    80004dd8:	f0f574e3          	bgeu	a0,a5,80004ce0 <__memmove+0x1c>
    80004ddc:	02069613          	slli	a2,a3,0x20
    80004de0:	02065613          	srli	a2,a2,0x20
    80004de4:	fff64613          	not	a2,a2
    80004de8:	00e50733          	add	a4,a0,a4
    80004dec:	00c78633          	add	a2,a5,a2
    80004df0:	fff7c683          	lbu	a3,-1(a5)
    80004df4:	fff78793          	addi	a5,a5,-1
    80004df8:	fff70713          	addi	a4,a4,-1
    80004dfc:	00d70023          	sb	a3,0(a4)
    80004e00:	fec798e3          	bne	a5,a2,80004df0 <__memmove+0x12c>
    80004e04:	00813403          	ld	s0,8(sp)
    80004e08:	01010113          	addi	sp,sp,16
    80004e0c:	00008067          	ret
    80004e10:	02069713          	slli	a4,a3,0x20
    80004e14:	02075713          	srli	a4,a4,0x20
    80004e18:	00170713          	addi	a4,a4,1
    80004e1c:	00e50733          	add	a4,a0,a4
    80004e20:	00050793          	mv	a5,a0
    80004e24:	0005c683          	lbu	a3,0(a1)
    80004e28:	00178793          	addi	a5,a5,1
    80004e2c:	00158593          	addi	a1,a1,1
    80004e30:	fed78fa3          	sb	a3,-1(a5)
    80004e34:	fee798e3          	bne	a5,a4,80004e24 <__memmove+0x160>
    80004e38:	f89ff06f          	j	80004dc0 <__memmove+0xfc>

0000000080004e3c <__mem_free>:
    80004e3c:	ff010113          	addi	sp,sp,-16
    80004e40:	00813423          	sd	s0,8(sp)
    80004e44:	01010413          	addi	s0,sp,16
    80004e48:	00002597          	auipc	a1,0x2
    80004e4c:	f8058593          	addi	a1,a1,-128 # 80006dc8 <freep>
    80004e50:	0005b783          	ld	a5,0(a1)
    80004e54:	ff050693          	addi	a3,a0,-16
    80004e58:	0007b703          	ld	a4,0(a5)
    80004e5c:	00d7fc63          	bgeu	a5,a3,80004e74 <__mem_free+0x38>
    80004e60:	00e6ee63          	bltu	a3,a4,80004e7c <__mem_free+0x40>
    80004e64:	00e7fc63          	bgeu	a5,a4,80004e7c <__mem_free+0x40>
    80004e68:	00070793          	mv	a5,a4
    80004e6c:	0007b703          	ld	a4,0(a5)
    80004e70:	fed7e8e3          	bltu	a5,a3,80004e60 <__mem_free+0x24>
    80004e74:	fee7eae3          	bltu	a5,a4,80004e68 <__mem_free+0x2c>
    80004e78:	fee6f8e3          	bgeu	a3,a4,80004e68 <__mem_free+0x2c>
    80004e7c:	ff852803          	lw	a6,-8(a0)
    80004e80:	02081613          	slli	a2,a6,0x20
    80004e84:	01c65613          	srli	a2,a2,0x1c
    80004e88:	00c68633          	add	a2,a3,a2
    80004e8c:	02c70a63          	beq	a4,a2,80004ec0 <__mem_free+0x84>
    80004e90:	fee53823          	sd	a4,-16(a0)
    80004e94:	0087a503          	lw	a0,8(a5)
    80004e98:	02051613          	slli	a2,a0,0x20
    80004e9c:	01c65613          	srli	a2,a2,0x1c
    80004ea0:	00c78633          	add	a2,a5,a2
    80004ea4:	04c68263          	beq	a3,a2,80004ee8 <__mem_free+0xac>
    80004ea8:	00813403          	ld	s0,8(sp)
    80004eac:	00d7b023          	sd	a3,0(a5)
    80004eb0:	00f5b023          	sd	a5,0(a1)
    80004eb4:	00000513          	li	a0,0
    80004eb8:	01010113          	addi	sp,sp,16
    80004ebc:	00008067          	ret
    80004ec0:	00872603          	lw	a2,8(a4)
    80004ec4:	00073703          	ld	a4,0(a4)
    80004ec8:	0106083b          	addw	a6,a2,a6
    80004ecc:	ff052c23          	sw	a6,-8(a0)
    80004ed0:	fee53823          	sd	a4,-16(a0)
    80004ed4:	0087a503          	lw	a0,8(a5)
    80004ed8:	02051613          	slli	a2,a0,0x20
    80004edc:	01c65613          	srli	a2,a2,0x1c
    80004ee0:	00c78633          	add	a2,a5,a2
    80004ee4:	fcc692e3          	bne	a3,a2,80004ea8 <__mem_free+0x6c>
    80004ee8:	00813403          	ld	s0,8(sp)
    80004eec:	0105053b          	addw	a0,a0,a6
    80004ef0:	00a7a423          	sw	a0,8(a5)
    80004ef4:	00e7b023          	sd	a4,0(a5)
    80004ef8:	00f5b023          	sd	a5,0(a1)
    80004efc:	00000513          	li	a0,0
    80004f00:	01010113          	addi	sp,sp,16
    80004f04:	00008067          	ret

0000000080004f08 <__mem_alloc>:
    80004f08:	fc010113          	addi	sp,sp,-64
    80004f0c:	02813823          	sd	s0,48(sp)
    80004f10:	02913423          	sd	s1,40(sp)
    80004f14:	03213023          	sd	s2,32(sp)
    80004f18:	01513423          	sd	s5,8(sp)
    80004f1c:	02113c23          	sd	ra,56(sp)
    80004f20:	01313c23          	sd	s3,24(sp)
    80004f24:	01413823          	sd	s4,16(sp)
    80004f28:	01613023          	sd	s6,0(sp)
    80004f2c:	04010413          	addi	s0,sp,64
    80004f30:	00002a97          	auipc	s5,0x2
    80004f34:	e98a8a93          	addi	s5,s5,-360 # 80006dc8 <freep>
    80004f38:	00f50913          	addi	s2,a0,15
    80004f3c:	000ab683          	ld	a3,0(s5)
    80004f40:	00495913          	srli	s2,s2,0x4
    80004f44:	0019049b          	addiw	s1,s2,1
    80004f48:	00048913          	mv	s2,s1
    80004f4c:	0c068c63          	beqz	a3,80005024 <__mem_alloc+0x11c>
    80004f50:	0006b503          	ld	a0,0(a3)
    80004f54:	00852703          	lw	a4,8(a0)
    80004f58:	10977063          	bgeu	a4,s1,80005058 <__mem_alloc+0x150>
    80004f5c:	000017b7          	lui	a5,0x1
    80004f60:	0009099b          	sext.w	s3,s2
    80004f64:	0af4e863          	bltu	s1,a5,80005014 <__mem_alloc+0x10c>
    80004f68:	02099a13          	slli	s4,s3,0x20
    80004f6c:	01ca5a13          	srli	s4,s4,0x1c
    80004f70:	fff00b13          	li	s6,-1
    80004f74:	0100006f          	j	80004f84 <__mem_alloc+0x7c>
    80004f78:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80004f7c:	00852703          	lw	a4,8(a0)
    80004f80:	04977463          	bgeu	a4,s1,80004fc8 <__mem_alloc+0xc0>
    80004f84:	00050793          	mv	a5,a0
    80004f88:	fea698e3          	bne	a3,a0,80004f78 <__mem_alloc+0x70>
    80004f8c:	000a0513          	mv	a0,s4
    80004f90:	00000097          	auipc	ra,0x0
    80004f94:	0d0080e7          	jalr	208(ra) # 80005060 <kvmincrease>
    80004f98:	00050793          	mv	a5,a0
    80004f9c:	01050513          	addi	a0,a0,16
    80004fa0:	07678e63          	beq	a5,s6,8000501c <__mem_alloc+0x114>
    80004fa4:	0137a423          	sw	s3,8(a5)
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	e94080e7          	jalr	-364(ra) # 80004e3c <__mem_free>
    80004fb0:	000ab783          	ld	a5,0(s5)
    80004fb4:	06078463          	beqz	a5,8000501c <__mem_alloc+0x114>
    80004fb8:	0007b503          	ld	a0,0(a5)
    80004fbc:	00078693          	mv	a3,a5
    80004fc0:	00852703          	lw	a4,8(a0)
    80004fc4:	fc9760e3          	bltu	a4,s1,80004f84 <__mem_alloc+0x7c>
    80004fc8:	08e48263          	beq	s1,a4,8000504c <__mem_alloc+0x144>
    80004fcc:	4127073b          	subw	a4,a4,s2
    80004fd0:	02071693          	slli	a3,a4,0x20
    80004fd4:	01c6d693          	srli	a3,a3,0x1c
    80004fd8:	00e52423          	sw	a4,8(a0)
    80004fdc:	00d50533          	add	a0,a0,a3
    80004fe0:	01252423          	sw	s2,8(a0)
    80004fe4:	00fab023          	sd	a5,0(s5)
    80004fe8:	01050513          	addi	a0,a0,16
    80004fec:	03813083          	ld	ra,56(sp)
    80004ff0:	03013403          	ld	s0,48(sp)
    80004ff4:	02813483          	ld	s1,40(sp)
    80004ff8:	02013903          	ld	s2,32(sp)
    80004ffc:	01813983          	ld	s3,24(sp)
    80005000:	01013a03          	ld	s4,16(sp)
    80005004:	00813a83          	ld	s5,8(sp)
    80005008:	00013b03          	ld	s6,0(sp)
    8000500c:	04010113          	addi	sp,sp,64
    80005010:	00008067          	ret
    80005014:	000019b7          	lui	s3,0x1
    80005018:	f51ff06f          	j	80004f68 <__mem_alloc+0x60>
    8000501c:	00000513          	li	a0,0
    80005020:	fcdff06f          	j	80004fec <__mem_alloc+0xe4>
    80005024:	00003797          	auipc	a5,0x3
    80005028:	29c78793          	addi	a5,a5,668 # 800082c0 <base>
    8000502c:	00078513          	mv	a0,a5
    80005030:	00fab023          	sd	a5,0(s5)
    80005034:	00f7b023          	sd	a5,0(a5)
    80005038:	00000713          	li	a4,0
    8000503c:	00003797          	auipc	a5,0x3
    80005040:	2807a623          	sw	zero,652(a5) # 800082c8 <base+0x8>
    80005044:	00050693          	mv	a3,a0
    80005048:	f11ff06f          	j	80004f58 <__mem_alloc+0x50>
    8000504c:	00053703          	ld	a4,0(a0)
    80005050:	00e7b023          	sd	a4,0(a5)
    80005054:	f91ff06f          	j	80004fe4 <__mem_alloc+0xdc>
    80005058:	00068793          	mv	a5,a3
    8000505c:	f6dff06f          	j	80004fc8 <__mem_alloc+0xc0>

0000000080005060 <kvmincrease>:
    80005060:	fe010113          	addi	sp,sp,-32
    80005064:	01213023          	sd	s2,0(sp)
    80005068:	00001937          	lui	s2,0x1
    8000506c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005070:	00813823          	sd	s0,16(sp)
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00913423          	sd	s1,8(sp)
    8000507c:	02010413          	addi	s0,sp,32
    80005080:	01250933          	add	s2,a0,s2
    80005084:	00c95913          	srli	s2,s2,0xc
    80005088:	02090863          	beqz	s2,800050b8 <kvmincrease+0x58>
    8000508c:	00000493          	li	s1,0
    80005090:	00148493          	addi	s1,s1,1
    80005094:	fffff097          	auipc	ra,0xfffff
    80005098:	5dc080e7          	jalr	1500(ra) # 80004670 <kalloc>
    8000509c:	fe991ae3          	bne	s2,s1,80005090 <kvmincrease+0x30>
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	00013903          	ld	s2,0(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret
    800050b8:	01813083          	ld	ra,24(sp)
    800050bc:	01013403          	ld	s0,16(sp)
    800050c0:	00813483          	ld	s1,8(sp)
    800050c4:	00013903          	ld	s2,0(sp)
    800050c8:	00000513          	li	a0,0
    800050cc:	02010113          	addi	sp,sp,32
    800050d0:	00008067          	ret
	...
