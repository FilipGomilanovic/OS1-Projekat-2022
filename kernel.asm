
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9e013103          	ld	sp,-1568(sp) # 800059e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	39c020ef          	jal	ra,800023b8 <start>

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
    80001084:	415000ef          	jal	ra,80001c98 <_ZN5Riscv20handleSupervisorTrapEv>

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
#include "../h/tcb.hpp"
#include "../h/codes.h"



void* mem_alloc (size_t size) {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00813023          	sd	s0,0(sp)
    80001130:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001134:	00003097          	auipc	ra,0x3
    80001138:	414080e7          	jalr	1044(ra) # 80004548 <__mem_alloc>
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
    8000115c:	00003097          	auipc	ra,0x3
    80001160:	320080e7          	jalr	800(ra) # 8000447c <__mem_free>
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
    80001190:	00050993          	mv	s3,a0
    80001194:	00058913          	mv	s2,a1
    80001198:	00060493          	mv	s1,a2
//Ovde moze nastati problem oko registara.

    auto *stack = (uint64*)(new uint64[DEFAULT_STACK_SIZE]);
    8000119c:	00008537          	lui	a0,0x8
    800011a0:	00001097          	auipc	ra,0x1
    800011a4:	a20080e7          	jalr	-1504(ra) # 80001bc0 <_Znam>
    __asm__ volatile("mv a4, %0" : : "r" (stack));
    800011a8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a0, %0" : : "r" (ThreadCreate));
    800011ac:	00b00793          	li	a5,11
    800011b0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800011b4:	00098593          	mv	a1,s3
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800011b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800011bc:	00048693          	mv	a3,s1
//    __asm__ volatile("mv a2, %0" : : "r" (handle));
//    __asm__ volatile("mv a1, %0" : : "r" (start_routine));
//    __asm__ volatile("mv a5, %0" : : "r" (arg));
//    __asm__ volatile("mv a3, %0" : : "r" (ThreadCreate));
//    __asm__ volatile("mv a4, %0" : : "r" (stack));
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
    800011f4:	00004517          	auipc	a0,0x4
    800011f8:	e0c50513          	addi	a0,a0,-500 # 80005000 <kvmincrease+0x840>
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	090080e7          	jalr	144(ra) # 8000228c <_Z11printStringPKc>
    printInteger(TCB::running->getId());
    80001204:	00004797          	auipc	a5,0x4
    80001208:	7e47b783          	ld	a5,2020(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000120c:	0007b783          	ld	a5,0(a5)
    80001210:	0307a503          	lw	a0,48(a5)
    80001214:	00001097          	auipc	ra,0x1
    80001218:	0e8080e7          	jalr	232(ra) # 800022fc <_Z12printIntegerm>
    printString("\n");
    8000121c:	00004517          	auipc	a0,0x4
    80001220:	f2c50513          	addi	a0,a0,-212 # 80005148 <kvmincrease+0x988>
    80001224:	00001097          	auipc	ra,0x1
    80001228:	068080e7          	jalr	104(ra) # 8000228c <_Z11printStringPKc>
    __asm__ volatile("mv a0, %0" : : "r" (ThreadExit));
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

    __asm__ volatile("mv a0, %0" : : "r" (ThreadDispatch));
    80001258:	00d00793          	li	a5,13
    8000125c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001260:	00000073          	ecall

}
    80001264:	00813403          	ld	s0,8(sp)
    80001268:	01010113          	addi	sp,sp,16
    8000126c:	00008067          	ret

0000000080001270 <_Z10time_sleepm>:
//
//int sem_signal (sem_t id) {
//
//}

int time_sleep (time_t slice) {
    80001270:	fe010113          	addi	sp,sp,-32
    80001274:	00113c23          	sd	ra,24(sp)
    80001278:	00813823          	sd	s0,16(sp)
    8000127c:	00913423          	sd	s1,8(sp)
    80001280:	02010413          	addi	s0,sp,32
    80001284:	00050493          	mv	s1,a0

    printString("Nit ");
    80001288:	00004517          	auipc	a0,0x4
    8000128c:	d8850513          	addi	a0,a0,-632 # 80005010 <kvmincrease+0x850>
    80001290:	00001097          	auipc	ra,0x1
    80001294:	ffc080e7          	jalr	-4(ra) # 8000228c <_Z11printStringPKc>
    printInteger(TCB::running->getId());
    80001298:	00004797          	auipc	a5,0x4
    8000129c:	7507b783          	ld	a5,1872(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800012a0:	0007b783          	ld	a5,0(a5)
    800012a4:	0307a503          	lw	a0,48(a5)
    800012a8:	00001097          	auipc	ra,0x1
    800012ac:	054080e7          	jalr	84(ra) # 800022fc <_Z12printIntegerm>
    printString(" uspavana na: ");
    800012b0:	00004517          	auipc	a0,0x4
    800012b4:	d6850513          	addi	a0,a0,-664 # 80005018 <kvmincrease+0x858>
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	fd4080e7          	jalr	-44(ra) # 8000228c <_Z11printStringPKc>
    printInteger(slice / 10);
    800012c0:	00a00513          	li	a0,10
    800012c4:	02a4d533          	divu	a0,s1,a0
    800012c8:	00001097          	auipc	ra,0x1
    800012cc:	034080e7          	jalr	52(ra) # 800022fc <_Z12printIntegerm>
    printString(" sekundi\n");
    800012d0:	00004517          	auipc	a0,0x4
    800012d4:	d5850513          	addi	a0,a0,-680 # 80005028 <kvmincrease+0x868>
    800012d8:	00001097          	auipc	ra,0x1
    800012dc:	fb4080e7          	jalr	-76(ra) # 8000228c <_Z11printStringPKc>

    __asm__ volatile("mv a0, %0" : : "r" (TimeSleep));
    800012e0:	01f00793          	li	a5,31
    800012e4:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : "r" (slice));
    800012e8:	00048593          	mv	a1,s1
    __asm__ volatile ("ecall");
    800012ec:	00000073          	ecall
    return 0;
}
    800012f0:	00000513          	li	a0,0
    800012f4:	01813083          	ld	ra,24(sp)
    800012f8:	01013403          	ld	s0,16(sp)
    800012fc:	00813483          	ld	s1,8(sp)
    80001300:	02010113          	addi	sp,sp,32
    80001304:	00008067          	ret

0000000080001308 <_Z12workerBodyA2Pv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA2(void* arg) {
    80001308:	fe010113          	addi	sp,sp,-32
    8000130c:	00113c23          	sd	ra,24(sp)
    80001310:	00813823          	sd	s0,16(sp)
    80001314:	00913423          	sd	s1,8(sp)
    80001318:	01213023          	sd	s2,0(sp)
    8000131c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001320:	00000913          	li	s2,0
    80001324:	0400006f          	j	80001364 <_Z12workerBodyA2Pv+0x5c>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	f24080e7          	jalr	-220(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001330:	00148493          	addi	s1,s1,1
    80001334:	000027b7          	lui	a5,0x2
    80001338:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000133c:	0097ee63          	bltu	a5,s1,80001358 <_Z12workerBodyA2Pv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001340:	00000713          	li	a4,0
    80001344:	000077b7          	lui	a5,0x7
    80001348:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000134c:	fce7eee3          	bltu	a5,a4,80001328 <_Z12workerBodyA2Pv+0x20>
    80001350:	00170713          	addi	a4,a4,1
    80001354:	ff1ff06f          	j	80001344 <_Z12workerBodyA2Pv+0x3c>
        }
        thread_exit();
    80001358:	00000097          	auipc	ra,0x0
    8000135c:	e8c080e7          	jalr	-372(ra) # 800011e4 <_Z11thread_exitv>
    for (uint64 i = 0; i < 10; i++) {
    80001360:	00190913          	addi	s2,s2,1
    80001364:	00900793          	li	a5,9
    80001368:	0327ec63          	bltu	a5,s2,800013a0 <_Z12workerBodyA2Pv+0x98>
        printString("A: i="); printInteger(i); printString("\n");
    8000136c:	00004517          	auipc	a0,0x4
    80001370:	ccc50513          	addi	a0,a0,-820 # 80005038 <kvmincrease+0x878>
    80001374:	00001097          	auipc	ra,0x1
    80001378:	f18080e7          	jalr	-232(ra) # 8000228c <_Z11printStringPKc>
    8000137c:	00090513          	mv	a0,s2
    80001380:	00001097          	auipc	ra,0x1
    80001384:	f7c080e7          	jalr	-132(ra) # 800022fc <_Z12printIntegerm>
    80001388:	00004517          	auipc	a0,0x4
    8000138c:	dc050513          	addi	a0,a0,-576 # 80005148 <kvmincrease+0x988>
    80001390:	00001097          	auipc	ra,0x1
    80001394:	efc080e7          	jalr	-260(ra) # 8000228c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001398:	00000493          	li	s1,0
    8000139c:	f99ff06f          	j	80001334 <_Z12workerBodyA2Pv+0x2c>
    }
    printString("A finished!\n");
    800013a0:	00004517          	auipc	a0,0x4
    800013a4:	ca050513          	addi	a0,a0,-864 # 80005040 <kvmincrease+0x880>
    800013a8:	00001097          	auipc	ra,0x1
    800013ac:	ee4080e7          	jalr	-284(ra) # 8000228c <_Z11printStringPKc>
    finishedA = true;
    800013b0:	00100793          	li	a5,1
    800013b4:	00004717          	auipc	a4,0x4
    800013b8:	68f70623          	sb	a5,1676(a4) # 80005a40 <finishedA>
}
    800013bc:	01813083          	ld	ra,24(sp)
    800013c0:	01013403          	ld	s0,16(sp)
    800013c4:	00813483          	ld	s1,8(sp)
    800013c8:	00013903          	ld	s2,0(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z12workerBodyB2Pv>:

void workerBodyB2(void* arg) {
    800013d4:	fe010113          	addi	sp,sp,-32
    800013d8:	00113c23          	sd	ra,24(sp)
    800013dc:	00813823          	sd	s0,16(sp)
    800013e0:	00913423          	sd	s1,8(sp)
    800013e4:	01213023          	sd	s2,0(sp)
    800013e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800013ec:	00000913          	li	s2,0
    800013f0:	0480006f          	j	80001438 <_Z12workerBodyB2Pv+0x64>
        if (i == 8){
            time_sleep(50);
    800013f4:	03200513          	li	a0,50
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e78080e7          	jalr	-392(ra) # 80001270 <_Z10time_sleepm>
    80001400:	0480006f          	j	80001448 <_Z12workerBodyB2Pv+0x74>
        }
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e48080e7          	jalr	-440(ra) # 8000124c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000140c:	00148493          	addi	s1,s1,1
    80001410:	000027b7          	lui	a5,0x2
    80001414:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001418:	0097ee63          	bltu	a5,s1,80001434 <_Z12workerBodyB2Pv+0x60>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000141c:	00000713          	li	a4,0
    80001420:	000077b7          	lui	a5,0x7
    80001424:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001428:	fce7eee3          	bltu	a5,a4,80001404 <_Z12workerBodyB2Pv+0x30>
    8000142c:	00170713          	addi	a4,a4,1
    80001430:	ff1ff06f          	j	80001420 <_Z12workerBodyB2Pv+0x4c>
    for (uint64 i = 0; i < 16; i++) {
    80001434:	00190913          	addi	s2,s2,1
    80001438:	00f00793          	li	a5,15
    8000143c:	0527e063          	bltu	a5,s2,8000147c <_Z12workerBodyB2Pv+0xa8>
        if (i == 8){
    80001440:	00800793          	li	a5,8
    80001444:	faf908e3          	beq	s2,a5,800013f4 <_Z12workerBodyB2Pv+0x20>
        printString("B: i="); printInteger(i); printString("\n");
    80001448:	00004517          	auipc	a0,0x4
    8000144c:	c0850513          	addi	a0,a0,-1016 # 80005050 <kvmincrease+0x890>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	e3c080e7          	jalr	-452(ra) # 8000228c <_Z11printStringPKc>
    80001458:	00090513          	mv	a0,s2
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	ea0080e7          	jalr	-352(ra) # 800022fc <_Z12printIntegerm>
    80001464:	00004517          	auipc	a0,0x4
    80001468:	ce450513          	addi	a0,a0,-796 # 80005148 <kvmincrease+0x988>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	e20080e7          	jalr	-480(ra) # 8000228c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001474:	00000493          	li	s1,0
    80001478:	f99ff06f          	j	80001410 <_Z12workerBodyB2Pv+0x3c>
        }
    }
    printString("B finished!\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	bdc50513          	addi	a0,a0,-1060 # 80005058 <kvmincrease+0x898>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	e08080e7          	jalr	-504(ra) # 8000228c <_Z11printStringPKc>
    finishedB = true;
    8000148c:	00100793          	li	a5,1
    80001490:	00004717          	auipc	a4,0x4
    80001494:	5af708a3          	sb	a5,1457(a4) # 80005a41 <finishedB>
    thread_dispatch();
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	db4080e7          	jalr	-588(ra) # 8000124c <_Z15thread_dispatchv>
}
    800014a0:	01813083          	ld	ra,24(sp)
    800014a4:	01013403          	ld	s0,16(sp)
    800014a8:	00813483          	ld	s1,8(sp)
    800014ac:	00013903          	ld	s2,0(sp)
    800014b0:	02010113          	addi	sp,sp,32
    800014b4:	00008067          	ret

00000000800014b8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800014b8:	fe010113          	addi	sp,sp,-32
    800014bc:	00113c23          	sd	ra,24(sp)
    800014c0:	00813823          	sd	s0,16(sp)
    800014c4:	00913423          	sd	s1,8(sp)
    800014c8:	01213023          	sd	s2,0(sp)
    800014cc:	02010413          	addi	s0,sp,32
    800014d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800014d4:	00100793          	li	a5,1
    800014d8:	02a7f863          	bgeu	a5,a0,80001508 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800014dc:	00a00793          	li	a5,10
    800014e0:	02f577b3          	remu	a5,a0,a5
    800014e4:	02078e63          	beqz	a5,80001520 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800014e8:	fff48513          	addi	a0,s1,-1
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	fcc080e7          	jalr	-52(ra) # 800014b8 <_Z9fibonaccim>
    800014f4:	00050913          	mv	s2,a0
    800014f8:	ffe48513          	addi	a0,s1,-2
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	fbc080e7          	jalr	-68(ra) # 800014b8 <_Z9fibonaccim>
    80001504:	00a90533          	add	a0,s2,a0
}
    80001508:	01813083          	ld	ra,24(sp)
    8000150c:	01013403          	ld	s0,16(sp)
    80001510:	00813483          	ld	s1,8(sp)
    80001514:	00013903          	ld	s2,0(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001520:	00000097          	auipc	ra,0x0
    80001524:	d2c080e7          	jalr	-724(ra) # 8000124c <_Z15thread_dispatchv>
    80001528:	fc1ff06f          	j	800014e8 <_Z9fibonaccim+0x30>

000000008000152c <_Z12workerBodyC2Pv>:

void workerBodyC2(void* arg) {
    8000152c:	fe010113          	addi	sp,sp,-32
    80001530:	00113c23          	sd	ra,24(sp)
    80001534:	00813823          	sd	s0,16(sp)
    80001538:	00913423          	sd	s1,8(sp)
    8000153c:	01213023          	sd	s2,0(sp)
    80001540:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001544:	00000493          	li	s1,0
    80001548:	0380006f          	j	80001580 <_Z12workerBodyC2Pv+0x54>
    for (; i < 3; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    8000154c:	00004517          	auipc	a0,0x4
    80001550:	b1c50513          	addi	a0,a0,-1252 # 80005068 <kvmincrease+0x8a8>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	d38080e7          	jalr	-712(ra) # 8000228c <_Z11printStringPKc>
    8000155c:	00048513          	mv	a0,s1
    80001560:	00001097          	auipc	ra,0x1
    80001564:	d9c080e7          	jalr	-612(ra) # 800022fc <_Z12printIntegerm>
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	be050513          	addi	a0,a0,-1056 # 80005148 <kvmincrease+0x988>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	d1c080e7          	jalr	-740(ra) # 8000228c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001578:	0014849b          	addiw	s1,s1,1
    8000157c:	0ff4f493          	andi	s1,s1,255
    80001580:	00200793          	li	a5,2
    80001584:	fc97f4e3          	bgeu	a5,s1,8000154c <_Z12workerBodyC2Pv+0x20>
    }

    printString("C: dispatch\n");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	ae850513          	addi	a0,a0,-1304 # 80005070 <kvmincrease+0x8b0>
    80001590:	00001097          	auipc	ra,0x1
    80001594:	cfc080e7          	jalr	-772(ra) # 8000228c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001598:	00700313          	li	t1,7
    thread_dispatch();
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	cb0080e7          	jalr	-848(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800015a4:	00030913          	mv	s2,t1

    printString("C: t1="); printInteger(t1); printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	ad850513          	addi	a0,a0,-1320 # 80005080 <kvmincrease+0x8c0>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	cdc080e7          	jalr	-804(ra) # 8000228c <_Z11printStringPKc>
    800015b8:	00090513          	mv	a0,s2
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	d40080e7          	jalr	-704(ra) # 800022fc <_Z12printIntegerm>
    800015c4:	00004517          	auipc	a0,0x4
    800015c8:	b8450513          	addi	a0,a0,-1148 # 80005148 <kvmincrease+0x988>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	cc0080e7          	jalr	-832(ra) # 8000228c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800015d4:	00c00513          	li	a0,12
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	ee0080e7          	jalr	-288(ra) # 800014b8 <_Z9fibonaccim>
    800015e0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    800015e4:	00004517          	auipc	a0,0x4
    800015e8:	aa450513          	addi	a0,a0,-1372 # 80005088 <kvmincrease+0x8c8>
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	ca0080e7          	jalr	-864(ra) # 8000228c <_Z11printStringPKc>
    800015f4:	00090513          	mv	a0,s2
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	d04080e7          	jalr	-764(ra) # 800022fc <_Z12printIntegerm>
    80001600:	00004517          	auipc	a0,0x4
    80001604:	b4850513          	addi	a0,a0,-1208 # 80005148 <kvmincrease+0x988>
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	c84080e7          	jalr	-892(ra) # 8000228c <_Z11printStringPKc>
    time_sleep(100);
    80001610:	06400513          	li	a0,100
    80001614:	00000097          	auipc	ra,0x0
    80001618:	c5c080e7          	jalr	-932(ra) # 80001270 <_Z10time_sleepm>
    8000161c:	0380006f          	j	80001654 <_Z12workerBodyC2Pv+0x128>
    for (; i < 6; i++) {
        printString("C: i="); printInteger(i); printString("\n");
    80001620:	00004517          	auipc	a0,0x4
    80001624:	a4850513          	addi	a0,a0,-1464 # 80005068 <kvmincrease+0x8a8>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	c64080e7          	jalr	-924(ra) # 8000228c <_Z11printStringPKc>
    80001630:	00048513          	mv	a0,s1
    80001634:	00001097          	auipc	ra,0x1
    80001638:	cc8080e7          	jalr	-824(ra) # 800022fc <_Z12printIntegerm>
    8000163c:	00004517          	auipc	a0,0x4
    80001640:	b0c50513          	addi	a0,a0,-1268 # 80005148 <kvmincrease+0x988>
    80001644:	00001097          	auipc	ra,0x1
    80001648:	c48080e7          	jalr	-952(ra) # 8000228c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000164c:	0014849b          	addiw	s1,s1,1
    80001650:	0ff4f493          	andi	s1,s1,255
    80001654:	00500793          	li	a5,5
    80001658:	fc97f4e3          	bgeu	a5,s1,80001620 <_Z12workerBodyC2Pv+0xf4>
    }

    printString("C finished!\n");
    8000165c:	00004517          	auipc	a0,0x4
    80001660:	a3c50513          	addi	a0,a0,-1476 # 80005098 <kvmincrease+0x8d8>
    80001664:	00001097          	auipc	ra,0x1
    80001668:	c28080e7          	jalr	-984(ra) # 8000228c <_Z11printStringPKc>
    finishedC = true;
    8000166c:	00100793          	li	a5,1
    80001670:	00004717          	auipc	a4,0x4
    80001674:	3cf70923          	sb	a5,978(a4) # 80005a42 <finishedC>
    thread_dispatch();
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	bd4080e7          	jalr	-1068(ra) # 8000124c <_Z15thread_dispatchv>
}
    80001680:	01813083          	ld	ra,24(sp)
    80001684:	01013403          	ld	s0,16(sp)
    80001688:	00813483          	ld	s1,8(sp)
    8000168c:	00013903          	ld	s2,0(sp)
    80001690:	02010113          	addi	sp,sp,32
    80001694:	00008067          	ret

0000000080001698 <_Z12workerBodyD2Pv>:

void workerBodyD2(void* arg) {
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	00913423          	sd	s1,8(sp)
    800016a8:	01213023          	sd	s2,0(sp)
    800016ac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016b0:	00a00493          	li	s1,10
    800016b4:	0380006f          	j	800016ec <_Z12workerBodyD2Pv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	9f050513          	addi	a0,a0,-1552 # 800050a8 <kvmincrease+0x8e8>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	bcc080e7          	jalr	-1076(ra) # 8000228c <_Z11printStringPKc>
    800016c8:	00048513          	mv	a0,s1
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	c30080e7          	jalr	-976(ra) # 800022fc <_Z12printIntegerm>
    800016d4:	00004517          	auipc	a0,0x4
    800016d8:	a7450513          	addi	a0,a0,-1420 # 80005148 <kvmincrease+0x988>
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	bb0080e7          	jalr	-1104(ra) # 8000228c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800016e4:	0014849b          	addiw	s1,s1,1
    800016e8:	0ff4f493          	andi	s1,s1,255
    800016ec:	00c00793          	li	a5,12
    800016f0:	fc97f4e3          	bgeu	a5,s1,800016b8 <_Z12workerBodyD2Pv+0x20>
    }

    printString("D: dispatch\n");
    800016f4:	00004517          	auipc	a0,0x4
    800016f8:	9bc50513          	addi	a0,a0,-1604 # 800050b0 <kvmincrease+0x8f0>
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	b90080e7          	jalr	-1136(ra) # 8000228c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001704:	00500313          	li	t1,5
    thread_dispatch();
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	b44080e7          	jalr	-1212(ra) # 8000124c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001710:	01000513          	li	a0,16
    80001714:	00000097          	auipc	ra,0x0
    80001718:	da4080e7          	jalr	-604(ra) # 800014b8 <_Z9fibonaccim>
    8000171c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    80001720:	00004517          	auipc	a0,0x4
    80001724:	9a050513          	addi	a0,a0,-1632 # 800050c0 <kvmincrease+0x900>
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	b64080e7          	jalr	-1180(ra) # 8000228c <_Z11printStringPKc>
    80001730:	00090513          	mv	a0,s2
    80001734:	00001097          	auipc	ra,0x1
    80001738:	bc8080e7          	jalr	-1080(ra) # 800022fc <_Z12printIntegerm>
    8000173c:	00004517          	auipc	a0,0x4
    80001740:	a0c50513          	addi	a0,a0,-1524 # 80005148 <kvmincrease+0x988>
    80001744:	00001097          	auipc	ra,0x1
    80001748:	b48080e7          	jalr	-1208(ra) # 8000228c <_Z11printStringPKc>
    8000174c:	0380006f          	j	80001784 <_Z12workerBodyD2Pv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80001750:	00004517          	auipc	a0,0x4
    80001754:	95850513          	addi	a0,a0,-1704 # 800050a8 <kvmincrease+0x8e8>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	b34080e7          	jalr	-1228(ra) # 8000228c <_Z11printStringPKc>
    80001760:	00048513          	mv	a0,s1
    80001764:	00001097          	auipc	ra,0x1
    80001768:	b98080e7          	jalr	-1128(ra) # 800022fc <_Z12printIntegerm>
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	9dc50513          	addi	a0,a0,-1572 # 80005148 <kvmincrease+0x988>
    80001774:	00001097          	auipc	ra,0x1
    80001778:	b18080e7          	jalr	-1256(ra) # 8000228c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000177c:	0014849b          	addiw	s1,s1,1
    80001780:	0ff4f493          	andi	s1,s1,255
    80001784:	00f00793          	li	a5,15
    80001788:	fc97f4e3          	bgeu	a5,s1,80001750 <_Z12workerBodyD2Pv+0xb8>
    }

    printString("D finished!\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	94450513          	addi	a0,a0,-1724 # 800050d0 <kvmincrease+0x910>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	af8080e7          	jalr	-1288(ra) # 8000228c <_Z11printStringPKc>
    finishedD = true;
    8000179c:	00100793          	li	a5,1
    800017a0:	00004717          	auipc	a4,0x4
    800017a4:	2af701a3          	sb	a5,675(a4) # 80005a43 <finishedD>
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

00000000800017c8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800017c8:	fd010113          	addi	sp,sp,-48
    800017cc:	02113423          	sd	ra,40(sp)
    800017d0:	02813023          	sd	s0,32(sp)
    800017d4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA2, nullptr);
    800017d8:	00000613          	li	a2,0
    800017dc:	00000597          	auipc	a1,0x0
    800017e0:	b2c58593          	addi	a1,a1,-1236 # 80001308 <_Z12workerBodyA2Pv>
    800017e4:	fd040513          	addi	a0,s0,-48
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	98c080e7          	jalr	-1652(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800017f0:	00004517          	auipc	a0,0x4
    800017f4:	8f050513          	addi	a0,a0,-1808 # 800050e0 <kvmincrease+0x920>
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	a94080e7          	jalr	-1388(ra) # 8000228c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB2, nullptr);
    80001800:	00000613          	li	a2,0
    80001804:	00000597          	auipc	a1,0x0
    80001808:	bd058593          	addi	a1,a1,-1072 # 800013d4 <_Z12workerBodyB2Pv>
    8000180c:	fd840513          	addi	a0,s0,-40
    80001810:	00000097          	auipc	ra,0x0
    80001814:	964080e7          	jalr	-1692(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001818:	00004517          	auipc	a0,0x4
    8000181c:	8e050513          	addi	a0,a0,-1824 # 800050f8 <kvmincrease+0x938>
    80001820:	00001097          	auipc	ra,0x1
    80001824:	a6c080e7          	jalr	-1428(ra) # 8000228c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC2, nullptr);
    80001828:	00000613          	li	a2,0
    8000182c:	00000597          	auipc	a1,0x0
    80001830:	d0058593          	addi	a1,a1,-768 # 8000152c <_Z12workerBodyC2Pv>
    80001834:	fe040513          	addi	a0,s0,-32
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	93c080e7          	jalr	-1732(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	8d050513          	addi	a0,a0,-1840 # 80005110 <kvmincrease+0x950>
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	a44080e7          	jalr	-1468(ra) # 8000228c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD2, nullptr);
    80001850:	00000613          	li	a2,0
    80001854:	00000597          	auipc	a1,0x0
    80001858:	e4458593          	addi	a1,a1,-444 # 80001698 <_Z12workerBodyD2Pv>
    8000185c:	fe840513          	addi	a0,s0,-24
    80001860:	00000097          	auipc	ra,0x0
    80001864:	914080e7          	jalr	-1772(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001868:	00004517          	auipc	a0,0x4
    8000186c:	8c050513          	addi	a0,a0,-1856 # 80005128 <kvmincrease+0x968>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	a1c080e7          	jalr	-1508(ra) # 8000228c <_Z11printStringPKc>
    80001878:	00c0006f          	j	80001884 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	9d0080e7          	jalr	-1584(ra) # 8000124c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001884:	00004797          	auipc	a5,0x4
    80001888:	1bc7c783          	lbu	a5,444(a5) # 80005a40 <finishedA>
    8000188c:	fe0788e3          	beqz	a5,8000187c <_Z18Threads_C_API_testv+0xb4>
    80001890:	00004797          	auipc	a5,0x4
    80001894:	1b17c783          	lbu	a5,433(a5) # 80005a41 <finishedB>
    80001898:	fe0782e3          	beqz	a5,8000187c <_Z18Threads_C_API_testv+0xb4>
    8000189c:	00004797          	auipc	a5,0x4
    800018a0:	1a67c783          	lbu	a5,422(a5) # 80005a42 <finishedC>
    800018a4:	fc078ce3          	beqz	a5,8000187c <_Z18Threads_C_API_testv+0xb4>
    800018a8:	00004797          	auipc	a5,0x4
    800018ac:	19b7c783          	lbu	a5,411(a5) # 80005a43 <finishedD>
    800018b0:	fc0786e3          	beqz	a5,8000187c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	03010113          	addi	sp,sp,48
    800018c0:	00008067          	ret

00000000800018c4 <_Z8userMainv>:

void userMain() {
    800018c4:	ff010113          	addi	sp,sp,-16
    800018c8:	00113423          	sd	ra,8(sp)
    800018cc:	00813023          	sd	s0,0(sp)
    800018d0:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	ef4080e7          	jalr	-268(ra) # 800017c8 <_Z18Threads_C_API_testv>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <main>:


int main()
{
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	02010413          	addi	s0,sp,32
//    }
//    printString("Finished\n");
//
//    return 0;

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800018fc:	00004797          	auipc	a5,0x4
    80001900:	0d47b783          	ld	a5,212(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001904:	10579073          	csrw	stvec,a5
    TCB* main;

    thread_create(&main, nullptr, nullptr);
    80001908:	00000613          	li	a2,0
    8000190c:	00000593          	li	a1,0
    80001910:	fe840513          	addi	a0,s0,-24
    80001914:	00000097          	auipc	ra,0x0
    80001918:	860080e7          	jalr	-1952(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    8000191c:	00004797          	auipc	a5,0x4
    80001920:	0cc7b783          	ld	a5,204(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001924:	fe843703          	ld	a4,-24(s0)
    80001928:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000192c:	00200793          	li	a5,2
    80001930:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    userMain();
    80001934:	00000097          	auipc	ra,0x0
    80001938:	f90080e7          	jalr	-112(ra) # 800018c4 <_Z8userMainv>


    printString("Finished\n");
    8000193c:	00004517          	auipc	a0,0x4
    80001940:	80450513          	addi	a0,a0,-2044 # 80005140 <kvmincrease+0x980>
    80001944:	00001097          	auipc	ra,0x1
    80001948:	948080e7          	jalr	-1720(ra) # 8000228c <_Z11printStringPKc>

    return 0;


}
    8000194c:	00000513          	li	a0,0
    80001950:	01813083          	ld	ra,24(sp)
    80001954:	01013403          	ld	s0,16(sp)
    80001958:	02010113          	addi	sp,sp,32
    8000195c:	00008067          	ret

0000000080001960 <_ZN3TCB12createThreadEPPS_PFvvEPvPm>:
TCB *TCB::running = nullptr;
int TCB::x = 0;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(TCB** handle, Body body, void* arg, uint64* stack_space)
{
    80001960:	fc010113          	addi	sp,sp,-64
    80001964:	02113c23          	sd	ra,56(sp)
    80001968:	02813823          	sd	s0,48(sp)
    8000196c:	02913423          	sd	s1,40(sp)
    80001970:	03213023          	sd	s2,32(sp)
    80001974:	01313c23          	sd	s3,24(sp)
    80001978:	01413823          	sd	s4,16(sp)
    8000197c:	01513423          	sd	s5,8(sp)
    80001980:	04010413          	addi	s0,sp,64
    80001984:	00050993          	mv	s3,a0
    80001988:	00058a13          	mv	s4,a1
    8000198c:	00060a93          	mv	s5,a2
    80001990:	00068913          	mv	s2,a3
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    80001994:	03800513          	li	a0,56
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	200080e7          	jalr	512(ra) # 80001b98 <_Znwm>
    800019a0:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            id(x),
            finished(false),
            sleeping(false)
    800019a4:	01553023          	sd	s5,0(a0)
    800019a8:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? stack_space : nullptr),
    800019ac:	040a0a63          	beqz	s4,80001a00 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xa0>
            sleeping(false)
    800019b0:	0124b823          	sd	s2,16(s1)
    800019b4:	00000797          	auipc	a5,0x0
    800019b8:	11c78793          	addi	a5,a5,284 # 80001ad0 <_ZN3TCB13threadWrapperEv>
    800019bc:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800019c0:	04090463          	beqz	s2,80001a08 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xa8>
    800019c4:	000086b7          	lui	a3,0x8
    800019c8:	00d90933          	add	s2,s2,a3
            sleeping(false)
    800019cc:	0324b023          	sd	s2,32(s1)
    800019d0:	00200793          	li	a5,2
    800019d4:	02f4b423          	sd	a5,40(s1)
    800019d8:	00004797          	auipc	a5,0x4
    800019dc:	0707a783          	lw	a5,112(a5) # 80005a48 <_ZN3TCB1xE>
    800019e0:	02f4a823          	sw	a5,48(s1)
    800019e4:	02048a23          	sb	zero,52(s1)
    800019e8:	02048aa3          	sb	zero,53(s1)
    {
        if (body != nullptr) {
    800019ec:	020a0263          	beqz	s4,80001a10 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xb0>
            Scheduler::put(this);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	7f8080e7          	jalr	2040(ra) # 800021ec <_ZN9Scheduler3putEP3TCB>
    800019fc:	0140006f          	j	80001a10 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xb0>
            stack(body != nullptr ? stack_space : nullptr),
    80001a00:	00000913          	li	s2,0
    80001a04:	fadff06f          	j	800019b0 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001a08:	00000913          	li	s2,0
    80001a0c:	fc1ff06f          	j	800019cc <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x6c>
    80001a10:	0099b023          	sd	s1,0(s3)
    printString("handle iz createThread ");
    80001a14:	00003517          	auipc	a0,0x3
    80001a18:	73c50513          	addi	a0,a0,1852 # 80005150 <kvmincrease+0x990>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	870080e7          	jalr	-1936(ra) # 8000228c <_Z11printStringPKc>
    printInteger(x);
    80001a24:	00004497          	auipc	s1,0x4
    80001a28:	02448493          	addi	s1,s1,36 # 80005a48 <_ZN3TCB1xE>
    80001a2c:	0004a503          	lw	a0,0(s1)
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	8cc080e7          	jalr	-1844(ra) # 800022fc <_Z12printIntegerm>
    x++;
    80001a38:	0004a783          	lw	a5,0(s1)
    80001a3c:	0017879b          	addiw	a5,a5,1
    80001a40:	00f4a023          	sw	a5,0(s1)
    printString(":                ");
    80001a44:	00003517          	auipc	a0,0x3
    80001a48:	72450513          	addi	a0,a0,1828 # 80005168 <kvmincrease+0x9a8>
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	840080e7          	jalr	-1984(ra) # 8000228c <_Z11printStringPKc>
    printInteger((uint64)&(**handle));
    80001a54:	0009b503          	ld	a0,0(s3)
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	8a4080e7          	jalr	-1884(ra) # 800022fc <_Z12printIntegerm>
    printString("\n");
    80001a60:	00003517          	auipc	a0,0x3
    80001a64:	6e850513          	addi	a0,a0,1768 # 80005148 <kvmincrease+0x988>
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	824080e7          	jalr	-2012(ra) # 8000228c <_Z11printStringPKc>
    return *handle;
    80001a70:	0009b503          	ld	a0,0(s3)
}
    80001a74:	03813083          	ld	ra,56(sp)
    80001a78:	03013403          	ld	s0,48(sp)
    80001a7c:	02813483          	ld	s1,40(sp)
    80001a80:	02013903          	ld	s2,32(sp)
    80001a84:	01813983          	ld	s3,24(sp)
    80001a88:	01013a03          	ld	s4,16(sp)
    80001a8c:	00813a83          	ld	s5,8(sp)
    80001a90:	04010113          	addi	sp,sp,64
    80001a94:	00008067          	ret
    80001a98:	00050913          	mv	s2,a0
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	148080e7          	jalr	328(ra) # 80001be8 <_ZdlPv>
    80001aa8:	00090513          	mv	a0,s2
    80001aac:	00005097          	auipc	ra,0x5
    80001ab0:	09c080e7          	jalr	156(ra) # 80006b48 <_Unwind_Resume>

0000000080001ab4 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001ab4:	ff010113          	addi	sp,sp,-16
    80001ab8:	00813423          	sd	s0,8(sp)
    80001abc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001ac0:	00000073          	ecall
}
    80001ac4:	00813403          	ld	s0,8(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001ad0:	fe010113          	addi	sp,sp,-32
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	00813823          	sd	s0,16(sp)
    80001adc:	00913423          	sd	s1,8(sp)
    80001ae0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	194080e7          	jalr	404(ra) # 80001c78 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001aec:	00004497          	auipc	s1,0x4
    80001af0:	f5c48493          	addi	s1,s1,-164 # 80005a48 <_ZN3TCB1xE>
    80001af4:	0084b783          	ld	a5,8(s1)
    80001af8:	0087b783          	ld	a5,8(a5)
    80001afc:	000780e7          	jalr	a5
    running->setFinished(true);
    80001b00:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    80001b04:	00100713          	li	a4,1
    80001b08:	02e78a23          	sb	a4,52(a5)
    TCB::yield();
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	fa8080e7          	jalr	-88(ra) # 80001ab4 <_ZN3TCB5yieldEv>
}
    80001b14:	01813083          	ld	ra,24(sp)
    80001b18:	01013403          	ld	s0,16(sp)
    80001b1c:	00813483          	ld	s1,8(sp)
    80001b20:	02010113          	addi	sp,sp,32
    80001b24:	00008067          	ret

0000000080001b28 <_ZN3TCB8dispatchEv>:
{
    80001b28:	fe010113          	addi	sp,sp,-32
    80001b2c:	00113c23          	sd	ra,24(sp)
    80001b30:	00813823          	sd	s0,16(sp)
    80001b34:	00913423          	sd	s1,8(sp)
    80001b38:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b3c:	00004497          	auipc	s1,0x4
    80001b40:	f144b483          	ld	s1,-236(s1) # 80005a50 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b44:	0344c783          	lbu	a5,52(s1)
    if (!old->isFinished() && !old->isSleeping()) { Scheduler::put(old); }
    80001b48:	00079663          	bnez	a5,80001b54 <_ZN3TCB8dispatchEv+0x2c>
    bool isSleeping() const { return sleeping; }
    80001b4c:	0354c783          	lbu	a5,53(s1)
    80001b50:	02078c63          	beqz	a5,80001b88 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	630080e7          	jalr	1584(ra) # 80002184 <_ZN9Scheduler3getEv>
    80001b5c:	00004797          	auipc	a5,0x4
    80001b60:	eea7ba23          	sd	a0,-268(a5) # 80005a50 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b64:	01850593          	addi	a1,a0,24
    80001b68:	01848513          	addi	a0,s1,24
    80001b6c:	fffff097          	auipc	ra,0xfffff
    80001b70:	5a4080e7          	jalr	1444(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret
    if (!old->isFinished() && !old->isSleeping()) { Scheduler::put(old); }
    80001b88:	00048513          	mv	a0,s1
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	660080e7          	jalr	1632(ra) # 800021ec <_ZN9Scheduler3putEP3TCB>
    80001b94:	fc1ff06f          	j	80001b54 <_ZN3TCB8dispatchEv+0x2c>

0000000080001b98 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00113423          	sd	ra,8(sp)
    80001ba0:	00813023          	sd	s0,0(sp)
    80001ba4:	01010413          	addi	s0,sp,16
//    printString("ALokacija + ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    80001ba8:	00003097          	auipc	ra,0x3
    80001bac:	9a0080e7          	jalr	-1632(ra) # 80004548 <__mem_alloc>
}
    80001bb0:	00813083          	ld	ra,8(sp)
    80001bb4:	00013403          	ld	s0,0(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_Znam>:

void *operator new[](size_t n)
{
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
//    printString("Alokacija steka = ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    80001bd0:	00003097          	auipc	ra,0x3
    80001bd4:	978080e7          	jalr	-1672(ra) # 80004548 <__mem_alloc>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001bf8:	00003097          	auipc	ra,0x3
    80001bfc:	884080e7          	jalr	-1916(ra) # 8000447c <__mem_free>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c20:	00003097          	auipc	ra,0x3
    80001c24:	85c080e7          	jalr	-1956(ra) # 8000447c <__mem_free>
}
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_Z41__static_initialization_and_destruction_0ii>:
    }
    else
    {
        // unexpected trap cause
    }
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    80001c44:	00100793          	li	a5,1
    80001c48:	00f50863          	beq	a0,a5,80001c58 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    80001c58:	000107b7          	lui	a5,0x10
    80001c5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c60:	fef596e3          	bne	a1,a5,80001c4c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(nullptr), tail(nullptr) {}
    80001c64:	00004797          	auipc	a5,0x4
    80001c68:	dfc78793          	addi	a5,a5,-516 # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80001c6c:	0007b023          	sd	zero,0(a5)
    80001c70:	0007b423          	sd	zero,8(a5)
    80001c74:	fd9ff06f          	j	80001c4c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c78 <_ZN5Riscv10popSppSpieEv>:
{
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00813423          	sd	s0,8(sp)
    80001c80:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001c84:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001c88:	10200073          	sret
}
    80001c8c:	00813403          	ld	s0,8(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80001c98:	f6010113          	addi	sp,sp,-160
    80001c9c:	08113c23          	sd	ra,152(sp)
    80001ca0:	08813823          	sd	s0,144(sp)
    80001ca4:	08913423          	sd	s1,136(sp)
    80001ca8:	09213023          	sd	s2,128(sp)
    80001cac:	07313c23          	sd	s3,120(sp)
    80001cb0:	07413823          	sd	s4,112(sp)
    80001cb4:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001cb8:	142027f3          	csrr	a5,scause
    80001cbc:	f8f43c23          	sd	a5,-104(s0)
    return scause;
    80001cc0:	f9843703          	ld	a4,-104(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001cc4:	ff870693          	addi	a3,a4,-8
    80001cc8:	00100793          	li	a5,1
    80001ccc:	02d7f863          	bgeu	a5,a3,80001cfc <_ZN5Riscv20handleSupervisorTrapEv+0x64>
    else if (scause == 0x8000000000000001UL)
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	03f79793          	slli	a5,a5,0x3f
    80001cd8:	00178793          	addi	a5,a5,1
    80001cdc:	34f70063          	beq	a4,a5,8000201c <_ZN5Riscv20handleSupervisorTrapEv+0x384>
    else if (scause == 0x8000000000000009UL)
    80001ce0:	fff00793          	li	a5,-1
    80001ce4:	03f79793          	slli	a5,a5,0x3f
    80001ce8:	00978793          	addi	a5,a5,9
    80001cec:	12f71063          	bne	a4,a5,80001e0c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
        console_handler();
    80001cf0:	00003097          	auipc	ra,0x3
    80001cf4:	a24080e7          	jalr	-1500(ra) # 80004714 <console_handler>
    80001cf8:	1140006f          	j	80001e0c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cfc:	141027f3          	csrr	a5,sepc
    80001d00:	faf43423          	sd	a5,-88(s0)
    return sepc;
    80001d04:	fa843783          	ld	a5,-88(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d08:	00478793          	addi	a5,a5,4
    80001d0c:	f6f43423          	sd	a5,-152(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d10:	100027f3          	csrr	a5,sstatus
    80001d14:	faf43023          	sd	a5,-96(s0)
    return sstatus;
    80001d18:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sstatus = r_sstatus();
    80001d1c:	f6f43823          	sd	a5,-144(s0)
        __asm__ volatile("ld t1, 8*10(fp)");
    80001d20:	05043303          	ld	t1,80(s0)
        __asm__ volatile("mv %0, t1" : "=r" (code));
    80001d24:	00030793          	mv	a5,t1
        if (code == MemAlloc) {
    80001d28:	00100713          	li	a4,1
    80001d2c:	0ce78863          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == MemFree) {
    80001d30:	00200713          	li	a4,2
    80001d34:	0ce78463          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == ThreadCreate){
    80001d38:	00b00713          	li	a4,11
    80001d3c:	08e78c63          	beq	a5,a4,80001dd4 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        else if (code == ThreadExit){
    80001d40:	00c00713          	li	a4,12
    80001d44:	0ee78463          	beq	a5,a4,80001e2c <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if (code == ThreadDispatch){
    80001d48:	00d00713          	li	a4,13
    80001d4c:	10e78863          	beq	a5,a4,80001e5c <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
        else if (code == SemOpen){
    80001d50:	01500713          	li	a4,21
    80001d54:	0ae78463          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == SemClose){
    80001d58:	01600713          	li	a4,22
    80001d5c:	0ae78063          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == SemWait){
    80001d60:	01700713          	li	a4,23
    80001d64:	08e78c63          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == SemSignal){
    80001d68:	01800713          	li	a4,24
    80001d6c:	08e78863          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == TimeSleep){
    80001d70:	01f00713          	li	a4,31
    80001d74:	10e78863          	beq	a5,a4,80001e84 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
        else if (code == GetC){
    80001d78:	02900713          	li	a4,41
    80001d7c:	08e78063          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        else if (code == PutC){
    80001d80:	02a00713          	li	a4,42
    80001d84:	06e78c63          	beq	a5,a4,80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d88:	141027f3          	csrr	a5,sepc
    80001d8c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001d90:	fb843783          	ld	a5,-72(s0)
            uint64 volatile sepc = r_sepc() + 4;
    80001d94:	00478793          	addi	a5,a5,4
    80001d98:	f6f43c23          	sd	a5,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d9c:	100027f3          	csrr	a5,sstatus
    80001da0:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001da4:	fb043783          	ld	a5,-80(s0)
            uint64 volatile sstatus = r_sstatus();
    80001da8:	f8f43023          	sd	a5,-128(s0)
            TCB::timeSliceCounter = 0;
    80001dac:	00004797          	auipc	a5,0x4
    80001db0:	c2c7b783          	ld	a5,-980(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001db4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	d70080e7          	jalr	-656(ra) # 80001b28 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001dc0:	f8043783          	ld	a5,-128(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001dc4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001dc8:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dcc:	14179073          	csrw	sepc,a5
}
    80001dd0:	02c0006f          	j	80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            __asm__ volatile("ld t2, 8*11(fp)");
    80001dd4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    80001dd8:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    80001ddc:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));
    80001de0:	00030593          	mv	a1,t1
            __asm__ volatile("ld t1, 8*13(fp)");
    80001de4:	06843303          	ld	t1,104(s0)
            __asm__ volatile("mv %0, t1" : "=r" (args));
    80001de8:	00030613          	mv	a2,t1
            __asm__ volatile("ld t1, 8*14(fp)");
    80001dec:	07043303          	ld	t1,112(s0)
            __asm__ volatile("mv %0, t1" : "=r" (stack));
    80001df0:	00030693          	mv	a3,t1
            TCB::createThread(handle, start_routine, args, stack);
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	b6c080e7          	jalr	-1172(ra) # 80001960 <_ZN3TCB12createThreadEPPS_PFvvEPvPm>
        w_sstatus(sstatus);
    80001dfc:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e00:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001e04:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e08:	14179073          	csrw	sepc,a5
    80001e0c:	09813083          	ld	ra,152(sp)
    80001e10:	09013403          	ld	s0,144(sp)
    80001e14:	08813483          	ld	s1,136(sp)
    80001e18:	08013903          	ld	s2,128(sp)
    80001e1c:	07813983          	ld	s3,120(sp)
    80001e20:	07013a03          	ld	s4,112(sp)
    80001e24:	0a010113          	addi	sp,sp,160
    80001e28:	00008067          	ret
            TCB::running->setFinished(true);
    80001e2c:	00004797          	auipc	a5,0x4
    80001e30:	bbc7b783          	ld	a5,-1092(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e34:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001e38:	00100713          	li	a4,1
    80001e3c:	02e78a23          	sb	a4,52(a5)
            TCB::dispatch();
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	ce8080e7          	jalr	-792(ra) # 80001b28 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001e48:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e4c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001e50:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e54:	14179073          	csrw	sepc,a5
}
    80001e58:	fa5ff06f          	j	80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            TCB::timeSliceCounter = 0;
    80001e5c:	00004797          	auipc	a5,0x4
    80001e60:	b7c7b783          	ld	a5,-1156(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001e64:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	cc0080e7          	jalr	-832(ra) # 80001b28 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001e70:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e74:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001e78:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e7c:	14179073          	csrw	sepc,a5
}
    80001e80:	f7dff06f          	j	80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            printString("Usao ovde");
    80001e84:	00003517          	auipc	a0,0x3
    80001e88:	2fc50513          	addi	a0,a0,764 # 80005180 <kvmincrease+0x9c0>
    80001e8c:	00000097          	auipc	ra,0x0
    80001e90:	400080e7          	jalr	1024(ra) # 8000228c <_Z11printStringPKc>
            __asm__ volatile("ld t2, 8*11(fp)");
    80001e94:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (slice));
    80001e98:	00038913          	mv	s2,t2
            printString("\nSlice = ");
    80001e9c:	00003517          	auipc	a0,0x3
    80001ea0:	2f450513          	addi	a0,a0,756 # 80005190 <kvmincrease+0x9d0>
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	3e8080e7          	jalr	1000(ra) # 8000228c <_Z11printStringPKc>
            printInteger(slice);
    80001eac:	00090513          	mv	a0,s2
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	44c080e7          	jalr	1100(ra) # 800022fc <_Z12printIntegerm>
            printString("\n");
    80001eb8:	00003517          	auipc	a0,0x3
    80001ebc:	29050513          	addi	a0,a0,656 # 80005148 <kvmincrease+0x988>
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	3cc080e7          	jalr	972(ra) # 8000228c <_Z11printStringPKc>
            if(slice != 0) {
    80001ec8:	00091e63          	bnez	s2,80001ee4 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
            TCB::timeSliceCounter = 0;
    80001ecc:	00004797          	auipc	a5,0x4
    80001ed0:	b0c7b783          	ld	a5,-1268(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001ed4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	c50080e7          	jalr	-944(ra) # 80001b28 <_ZN3TCB8dispatchEv>
    80001ee0:	f1dff06f          	j	80001dfc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                TCB::running->setSleeping(true);
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	b047b783          	ld	a5,-1276(a5) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001eec:	0007ba03          	ld	s4,0(a5)
    void setSleeping(bool value) { sleeping = value; }
    80001ef0:	00100793          	li	a5,1
    80001ef4:	02fa0aa3          	sb	a5,53(s4)
            delete elem;
        }
    }

    void put(TCB* thread, time_t slice){
        if (head == nullptr) {
    80001ef8:	00004497          	auipc	s1,0x4
    80001efc:	b684b483          	ld	s1,-1176(s1) # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80001f00:	00048663          	beqz	s1,80001f0c <_ZN5Riscv20handleSupervisorTrapEv+0x274>
            head = new Elem(thread, nullptr, slice);
            tail = head;
        }
        else {
            Elem* temp = head;
            Elem* prev = nullptr;
    80001f04:	00000993          	li	s3,0
    80001f08:	03c0006f          	j	80001f44 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
            head = new Elem(thread, nullptr, slice);
    80001f0c:	01800513          	li	a0,24
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	c88080e7          	jalr	-888(ra) # 80001b98 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80001f18:	01453023          	sd	s4,0(a0)
    80001f1c:	00053423          	sd	zero,8(a0)
    80001f20:	01253823          	sd	s2,16(a0)
            head = new Elem(thread, nullptr, slice);
    80001f24:	00004717          	auipc	a4,0x4
    80001f28:	b3c70713          	addi	a4,a4,-1220 # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80001f2c:	00a73023          	sd	a0,0(a4)
            tail = head;
    80001f30:	00a73423          	sd	a0,8(a4)
    80001f34:	f99ff06f          	j	80001ecc <_ZN5Riscv20handleSupervisorTrapEv+0x234>
            while (temp != tail && slice >= temp->relativeTime) {
                slice -= temp->relativeTime;
    80001f38:	40f90933          	sub	s2,s2,a5
                prev = temp;
    80001f3c:	00048993          	mv	s3,s1
                temp = temp->next;
    80001f40:	0084b483          	ld	s1,8(s1)
            while (temp != tail && slice >= temp->relativeTime) {
    80001f44:	00004717          	auipc	a4,0x4
    80001f48:	b2473703          	ld	a4,-1244(a4) # 80005a68 <_ZN5Riscv15sleepingThreadsE+0x8>
    80001f4c:	00970663          	beq	a4,s1,80001f58 <_ZN5Riscv20handleSupervisorTrapEv+0x2c0>
    80001f50:	0104b783          	ld	a5,16(s1)
    80001f54:	fef972e3          	bgeu	s2,a5,80001f38 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
            }
            if (temp == tail){
    80001f58:	02970c63          	beq	a4,s1,80001f90 <_ZN5Riscv20handleSupervisorTrapEv+0x2f8>
                    }
                    tail->relativeTime -= slice;
                }
            }
            else {
                Elem* novi = new Elem(thread, temp, slice);
    80001f5c:	01800513          	li	a0,24
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	c38080e7          	jalr	-968(ra) # 80001b98 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80001f68:	01453023          	sd	s4,0(a0)
    80001f6c:	00953423          	sd	s1,8(a0)
    80001f70:	01253823          	sd	s2,16(a0)
                prev->next = novi;
    80001f74:	00a9b423          	sd	a0,8(s3)
                while(temp != nullptr){
    80001f78:	f4048ae3          	beqz	s1,80001ecc <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                    temp->relativeTime -= slice;
    80001f7c:	0104b783          	ld	a5,16(s1)
    80001f80:	412787b3          	sub	a5,a5,s2
    80001f84:	00f4b823          	sd	a5,16(s1)
                    temp = temp->next;
    80001f88:	0084b483          	ld	s1,8(s1)
                while(temp != nullptr){
    80001f8c:	fedff06f          	j	80001f78 <_ZN5Riscv20handleSupervisorTrapEv+0x2e0>
                if (slice >= tail->relativeTime){
    80001f90:	01073783          	ld	a5,16(a4)
    80001f94:	02f96e63          	bltu	s2,a5,80001fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x338>
                    Elem* novi = new Elem(thread, nullptr, slice - tail->relativeTime);
    80001f98:	01800513          	li	a0,24
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	bfc080e7          	jalr	-1028(ra) # 80001b98 <_Znwm>
    80001fa4:	00004697          	auipc	a3,0x4
    80001fa8:	abc68693          	addi	a3,a3,-1348 # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80001fac:	0086b603          	ld	a2,8(a3)
    80001fb0:	01063703          	ld	a4,16(a2)
    80001fb4:	40e90933          	sub	s2,s2,a4
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80001fb8:	01453023          	sd	s4,0(a0)
    80001fbc:	00053423          	sd	zero,8(a0)
    80001fc0:	01253823          	sd	s2,16(a0)
                    tail->next = novi;
    80001fc4:	00a63423          	sd	a0,8(a2)
                    tail = novi;
    80001fc8:	00a6b423          	sd	a0,8(a3)
    80001fcc:	f01ff06f          	j	80001ecc <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                    Elem* novi = new Elem(thread, tail, slice);
    80001fd0:	01800513          	li	a0,24
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	bc4080e7          	jalr	-1084(ra) # 80001b98 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80001fdc:	01453023          	sd	s4,0(a0)
    80001fe0:	00004717          	auipc	a4,0x4
    80001fe4:	a8873703          	ld	a4,-1400(a4) # 80005a68 <_ZN5Riscv15sleepingThreadsE+0x8>
    80001fe8:	00e53423          	sd	a4,8(a0)
    80001fec:	01253823          	sd	s2,16(a0)
                    if (prev != nullptr){
    80001ff0:	02098063          	beqz	s3,80002010 <_ZN5Riscv20handleSupervisorTrapEv+0x378>
                        prev->next = novi;
    80001ff4:	00a9b423          	sd	a0,8(s3)
                    tail->relativeTime -= slice;
    80001ff8:	00004717          	auipc	a4,0x4
    80001ffc:	a7073703          	ld	a4,-1424(a4) # 80005a68 <_ZN5Riscv15sleepingThreadsE+0x8>
    80002000:	01073783          	ld	a5,16(a4)
    80002004:	41278933          	sub	s2,a5,s2
    80002008:	01273823          	sd	s2,16(a4)
    8000200c:	ec1ff06f          	j	80001ecc <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                        head = novi;
    80002010:	00004717          	auipc	a4,0x4
    80002014:	a4a73823          	sd	a0,-1456(a4) # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80002018:	fe1ff06f          	j	80001ff8 <_ZN5Riscv20handleSupervisorTrapEv+0x360>
        if (!head) { return -1; }
    8000201c:	00004717          	auipc	a4,0x4
    80002020:	a4473703          	ld	a4,-1468(a4) # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    80002024:	00070e63          	beqz	a4,80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
        return head->relativeTime;
    80002028:	01073783          	ld	a5,16(a4)
        if (temp != t1){
    8000202c:	fff00693          	li	a3,-1
    80002030:	00d78863          	beq	a5,a3,80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
            head->relativeTime -= 1;
    80002034:	fff78793          	addi	a5,a5,-1
    80002038:	00f73823          	sd	a5,16(a4)
            if (Riscv::sleepingThreads.peekFirstSlice() == 0) {
    8000203c:	08078e63          	beqz	a5,800020d8 <_ZN5Riscv20handleSupervisorTrapEv+0x440>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002040:	00200793          	li	a5,2
    80002044:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002048:	00004717          	auipc	a4,0x4
    8000204c:	99073703          	ld	a4,-1648(a4) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002050:	00073783          	ld	a5,0(a4)
    80002054:	00178793          	addi	a5,a5,1
    80002058:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    8000205c:	00004717          	auipc	a4,0x4
    80002060:	98c73703          	ld	a4,-1652(a4) # 800059e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002064:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002068:	02873703          	ld	a4,40(a4)
    8000206c:	dae7e0e3          	bltu	a5,a4,80001e0c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002070:	141027f3          	csrr	a5,sepc
    80002074:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002078:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    8000207c:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002080:	100027f3          	csrr	a5,sstatus
    80002084:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002088:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    8000208c:	f8f43823          	sd	a5,-112(s0)
            TCB::timeSliceCounter = 0;
    80002090:	00004797          	auipc	a5,0x4
    80002094:	9487b783          	ld	a5,-1720(a5) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002098:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000209c:	00000097          	auipc	ra,0x0
    800020a0:	a8c080e7          	jalr	-1396(ra) # 80001b28 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800020a4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020a8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800020ac:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020b0:	14179073          	csrw	sepc,a5
}
    800020b4:	d59ff06f          	j	80001e0c <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            if (!head) { tail = nullptr; }
    800020b8:	00004797          	auipc	a5,0x4
    800020bc:	9a07b823          	sd	zero,-1616(a5) # 80005a68 <_ZN5Riscv15sleepingThreadsE+0x8>
            elem->data->setSleeping(false);
    800020c0:	0004b783          	ld	a5,0(s1)
    void setSleeping(bool value) { sleeping = value; }
    800020c4:	02078aa3          	sb	zero,53(a5)
            Scheduler::put(elem->data);
    800020c8:	0004b503          	ld	a0,0(s1)
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	120080e7          	jalr	288(ra) # 800021ec <_ZN9Scheduler3putEP3TCB>
            delete elem;
    800020d4:	02049663          	bnez	s1,80002100 <_ZN5Riscv20handleSupervisorTrapEv+0x468>
        while (head != nullptr && head->relativeTime == 0){
    800020d8:	00004497          	auipc	s1,0x4
    800020dc:	9884b483          	ld	s1,-1656(s1) # 80005a60 <_ZN5Riscv15sleepingThreadsE>
    800020e0:	f60480e3          	beqz	s1,80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
    800020e4:	0104b783          	ld	a5,16(s1)
    800020e8:	f4079ce3          	bnez	a5,80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
            head = head->next;
    800020ec:	0084b783          	ld	a5,8(s1)
    800020f0:	00004717          	auipc	a4,0x4
    800020f4:	96f73823          	sd	a5,-1680(a4) # 80005a60 <_ZN5Riscv15sleepingThreadsE>
            if (!head) { tail = nullptr; }
    800020f8:	fc0794e3          	bnez	a5,800020c0 <_ZN5Riscv20handleSupervisorTrapEv+0x428>
    800020fc:	fbdff06f          	j	800020b8 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
            delete elem;
    80002100:	00048513          	mv	a0,s1
    80002104:	00000097          	auipc	ra,0x0
    80002108:	ae4080e7          	jalr	-1308(ra) # 80001be8 <_ZdlPv>
    8000210c:	fcdff06f          	j	800020d8 <_ZN5Riscv20handleSupervisorTrapEv+0x440>

0000000080002110 <_GLOBAL__sub_I__ZN5Riscv15sleepingThreadsE>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	000105b7          	lui	a1,0x10
    80002124:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002128:	00100513          	li	a0,1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	b0c080e7          	jalr	-1268(ra) # 80001c38 <_Z41__static_initialization_and_destruction_0ii>
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00100793          	li	a5,1
    80002154:	00f50863          	beq	a0,a5,80002164 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret
    80002164:	000107b7          	lui	a5,0x10
    80002168:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000216c:	fef596e3          	bne	a1,a5,80002158 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002170:	00004797          	auipc	a5,0x4
    80002174:	90078793          	addi	a5,a5,-1792 # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    80002178:	0007b023          	sd	zero,0(a5)
    8000217c:	0007b423          	sd	zero,8(a5)
    80002180:	fd9ff06f          	j	80002158 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002184 <_ZN9Scheduler3getEv>:
{
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00113c23          	sd	ra,24(sp)
    8000218c:	00813823          	sd	s0,16(sp)
    80002190:	00913423          	sd	s1,8(sp)
    80002194:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002198:	00004517          	auipc	a0,0x4
    8000219c:	8d853503          	ld	a0,-1832(a0) # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    800021a0:	04050263          	beqz	a0,800021e4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800021a4:	00853783          	ld	a5,8(a0)
    800021a8:	00004717          	auipc	a4,0x4
    800021ac:	8cf73423          	sd	a5,-1848(a4) # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800021b0:	02078463          	beqz	a5,800021d8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800021b4:	00053483          	ld	s1,0(a0)
        delete elem;
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	a30080e7          	jalr	-1488(ra) # 80001be8 <_ZdlPv>
}
    800021c0:	00048513          	mv	a0,s1
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	02010113          	addi	sp,sp,32
    800021d4:	00008067          	ret
        if (!head) { tail = 0; }
    800021d8:	00004797          	auipc	a5,0x4
    800021dc:	8a07b023          	sd	zero,-1888(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800021e0:	fd5ff06f          	j	800021b4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800021e4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800021e8:	fd9ff06f          	j	800021c0 <_ZN9Scheduler3getEv+0x3c>

00000000800021ec <_ZN9Scheduler3putEP3TCB>:
{
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    80002200:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002204:	01000513          	li	a0,16
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	990080e7          	jalr	-1648(ra) # 80001b98 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002210:	00953023          	sd	s1,0(a0)
    80002214:	00053423          	sd	zero,8(a0)
        if (tail)
    80002218:	00004797          	auipc	a5,0x4
    8000221c:	8607b783          	ld	a5,-1952(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002220:	02078263          	beqz	a5,80002244 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002224:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002228:	00004797          	auipc	a5,0x4
    8000222c:	84a7b823          	sd	a0,-1968(a5) # 80005a78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002230:	01813083          	ld	ra,24(sp)
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	00813483          	ld	s1,8(sp)
    8000223c:	02010113          	addi	sp,sp,32
    80002240:	00008067          	ret
            head = tail = elem;
    80002244:	00004797          	auipc	a5,0x4
    80002248:	82c78793          	addi	a5,a5,-2004 # 80005a70 <_ZN9Scheduler16readyThreadQueueE>
    8000224c:	00a7b423          	sd	a0,8(a5)
    80002250:	00a7b023          	sd	a0,0(a5)
    80002254:	fddff06f          	j	80002230 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002258 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	000105b7          	lui	a1,0x10
    8000226c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002270:	00100513          	li	a0,1
    80002274:	00000097          	auipc	ra,0x0
    80002278:	ed0080e7          	jalr	-304(ra) # 80002144 <_Z41__static_initialization_and_destruction_0ii>
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000228c:	fd010113          	addi	sp,sp,-48
    80002290:	02113423          	sd	ra,40(sp)
    80002294:	02813023          	sd	s0,32(sp)
    80002298:	00913c23          	sd	s1,24(sp)
    8000229c:	01213823          	sd	s2,16(sp)
    800022a0:	03010413          	addi	s0,sp,48
    800022a4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022a8:	100027f3          	csrr	a5,sstatus
    800022ac:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800022b0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022b4:	00200793          	li	a5,2
    800022b8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800022bc:	0004c503          	lbu	a0,0(s1)
    800022c0:	00050a63          	beqz	a0,800022d4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	3dc080e7          	jalr	988(ra) # 800046a0 <__putc>
        string++;
    800022cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800022d0:	fedff06f          	j	800022bc <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800022d4:	0009091b          	sext.w	s2,s2
    800022d8:	00297913          	andi	s2,s2,2
    800022dc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800022e0:	10092073          	csrs	sstatus,s2
}
    800022e4:	02813083          	ld	ra,40(sp)
    800022e8:	02013403          	ld	s0,32(sp)
    800022ec:	01813483          	ld	s1,24(sp)
    800022f0:	01013903          	ld	s2,16(sp)
    800022f4:	03010113          	addi	sp,sp,48
    800022f8:	00008067          	ret

00000000800022fc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800022fc:	fc010113          	addi	sp,sp,-64
    80002300:	02113c23          	sd	ra,56(sp)
    80002304:	02813823          	sd	s0,48(sp)
    80002308:	02913423          	sd	s1,40(sp)
    8000230c:	03213023          	sd	s2,32(sp)
    80002310:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002314:	100027f3          	csrr	a5,sstatus
    80002318:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000231c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002320:	00200793          	li	a5,2
    80002324:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002328:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000232c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002330:	00a00613          	li	a2,10
    80002334:	02c5773b          	remuw	a4,a0,a2
    80002338:	02071693          	slli	a3,a4,0x20
    8000233c:	0206d693          	srli	a3,a3,0x20
    80002340:	00003717          	auipc	a4,0x3
    80002344:	e6070713          	addi	a4,a4,-416 # 800051a0 <_ZZ12printIntegermE6digits>
    80002348:	00d70733          	add	a4,a4,a3
    8000234c:	00074703          	lbu	a4,0(a4)
    80002350:	fe040693          	addi	a3,s0,-32
    80002354:	009687b3          	add	a5,a3,s1
    80002358:	0014849b          	addiw	s1,s1,1
    8000235c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002360:	0005071b          	sext.w	a4,a0
    80002364:	02c5553b          	divuw	a0,a0,a2
    80002368:	00900793          	li	a5,9
    8000236c:	fce7e2e3          	bltu	a5,a4,80002330 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80002370:	fff4849b          	addiw	s1,s1,-1
    80002374:	0004ce63          	bltz	s1,80002390 <_Z12printIntegerm+0x94>
    80002378:	fe040793          	addi	a5,s0,-32
    8000237c:	009787b3          	add	a5,a5,s1
    80002380:	ff07c503          	lbu	a0,-16(a5)
    80002384:	00002097          	auipc	ra,0x2
    80002388:	31c080e7          	jalr	796(ra) # 800046a0 <__putc>
    8000238c:	fe5ff06f          	j	80002370 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002390:	0009091b          	sext.w	s2,s2
    80002394:	00297913          	andi	s2,s2,2
    80002398:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000239c:	10092073          	csrs	sstatus,s2
    800023a0:	03813083          	ld	ra,56(sp)
    800023a4:	03013403          	ld	s0,48(sp)
    800023a8:	02813483          	ld	s1,40(sp)
    800023ac:	02013903          	ld	s2,32(sp)
    800023b0:	04010113          	addi	sp,sp,64
    800023b4:	00008067          	ret

00000000800023b8 <start>:
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	300027f3          	csrr	a5,mstatus
    800023c8:	ffffe737          	lui	a4,0xffffe
    800023cc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b0f>
    800023d0:	00e7f7b3          	and	a5,a5,a4
    800023d4:	00001737          	lui	a4,0x1
    800023d8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800023dc:	00e7e7b3          	or	a5,a5,a4
    800023e0:	30079073          	csrw	mstatus,a5
    800023e4:	00000797          	auipc	a5,0x0
    800023e8:	16078793          	addi	a5,a5,352 # 80002544 <system_main>
    800023ec:	34179073          	csrw	mepc,a5
    800023f0:	00000793          	li	a5,0
    800023f4:	18079073          	csrw	satp,a5
    800023f8:	000107b7          	lui	a5,0x10
    800023fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002400:	30279073          	csrw	medeleg,a5
    80002404:	30379073          	csrw	mideleg,a5
    80002408:	104027f3          	csrr	a5,sie
    8000240c:	2227e793          	ori	a5,a5,546
    80002410:	10479073          	csrw	sie,a5
    80002414:	fff00793          	li	a5,-1
    80002418:	00a7d793          	srli	a5,a5,0xa
    8000241c:	3b079073          	csrw	pmpaddr0,a5
    80002420:	00f00793          	li	a5,15
    80002424:	3a079073          	csrw	pmpcfg0,a5
    80002428:	f14027f3          	csrr	a5,mhartid
    8000242c:	0200c737          	lui	a4,0x200c
    80002430:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002434:	0007869b          	sext.w	a3,a5
    80002438:	00269713          	slli	a4,a3,0x2
    8000243c:	000f4637          	lui	a2,0xf4
    80002440:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002444:	00d70733          	add	a4,a4,a3
    80002448:	0037979b          	slliw	a5,a5,0x3
    8000244c:	020046b7          	lui	a3,0x2004
    80002450:	00d787b3          	add	a5,a5,a3
    80002454:	00c585b3          	add	a1,a1,a2
    80002458:	00371693          	slli	a3,a4,0x3
    8000245c:	00003717          	auipc	a4,0x3
    80002460:	62470713          	addi	a4,a4,1572 # 80005a80 <timer_scratch>
    80002464:	00b7b023          	sd	a1,0(a5)
    80002468:	00d70733          	add	a4,a4,a3
    8000246c:	00f73c23          	sd	a5,24(a4)
    80002470:	02c73023          	sd	a2,32(a4)
    80002474:	34071073          	csrw	mscratch,a4
    80002478:	00000797          	auipc	a5,0x0
    8000247c:	6e878793          	addi	a5,a5,1768 # 80002b60 <timervec>
    80002480:	30579073          	csrw	mtvec,a5
    80002484:	300027f3          	csrr	a5,mstatus
    80002488:	0087e793          	ori	a5,a5,8
    8000248c:	30079073          	csrw	mstatus,a5
    80002490:	304027f3          	csrr	a5,mie
    80002494:	0807e793          	ori	a5,a5,128
    80002498:	30479073          	csrw	mie,a5
    8000249c:	f14027f3          	csrr	a5,mhartid
    800024a0:	0007879b          	sext.w	a5,a5
    800024a4:	00078213          	mv	tp,a5
    800024a8:	30200073          	mret
    800024ac:	00813403          	ld	s0,8(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <timerinit>:
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00813423          	sd	s0,8(sp)
    800024c0:	01010413          	addi	s0,sp,16
    800024c4:	f14027f3          	csrr	a5,mhartid
    800024c8:	0200c737          	lui	a4,0x200c
    800024cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800024d0:	0007869b          	sext.w	a3,a5
    800024d4:	00269713          	slli	a4,a3,0x2
    800024d8:	000f4637          	lui	a2,0xf4
    800024dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800024e0:	00d70733          	add	a4,a4,a3
    800024e4:	0037979b          	slliw	a5,a5,0x3
    800024e8:	020046b7          	lui	a3,0x2004
    800024ec:	00d787b3          	add	a5,a5,a3
    800024f0:	00c585b3          	add	a1,a1,a2
    800024f4:	00371693          	slli	a3,a4,0x3
    800024f8:	00003717          	auipc	a4,0x3
    800024fc:	58870713          	addi	a4,a4,1416 # 80005a80 <timer_scratch>
    80002500:	00b7b023          	sd	a1,0(a5)
    80002504:	00d70733          	add	a4,a4,a3
    80002508:	00f73c23          	sd	a5,24(a4)
    8000250c:	02c73023          	sd	a2,32(a4)
    80002510:	34071073          	csrw	mscratch,a4
    80002514:	00000797          	auipc	a5,0x0
    80002518:	64c78793          	addi	a5,a5,1612 # 80002b60 <timervec>
    8000251c:	30579073          	csrw	mtvec,a5
    80002520:	300027f3          	csrr	a5,mstatus
    80002524:	0087e793          	ori	a5,a5,8
    80002528:	30079073          	csrw	mstatus,a5
    8000252c:	304027f3          	csrr	a5,mie
    80002530:	0807e793          	ori	a5,a5,128
    80002534:	30479073          	csrw	mie,a5
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <system_main>:
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	02010413          	addi	s0,sp,32
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	0c4080e7          	jalr	196(ra) # 8000261c <cpuid>
    80002560:	00003497          	auipc	s1,0x3
    80002564:	4b048493          	addi	s1,s1,1200 # 80005a10 <started>
    80002568:	02050263          	beqz	a0,8000258c <system_main+0x48>
    8000256c:	0004a783          	lw	a5,0(s1)
    80002570:	0007879b          	sext.w	a5,a5
    80002574:	fe078ce3          	beqz	a5,8000256c <system_main+0x28>
    80002578:	0ff0000f          	fence
    8000257c:	00003517          	auipc	a0,0x3
    80002580:	c6450513          	addi	a0,a0,-924 # 800051e0 <_ZZ12printIntegermE6digits+0x40>
    80002584:	00001097          	auipc	ra,0x1
    80002588:	a78080e7          	jalr	-1416(ra) # 80002ffc <panic>
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	9cc080e7          	jalr	-1588(ra) # 80002f58 <consoleinit>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	158080e7          	jalr	344(ra) # 800036ec <printfinit>
    8000259c:	00003517          	auipc	a0,0x3
    800025a0:	bac50513          	addi	a0,a0,-1108 # 80005148 <kvmincrease+0x988>
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	ab4080e7          	jalr	-1356(ra) # 80003058 <__printf>
    800025ac:	00003517          	auipc	a0,0x3
    800025b0:	c0450513          	addi	a0,a0,-1020 # 800051b0 <_ZZ12printIntegermE6digits+0x10>
    800025b4:	00001097          	auipc	ra,0x1
    800025b8:	aa4080e7          	jalr	-1372(ra) # 80003058 <__printf>
    800025bc:	00003517          	auipc	a0,0x3
    800025c0:	b8c50513          	addi	a0,a0,-1140 # 80005148 <kvmincrease+0x988>
    800025c4:	00001097          	auipc	ra,0x1
    800025c8:	a94080e7          	jalr	-1388(ra) # 80003058 <__printf>
    800025cc:	00001097          	auipc	ra,0x1
    800025d0:	4ac080e7          	jalr	1196(ra) # 80003a78 <kinit>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	148080e7          	jalr	328(ra) # 8000271c <trapinit>
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	16c080e7          	jalr	364(ra) # 80002748 <trapinithart>
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	5bc080e7          	jalr	1468(ra) # 80002ba0 <plicinit>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	5dc080e7          	jalr	1500(ra) # 80002bc8 <plicinithart>
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	078080e7          	jalr	120(ra) # 8000266c <userinit>
    800025fc:	0ff0000f          	fence
    80002600:	00100793          	li	a5,1
    80002604:	00003517          	auipc	a0,0x3
    80002608:	bc450513          	addi	a0,a0,-1084 # 800051c8 <_ZZ12printIntegermE6digits+0x28>
    8000260c:	00f4a023          	sw	a5,0(s1)
    80002610:	00001097          	auipc	ra,0x1
    80002614:	a48080e7          	jalr	-1464(ra) # 80003058 <__printf>
    80002618:	0000006f          	j	80002618 <system_main+0xd4>

000000008000261c <cpuid>:
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00813423          	sd	s0,8(sp)
    80002624:	01010413          	addi	s0,sp,16
    80002628:	00020513          	mv	a0,tp
    8000262c:	00813403          	ld	s0,8(sp)
    80002630:	0005051b          	sext.w	a0,a0
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <mycpu>:
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	00020793          	mv	a5,tp
    8000264c:	00813403          	ld	s0,8(sp)
    80002650:	0007879b          	sext.w	a5,a5
    80002654:	00779793          	slli	a5,a5,0x7
    80002658:	00004517          	auipc	a0,0x4
    8000265c:	45850513          	addi	a0,a0,1112 # 80006ab0 <cpus>
    80002660:	00f50533          	add	a0,a0,a5
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00008067          	ret

000000008000266c <userinit>:
    8000266c:	ff010113          	addi	sp,sp,-16
    80002670:	00813423          	sd	s0,8(sp)
    80002674:	01010413          	addi	s0,sp,16
    80002678:	00813403          	ld	s0,8(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	fffff317          	auipc	t1,0xfffff
    80002684:	26c30067          	jr	620(t1) # 800018ec <main>

0000000080002688 <either_copyout>:
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	00113423          	sd	ra,8(sp)
    80002694:	01010413          	addi	s0,sp,16
    80002698:	02051663          	bnez	a0,800026c4 <either_copyout+0x3c>
    8000269c:	00058513          	mv	a0,a1
    800026a0:	00060593          	mv	a1,a2
    800026a4:	0006861b          	sext.w	a2,a3
    800026a8:	00002097          	auipc	ra,0x2
    800026ac:	c5c080e7          	jalr	-932(ra) # 80004304 <__memmove>
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00013403          	ld	s0,0(sp)
    800026b8:	00000513          	li	a0,0
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	b4450513          	addi	a0,a0,-1212 # 80005208 <_ZZ12printIntegermE6digits+0x68>
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	930080e7          	jalr	-1744(ra) # 80002ffc <panic>

00000000800026d4 <either_copyin>:
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	02059463          	bnez	a1,8000270c <either_copyin+0x38>
    800026e8:	00060593          	mv	a1,a2
    800026ec:	0006861b          	sext.w	a2,a3
    800026f0:	00002097          	auipc	ra,0x2
    800026f4:	c14080e7          	jalr	-1004(ra) # 80004304 <__memmove>
    800026f8:	00813083          	ld	ra,8(sp)
    800026fc:	00013403          	ld	s0,0(sp)
    80002700:	00000513          	li	a0,0
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret
    8000270c:	00003517          	auipc	a0,0x3
    80002710:	b2450513          	addi	a0,a0,-1244 # 80005230 <_ZZ12printIntegermE6digits+0x90>
    80002714:	00001097          	auipc	ra,0x1
    80002718:	8e8080e7          	jalr	-1816(ra) # 80002ffc <panic>

000000008000271c <trapinit>:
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00813423          	sd	s0,8(sp)
    80002724:	01010413          	addi	s0,sp,16
    80002728:	00813403          	ld	s0,8(sp)
    8000272c:	00003597          	auipc	a1,0x3
    80002730:	b2c58593          	addi	a1,a1,-1236 # 80005258 <_ZZ12printIntegermE6digits+0xb8>
    80002734:	00004517          	auipc	a0,0x4
    80002738:	3fc50513          	addi	a0,a0,1020 # 80006b30 <tickslock>
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00001317          	auipc	t1,0x1
    80002744:	5c830067          	jr	1480(t1) # 80003d08 <initlock>

0000000080002748 <trapinithart>:
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
    80002754:	00000797          	auipc	a5,0x0
    80002758:	2fc78793          	addi	a5,a5,764 # 80002a50 <kernelvec>
    8000275c:	10579073          	csrw	stvec,a5
    80002760:	00813403          	ld	s0,8(sp)
    80002764:	01010113          	addi	sp,sp,16
    80002768:	00008067          	ret

000000008000276c <usertrap>:
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16
    80002778:	00813403          	ld	s0,8(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <usertrapret>:
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00813423          	sd	s0,8(sp)
    8000278c:	01010413          	addi	s0,sp,16
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <kerneltrap>:
    8000279c:	fe010113          	addi	sp,sp,-32
    800027a0:	00813823          	sd	s0,16(sp)
    800027a4:	00113c23          	sd	ra,24(sp)
    800027a8:	00913423          	sd	s1,8(sp)
    800027ac:	02010413          	addi	s0,sp,32
    800027b0:	142025f3          	csrr	a1,scause
    800027b4:	100027f3          	csrr	a5,sstatus
    800027b8:	0027f793          	andi	a5,a5,2
    800027bc:	10079c63          	bnez	a5,800028d4 <kerneltrap+0x138>
    800027c0:	142027f3          	csrr	a5,scause
    800027c4:	0207ce63          	bltz	a5,80002800 <kerneltrap+0x64>
    800027c8:	00003517          	auipc	a0,0x3
    800027cc:	ad850513          	addi	a0,a0,-1320 # 800052a0 <_ZZ12printIntegermE6digits+0x100>
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	888080e7          	jalr	-1912(ra) # 80003058 <__printf>
    800027d8:	141025f3          	csrr	a1,sepc
    800027dc:	14302673          	csrr	a2,stval
    800027e0:	00003517          	auipc	a0,0x3
    800027e4:	ad050513          	addi	a0,a0,-1328 # 800052b0 <_ZZ12printIntegermE6digits+0x110>
    800027e8:	00001097          	auipc	ra,0x1
    800027ec:	870080e7          	jalr	-1936(ra) # 80003058 <__printf>
    800027f0:	00003517          	auipc	a0,0x3
    800027f4:	ad850513          	addi	a0,a0,-1320 # 800052c8 <_ZZ12printIntegermE6digits+0x128>
    800027f8:	00001097          	auipc	ra,0x1
    800027fc:	804080e7          	jalr	-2044(ra) # 80002ffc <panic>
    80002800:	0ff7f713          	andi	a4,a5,255
    80002804:	00900693          	li	a3,9
    80002808:	04d70063          	beq	a4,a3,80002848 <kerneltrap+0xac>
    8000280c:	fff00713          	li	a4,-1
    80002810:	03f71713          	slli	a4,a4,0x3f
    80002814:	00170713          	addi	a4,a4,1
    80002818:	fae798e3          	bne	a5,a4,800027c8 <kerneltrap+0x2c>
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	e00080e7          	jalr	-512(ra) # 8000261c <cpuid>
    80002824:	06050663          	beqz	a0,80002890 <kerneltrap+0xf4>
    80002828:	144027f3          	csrr	a5,sip
    8000282c:	ffd7f793          	andi	a5,a5,-3
    80002830:	14479073          	csrw	sip,a5
    80002834:	01813083          	ld	ra,24(sp)
    80002838:	01013403          	ld	s0,16(sp)
    8000283c:	00813483          	ld	s1,8(sp)
    80002840:	02010113          	addi	sp,sp,32
    80002844:	00008067          	ret
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	3cc080e7          	jalr	972(ra) # 80002c14 <plic_claim>
    80002850:	00a00793          	li	a5,10
    80002854:	00050493          	mv	s1,a0
    80002858:	06f50863          	beq	a0,a5,800028c8 <kerneltrap+0x12c>
    8000285c:	fc050ce3          	beqz	a0,80002834 <kerneltrap+0x98>
    80002860:	00050593          	mv	a1,a0
    80002864:	00003517          	auipc	a0,0x3
    80002868:	a1c50513          	addi	a0,a0,-1508 # 80005280 <_ZZ12printIntegermE6digits+0xe0>
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	7ec080e7          	jalr	2028(ra) # 80003058 <__printf>
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	01813083          	ld	ra,24(sp)
    8000287c:	00048513          	mv	a0,s1
    80002880:	00813483          	ld	s1,8(sp)
    80002884:	02010113          	addi	sp,sp,32
    80002888:	00000317          	auipc	t1,0x0
    8000288c:	3c430067          	jr	964(t1) # 80002c4c <plic_complete>
    80002890:	00004517          	auipc	a0,0x4
    80002894:	2a050513          	addi	a0,a0,672 # 80006b30 <tickslock>
    80002898:	00001097          	auipc	ra,0x1
    8000289c:	494080e7          	jalr	1172(ra) # 80003d2c <acquire>
    800028a0:	00003717          	auipc	a4,0x3
    800028a4:	17470713          	addi	a4,a4,372 # 80005a14 <ticks>
    800028a8:	00072783          	lw	a5,0(a4)
    800028ac:	00004517          	auipc	a0,0x4
    800028b0:	28450513          	addi	a0,a0,644 # 80006b30 <tickslock>
    800028b4:	0017879b          	addiw	a5,a5,1
    800028b8:	00f72023          	sw	a5,0(a4)
    800028bc:	00001097          	auipc	ra,0x1
    800028c0:	53c080e7          	jalr	1340(ra) # 80003df8 <release>
    800028c4:	f65ff06f          	j	80002828 <kerneltrap+0x8c>
    800028c8:	00001097          	auipc	ra,0x1
    800028cc:	098080e7          	jalr	152(ra) # 80003960 <uartintr>
    800028d0:	fa5ff06f          	j	80002874 <kerneltrap+0xd8>
    800028d4:	00003517          	auipc	a0,0x3
    800028d8:	98c50513          	addi	a0,a0,-1652 # 80005260 <_ZZ12printIntegermE6digits+0xc0>
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	720080e7          	jalr	1824(ra) # 80002ffc <panic>

00000000800028e4 <clockintr>:
    800028e4:	fe010113          	addi	sp,sp,-32
    800028e8:	00813823          	sd	s0,16(sp)
    800028ec:	00913423          	sd	s1,8(sp)
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	02010413          	addi	s0,sp,32
    800028f8:	00004497          	auipc	s1,0x4
    800028fc:	23848493          	addi	s1,s1,568 # 80006b30 <tickslock>
    80002900:	00048513          	mv	a0,s1
    80002904:	00001097          	auipc	ra,0x1
    80002908:	428080e7          	jalr	1064(ra) # 80003d2c <acquire>
    8000290c:	00003717          	auipc	a4,0x3
    80002910:	10870713          	addi	a4,a4,264 # 80005a14 <ticks>
    80002914:	00072783          	lw	a5,0(a4)
    80002918:	01013403          	ld	s0,16(sp)
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	00048513          	mv	a0,s1
    80002924:	0017879b          	addiw	a5,a5,1
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	00f72023          	sw	a5,0(a4)
    80002930:	02010113          	addi	sp,sp,32
    80002934:	00001317          	auipc	t1,0x1
    80002938:	4c430067          	jr	1220(t1) # 80003df8 <release>

000000008000293c <devintr>:
    8000293c:	142027f3          	csrr	a5,scause
    80002940:	00000513          	li	a0,0
    80002944:	0007c463          	bltz	a5,8000294c <devintr+0x10>
    80002948:	00008067          	ret
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00113c23          	sd	ra,24(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	02010413          	addi	s0,sp,32
    80002960:	0ff7f713          	andi	a4,a5,255
    80002964:	00900693          	li	a3,9
    80002968:	04d70c63          	beq	a4,a3,800029c0 <devintr+0x84>
    8000296c:	fff00713          	li	a4,-1
    80002970:	03f71713          	slli	a4,a4,0x3f
    80002974:	00170713          	addi	a4,a4,1
    80002978:	00e78c63          	beq	a5,a4,80002990 <devintr+0x54>
    8000297c:	01813083          	ld	ra,24(sp)
    80002980:	01013403          	ld	s0,16(sp)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret
    80002990:	00000097          	auipc	ra,0x0
    80002994:	c8c080e7          	jalr	-884(ra) # 8000261c <cpuid>
    80002998:	06050663          	beqz	a0,80002a04 <devintr+0xc8>
    8000299c:	144027f3          	csrr	a5,sip
    800029a0:	ffd7f793          	andi	a5,a5,-3
    800029a4:	14479073          	csrw	sip,a5
    800029a8:	01813083          	ld	ra,24(sp)
    800029ac:	01013403          	ld	s0,16(sp)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	00200513          	li	a0,2
    800029b8:	02010113          	addi	sp,sp,32
    800029bc:	00008067          	ret
    800029c0:	00000097          	auipc	ra,0x0
    800029c4:	254080e7          	jalr	596(ra) # 80002c14 <plic_claim>
    800029c8:	00a00793          	li	a5,10
    800029cc:	00050493          	mv	s1,a0
    800029d0:	06f50663          	beq	a0,a5,80002a3c <devintr+0x100>
    800029d4:	00100513          	li	a0,1
    800029d8:	fa0482e3          	beqz	s1,8000297c <devintr+0x40>
    800029dc:	00048593          	mv	a1,s1
    800029e0:	00003517          	auipc	a0,0x3
    800029e4:	8a050513          	addi	a0,a0,-1888 # 80005280 <_ZZ12printIntegermE6digits+0xe0>
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	670080e7          	jalr	1648(ra) # 80003058 <__printf>
    800029f0:	00048513          	mv	a0,s1
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	258080e7          	jalr	600(ra) # 80002c4c <plic_complete>
    800029fc:	00100513          	li	a0,1
    80002a00:	f7dff06f          	j	8000297c <devintr+0x40>
    80002a04:	00004517          	auipc	a0,0x4
    80002a08:	12c50513          	addi	a0,a0,300 # 80006b30 <tickslock>
    80002a0c:	00001097          	auipc	ra,0x1
    80002a10:	320080e7          	jalr	800(ra) # 80003d2c <acquire>
    80002a14:	00003717          	auipc	a4,0x3
    80002a18:	00070713          	mv	a4,a4
    80002a1c:	00072783          	lw	a5,0(a4) # 80005a14 <ticks>
    80002a20:	00004517          	auipc	a0,0x4
    80002a24:	11050513          	addi	a0,a0,272 # 80006b30 <tickslock>
    80002a28:	0017879b          	addiw	a5,a5,1
    80002a2c:	00f72023          	sw	a5,0(a4)
    80002a30:	00001097          	auipc	ra,0x1
    80002a34:	3c8080e7          	jalr	968(ra) # 80003df8 <release>
    80002a38:	f65ff06f          	j	8000299c <devintr+0x60>
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	f24080e7          	jalr	-220(ra) # 80003960 <uartintr>
    80002a44:	fadff06f          	j	800029f0 <devintr+0xb4>
	...

0000000080002a50 <kernelvec>:
    80002a50:	f0010113          	addi	sp,sp,-256
    80002a54:	00113023          	sd	ra,0(sp)
    80002a58:	00213423          	sd	sp,8(sp)
    80002a5c:	00313823          	sd	gp,16(sp)
    80002a60:	00413c23          	sd	tp,24(sp)
    80002a64:	02513023          	sd	t0,32(sp)
    80002a68:	02613423          	sd	t1,40(sp)
    80002a6c:	02713823          	sd	t2,48(sp)
    80002a70:	02813c23          	sd	s0,56(sp)
    80002a74:	04913023          	sd	s1,64(sp)
    80002a78:	04a13423          	sd	a0,72(sp)
    80002a7c:	04b13823          	sd	a1,80(sp)
    80002a80:	04c13c23          	sd	a2,88(sp)
    80002a84:	06d13023          	sd	a3,96(sp)
    80002a88:	06e13423          	sd	a4,104(sp)
    80002a8c:	06f13823          	sd	a5,112(sp)
    80002a90:	07013c23          	sd	a6,120(sp)
    80002a94:	09113023          	sd	a7,128(sp)
    80002a98:	09213423          	sd	s2,136(sp)
    80002a9c:	09313823          	sd	s3,144(sp)
    80002aa0:	09413c23          	sd	s4,152(sp)
    80002aa4:	0b513023          	sd	s5,160(sp)
    80002aa8:	0b613423          	sd	s6,168(sp)
    80002aac:	0b713823          	sd	s7,176(sp)
    80002ab0:	0b813c23          	sd	s8,184(sp)
    80002ab4:	0d913023          	sd	s9,192(sp)
    80002ab8:	0da13423          	sd	s10,200(sp)
    80002abc:	0db13823          	sd	s11,208(sp)
    80002ac0:	0dc13c23          	sd	t3,216(sp)
    80002ac4:	0fd13023          	sd	t4,224(sp)
    80002ac8:	0fe13423          	sd	t5,232(sp)
    80002acc:	0ff13823          	sd	t6,240(sp)
    80002ad0:	ccdff0ef          	jal	ra,8000279c <kerneltrap>
    80002ad4:	00013083          	ld	ra,0(sp)
    80002ad8:	00813103          	ld	sp,8(sp)
    80002adc:	01013183          	ld	gp,16(sp)
    80002ae0:	02013283          	ld	t0,32(sp)
    80002ae4:	02813303          	ld	t1,40(sp)
    80002ae8:	03013383          	ld	t2,48(sp)
    80002aec:	03813403          	ld	s0,56(sp)
    80002af0:	04013483          	ld	s1,64(sp)
    80002af4:	04813503          	ld	a0,72(sp)
    80002af8:	05013583          	ld	a1,80(sp)
    80002afc:	05813603          	ld	a2,88(sp)
    80002b00:	06013683          	ld	a3,96(sp)
    80002b04:	06813703          	ld	a4,104(sp)
    80002b08:	07013783          	ld	a5,112(sp)
    80002b0c:	07813803          	ld	a6,120(sp)
    80002b10:	08013883          	ld	a7,128(sp)
    80002b14:	08813903          	ld	s2,136(sp)
    80002b18:	09013983          	ld	s3,144(sp)
    80002b1c:	09813a03          	ld	s4,152(sp)
    80002b20:	0a013a83          	ld	s5,160(sp)
    80002b24:	0a813b03          	ld	s6,168(sp)
    80002b28:	0b013b83          	ld	s7,176(sp)
    80002b2c:	0b813c03          	ld	s8,184(sp)
    80002b30:	0c013c83          	ld	s9,192(sp)
    80002b34:	0c813d03          	ld	s10,200(sp)
    80002b38:	0d013d83          	ld	s11,208(sp)
    80002b3c:	0d813e03          	ld	t3,216(sp)
    80002b40:	0e013e83          	ld	t4,224(sp)
    80002b44:	0e813f03          	ld	t5,232(sp)
    80002b48:	0f013f83          	ld	t6,240(sp)
    80002b4c:	10010113          	addi	sp,sp,256
    80002b50:	10200073          	sret
    80002b54:	00000013          	nop
    80002b58:	00000013          	nop
    80002b5c:	00000013          	nop

0000000080002b60 <timervec>:
    80002b60:	34051573          	csrrw	a0,mscratch,a0
    80002b64:	00b53023          	sd	a1,0(a0)
    80002b68:	00c53423          	sd	a2,8(a0)
    80002b6c:	00d53823          	sd	a3,16(a0)
    80002b70:	01853583          	ld	a1,24(a0)
    80002b74:	02053603          	ld	a2,32(a0)
    80002b78:	0005b683          	ld	a3,0(a1)
    80002b7c:	00c686b3          	add	a3,a3,a2
    80002b80:	00d5b023          	sd	a3,0(a1)
    80002b84:	00200593          	li	a1,2
    80002b88:	14459073          	csrw	sip,a1
    80002b8c:	01053683          	ld	a3,16(a0)
    80002b90:	00853603          	ld	a2,8(a0)
    80002b94:	00053583          	ld	a1,0(a0)
    80002b98:	34051573          	csrrw	a0,mscratch,a0
    80002b9c:	30200073          	mret

0000000080002ba0 <plicinit>:
    80002ba0:	ff010113          	addi	sp,sp,-16
    80002ba4:	00813423          	sd	s0,8(sp)
    80002ba8:	01010413          	addi	s0,sp,16
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	0c0007b7          	lui	a5,0xc000
    80002bb4:	00100713          	li	a4,1
    80002bb8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002bbc:	00e7a223          	sw	a4,4(a5)
    80002bc0:	01010113          	addi	sp,sp,16
    80002bc4:	00008067          	ret

0000000080002bc8 <plicinithart>:
    80002bc8:	ff010113          	addi	sp,sp,-16
    80002bcc:	00813023          	sd	s0,0(sp)
    80002bd0:	00113423          	sd	ra,8(sp)
    80002bd4:	01010413          	addi	s0,sp,16
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	a44080e7          	jalr	-1468(ra) # 8000261c <cpuid>
    80002be0:	0085171b          	slliw	a4,a0,0x8
    80002be4:	0c0027b7          	lui	a5,0xc002
    80002be8:	00e787b3          	add	a5,a5,a4
    80002bec:	40200713          	li	a4,1026
    80002bf0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002bf4:	00813083          	ld	ra,8(sp)
    80002bf8:	00013403          	ld	s0,0(sp)
    80002bfc:	00d5151b          	slliw	a0,a0,0xd
    80002c00:	0c2017b7          	lui	a5,0xc201
    80002c04:	00a78533          	add	a0,a5,a0
    80002c08:	00052023          	sw	zero,0(a0)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <plic_claim>:
    80002c14:	ff010113          	addi	sp,sp,-16
    80002c18:	00813023          	sd	s0,0(sp)
    80002c1c:	00113423          	sd	ra,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	9f8080e7          	jalr	-1544(ra) # 8000261c <cpuid>
    80002c2c:	00813083          	ld	ra,8(sp)
    80002c30:	00013403          	ld	s0,0(sp)
    80002c34:	00d5151b          	slliw	a0,a0,0xd
    80002c38:	0c2017b7          	lui	a5,0xc201
    80002c3c:	00a78533          	add	a0,a5,a0
    80002c40:	00452503          	lw	a0,4(a0)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <plic_complete>:
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    80002c60:	00050493          	mv	s1,a0
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	9b8080e7          	jalr	-1608(ra) # 8000261c <cpuid>
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00d5179b          	slliw	a5,a0,0xd
    80002c78:	0c201737          	lui	a4,0xc201
    80002c7c:	00f707b3          	add	a5,a4,a5
    80002c80:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002c84:	00813483          	ld	s1,8(sp)
    80002c88:	02010113          	addi	sp,sp,32
    80002c8c:	00008067          	ret

0000000080002c90 <consolewrite>:
    80002c90:	fb010113          	addi	sp,sp,-80
    80002c94:	04813023          	sd	s0,64(sp)
    80002c98:	04113423          	sd	ra,72(sp)
    80002c9c:	02913c23          	sd	s1,56(sp)
    80002ca0:	03213823          	sd	s2,48(sp)
    80002ca4:	03313423          	sd	s3,40(sp)
    80002ca8:	03413023          	sd	s4,32(sp)
    80002cac:	01513c23          	sd	s5,24(sp)
    80002cb0:	05010413          	addi	s0,sp,80
    80002cb4:	06c05c63          	blez	a2,80002d2c <consolewrite+0x9c>
    80002cb8:	00060993          	mv	s3,a2
    80002cbc:	00050a13          	mv	s4,a0
    80002cc0:	00058493          	mv	s1,a1
    80002cc4:	00000913          	li	s2,0
    80002cc8:	fff00a93          	li	s5,-1
    80002ccc:	01c0006f          	j	80002ce8 <consolewrite+0x58>
    80002cd0:	fbf44503          	lbu	a0,-65(s0)
    80002cd4:	0019091b          	addiw	s2,s2,1
    80002cd8:	00148493          	addi	s1,s1,1
    80002cdc:	00001097          	auipc	ra,0x1
    80002ce0:	a9c080e7          	jalr	-1380(ra) # 80003778 <uartputc>
    80002ce4:	03298063          	beq	s3,s2,80002d04 <consolewrite+0x74>
    80002ce8:	00048613          	mv	a2,s1
    80002cec:	00100693          	li	a3,1
    80002cf0:	000a0593          	mv	a1,s4
    80002cf4:	fbf40513          	addi	a0,s0,-65
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	9dc080e7          	jalr	-1572(ra) # 800026d4 <either_copyin>
    80002d00:	fd5518e3          	bne	a0,s5,80002cd0 <consolewrite+0x40>
    80002d04:	04813083          	ld	ra,72(sp)
    80002d08:	04013403          	ld	s0,64(sp)
    80002d0c:	03813483          	ld	s1,56(sp)
    80002d10:	02813983          	ld	s3,40(sp)
    80002d14:	02013a03          	ld	s4,32(sp)
    80002d18:	01813a83          	ld	s5,24(sp)
    80002d1c:	00090513          	mv	a0,s2
    80002d20:	03013903          	ld	s2,48(sp)
    80002d24:	05010113          	addi	sp,sp,80
    80002d28:	00008067          	ret
    80002d2c:	00000913          	li	s2,0
    80002d30:	fd5ff06f          	j	80002d04 <consolewrite+0x74>

0000000080002d34 <consoleread>:
    80002d34:	f9010113          	addi	sp,sp,-112
    80002d38:	06813023          	sd	s0,96(sp)
    80002d3c:	04913c23          	sd	s1,88(sp)
    80002d40:	05213823          	sd	s2,80(sp)
    80002d44:	05313423          	sd	s3,72(sp)
    80002d48:	05413023          	sd	s4,64(sp)
    80002d4c:	03513c23          	sd	s5,56(sp)
    80002d50:	03613823          	sd	s6,48(sp)
    80002d54:	03713423          	sd	s7,40(sp)
    80002d58:	03813023          	sd	s8,32(sp)
    80002d5c:	06113423          	sd	ra,104(sp)
    80002d60:	01913c23          	sd	s9,24(sp)
    80002d64:	07010413          	addi	s0,sp,112
    80002d68:	00060b93          	mv	s7,a2
    80002d6c:	00050913          	mv	s2,a0
    80002d70:	00058c13          	mv	s8,a1
    80002d74:	00060b1b          	sext.w	s6,a2
    80002d78:	00004497          	auipc	s1,0x4
    80002d7c:	de048493          	addi	s1,s1,-544 # 80006b58 <cons>
    80002d80:	00400993          	li	s3,4
    80002d84:	fff00a13          	li	s4,-1
    80002d88:	00a00a93          	li	s5,10
    80002d8c:	05705e63          	blez	s7,80002de8 <consoleread+0xb4>
    80002d90:	09c4a703          	lw	a4,156(s1)
    80002d94:	0984a783          	lw	a5,152(s1)
    80002d98:	0007071b          	sext.w	a4,a4
    80002d9c:	08e78463          	beq	a5,a4,80002e24 <consoleread+0xf0>
    80002da0:	07f7f713          	andi	a4,a5,127
    80002da4:	00e48733          	add	a4,s1,a4
    80002da8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002dac:	0017869b          	addiw	a3,a5,1
    80002db0:	08d4ac23          	sw	a3,152(s1)
    80002db4:	00070c9b          	sext.w	s9,a4
    80002db8:	0b370663          	beq	a4,s3,80002e64 <consoleread+0x130>
    80002dbc:	00100693          	li	a3,1
    80002dc0:	f9f40613          	addi	a2,s0,-97
    80002dc4:	000c0593          	mv	a1,s8
    80002dc8:	00090513          	mv	a0,s2
    80002dcc:	f8e40fa3          	sb	a4,-97(s0)
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	8b8080e7          	jalr	-1864(ra) # 80002688 <either_copyout>
    80002dd8:	01450863          	beq	a0,s4,80002de8 <consoleread+0xb4>
    80002ddc:	001c0c13          	addi	s8,s8,1
    80002de0:	fffb8b9b          	addiw	s7,s7,-1
    80002de4:	fb5c94e3          	bne	s9,s5,80002d8c <consoleread+0x58>
    80002de8:	000b851b          	sext.w	a0,s7
    80002dec:	06813083          	ld	ra,104(sp)
    80002df0:	06013403          	ld	s0,96(sp)
    80002df4:	05813483          	ld	s1,88(sp)
    80002df8:	05013903          	ld	s2,80(sp)
    80002dfc:	04813983          	ld	s3,72(sp)
    80002e00:	04013a03          	ld	s4,64(sp)
    80002e04:	03813a83          	ld	s5,56(sp)
    80002e08:	02813b83          	ld	s7,40(sp)
    80002e0c:	02013c03          	ld	s8,32(sp)
    80002e10:	01813c83          	ld	s9,24(sp)
    80002e14:	40ab053b          	subw	a0,s6,a0
    80002e18:	03013b03          	ld	s6,48(sp)
    80002e1c:	07010113          	addi	sp,sp,112
    80002e20:	00008067          	ret
    80002e24:	00001097          	auipc	ra,0x1
    80002e28:	1d8080e7          	jalr	472(ra) # 80003ffc <push_on>
    80002e2c:	0984a703          	lw	a4,152(s1)
    80002e30:	09c4a783          	lw	a5,156(s1)
    80002e34:	0007879b          	sext.w	a5,a5
    80002e38:	fef70ce3          	beq	a4,a5,80002e30 <consoleread+0xfc>
    80002e3c:	00001097          	auipc	ra,0x1
    80002e40:	234080e7          	jalr	564(ra) # 80004070 <pop_on>
    80002e44:	0984a783          	lw	a5,152(s1)
    80002e48:	07f7f713          	andi	a4,a5,127
    80002e4c:	00e48733          	add	a4,s1,a4
    80002e50:	01874703          	lbu	a4,24(a4)
    80002e54:	0017869b          	addiw	a3,a5,1
    80002e58:	08d4ac23          	sw	a3,152(s1)
    80002e5c:	00070c9b          	sext.w	s9,a4
    80002e60:	f5371ee3          	bne	a4,s3,80002dbc <consoleread+0x88>
    80002e64:	000b851b          	sext.w	a0,s7
    80002e68:	f96bf2e3          	bgeu	s7,s6,80002dec <consoleread+0xb8>
    80002e6c:	08f4ac23          	sw	a5,152(s1)
    80002e70:	f7dff06f          	j	80002dec <consoleread+0xb8>

0000000080002e74 <consputc>:
    80002e74:	10000793          	li	a5,256
    80002e78:	00f50663          	beq	a0,a5,80002e84 <consputc+0x10>
    80002e7c:	00001317          	auipc	t1,0x1
    80002e80:	9f430067          	jr	-1548(t1) # 80003870 <uartputc_sync>
    80002e84:	ff010113          	addi	sp,sp,-16
    80002e88:	00113423          	sd	ra,8(sp)
    80002e8c:	00813023          	sd	s0,0(sp)
    80002e90:	01010413          	addi	s0,sp,16
    80002e94:	00800513          	li	a0,8
    80002e98:	00001097          	auipc	ra,0x1
    80002e9c:	9d8080e7          	jalr	-1576(ra) # 80003870 <uartputc_sync>
    80002ea0:	02000513          	li	a0,32
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	9cc080e7          	jalr	-1588(ra) # 80003870 <uartputc_sync>
    80002eac:	00013403          	ld	s0,0(sp)
    80002eb0:	00813083          	ld	ra,8(sp)
    80002eb4:	00800513          	li	a0,8
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00001317          	auipc	t1,0x1
    80002ec0:	9b430067          	jr	-1612(t1) # 80003870 <uartputc_sync>

0000000080002ec4 <consoleintr>:
    80002ec4:	fe010113          	addi	sp,sp,-32
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	01213023          	sd	s2,0(sp)
    80002ed4:	00113c23          	sd	ra,24(sp)
    80002ed8:	02010413          	addi	s0,sp,32
    80002edc:	00004917          	auipc	s2,0x4
    80002ee0:	c7c90913          	addi	s2,s2,-900 # 80006b58 <cons>
    80002ee4:	00050493          	mv	s1,a0
    80002ee8:	00090513          	mv	a0,s2
    80002eec:	00001097          	auipc	ra,0x1
    80002ef0:	e40080e7          	jalr	-448(ra) # 80003d2c <acquire>
    80002ef4:	02048c63          	beqz	s1,80002f2c <consoleintr+0x68>
    80002ef8:	0a092783          	lw	a5,160(s2)
    80002efc:	09892703          	lw	a4,152(s2)
    80002f00:	07f00693          	li	a3,127
    80002f04:	40e7873b          	subw	a4,a5,a4
    80002f08:	02e6e263          	bltu	a3,a4,80002f2c <consoleintr+0x68>
    80002f0c:	00d00713          	li	a4,13
    80002f10:	04e48063          	beq	s1,a4,80002f50 <consoleintr+0x8c>
    80002f14:	07f7f713          	andi	a4,a5,127
    80002f18:	00e90733          	add	a4,s2,a4
    80002f1c:	0017879b          	addiw	a5,a5,1
    80002f20:	0af92023          	sw	a5,160(s2)
    80002f24:	00970c23          	sb	s1,24(a4)
    80002f28:	08f92e23          	sw	a5,156(s2)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	01813083          	ld	ra,24(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	00013903          	ld	s2,0(sp)
    80002f3c:	00004517          	auipc	a0,0x4
    80002f40:	c1c50513          	addi	a0,a0,-996 # 80006b58 <cons>
    80002f44:	02010113          	addi	sp,sp,32
    80002f48:	00001317          	auipc	t1,0x1
    80002f4c:	eb030067          	jr	-336(t1) # 80003df8 <release>
    80002f50:	00a00493          	li	s1,10
    80002f54:	fc1ff06f          	j	80002f14 <consoleintr+0x50>

0000000080002f58 <consoleinit>:
    80002f58:	fe010113          	addi	sp,sp,-32
    80002f5c:	00113c23          	sd	ra,24(sp)
    80002f60:	00813823          	sd	s0,16(sp)
    80002f64:	00913423          	sd	s1,8(sp)
    80002f68:	02010413          	addi	s0,sp,32
    80002f6c:	00004497          	auipc	s1,0x4
    80002f70:	bec48493          	addi	s1,s1,-1044 # 80006b58 <cons>
    80002f74:	00048513          	mv	a0,s1
    80002f78:	00002597          	auipc	a1,0x2
    80002f7c:	36058593          	addi	a1,a1,864 # 800052d8 <_ZZ12printIntegermE6digits+0x138>
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	d88080e7          	jalr	-632(ra) # 80003d08 <initlock>
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	7ac080e7          	jalr	1964(ra) # 80003734 <uartinit>
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00000797          	auipc	a5,0x0
    80002f9c:	d9c78793          	addi	a5,a5,-612 # 80002d34 <consoleread>
    80002fa0:	0af4bc23          	sd	a5,184(s1)
    80002fa4:	00000797          	auipc	a5,0x0
    80002fa8:	cec78793          	addi	a5,a5,-788 # 80002c90 <consolewrite>
    80002fac:	0cf4b023          	sd	a5,192(s1)
    80002fb0:	00813483          	ld	s1,8(sp)
    80002fb4:	02010113          	addi	sp,sp,32
    80002fb8:	00008067          	ret

0000000080002fbc <console_read>:
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00813423          	sd	s0,8(sp)
    80002fc4:	01010413          	addi	s0,sp,16
    80002fc8:	00813403          	ld	s0,8(sp)
    80002fcc:	00004317          	auipc	t1,0x4
    80002fd0:	c4433303          	ld	t1,-956(t1) # 80006c10 <devsw+0x10>
    80002fd4:	01010113          	addi	sp,sp,16
    80002fd8:	00030067          	jr	t1

0000000080002fdc <console_write>:
    80002fdc:	ff010113          	addi	sp,sp,-16
    80002fe0:	00813423          	sd	s0,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    80002fe8:	00813403          	ld	s0,8(sp)
    80002fec:	00004317          	auipc	t1,0x4
    80002ff0:	c2c33303          	ld	t1,-980(t1) # 80006c18 <devsw+0x18>
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00030067          	jr	t1

0000000080002ffc <panic>:
    80002ffc:	fe010113          	addi	sp,sp,-32
    80003000:	00113c23          	sd	ra,24(sp)
    80003004:	00813823          	sd	s0,16(sp)
    80003008:	00913423          	sd	s1,8(sp)
    8000300c:	02010413          	addi	s0,sp,32
    80003010:	00050493          	mv	s1,a0
    80003014:	00002517          	auipc	a0,0x2
    80003018:	2cc50513          	addi	a0,a0,716 # 800052e0 <_ZZ12printIntegermE6digits+0x140>
    8000301c:	00004797          	auipc	a5,0x4
    80003020:	c807ae23          	sw	zero,-868(a5) # 80006cb8 <pr+0x18>
    80003024:	00000097          	auipc	ra,0x0
    80003028:	034080e7          	jalr	52(ra) # 80003058 <__printf>
    8000302c:	00048513          	mv	a0,s1
    80003030:	00000097          	auipc	ra,0x0
    80003034:	028080e7          	jalr	40(ra) # 80003058 <__printf>
    80003038:	00002517          	auipc	a0,0x2
    8000303c:	11050513          	addi	a0,a0,272 # 80005148 <kvmincrease+0x988>
    80003040:	00000097          	auipc	ra,0x0
    80003044:	018080e7          	jalr	24(ra) # 80003058 <__printf>
    80003048:	00100793          	li	a5,1
    8000304c:	00003717          	auipc	a4,0x3
    80003050:	9cf72623          	sw	a5,-1588(a4) # 80005a18 <panicked>
    80003054:	0000006f          	j	80003054 <panic+0x58>

0000000080003058 <__printf>:
    80003058:	f3010113          	addi	sp,sp,-208
    8000305c:	08813023          	sd	s0,128(sp)
    80003060:	07313423          	sd	s3,104(sp)
    80003064:	09010413          	addi	s0,sp,144
    80003068:	05813023          	sd	s8,64(sp)
    8000306c:	08113423          	sd	ra,136(sp)
    80003070:	06913c23          	sd	s1,120(sp)
    80003074:	07213823          	sd	s2,112(sp)
    80003078:	07413023          	sd	s4,96(sp)
    8000307c:	05513c23          	sd	s5,88(sp)
    80003080:	05613823          	sd	s6,80(sp)
    80003084:	05713423          	sd	s7,72(sp)
    80003088:	03913c23          	sd	s9,56(sp)
    8000308c:	03a13823          	sd	s10,48(sp)
    80003090:	03b13423          	sd	s11,40(sp)
    80003094:	00004317          	auipc	t1,0x4
    80003098:	c0c30313          	addi	t1,t1,-1012 # 80006ca0 <pr>
    8000309c:	01832c03          	lw	s8,24(t1)
    800030a0:	00b43423          	sd	a1,8(s0)
    800030a4:	00c43823          	sd	a2,16(s0)
    800030a8:	00d43c23          	sd	a3,24(s0)
    800030ac:	02e43023          	sd	a4,32(s0)
    800030b0:	02f43423          	sd	a5,40(s0)
    800030b4:	03043823          	sd	a6,48(s0)
    800030b8:	03143c23          	sd	a7,56(s0)
    800030bc:	00050993          	mv	s3,a0
    800030c0:	4a0c1663          	bnez	s8,8000356c <__printf+0x514>
    800030c4:	60098c63          	beqz	s3,800036dc <__printf+0x684>
    800030c8:	0009c503          	lbu	a0,0(s3)
    800030cc:	00840793          	addi	a5,s0,8
    800030d0:	f6f43c23          	sd	a5,-136(s0)
    800030d4:	00000493          	li	s1,0
    800030d8:	22050063          	beqz	a0,800032f8 <__printf+0x2a0>
    800030dc:	00002a37          	lui	s4,0x2
    800030e0:	00018ab7          	lui	s5,0x18
    800030e4:	000f4b37          	lui	s6,0xf4
    800030e8:	00989bb7          	lui	s7,0x989
    800030ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800030f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800030f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800030f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800030fc:	00148c9b          	addiw	s9,s1,1
    80003100:	02500793          	li	a5,37
    80003104:	01998933          	add	s2,s3,s9
    80003108:	38f51263          	bne	a0,a5,8000348c <__printf+0x434>
    8000310c:	00094783          	lbu	a5,0(s2)
    80003110:	00078c9b          	sext.w	s9,a5
    80003114:	1e078263          	beqz	a5,800032f8 <__printf+0x2a0>
    80003118:	0024849b          	addiw	s1,s1,2
    8000311c:	07000713          	li	a4,112
    80003120:	00998933          	add	s2,s3,s1
    80003124:	38e78a63          	beq	a5,a4,800034b8 <__printf+0x460>
    80003128:	20f76863          	bltu	a4,a5,80003338 <__printf+0x2e0>
    8000312c:	42a78863          	beq	a5,a0,8000355c <__printf+0x504>
    80003130:	06400713          	li	a4,100
    80003134:	40e79663          	bne	a5,a4,80003540 <__printf+0x4e8>
    80003138:	f7843783          	ld	a5,-136(s0)
    8000313c:	0007a603          	lw	a2,0(a5)
    80003140:	00878793          	addi	a5,a5,8
    80003144:	f6f43c23          	sd	a5,-136(s0)
    80003148:	42064a63          	bltz	a2,8000357c <__printf+0x524>
    8000314c:	00a00713          	li	a4,10
    80003150:	02e677bb          	remuw	a5,a2,a4
    80003154:	00002d97          	auipc	s11,0x2
    80003158:	1b4d8d93          	addi	s11,s11,436 # 80005308 <digits>
    8000315c:	00900593          	li	a1,9
    80003160:	0006051b          	sext.w	a0,a2
    80003164:	00000c93          	li	s9,0
    80003168:	02079793          	slli	a5,a5,0x20
    8000316c:	0207d793          	srli	a5,a5,0x20
    80003170:	00fd87b3          	add	a5,s11,a5
    80003174:	0007c783          	lbu	a5,0(a5)
    80003178:	02e656bb          	divuw	a3,a2,a4
    8000317c:	f8f40023          	sb	a5,-128(s0)
    80003180:	14c5d863          	bge	a1,a2,800032d0 <__printf+0x278>
    80003184:	06300593          	li	a1,99
    80003188:	00100c93          	li	s9,1
    8000318c:	02e6f7bb          	remuw	a5,a3,a4
    80003190:	02079793          	slli	a5,a5,0x20
    80003194:	0207d793          	srli	a5,a5,0x20
    80003198:	00fd87b3          	add	a5,s11,a5
    8000319c:	0007c783          	lbu	a5,0(a5)
    800031a0:	02e6d73b          	divuw	a4,a3,a4
    800031a4:	f8f400a3          	sb	a5,-127(s0)
    800031a8:	12a5f463          	bgeu	a1,a0,800032d0 <__printf+0x278>
    800031ac:	00a00693          	li	a3,10
    800031b0:	00900593          	li	a1,9
    800031b4:	02d777bb          	remuw	a5,a4,a3
    800031b8:	02079793          	slli	a5,a5,0x20
    800031bc:	0207d793          	srli	a5,a5,0x20
    800031c0:	00fd87b3          	add	a5,s11,a5
    800031c4:	0007c503          	lbu	a0,0(a5)
    800031c8:	02d757bb          	divuw	a5,a4,a3
    800031cc:	f8a40123          	sb	a0,-126(s0)
    800031d0:	48e5f263          	bgeu	a1,a4,80003654 <__printf+0x5fc>
    800031d4:	06300513          	li	a0,99
    800031d8:	02d7f5bb          	remuw	a1,a5,a3
    800031dc:	02059593          	slli	a1,a1,0x20
    800031e0:	0205d593          	srli	a1,a1,0x20
    800031e4:	00bd85b3          	add	a1,s11,a1
    800031e8:	0005c583          	lbu	a1,0(a1)
    800031ec:	02d7d7bb          	divuw	a5,a5,a3
    800031f0:	f8b401a3          	sb	a1,-125(s0)
    800031f4:	48e57263          	bgeu	a0,a4,80003678 <__printf+0x620>
    800031f8:	3e700513          	li	a0,999
    800031fc:	02d7f5bb          	remuw	a1,a5,a3
    80003200:	02059593          	slli	a1,a1,0x20
    80003204:	0205d593          	srli	a1,a1,0x20
    80003208:	00bd85b3          	add	a1,s11,a1
    8000320c:	0005c583          	lbu	a1,0(a1)
    80003210:	02d7d7bb          	divuw	a5,a5,a3
    80003214:	f8b40223          	sb	a1,-124(s0)
    80003218:	46e57663          	bgeu	a0,a4,80003684 <__printf+0x62c>
    8000321c:	02d7f5bb          	remuw	a1,a5,a3
    80003220:	02059593          	slli	a1,a1,0x20
    80003224:	0205d593          	srli	a1,a1,0x20
    80003228:	00bd85b3          	add	a1,s11,a1
    8000322c:	0005c583          	lbu	a1,0(a1)
    80003230:	02d7d7bb          	divuw	a5,a5,a3
    80003234:	f8b402a3          	sb	a1,-123(s0)
    80003238:	46ea7863          	bgeu	s4,a4,800036a8 <__printf+0x650>
    8000323c:	02d7f5bb          	remuw	a1,a5,a3
    80003240:	02059593          	slli	a1,a1,0x20
    80003244:	0205d593          	srli	a1,a1,0x20
    80003248:	00bd85b3          	add	a1,s11,a1
    8000324c:	0005c583          	lbu	a1,0(a1)
    80003250:	02d7d7bb          	divuw	a5,a5,a3
    80003254:	f8b40323          	sb	a1,-122(s0)
    80003258:	3eeaf863          	bgeu	s5,a4,80003648 <__printf+0x5f0>
    8000325c:	02d7f5bb          	remuw	a1,a5,a3
    80003260:	02059593          	slli	a1,a1,0x20
    80003264:	0205d593          	srli	a1,a1,0x20
    80003268:	00bd85b3          	add	a1,s11,a1
    8000326c:	0005c583          	lbu	a1,0(a1)
    80003270:	02d7d7bb          	divuw	a5,a5,a3
    80003274:	f8b403a3          	sb	a1,-121(s0)
    80003278:	42eb7e63          	bgeu	s6,a4,800036b4 <__printf+0x65c>
    8000327c:	02d7f5bb          	remuw	a1,a5,a3
    80003280:	02059593          	slli	a1,a1,0x20
    80003284:	0205d593          	srli	a1,a1,0x20
    80003288:	00bd85b3          	add	a1,s11,a1
    8000328c:	0005c583          	lbu	a1,0(a1)
    80003290:	02d7d7bb          	divuw	a5,a5,a3
    80003294:	f8b40423          	sb	a1,-120(s0)
    80003298:	42ebfc63          	bgeu	s7,a4,800036d0 <__printf+0x678>
    8000329c:	02079793          	slli	a5,a5,0x20
    800032a0:	0207d793          	srli	a5,a5,0x20
    800032a4:	00fd8db3          	add	s11,s11,a5
    800032a8:	000dc703          	lbu	a4,0(s11)
    800032ac:	00a00793          	li	a5,10
    800032b0:	00900c93          	li	s9,9
    800032b4:	f8e404a3          	sb	a4,-119(s0)
    800032b8:	00065c63          	bgez	a2,800032d0 <__printf+0x278>
    800032bc:	f9040713          	addi	a4,s0,-112
    800032c0:	00f70733          	add	a4,a4,a5
    800032c4:	02d00693          	li	a3,45
    800032c8:	fed70823          	sb	a3,-16(a4)
    800032cc:	00078c93          	mv	s9,a5
    800032d0:	f8040793          	addi	a5,s0,-128
    800032d4:	01978cb3          	add	s9,a5,s9
    800032d8:	f7f40d13          	addi	s10,s0,-129
    800032dc:	000cc503          	lbu	a0,0(s9)
    800032e0:	fffc8c93          	addi	s9,s9,-1
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	b90080e7          	jalr	-1136(ra) # 80002e74 <consputc>
    800032ec:	ffac98e3          	bne	s9,s10,800032dc <__printf+0x284>
    800032f0:	00094503          	lbu	a0,0(s2)
    800032f4:	e00514e3          	bnez	a0,800030fc <__printf+0xa4>
    800032f8:	1a0c1663          	bnez	s8,800034a4 <__printf+0x44c>
    800032fc:	08813083          	ld	ra,136(sp)
    80003300:	08013403          	ld	s0,128(sp)
    80003304:	07813483          	ld	s1,120(sp)
    80003308:	07013903          	ld	s2,112(sp)
    8000330c:	06813983          	ld	s3,104(sp)
    80003310:	06013a03          	ld	s4,96(sp)
    80003314:	05813a83          	ld	s5,88(sp)
    80003318:	05013b03          	ld	s6,80(sp)
    8000331c:	04813b83          	ld	s7,72(sp)
    80003320:	04013c03          	ld	s8,64(sp)
    80003324:	03813c83          	ld	s9,56(sp)
    80003328:	03013d03          	ld	s10,48(sp)
    8000332c:	02813d83          	ld	s11,40(sp)
    80003330:	0d010113          	addi	sp,sp,208
    80003334:	00008067          	ret
    80003338:	07300713          	li	a4,115
    8000333c:	1ce78a63          	beq	a5,a4,80003510 <__printf+0x4b8>
    80003340:	07800713          	li	a4,120
    80003344:	1ee79e63          	bne	a5,a4,80003540 <__printf+0x4e8>
    80003348:	f7843783          	ld	a5,-136(s0)
    8000334c:	0007a703          	lw	a4,0(a5)
    80003350:	00878793          	addi	a5,a5,8
    80003354:	f6f43c23          	sd	a5,-136(s0)
    80003358:	28074263          	bltz	a4,800035dc <__printf+0x584>
    8000335c:	00002d97          	auipc	s11,0x2
    80003360:	facd8d93          	addi	s11,s11,-84 # 80005308 <digits>
    80003364:	00f77793          	andi	a5,a4,15
    80003368:	00fd87b3          	add	a5,s11,a5
    8000336c:	0007c683          	lbu	a3,0(a5)
    80003370:	00f00613          	li	a2,15
    80003374:	0007079b          	sext.w	a5,a4
    80003378:	f8d40023          	sb	a3,-128(s0)
    8000337c:	0047559b          	srliw	a1,a4,0x4
    80003380:	0047569b          	srliw	a3,a4,0x4
    80003384:	00000c93          	li	s9,0
    80003388:	0ee65063          	bge	a2,a4,80003468 <__printf+0x410>
    8000338c:	00f6f693          	andi	a3,a3,15
    80003390:	00dd86b3          	add	a3,s11,a3
    80003394:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003398:	0087d79b          	srliw	a5,a5,0x8
    8000339c:	00100c93          	li	s9,1
    800033a0:	f8d400a3          	sb	a3,-127(s0)
    800033a4:	0cb67263          	bgeu	a2,a1,80003468 <__printf+0x410>
    800033a8:	00f7f693          	andi	a3,a5,15
    800033ac:	00dd86b3          	add	a3,s11,a3
    800033b0:	0006c583          	lbu	a1,0(a3)
    800033b4:	00f00613          	li	a2,15
    800033b8:	0047d69b          	srliw	a3,a5,0x4
    800033bc:	f8b40123          	sb	a1,-126(s0)
    800033c0:	0047d593          	srli	a1,a5,0x4
    800033c4:	28f67e63          	bgeu	a2,a5,80003660 <__printf+0x608>
    800033c8:	00f6f693          	andi	a3,a3,15
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c503          	lbu	a0,0(a3)
    800033d4:	0087d813          	srli	a6,a5,0x8
    800033d8:	0087d69b          	srliw	a3,a5,0x8
    800033dc:	f8a401a3          	sb	a0,-125(s0)
    800033e0:	28b67663          	bgeu	a2,a1,8000366c <__printf+0x614>
    800033e4:	00f6f693          	andi	a3,a3,15
    800033e8:	00dd86b3          	add	a3,s11,a3
    800033ec:	0006c583          	lbu	a1,0(a3)
    800033f0:	00c7d513          	srli	a0,a5,0xc
    800033f4:	00c7d69b          	srliw	a3,a5,0xc
    800033f8:	f8b40223          	sb	a1,-124(s0)
    800033fc:	29067a63          	bgeu	a2,a6,80003690 <__printf+0x638>
    80003400:	00f6f693          	andi	a3,a3,15
    80003404:	00dd86b3          	add	a3,s11,a3
    80003408:	0006c583          	lbu	a1,0(a3)
    8000340c:	0107d813          	srli	a6,a5,0x10
    80003410:	0107d69b          	srliw	a3,a5,0x10
    80003414:	f8b402a3          	sb	a1,-123(s0)
    80003418:	28a67263          	bgeu	a2,a0,8000369c <__printf+0x644>
    8000341c:	00f6f693          	andi	a3,a3,15
    80003420:	00dd86b3          	add	a3,s11,a3
    80003424:	0006c683          	lbu	a3,0(a3)
    80003428:	0147d79b          	srliw	a5,a5,0x14
    8000342c:	f8d40323          	sb	a3,-122(s0)
    80003430:	21067663          	bgeu	a2,a6,8000363c <__printf+0x5e4>
    80003434:	02079793          	slli	a5,a5,0x20
    80003438:	0207d793          	srli	a5,a5,0x20
    8000343c:	00fd8db3          	add	s11,s11,a5
    80003440:	000dc683          	lbu	a3,0(s11)
    80003444:	00800793          	li	a5,8
    80003448:	00700c93          	li	s9,7
    8000344c:	f8d403a3          	sb	a3,-121(s0)
    80003450:	00075c63          	bgez	a4,80003468 <__printf+0x410>
    80003454:	f9040713          	addi	a4,s0,-112
    80003458:	00f70733          	add	a4,a4,a5
    8000345c:	02d00693          	li	a3,45
    80003460:	fed70823          	sb	a3,-16(a4)
    80003464:	00078c93          	mv	s9,a5
    80003468:	f8040793          	addi	a5,s0,-128
    8000346c:	01978cb3          	add	s9,a5,s9
    80003470:	f7f40d13          	addi	s10,s0,-129
    80003474:	000cc503          	lbu	a0,0(s9)
    80003478:	fffc8c93          	addi	s9,s9,-1
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	9f8080e7          	jalr	-1544(ra) # 80002e74 <consputc>
    80003484:	ff9d18e3          	bne	s10,s9,80003474 <__printf+0x41c>
    80003488:	0100006f          	j	80003498 <__printf+0x440>
    8000348c:	00000097          	auipc	ra,0x0
    80003490:	9e8080e7          	jalr	-1560(ra) # 80002e74 <consputc>
    80003494:	000c8493          	mv	s1,s9
    80003498:	00094503          	lbu	a0,0(s2)
    8000349c:	c60510e3          	bnez	a0,800030fc <__printf+0xa4>
    800034a0:	e40c0ee3          	beqz	s8,800032fc <__printf+0x2a4>
    800034a4:	00003517          	auipc	a0,0x3
    800034a8:	7fc50513          	addi	a0,a0,2044 # 80006ca0 <pr>
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	94c080e7          	jalr	-1716(ra) # 80003df8 <release>
    800034b4:	e49ff06f          	j	800032fc <__printf+0x2a4>
    800034b8:	f7843783          	ld	a5,-136(s0)
    800034bc:	03000513          	li	a0,48
    800034c0:	01000d13          	li	s10,16
    800034c4:	00878713          	addi	a4,a5,8
    800034c8:	0007bc83          	ld	s9,0(a5)
    800034cc:	f6e43c23          	sd	a4,-136(s0)
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	9a4080e7          	jalr	-1628(ra) # 80002e74 <consputc>
    800034d8:	07800513          	li	a0,120
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	998080e7          	jalr	-1640(ra) # 80002e74 <consputc>
    800034e4:	00002d97          	auipc	s11,0x2
    800034e8:	e24d8d93          	addi	s11,s11,-476 # 80005308 <digits>
    800034ec:	03ccd793          	srli	a5,s9,0x3c
    800034f0:	00fd87b3          	add	a5,s11,a5
    800034f4:	0007c503          	lbu	a0,0(a5)
    800034f8:	fffd0d1b          	addiw	s10,s10,-1
    800034fc:	004c9c93          	slli	s9,s9,0x4
    80003500:	00000097          	auipc	ra,0x0
    80003504:	974080e7          	jalr	-1676(ra) # 80002e74 <consputc>
    80003508:	fe0d12e3          	bnez	s10,800034ec <__printf+0x494>
    8000350c:	f8dff06f          	j	80003498 <__printf+0x440>
    80003510:	f7843783          	ld	a5,-136(s0)
    80003514:	0007bc83          	ld	s9,0(a5)
    80003518:	00878793          	addi	a5,a5,8
    8000351c:	f6f43c23          	sd	a5,-136(s0)
    80003520:	000c9a63          	bnez	s9,80003534 <__printf+0x4dc>
    80003524:	1080006f          	j	8000362c <__printf+0x5d4>
    80003528:	001c8c93          	addi	s9,s9,1
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	948080e7          	jalr	-1720(ra) # 80002e74 <consputc>
    80003534:	000cc503          	lbu	a0,0(s9)
    80003538:	fe0518e3          	bnez	a0,80003528 <__printf+0x4d0>
    8000353c:	f5dff06f          	j	80003498 <__printf+0x440>
    80003540:	02500513          	li	a0,37
    80003544:	00000097          	auipc	ra,0x0
    80003548:	930080e7          	jalr	-1744(ra) # 80002e74 <consputc>
    8000354c:	000c8513          	mv	a0,s9
    80003550:	00000097          	auipc	ra,0x0
    80003554:	924080e7          	jalr	-1756(ra) # 80002e74 <consputc>
    80003558:	f41ff06f          	j	80003498 <__printf+0x440>
    8000355c:	02500513          	li	a0,37
    80003560:	00000097          	auipc	ra,0x0
    80003564:	914080e7          	jalr	-1772(ra) # 80002e74 <consputc>
    80003568:	f31ff06f          	j	80003498 <__printf+0x440>
    8000356c:	00030513          	mv	a0,t1
    80003570:	00000097          	auipc	ra,0x0
    80003574:	7bc080e7          	jalr	1980(ra) # 80003d2c <acquire>
    80003578:	b4dff06f          	j	800030c4 <__printf+0x6c>
    8000357c:	40c0053b          	negw	a0,a2
    80003580:	00a00713          	li	a4,10
    80003584:	02e576bb          	remuw	a3,a0,a4
    80003588:	00002d97          	auipc	s11,0x2
    8000358c:	d80d8d93          	addi	s11,s11,-640 # 80005308 <digits>
    80003590:	ff700593          	li	a1,-9
    80003594:	02069693          	slli	a3,a3,0x20
    80003598:	0206d693          	srli	a3,a3,0x20
    8000359c:	00dd86b3          	add	a3,s11,a3
    800035a0:	0006c683          	lbu	a3,0(a3)
    800035a4:	02e557bb          	divuw	a5,a0,a4
    800035a8:	f8d40023          	sb	a3,-128(s0)
    800035ac:	10b65e63          	bge	a2,a1,800036c8 <__printf+0x670>
    800035b0:	06300593          	li	a1,99
    800035b4:	02e7f6bb          	remuw	a3,a5,a4
    800035b8:	02069693          	slli	a3,a3,0x20
    800035bc:	0206d693          	srli	a3,a3,0x20
    800035c0:	00dd86b3          	add	a3,s11,a3
    800035c4:	0006c683          	lbu	a3,0(a3)
    800035c8:	02e7d73b          	divuw	a4,a5,a4
    800035cc:	00200793          	li	a5,2
    800035d0:	f8d400a3          	sb	a3,-127(s0)
    800035d4:	bca5ece3          	bltu	a1,a0,800031ac <__printf+0x154>
    800035d8:	ce5ff06f          	j	800032bc <__printf+0x264>
    800035dc:	40e007bb          	negw	a5,a4
    800035e0:	00002d97          	auipc	s11,0x2
    800035e4:	d28d8d93          	addi	s11,s11,-728 # 80005308 <digits>
    800035e8:	00f7f693          	andi	a3,a5,15
    800035ec:	00dd86b3          	add	a3,s11,a3
    800035f0:	0006c583          	lbu	a1,0(a3)
    800035f4:	ff100613          	li	a2,-15
    800035f8:	0047d69b          	srliw	a3,a5,0x4
    800035fc:	f8b40023          	sb	a1,-128(s0)
    80003600:	0047d59b          	srliw	a1,a5,0x4
    80003604:	0ac75e63          	bge	a4,a2,800036c0 <__printf+0x668>
    80003608:	00f6f693          	andi	a3,a3,15
    8000360c:	00dd86b3          	add	a3,s11,a3
    80003610:	0006c603          	lbu	a2,0(a3)
    80003614:	00f00693          	li	a3,15
    80003618:	0087d79b          	srliw	a5,a5,0x8
    8000361c:	f8c400a3          	sb	a2,-127(s0)
    80003620:	d8b6e4e3          	bltu	a3,a1,800033a8 <__printf+0x350>
    80003624:	00200793          	li	a5,2
    80003628:	e2dff06f          	j	80003454 <__printf+0x3fc>
    8000362c:	00002c97          	auipc	s9,0x2
    80003630:	cbcc8c93          	addi	s9,s9,-836 # 800052e8 <_ZZ12printIntegermE6digits+0x148>
    80003634:	02800513          	li	a0,40
    80003638:	ef1ff06f          	j	80003528 <__printf+0x4d0>
    8000363c:	00700793          	li	a5,7
    80003640:	00600c93          	li	s9,6
    80003644:	e0dff06f          	j	80003450 <__printf+0x3f8>
    80003648:	00700793          	li	a5,7
    8000364c:	00600c93          	li	s9,6
    80003650:	c69ff06f          	j	800032b8 <__printf+0x260>
    80003654:	00300793          	li	a5,3
    80003658:	00200c93          	li	s9,2
    8000365c:	c5dff06f          	j	800032b8 <__printf+0x260>
    80003660:	00300793          	li	a5,3
    80003664:	00200c93          	li	s9,2
    80003668:	de9ff06f          	j	80003450 <__printf+0x3f8>
    8000366c:	00400793          	li	a5,4
    80003670:	00300c93          	li	s9,3
    80003674:	dddff06f          	j	80003450 <__printf+0x3f8>
    80003678:	00400793          	li	a5,4
    8000367c:	00300c93          	li	s9,3
    80003680:	c39ff06f          	j	800032b8 <__printf+0x260>
    80003684:	00500793          	li	a5,5
    80003688:	00400c93          	li	s9,4
    8000368c:	c2dff06f          	j	800032b8 <__printf+0x260>
    80003690:	00500793          	li	a5,5
    80003694:	00400c93          	li	s9,4
    80003698:	db9ff06f          	j	80003450 <__printf+0x3f8>
    8000369c:	00600793          	li	a5,6
    800036a0:	00500c93          	li	s9,5
    800036a4:	dadff06f          	j	80003450 <__printf+0x3f8>
    800036a8:	00600793          	li	a5,6
    800036ac:	00500c93          	li	s9,5
    800036b0:	c09ff06f          	j	800032b8 <__printf+0x260>
    800036b4:	00800793          	li	a5,8
    800036b8:	00700c93          	li	s9,7
    800036bc:	bfdff06f          	j	800032b8 <__printf+0x260>
    800036c0:	00100793          	li	a5,1
    800036c4:	d91ff06f          	j	80003454 <__printf+0x3fc>
    800036c8:	00100793          	li	a5,1
    800036cc:	bf1ff06f          	j	800032bc <__printf+0x264>
    800036d0:	00900793          	li	a5,9
    800036d4:	00800c93          	li	s9,8
    800036d8:	be1ff06f          	j	800032b8 <__printf+0x260>
    800036dc:	00002517          	auipc	a0,0x2
    800036e0:	c1450513          	addi	a0,a0,-1004 # 800052f0 <_ZZ12printIntegermE6digits+0x150>
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	918080e7          	jalr	-1768(ra) # 80002ffc <panic>

00000000800036ec <printfinit>:
    800036ec:	fe010113          	addi	sp,sp,-32
    800036f0:	00813823          	sd	s0,16(sp)
    800036f4:	00913423          	sd	s1,8(sp)
    800036f8:	00113c23          	sd	ra,24(sp)
    800036fc:	02010413          	addi	s0,sp,32
    80003700:	00003497          	auipc	s1,0x3
    80003704:	5a048493          	addi	s1,s1,1440 # 80006ca0 <pr>
    80003708:	00048513          	mv	a0,s1
    8000370c:	00002597          	auipc	a1,0x2
    80003710:	bf458593          	addi	a1,a1,-1036 # 80005300 <_ZZ12printIntegermE6digits+0x160>
    80003714:	00000097          	auipc	ra,0x0
    80003718:	5f4080e7          	jalr	1524(ra) # 80003d08 <initlock>
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	0004ac23          	sw	zero,24(s1)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	02010113          	addi	sp,sp,32
    80003730:	00008067          	ret

0000000080003734 <uartinit>:
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00813423          	sd	s0,8(sp)
    8000373c:	01010413          	addi	s0,sp,16
    80003740:	100007b7          	lui	a5,0x10000
    80003744:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003748:	f8000713          	li	a4,-128
    8000374c:	00e781a3          	sb	a4,3(a5)
    80003750:	00300713          	li	a4,3
    80003754:	00e78023          	sb	a4,0(a5)
    80003758:	000780a3          	sb	zero,1(a5)
    8000375c:	00e781a3          	sb	a4,3(a5)
    80003760:	00700693          	li	a3,7
    80003764:	00d78123          	sb	a3,2(a5)
    80003768:	00e780a3          	sb	a4,1(a5)
    8000376c:	00813403          	ld	s0,8(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret

0000000080003778 <uartputc>:
    80003778:	00002797          	auipc	a5,0x2
    8000377c:	2a07a783          	lw	a5,672(a5) # 80005a18 <panicked>
    80003780:	00078463          	beqz	a5,80003788 <uartputc+0x10>
    80003784:	0000006f          	j	80003784 <uartputc+0xc>
    80003788:	fd010113          	addi	sp,sp,-48
    8000378c:	02813023          	sd	s0,32(sp)
    80003790:	00913c23          	sd	s1,24(sp)
    80003794:	01213823          	sd	s2,16(sp)
    80003798:	01313423          	sd	s3,8(sp)
    8000379c:	02113423          	sd	ra,40(sp)
    800037a0:	03010413          	addi	s0,sp,48
    800037a4:	00002917          	auipc	s2,0x2
    800037a8:	27c90913          	addi	s2,s2,636 # 80005a20 <uart_tx_r>
    800037ac:	00093783          	ld	a5,0(s2)
    800037b0:	00002497          	auipc	s1,0x2
    800037b4:	27848493          	addi	s1,s1,632 # 80005a28 <uart_tx_w>
    800037b8:	0004b703          	ld	a4,0(s1)
    800037bc:	02078693          	addi	a3,a5,32
    800037c0:	00050993          	mv	s3,a0
    800037c4:	02e69c63          	bne	a3,a4,800037fc <uartputc+0x84>
    800037c8:	00001097          	auipc	ra,0x1
    800037cc:	834080e7          	jalr	-1996(ra) # 80003ffc <push_on>
    800037d0:	00093783          	ld	a5,0(s2)
    800037d4:	0004b703          	ld	a4,0(s1)
    800037d8:	02078793          	addi	a5,a5,32
    800037dc:	00e79463          	bne	a5,a4,800037e4 <uartputc+0x6c>
    800037e0:	0000006f          	j	800037e0 <uartputc+0x68>
    800037e4:	00001097          	auipc	ra,0x1
    800037e8:	88c080e7          	jalr	-1908(ra) # 80004070 <pop_on>
    800037ec:	00093783          	ld	a5,0(s2)
    800037f0:	0004b703          	ld	a4,0(s1)
    800037f4:	02078693          	addi	a3,a5,32
    800037f8:	fce688e3          	beq	a3,a4,800037c8 <uartputc+0x50>
    800037fc:	01f77693          	andi	a3,a4,31
    80003800:	00003597          	auipc	a1,0x3
    80003804:	4c058593          	addi	a1,a1,1216 # 80006cc0 <uart_tx_buf>
    80003808:	00d586b3          	add	a3,a1,a3
    8000380c:	00170713          	addi	a4,a4,1
    80003810:	01368023          	sb	s3,0(a3)
    80003814:	00e4b023          	sd	a4,0(s1)
    80003818:	10000637          	lui	a2,0x10000
    8000381c:	02f71063          	bne	a4,a5,8000383c <uartputc+0xc4>
    80003820:	0340006f          	j	80003854 <uartputc+0xdc>
    80003824:	00074703          	lbu	a4,0(a4)
    80003828:	00f93023          	sd	a5,0(s2)
    8000382c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003830:	00093783          	ld	a5,0(s2)
    80003834:	0004b703          	ld	a4,0(s1)
    80003838:	00f70e63          	beq	a4,a5,80003854 <uartputc+0xdc>
    8000383c:	00564683          	lbu	a3,5(a2)
    80003840:	01f7f713          	andi	a4,a5,31
    80003844:	00e58733          	add	a4,a1,a4
    80003848:	0206f693          	andi	a3,a3,32
    8000384c:	00178793          	addi	a5,a5,1
    80003850:	fc069ae3          	bnez	a3,80003824 <uartputc+0xac>
    80003854:	02813083          	ld	ra,40(sp)
    80003858:	02013403          	ld	s0,32(sp)
    8000385c:	01813483          	ld	s1,24(sp)
    80003860:	01013903          	ld	s2,16(sp)
    80003864:	00813983          	ld	s3,8(sp)
    80003868:	03010113          	addi	sp,sp,48
    8000386c:	00008067          	ret

0000000080003870 <uartputc_sync>:
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813423          	sd	s0,8(sp)
    80003878:	01010413          	addi	s0,sp,16
    8000387c:	00002717          	auipc	a4,0x2
    80003880:	19c72703          	lw	a4,412(a4) # 80005a18 <panicked>
    80003884:	02071663          	bnez	a4,800038b0 <uartputc_sync+0x40>
    80003888:	00050793          	mv	a5,a0
    8000388c:	100006b7          	lui	a3,0x10000
    80003890:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003894:	02077713          	andi	a4,a4,32
    80003898:	fe070ce3          	beqz	a4,80003890 <uartputc_sync+0x20>
    8000389c:	0ff7f793          	andi	a5,a5,255
    800038a0:	00f68023          	sb	a5,0(a3)
    800038a4:	00813403          	ld	s0,8(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret
    800038b0:	0000006f          	j	800038b0 <uartputc_sync+0x40>

00000000800038b4 <uartstart>:
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00813423          	sd	s0,8(sp)
    800038bc:	01010413          	addi	s0,sp,16
    800038c0:	00002617          	auipc	a2,0x2
    800038c4:	16060613          	addi	a2,a2,352 # 80005a20 <uart_tx_r>
    800038c8:	00002517          	auipc	a0,0x2
    800038cc:	16050513          	addi	a0,a0,352 # 80005a28 <uart_tx_w>
    800038d0:	00063783          	ld	a5,0(a2)
    800038d4:	00053703          	ld	a4,0(a0)
    800038d8:	04f70263          	beq	a4,a5,8000391c <uartstart+0x68>
    800038dc:	100005b7          	lui	a1,0x10000
    800038e0:	00003817          	auipc	a6,0x3
    800038e4:	3e080813          	addi	a6,a6,992 # 80006cc0 <uart_tx_buf>
    800038e8:	01c0006f          	j	80003904 <uartstart+0x50>
    800038ec:	0006c703          	lbu	a4,0(a3)
    800038f0:	00f63023          	sd	a5,0(a2)
    800038f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038f8:	00063783          	ld	a5,0(a2)
    800038fc:	00053703          	ld	a4,0(a0)
    80003900:	00f70e63          	beq	a4,a5,8000391c <uartstart+0x68>
    80003904:	01f7f713          	andi	a4,a5,31
    80003908:	00e806b3          	add	a3,a6,a4
    8000390c:	0055c703          	lbu	a4,5(a1)
    80003910:	00178793          	addi	a5,a5,1
    80003914:	02077713          	andi	a4,a4,32
    80003918:	fc071ae3          	bnez	a4,800038ec <uartstart+0x38>
    8000391c:	00813403          	ld	s0,8(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret

0000000080003928 <uartgetc>:
    80003928:	ff010113          	addi	sp,sp,-16
    8000392c:	00813423          	sd	s0,8(sp)
    80003930:	01010413          	addi	s0,sp,16
    80003934:	10000737          	lui	a4,0x10000
    80003938:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000393c:	0017f793          	andi	a5,a5,1
    80003940:	00078c63          	beqz	a5,80003958 <uartgetc+0x30>
    80003944:	00074503          	lbu	a0,0(a4)
    80003948:	0ff57513          	andi	a0,a0,255
    8000394c:	00813403          	ld	s0,8(sp)
    80003950:	01010113          	addi	sp,sp,16
    80003954:	00008067          	ret
    80003958:	fff00513          	li	a0,-1
    8000395c:	ff1ff06f          	j	8000394c <uartgetc+0x24>

0000000080003960 <uartintr>:
    80003960:	100007b7          	lui	a5,0x10000
    80003964:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003968:	0017f793          	andi	a5,a5,1
    8000396c:	0a078463          	beqz	a5,80003a14 <uartintr+0xb4>
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00913423          	sd	s1,8(sp)
    8000397c:	00113c23          	sd	ra,24(sp)
    80003980:	02010413          	addi	s0,sp,32
    80003984:	100004b7          	lui	s1,0x10000
    80003988:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000398c:	0ff57513          	andi	a0,a0,255
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	534080e7          	jalr	1332(ra) # 80002ec4 <consoleintr>
    80003998:	0054c783          	lbu	a5,5(s1)
    8000399c:	0017f793          	andi	a5,a5,1
    800039a0:	fe0794e3          	bnez	a5,80003988 <uartintr+0x28>
    800039a4:	00002617          	auipc	a2,0x2
    800039a8:	07c60613          	addi	a2,a2,124 # 80005a20 <uart_tx_r>
    800039ac:	00002517          	auipc	a0,0x2
    800039b0:	07c50513          	addi	a0,a0,124 # 80005a28 <uart_tx_w>
    800039b4:	00063783          	ld	a5,0(a2)
    800039b8:	00053703          	ld	a4,0(a0)
    800039bc:	04f70263          	beq	a4,a5,80003a00 <uartintr+0xa0>
    800039c0:	100005b7          	lui	a1,0x10000
    800039c4:	00003817          	auipc	a6,0x3
    800039c8:	2fc80813          	addi	a6,a6,764 # 80006cc0 <uart_tx_buf>
    800039cc:	01c0006f          	j	800039e8 <uartintr+0x88>
    800039d0:	0006c703          	lbu	a4,0(a3)
    800039d4:	00f63023          	sd	a5,0(a2)
    800039d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800039dc:	00063783          	ld	a5,0(a2)
    800039e0:	00053703          	ld	a4,0(a0)
    800039e4:	00f70e63          	beq	a4,a5,80003a00 <uartintr+0xa0>
    800039e8:	01f7f713          	andi	a4,a5,31
    800039ec:	00e806b3          	add	a3,a6,a4
    800039f0:	0055c703          	lbu	a4,5(a1)
    800039f4:	00178793          	addi	a5,a5,1
    800039f8:	02077713          	andi	a4,a4,32
    800039fc:	fc071ae3          	bnez	a4,800039d0 <uartintr+0x70>
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	01013403          	ld	s0,16(sp)
    80003a08:	00813483          	ld	s1,8(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret
    80003a14:	00002617          	auipc	a2,0x2
    80003a18:	00c60613          	addi	a2,a2,12 # 80005a20 <uart_tx_r>
    80003a1c:	00002517          	auipc	a0,0x2
    80003a20:	00c50513          	addi	a0,a0,12 # 80005a28 <uart_tx_w>
    80003a24:	00063783          	ld	a5,0(a2)
    80003a28:	00053703          	ld	a4,0(a0)
    80003a2c:	04f70263          	beq	a4,a5,80003a70 <uartintr+0x110>
    80003a30:	100005b7          	lui	a1,0x10000
    80003a34:	00003817          	auipc	a6,0x3
    80003a38:	28c80813          	addi	a6,a6,652 # 80006cc0 <uart_tx_buf>
    80003a3c:	01c0006f          	j	80003a58 <uartintr+0xf8>
    80003a40:	0006c703          	lbu	a4,0(a3)
    80003a44:	00f63023          	sd	a5,0(a2)
    80003a48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003a4c:	00063783          	ld	a5,0(a2)
    80003a50:	00053703          	ld	a4,0(a0)
    80003a54:	02f70063          	beq	a4,a5,80003a74 <uartintr+0x114>
    80003a58:	01f7f713          	andi	a4,a5,31
    80003a5c:	00e806b3          	add	a3,a6,a4
    80003a60:	0055c703          	lbu	a4,5(a1)
    80003a64:	00178793          	addi	a5,a5,1
    80003a68:	02077713          	andi	a4,a4,32
    80003a6c:	fc071ae3          	bnez	a4,80003a40 <uartintr+0xe0>
    80003a70:	00008067          	ret
    80003a74:	00008067          	ret

0000000080003a78 <kinit>:
    80003a78:	fc010113          	addi	sp,sp,-64
    80003a7c:	02913423          	sd	s1,40(sp)
    80003a80:	fffff7b7          	lui	a5,0xfffff
    80003a84:	00004497          	auipc	s1,0x4
    80003a88:	26b48493          	addi	s1,s1,619 # 80007cef <end+0xfff>
    80003a8c:	02813823          	sd	s0,48(sp)
    80003a90:	01313c23          	sd	s3,24(sp)
    80003a94:	00f4f4b3          	and	s1,s1,a5
    80003a98:	02113c23          	sd	ra,56(sp)
    80003a9c:	03213023          	sd	s2,32(sp)
    80003aa0:	01413823          	sd	s4,16(sp)
    80003aa4:	01513423          	sd	s5,8(sp)
    80003aa8:	04010413          	addi	s0,sp,64
    80003aac:	000017b7          	lui	a5,0x1
    80003ab0:	01100993          	li	s3,17
    80003ab4:	00f487b3          	add	a5,s1,a5
    80003ab8:	01b99993          	slli	s3,s3,0x1b
    80003abc:	06f9e063          	bltu	s3,a5,80003b1c <kinit+0xa4>
    80003ac0:	00003a97          	auipc	s5,0x3
    80003ac4:	230a8a93          	addi	s5,s5,560 # 80006cf0 <end>
    80003ac8:	0754ec63          	bltu	s1,s5,80003b40 <kinit+0xc8>
    80003acc:	0734fa63          	bgeu	s1,s3,80003b40 <kinit+0xc8>
    80003ad0:	00088a37          	lui	s4,0x88
    80003ad4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ad8:	00002917          	auipc	s2,0x2
    80003adc:	f5890913          	addi	s2,s2,-168 # 80005a30 <kmem>
    80003ae0:	00ca1a13          	slli	s4,s4,0xc
    80003ae4:	0140006f          	j	80003af8 <kinit+0x80>
    80003ae8:	000017b7          	lui	a5,0x1
    80003aec:	00f484b3          	add	s1,s1,a5
    80003af0:	0554e863          	bltu	s1,s5,80003b40 <kinit+0xc8>
    80003af4:	0534f663          	bgeu	s1,s3,80003b40 <kinit+0xc8>
    80003af8:	00001637          	lui	a2,0x1
    80003afc:	00100593          	li	a1,1
    80003b00:	00048513          	mv	a0,s1
    80003b04:	00000097          	auipc	ra,0x0
    80003b08:	5e4080e7          	jalr	1508(ra) # 800040e8 <__memset>
    80003b0c:	00093783          	ld	a5,0(s2)
    80003b10:	00f4b023          	sd	a5,0(s1)
    80003b14:	00993023          	sd	s1,0(s2)
    80003b18:	fd4498e3          	bne	s1,s4,80003ae8 <kinit+0x70>
    80003b1c:	03813083          	ld	ra,56(sp)
    80003b20:	03013403          	ld	s0,48(sp)
    80003b24:	02813483          	ld	s1,40(sp)
    80003b28:	02013903          	ld	s2,32(sp)
    80003b2c:	01813983          	ld	s3,24(sp)
    80003b30:	01013a03          	ld	s4,16(sp)
    80003b34:	00813a83          	ld	s5,8(sp)
    80003b38:	04010113          	addi	sp,sp,64
    80003b3c:	00008067          	ret
    80003b40:	00001517          	auipc	a0,0x1
    80003b44:	7e050513          	addi	a0,a0,2016 # 80005320 <digits+0x18>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	4b4080e7          	jalr	1204(ra) # 80002ffc <panic>

0000000080003b50 <freerange>:
    80003b50:	fc010113          	addi	sp,sp,-64
    80003b54:	000017b7          	lui	a5,0x1
    80003b58:	02913423          	sd	s1,40(sp)
    80003b5c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003b60:	009504b3          	add	s1,a0,s1
    80003b64:	fffff537          	lui	a0,0xfffff
    80003b68:	02813823          	sd	s0,48(sp)
    80003b6c:	02113c23          	sd	ra,56(sp)
    80003b70:	03213023          	sd	s2,32(sp)
    80003b74:	01313c23          	sd	s3,24(sp)
    80003b78:	01413823          	sd	s4,16(sp)
    80003b7c:	01513423          	sd	s5,8(sp)
    80003b80:	01613023          	sd	s6,0(sp)
    80003b84:	04010413          	addi	s0,sp,64
    80003b88:	00a4f4b3          	and	s1,s1,a0
    80003b8c:	00f487b3          	add	a5,s1,a5
    80003b90:	06f5e463          	bltu	a1,a5,80003bf8 <freerange+0xa8>
    80003b94:	00003a97          	auipc	s5,0x3
    80003b98:	15ca8a93          	addi	s5,s5,348 # 80006cf0 <end>
    80003b9c:	0954e263          	bltu	s1,s5,80003c20 <freerange+0xd0>
    80003ba0:	01100993          	li	s3,17
    80003ba4:	01b99993          	slli	s3,s3,0x1b
    80003ba8:	0734fc63          	bgeu	s1,s3,80003c20 <freerange+0xd0>
    80003bac:	00058a13          	mv	s4,a1
    80003bb0:	00002917          	auipc	s2,0x2
    80003bb4:	e8090913          	addi	s2,s2,-384 # 80005a30 <kmem>
    80003bb8:	00002b37          	lui	s6,0x2
    80003bbc:	0140006f          	j	80003bd0 <freerange+0x80>
    80003bc0:	000017b7          	lui	a5,0x1
    80003bc4:	00f484b3          	add	s1,s1,a5
    80003bc8:	0554ec63          	bltu	s1,s5,80003c20 <freerange+0xd0>
    80003bcc:	0534fa63          	bgeu	s1,s3,80003c20 <freerange+0xd0>
    80003bd0:	00001637          	lui	a2,0x1
    80003bd4:	00100593          	li	a1,1
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	00000097          	auipc	ra,0x0
    80003be0:	50c080e7          	jalr	1292(ra) # 800040e8 <__memset>
    80003be4:	00093703          	ld	a4,0(s2)
    80003be8:	016487b3          	add	a5,s1,s6
    80003bec:	00e4b023          	sd	a4,0(s1)
    80003bf0:	00993023          	sd	s1,0(s2)
    80003bf4:	fcfa76e3          	bgeu	s4,a5,80003bc0 <freerange+0x70>
    80003bf8:	03813083          	ld	ra,56(sp)
    80003bfc:	03013403          	ld	s0,48(sp)
    80003c00:	02813483          	ld	s1,40(sp)
    80003c04:	02013903          	ld	s2,32(sp)
    80003c08:	01813983          	ld	s3,24(sp)
    80003c0c:	01013a03          	ld	s4,16(sp)
    80003c10:	00813a83          	ld	s5,8(sp)
    80003c14:	00013b03          	ld	s6,0(sp)
    80003c18:	04010113          	addi	sp,sp,64
    80003c1c:	00008067          	ret
    80003c20:	00001517          	auipc	a0,0x1
    80003c24:	70050513          	addi	a0,a0,1792 # 80005320 <digits+0x18>
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	3d4080e7          	jalr	980(ra) # 80002ffc <panic>

0000000080003c30 <kfree>:
    80003c30:	fe010113          	addi	sp,sp,-32
    80003c34:	00813823          	sd	s0,16(sp)
    80003c38:	00113c23          	sd	ra,24(sp)
    80003c3c:	00913423          	sd	s1,8(sp)
    80003c40:	02010413          	addi	s0,sp,32
    80003c44:	03451793          	slli	a5,a0,0x34
    80003c48:	04079c63          	bnez	a5,80003ca0 <kfree+0x70>
    80003c4c:	00003797          	auipc	a5,0x3
    80003c50:	0a478793          	addi	a5,a5,164 # 80006cf0 <end>
    80003c54:	00050493          	mv	s1,a0
    80003c58:	04f56463          	bltu	a0,a5,80003ca0 <kfree+0x70>
    80003c5c:	01100793          	li	a5,17
    80003c60:	01b79793          	slli	a5,a5,0x1b
    80003c64:	02f57e63          	bgeu	a0,a5,80003ca0 <kfree+0x70>
    80003c68:	00001637          	lui	a2,0x1
    80003c6c:	00100593          	li	a1,1
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	478080e7          	jalr	1144(ra) # 800040e8 <__memset>
    80003c78:	00002797          	auipc	a5,0x2
    80003c7c:	db878793          	addi	a5,a5,-584 # 80005a30 <kmem>
    80003c80:	0007b703          	ld	a4,0(a5)
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00e4b023          	sd	a4,0(s1)
    80003c90:	0097b023          	sd	s1,0(a5)
    80003c94:	00813483          	ld	s1,8(sp)
    80003c98:	02010113          	addi	sp,sp,32
    80003c9c:	00008067          	ret
    80003ca0:	00001517          	auipc	a0,0x1
    80003ca4:	68050513          	addi	a0,a0,1664 # 80005320 <digits+0x18>
    80003ca8:	fffff097          	auipc	ra,0xfffff
    80003cac:	354080e7          	jalr	852(ra) # 80002ffc <panic>

0000000080003cb0 <kalloc>:
    80003cb0:	fe010113          	addi	sp,sp,-32
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	00113c23          	sd	ra,24(sp)
    80003cc0:	02010413          	addi	s0,sp,32
    80003cc4:	00002797          	auipc	a5,0x2
    80003cc8:	d6c78793          	addi	a5,a5,-660 # 80005a30 <kmem>
    80003ccc:	0007b483          	ld	s1,0(a5)
    80003cd0:	02048063          	beqz	s1,80003cf0 <kalloc+0x40>
    80003cd4:	0004b703          	ld	a4,0(s1)
    80003cd8:	00001637          	lui	a2,0x1
    80003cdc:	00500593          	li	a1,5
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00e7b023          	sd	a4,0(a5)
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	400080e7          	jalr	1024(ra) # 800040e8 <__memset>
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	00813483          	ld	s1,8(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <initlock>:
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00813423          	sd	s0,8(sp)
    80003d10:	01010413          	addi	s0,sp,16
    80003d14:	00813403          	ld	s0,8(sp)
    80003d18:	00b53423          	sd	a1,8(a0)
    80003d1c:	00052023          	sw	zero,0(a0)
    80003d20:	00053823          	sd	zero,16(a0)
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00008067          	ret

0000000080003d2c <acquire>:
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00813823          	sd	s0,16(sp)
    80003d34:	00913423          	sd	s1,8(sp)
    80003d38:	00113c23          	sd	ra,24(sp)
    80003d3c:	01213023          	sd	s2,0(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	00050493          	mv	s1,a0
    80003d48:	10002973          	csrr	s2,sstatus
    80003d4c:	100027f3          	csrr	a5,sstatus
    80003d50:	ffd7f793          	andi	a5,a5,-3
    80003d54:	10079073          	csrw	sstatus,a5
    80003d58:	fffff097          	auipc	ra,0xfffff
    80003d5c:	8e4080e7          	jalr	-1820(ra) # 8000263c <mycpu>
    80003d60:	07852783          	lw	a5,120(a0)
    80003d64:	06078e63          	beqz	a5,80003de0 <acquire+0xb4>
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	8d4080e7          	jalr	-1836(ra) # 8000263c <mycpu>
    80003d70:	07852783          	lw	a5,120(a0)
    80003d74:	0004a703          	lw	a4,0(s1)
    80003d78:	0017879b          	addiw	a5,a5,1
    80003d7c:	06f52c23          	sw	a5,120(a0)
    80003d80:	04071063          	bnez	a4,80003dc0 <acquire+0x94>
    80003d84:	00100713          	li	a4,1
    80003d88:	00070793          	mv	a5,a4
    80003d8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003d90:	0007879b          	sext.w	a5,a5
    80003d94:	fe079ae3          	bnez	a5,80003d88 <acquire+0x5c>
    80003d98:	0ff0000f          	fence
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	8a0080e7          	jalr	-1888(ra) # 8000263c <mycpu>
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00a4b823          	sd	a0,16(s1)
    80003db0:	00013903          	ld	s2,0(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret
    80003dc0:	0104b903          	ld	s2,16(s1)
    80003dc4:	fffff097          	auipc	ra,0xfffff
    80003dc8:	878080e7          	jalr	-1928(ra) # 8000263c <mycpu>
    80003dcc:	faa91ce3          	bne	s2,a0,80003d84 <acquire+0x58>
    80003dd0:	00001517          	auipc	a0,0x1
    80003dd4:	55850513          	addi	a0,a0,1368 # 80005328 <digits+0x20>
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	224080e7          	jalr	548(ra) # 80002ffc <panic>
    80003de0:	00195913          	srli	s2,s2,0x1
    80003de4:	fffff097          	auipc	ra,0xfffff
    80003de8:	858080e7          	jalr	-1960(ra) # 8000263c <mycpu>
    80003dec:	00197913          	andi	s2,s2,1
    80003df0:	07252e23          	sw	s2,124(a0)
    80003df4:	f75ff06f          	j	80003d68 <acquire+0x3c>

0000000080003df8 <release>:
    80003df8:	fe010113          	addi	sp,sp,-32
    80003dfc:	00813823          	sd	s0,16(sp)
    80003e00:	00113c23          	sd	ra,24(sp)
    80003e04:	00913423          	sd	s1,8(sp)
    80003e08:	01213023          	sd	s2,0(sp)
    80003e0c:	02010413          	addi	s0,sp,32
    80003e10:	00052783          	lw	a5,0(a0)
    80003e14:	00079a63          	bnez	a5,80003e28 <release+0x30>
    80003e18:	00001517          	auipc	a0,0x1
    80003e1c:	51850513          	addi	a0,a0,1304 # 80005330 <digits+0x28>
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	1dc080e7          	jalr	476(ra) # 80002ffc <panic>
    80003e28:	01053903          	ld	s2,16(a0)
    80003e2c:	00050493          	mv	s1,a0
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	80c080e7          	jalr	-2036(ra) # 8000263c <mycpu>
    80003e38:	fea910e3          	bne	s2,a0,80003e18 <release+0x20>
    80003e3c:	0004b823          	sd	zero,16(s1)
    80003e40:	0ff0000f          	fence
    80003e44:	0f50000f          	fence	iorw,ow
    80003e48:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	7f0080e7          	jalr	2032(ra) # 8000263c <mycpu>
    80003e54:	100027f3          	csrr	a5,sstatus
    80003e58:	0027f793          	andi	a5,a5,2
    80003e5c:	04079a63          	bnez	a5,80003eb0 <release+0xb8>
    80003e60:	07852783          	lw	a5,120(a0)
    80003e64:	02f05e63          	blez	a5,80003ea0 <release+0xa8>
    80003e68:	fff7871b          	addiw	a4,a5,-1
    80003e6c:	06e52c23          	sw	a4,120(a0)
    80003e70:	00071c63          	bnez	a4,80003e88 <release+0x90>
    80003e74:	07c52783          	lw	a5,124(a0)
    80003e78:	00078863          	beqz	a5,80003e88 <release+0x90>
    80003e7c:	100027f3          	csrr	a5,sstatus
    80003e80:	0027e793          	ori	a5,a5,2
    80003e84:	10079073          	csrw	sstatus,a5
    80003e88:	01813083          	ld	ra,24(sp)
    80003e8c:	01013403          	ld	s0,16(sp)
    80003e90:	00813483          	ld	s1,8(sp)
    80003e94:	00013903          	ld	s2,0(sp)
    80003e98:	02010113          	addi	sp,sp,32
    80003e9c:	00008067          	ret
    80003ea0:	00001517          	auipc	a0,0x1
    80003ea4:	4b050513          	addi	a0,a0,1200 # 80005350 <digits+0x48>
    80003ea8:	fffff097          	auipc	ra,0xfffff
    80003eac:	154080e7          	jalr	340(ra) # 80002ffc <panic>
    80003eb0:	00001517          	auipc	a0,0x1
    80003eb4:	48850513          	addi	a0,a0,1160 # 80005338 <digits+0x30>
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	144080e7          	jalr	324(ra) # 80002ffc <panic>

0000000080003ec0 <holding>:
    80003ec0:	00052783          	lw	a5,0(a0)
    80003ec4:	00079663          	bnez	a5,80003ed0 <holding+0x10>
    80003ec8:	00000513          	li	a0,0
    80003ecc:	00008067          	ret
    80003ed0:	fe010113          	addi	sp,sp,-32
    80003ed4:	00813823          	sd	s0,16(sp)
    80003ed8:	00913423          	sd	s1,8(sp)
    80003edc:	00113c23          	sd	ra,24(sp)
    80003ee0:	02010413          	addi	s0,sp,32
    80003ee4:	01053483          	ld	s1,16(a0)
    80003ee8:	ffffe097          	auipc	ra,0xffffe
    80003eec:	754080e7          	jalr	1876(ra) # 8000263c <mycpu>
    80003ef0:	01813083          	ld	ra,24(sp)
    80003ef4:	01013403          	ld	s0,16(sp)
    80003ef8:	40a48533          	sub	a0,s1,a0
    80003efc:	00153513          	seqz	a0,a0
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	02010113          	addi	sp,sp,32
    80003f08:	00008067          	ret

0000000080003f0c <push_off>:
    80003f0c:	fe010113          	addi	sp,sp,-32
    80003f10:	00813823          	sd	s0,16(sp)
    80003f14:	00113c23          	sd	ra,24(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	02010413          	addi	s0,sp,32
    80003f20:	100024f3          	csrr	s1,sstatus
    80003f24:	100027f3          	csrr	a5,sstatus
    80003f28:	ffd7f793          	andi	a5,a5,-3
    80003f2c:	10079073          	csrw	sstatus,a5
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	70c080e7          	jalr	1804(ra) # 8000263c <mycpu>
    80003f38:	07852783          	lw	a5,120(a0)
    80003f3c:	02078663          	beqz	a5,80003f68 <push_off+0x5c>
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	6fc080e7          	jalr	1788(ra) # 8000263c <mycpu>
    80003f48:	07852783          	lw	a5,120(a0)
    80003f4c:	01813083          	ld	ra,24(sp)
    80003f50:	01013403          	ld	s0,16(sp)
    80003f54:	0017879b          	addiw	a5,a5,1
    80003f58:	06f52c23          	sw	a5,120(a0)
    80003f5c:	00813483          	ld	s1,8(sp)
    80003f60:	02010113          	addi	sp,sp,32
    80003f64:	00008067          	ret
    80003f68:	0014d493          	srli	s1,s1,0x1
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	6d0080e7          	jalr	1744(ra) # 8000263c <mycpu>
    80003f74:	0014f493          	andi	s1,s1,1
    80003f78:	06952e23          	sw	s1,124(a0)
    80003f7c:	fc5ff06f          	j	80003f40 <push_off+0x34>

0000000080003f80 <pop_off>:
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00813023          	sd	s0,0(sp)
    80003f88:	00113423          	sd	ra,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	ffffe097          	auipc	ra,0xffffe
    80003f94:	6ac080e7          	jalr	1708(ra) # 8000263c <mycpu>
    80003f98:	100027f3          	csrr	a5,sstatus
    80003f9c:	0027f793          	andi	a5,a5,2
    80003fa0:	04079663          	bnez	a5,80003fec <pop_off+0x6c>
    80003fa4:	07852783          	lw	a5,120(a0)
    80003fa8:	02f05a63          	blez	a5,80003fdc <pop_off+0x5c>
    80003fac:	fff7871b          	addiw	a4,a5,-1
    80003fb0:	06e52c23          	sw	a4,120(a0)
    80003fb4:	00071c63          	bnez	a4,80003fcc <pop_off+0x4c>
    80003fb8:	07c52783          	lw	a5,124(a0)
    80003fbc:	00078863          	beqz	a5,80003fcc <pop_off+0x4c>
    80003fc0:	100027f3          	csrr	a5,sstatus
    80003fc4:	0027e793          	ori	a5,a5,2
    80003fc8:	10079073          	csrw	sstatus,a5
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	01010113          	addi	sp,sp,16
    80003fd8:	00008067          	ret
    80003fdc:	00001517          	auipc	a0,0x1
    80003fe0:	37450513          	addi	a0,a0,884 # 80005350 <digits+0x48>
    80003fe4:	fffff097          	auipc	ra,0xfffff
    80003fe8:	018080e7          	jalr	24(ra) # 80002ffc <panic>
    80003fec:	00001517          	auipc	a0,0x1
    80003ff0:	34c50513          	addi	a0,a0,844 # 80005338 <digits+0x30>
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	008080e7          	jalr	8(ra) # 80002ffc <panic>

0000000080003ffc <push_on>:
    80003ffc:	fe010113          	addi	sp,sp,-32
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00113c23          	sd	ra,24(sp)
    80004008:	00913423          	sd	s1,8(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	100024f3          	csrr	s1,sstatus
    80004014:	100027f3          	csrr	a5,sstatus
    80004018:	0027e793          	ori	a5,a5,2
    8000401c:	10079073          	csrw	sstatus,a5
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	61c080e7          	jalr	1564(ra) # 8000263c <mycpu>
    80004028:	07852783          	lw	a5,120(a0)
    8000402c:	02078663          	beqz	a5,80004058 <push_on+0x5c>
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	60c080e7          	jalr	1548(ra) # 8000263c <mycpu>
    80004038:	07852783          	lw	a5,120(a0)
    8000403c:	01813083          	ld	ra,24(sp)
    80004040:	01013403          	ld	s0,16(sp)
    80004044:	0017879b          	addiw	a5,a5,1
    80004048:	06f52c23          	sw	a5,120(a0)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret
    80004058:	0014d493          	srli	s1,s1,0x1
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	5e0080e7          	jalr	1504(ra) # 8000263c <mycpu>
    80004064:	0014f493          	andi	s1,s1,1
    80004068:	06952e23          	sw	s1,124(a0)
    8000406c:	fc5ff06f          	j	80004030 <push_on+0x34>

0000000080004070 <pop_on>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813023          	sd	s0,0(sp)
    80004078:	00113423          	sd	ra,8(sp)
    8000407c:	01010413          	addi	s0,sp,16
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	5bc080e7          	jalr	1468(ra) # 8000263c <mycpu>
    80004088:	100027f3          	csrr	a5,sstatus
    8000408c:	0027f793          	andi	a5,a5,2
    80004090:	04078463          	beqz	a5,800040d8 <pop_on+0x68>
    80004094:	07852783          	lw	a5,120(a0)
    80004098:	02f05863          	blez	a5,800040c8 <pop_on+0x58>
    8000409c:	fff7879b          	addiw	a5,a5,-1
    800040a0:	06f52c23          	sw	a5,120(a0)
    800040a4:	07853783          	ld	a5,120(a0)
    800040a8:	00079863          	bnez	a5,800040b8 <pop_on+0x48>
    800040ac:	100027f3          	csrr	a5,sstatus
    800040b0:	ffd7f793          	andi	a5,a5,-3
    800040b4:	10079073          	csrw	sstatus,a5
    800040b8:	00813083          	ld	ra,8(sp)
    800040bc:	00013403          	ld	s0,0(sp)
    800040c0:	01010113          	addi	sp,sp,16
    800040c4:	00008067          	ret
    800040c8:	00001517          	auipc	a0,0x1
    800040cc:	2b050513          	addi	a0,a0,688 # 80005378 <digits+0x70>
    800040d0:	fffff097          	auipc	ra,0xfffff
    800040d4:	f2c080e7          	jalr	-212(ra) # 80002ffc <panic>
    800040d8:	00001517          	auipc	a0,0x1
    800040dc:	28050513          	addi	a0,a0,640 # 80005358 <digits+0x50>
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	f1c080e7          	jalr	-228(ra) # 80002ffc <panic>

00000000800040e8 <__memset>:
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00813423          	sd	s0,8(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	1a060e63          	beqz	a2,800042b0 <__memset+0x1c8>
    800040f8:	40a007b3          	neg	a5,a0
    800040fc:	0077f793          	andi	a5,a5,7
    80004100:	00778693          	addi	a3,a5,7
    80004104:	00b00813          	li	a6,11
    80004108:	0ff5f593          	andi	a1,a1,255
    8000410c:	fff6071b          	addiw	a4,a2,-1
    80004110:	1b06e663          	bltu	a3,a6,800042bc <__memset+0x1d4>
    80004114:	1cd76463          	bltu	a4,a3,800042dc <__memset+0x1f4>
    80004118:	1a078e63          	beqz	a5,800042d4 <__memset+0x1ec>
    8000411c:	00b50023          	sb	a1,0(a0)
    80004120:	00100713          	li	a4,1
    80004124:	1ae78463          	beq	a5,a4,800042cc <__memset+0x1e4>
    80004128:	00b500a3          	sb	a1,1(a0)
    8000412c:	00200713          	li	a4,2
    80004130:	1ae78a63          	beq	a5,a4,800042e4 <__memset+0x1fc>
    80004134:	00b50123          	sb	a1,2(a0)
    80004138:	00300713          	li	a4,3
    8000413c:	18e78463          	beq	a5,a4,800042c4 <__memset+0x1dc>
    80004140:	00b501a3          	sb	a1,3(a0)
    80004144:	00400713          	li	a4,4
    80004148:	1ae78263          	beq	a5,a4,800042ec <__memset+0x204>
    8000414c:	00b50223          	sb	a1,4(a0)
    80004150:	00500713          	li	a4,5
    80004154:	1ae78063          	beq	a5,a4,800042f4 <__memset+0x20c>
    80004158:	00b502a3          	sb	a1,5(a0)
    8000415c:	00700713          	li	a4,7
    80004160:	18e79e63          	bne	a5,a4,800042fc <__memset+0x214>
    80004164:	00b50323          	sb	a1,6(a0)
    80004168:	00700e93          	li	t4,7
    8000416c:	00859713          	slli	a4,a1,0x8
    80004170:	00e5e733          	or	a4,a1,a4
    80004174:	01059e13          	slli	t3,a1,0x10
    80004178:	01c76e33          	or	t3,a4,t3
    8000417c:	01859313          	slli	t1,a1,0x18
    80004180:	006e6333          	or	t1,t3,t1
    80004184:	02059893          	slli	a7,a1,0x20
    80004188:	40f60e3b          	subw	t3,a2,a5
    8000418c:	011368b3          	or	a7,t1,a7
    80004190:	02859813          	slli	a6,a1,0x28
    80004194:	0108e833          	or	a6,a7,a6
    80004198:	03059693          	slli	a3,a1,0x30
    8000419c:	003e589b          	srliw	a7,t3,0x3
    800041a0:	00d866b3          	or	a3,a6,a3
    800041a4:	03859713          	slli	a4,a1,0x38
    800041a8:	00389813          	slli	a6,a7,0x3
    800041ac:	00f507b3          	add	a5,a0,a5
    800041b0:	00e6e733          	or	a4,a3,a4
    800041b4:	000e089b          	sext.w	a7,t3
    800041b8:	00f806b3          	add	a3,a6,a5
    800041bc:	00e7b023          	sd	a4,0(a5)
    800041c0:	00878793          	addi	a5,a5,8
    800041c4:	fed79ce3          	bne	a5,a3,800041bc <__memset+0xd4>
    800041c8:	ff8e7793          	andi	a5,t3,-8
    800041cc:	0007871b          	sext.w	a4,a5
    800041d0:	01d787bb          	addw	a5,a5,t4
    800041d4:	0ce88e63          	beq	a7,a4,800042b0 <__memset+0x1c8>
    800041d8:	00f50733          	add	a4,a0,a5
    800041dc:	00b70023          	sb	a1,0(a4)
    800041e0:	0017871b          	addiw	a4,a5,1
    800041e4:	0cc77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    800041e8:	00e50733          	add	a4,a0,a4
    800041ec:	00b70023          	sb	a1,0(a4)
    800041f0:	0027871b          	addiw	a4,a5,2
    800041f4:	0ac77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    800041f8:	00e50733          	add	a4,a0,a4
    800041fc:	00b70023          	sb	a1,0(a4)
    80004200:	0037871b          	addiw	a4,a5,3
    80004204:	0ac77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004208:	00e50733          	add	a4,a0,a4
    8000420c:	00b70023          	sb	a1,0(a4)
    80004210:	0047871b          	addiw	a4,a5,4
    80004214:	08c77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004218:	00e50733          	add	a4,a0,a4
    8000421c:	00b70023          	sb	a1,0(a4)
    80004220:	0057871b          	addiw	a4,a5,5
    80004224:	08c77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004228:	00e50733          	add	a4,a0,a4
    8000422c:	00b70023          	sb	a1,0(a4)
    80004230:	0067871b          	addiw	a4,a5,6
    80004234:	06c77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004238:	00e50733          	add	a4,a0,a4
    8000423c:	00b70023          	sb	a1,0(a4)
    80004240:	0077871b          	addiw	a4,a5,7
    80004244:	06c77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004248:	00e50733          	add	a4,a0,a4
    8000424c:	00b70023          	sb	a1,0(a4)
    80004250:	0087871b          	addiw	a4,a5,8
    80004254:	04c77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00b70023          	sb	a1,0(a4)
    80004260:	0097871b          	addiw	a4,a5,9
    80004264:	04c77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004268:	00e50733          	add	a4,a0,a4
    8000426c:	00b70023          	sb	a1,0(a4)
    80004270:	00a7871b          	addiw	a4,a5,10
    80004274:	02c77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004278:	00e50733          	add	a4,a0,a4
    8000427c:	00b70023          	sb	a1,0(a4)
    80004280:	00b7871b          	addiw	a4,a5,11
    80004284:	02c77663          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00b70023          	sb	a1,0(a4)
    80004290:	00c7871b          	addiw	a4,a5,12
    80004294:	00c77e63          	bgeu	a4,a2,800042b0 <__memset+0x1c8>
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00b70023          	sb	a1,0(a4)
    800042a0:	00d7879b          	addiw	a5,a5,13
    800042a4:	00c7f663          	bgeu	a5,a2,800042b0 <__memset+0x1c8>
    800042a8:	00f507b3          	add	a5,a0,a5
    800042ac:	00b78023          	sb	a1,0(a5)
    800042b0:	00813403          	ld	s0,8(sp)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret
    800042bc:	00b00693          	li	a3,11
    800042c0:	e55ff06f          	j	80004114 <__memset+0x2c>
    800042c4:	00300e93          	li	t4,3
    800042c8:	ea5ff06f          	j	8000416c <__memset+0x84>
    800042cc:	00100e93          	li	t4,1
    800042d0:	e9dff06f          	j	8000416c <__memset+0x84>
    800042d4:	00000e93          	li	t4,0
    800042d8:	e95ff06f          	j	8000416c <__memset+0x84>
    800042dc:	00000793          	li	a5,0
    800042e0:	ef9ff06f          	j	800041d8 <__memset+0xf0>
    800042e4:	00200e93          	li	t4,2
    800042e8:	e85ff06f          	j	8000416c <__memset+0x84>
    800042ec:	00400e93          	li	t4,4
    800042f0:	e7dff06f          	j	8000416c <__memset+0x84>
    800042f4:	00500e93          	li	t4,5
    800042f8:	e75ff06f          	j	8000416c <__memset+0x84>
    800042fc:	00600e93          	li	t4,6
    80004300:	e6dff06f          	j	8000416c <__memset+0x84>

0000000080004304 <__memmove>:
    80004304:	ff010113          	addi	sp,sp,-16
    80004308:	00813423          	sd	s0,8(sp)
    8000430c:	01010413          	addi	s0,sp,16
    80004310:	0e060863          	beqz	a2,80004400 <__memmove+0xfc>
    80004314:	fff6069b          	addiw	a3,a2,-1
    80004318:	0006881b          	sext.w	a6,a3
    8000431c:	0ea5e863          	bltu	a1,a0,8000440c <__memmove+0x108>
    80004320:	00758713          	addi	a4,a1,7
    80004324:	00a5e7b3          	or	a5,a1,a0
    80004328:	40a70733          	sub	a4,a4,a0
    8000432c:	0077f793          	andi	a5,a5,7
    80004330:	00f73713          	sltiu	a4,a4,15
    80004334:	00174713          	xori	a4,a4,1
    80004338:	0017b793          	seqz	a5,a5
    8000433c:	00e7f7b3          	and	a5,a5,a4
    80004340:	10078863          	beqz	a5,80004450 <__memmove+0x14c>
    80004344:	00900793          	li	a5,9
    80004348:	1107f463          	bgeu	a5,a6,80004450 <__memmove+0x14c>
    8000434c:	0036581b          	srliw	a6,a2,0x3
    80004350:	fff8081b          	addiw	a6,a6,-1
    80004354:	02081813          	slli	a6,a6,0x20
    80004358:	01d85893          	srli	a7,a6,0x1d
    8000435c:	00858813          	addi	a6,a1,8
    80004360:	00058793          	mv	a5,a1
    80004364:	00050713          	mv	a4,a0
    80004368:	01088833          	add	a6,a7,a6
    8000436c:	0007b883          	ld	a7,0(a5)
    80004370:	00878793          	addi	a5,a5,8
    80004374:	00870713          	addi	a4,a4,8
    80004378:	ff173c23          	sd	a7,-8(a4)
    8000437c:	ff0798e3          	bne	a5,a6,8000436c <__memmove+0x68>
    80004380:	ff867713          	andi	a4,a2,-8
    80004384:	02071793          	slli	a5,a4,0x20
    80004388:	0207d793          	srli	a5,a5,0x20
    8000438c:	00f585b3          	add	a1,a1,a5
    80004390:	40e686bb          	subw	a3,a3,a4
    80004394:	00f507b3          	add	a5,a0,a5
    80004398:	06e60463          	beq	a2,a4,80004400 <__memmove+0xfc>
    8000439c:	0005c703          	lbu	a4,0(a1)
    800043a0:	00e78023          	sb	a4,0(a5)
    800043a4:	04068e63          	beqz	a3,80004400 <__memmove+0xfc>
    800043a8:	0015c603          	lbu	a2,1(a1)
    800043ac:	00100713          	li	a4,1
    800043b0:	00c780a3          	sb	a2,1(a5)
    800043b4:	04e68663          	beq	a3,a4,80004400 <__memmove+0xfc>
    800043b8:	0025c603          	lbu	a2,2(a1)
    800043bc:	00200713          	li	a4,2
    800043c0:	00c78123          	sb	a2,2(a5)
    800043c4:	02e68e63          	beq	a3,a4,80004400 <__memmove+0xfc>
    800043c8:	0035c603          	lbu	a2,3(a1)
    800043cc:	00300713          	li	a4,3
    800043d0:	00c781a3          	sb	a2,3(a5)
    800043d4:	02e68663          	beq	a3,a4,80004400 <__memmove+0xfc>
    800043d8:	0045c603          	lbu	a2,4(a1)
    800043dc:	00400713          	li	a4,4
    800043e0:	00c78223          	sb	a2,4(a5)
    800043e4:	00e68e63          	beq	a3,a4,80004400 <__memmove+0xfc>
    800043e8:	0055c603          	lbu	a2,5(a1)
    800043ec:	00500713          	li	a4,5
    800043f0:	00c782a3          	sb	a2,5(a5)
    800043f4:	00e68663          	beq	a3,a4,80004400 <__memmove+0xfc>
    800043f8:	0065c703          	lbu	a4,6(a1)
    800043fc:	00e78323          	sb	a4,6(a5)
    80004400:	00813403          	ld	s0,8(sp)
    80004404:	01010113          	addi	sp,sp,16
    80004408:	00008067          	ret
    8000440c:	02061713          	slli	a4,a2,0x20
    80004410:	02075713          	srli	a4,a4,0x20
    80004414:	00e587b3          	add	a5,a1,a4
    80004418:	f0f574e3          	bgeu	a0,a5,80004320 <__memmove+0x1c>
    8000441c:	02069613          	slli	a2,a3,0x20
    80004420:	02065613          	srli	a2,a2,0x20
    80004424:	fff64613          	not	a2,a2
    80004428:	00e50733          	add	a4,a0,a4
    8000442c:	00c78633          	add	a2,a5,a2
    80004430:	fff7c683          	lbu	a3,-1(a5)
    80004434:	fff78793          	addi	a5,a5,-1
    80004438:	fff70713          	addi	a4,a4,-1
    8000443c:	00d70023          	sb	a3,0(a4)
    80004440:	fec798e3          	bne	a5,a2,80004430 <__memmove+0x12c>
    80004444:	00813403          	ld	s0,8(sp)
    80004448:	01010113          	addi	sp,sp,16
    8000444c:	00008067          	ret
    80004450:	02069713          	slli	a4,a3,0x20
    80004454:	02075713          	srli	a4,a4,0x20
    80004458:	00170713          	addi	a4,a4,1
    8000445c:	00e50733          	add	a4,a0,a4
    80004460:	00050793          	mv	a5,a0
    80004464:	0005c683          	lbu	a3,0(a1)
    80004468:	00178793          	addi	a5,a5,1
    8000446c:	00158593          	addi	a1,a1,1
    80004470:	fed78fa3          	sb	a3,-1(a5)
    80004474:	fee798e3          	bne	a5,a4,80004464 <__memmove+0x160>
    80004478:	f89ff06f          	j	80004400 <__memmove+0xfc>

000000008000447c <__mem_free>:
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00813423          	sd	s0,8(sp)
    80004484:	01010413          	addi	s0,sp,16
    80004488:	00001597          	auipc	a1,0x1
    8000448c:	5b058593          	addi	a1,a1,1456 # 80005a38 <freep>
    80004490:	0005b783          	ld	a5,0(a1)
    80004494:	ff050693          	addi	a3,a0,-16
    80004498:	0007b703          	ld	a4,0(a5)
    8000449c:	00d7fc63          	bgeu	a5,a3,800044b4 <__mem_free+0x38>
    800044a0:	00e6ee63          	bltu	a3,a4,800044bc <__mem_free+0x40>
    800044a4:	00e7fc63          	bgeu	a5,a4,800044bc <__mem_free+0x40>
    800044a8:	00070793          	mv	a5,a4
    800044ac:	0007b703          	ld	a4,0(a5)
    800044b0:	fed7e8e3          	bltu	a5,a3,800044a0 <__mem_free+0x24>
    800044b4:	fee7eae3          	bltu	a5,a4,800044a8 <__mem_free+0x2c>
    800044b8:	fee6f8e3          	bgeu	a3,a4,800044a8 <__mem_free+0x2c>
    800044bc:	ff852803          	lw	a6,-8(a0)
    800044c0:	02081613          	slli	a2,a6,0x20
    800044c4:	01c65613          	srli	a2,a2,0x1c
    800044c8:	00c68633          	add	a2,a3,a2
    800044cc:	02c70a63          	beq	a4,a2,80004500 <__mem_free+0x84>
    800044d0:	fee53823          	sd	a4,-16(a0)
    800044d4:	0087a503          	lw	a0,8(a5)
    800044d8:	02051613          	slli	a2,a0,0x20
    800044dc:	01c65613          	srli	a2,a2,0x1c
    800044e0:	00c78633          	add	a2,a5,a2
    800044e4:	04c68263          	beq	a3,a2,80004528 <__mem_free+0xac>
    800044e8:	00813403          	ld	s0,8(sp)
    800044ec:	00d7b023          	sd	a3,0(a5)
    800044f0:	00f5b023          	sd	a5,0(a1)
    800044f4:	00000513          	li	a0,0
    800044f8:	01010113          	addi	sp,sp,16
    800044fc:	00008067          	ret
    80004500:	00872603          	lw	a2,8(a4)
    80004504:	00073703          	ld	a4,0(a4)
    80004508:	0106083b          	addw	a6,a2,a6
    8000450c:	ff052c23          	sw	a6,-8(a0)
    80004510:	fee53823          	sd	a4,-16(a0)
    80004514:	0087a503          	lw	a0,8(a5)
    80004518:	02051613          	slli	a2,a0,0x20
    8000451c:	01c65613          	srli	a2,a2,0x1c
    80004520:	00c78633          	add	a2,a5,a2
    80004524:	fcc692e3          	bne	a3,a2,800044e8 <__mem_free+0x6c>
    80004528:	00813403          	ld	s0,8(sp)
    8000452c:	0105053b          	addw	a0,a0,a6
    80004530:	00a7a423          	sw	a0,8(a5)
    80004534:	00e7b023          	sd	a4,0(a5)
    80004538:	00f5b023          	sd	a5,0(a1)
    8000453c:	00000513          	li	a0,0
    80004540:	01010113          	addi	sp,sp,16
    80004544:	00008067          	ret

0000000080004548 <__mem_alloc>:
    80004548:	fc010113          	addi	sp,sp,-64
    8000454c:	02813823          	sd	s0,48(sp)
    80004550:	02913423          	sd	s1,40(sp)
    80004554:	03213023          	sd	s2,32(sp)
    80004558:	01513423          	sd	s5,8(sp)
    8000455c:	02113c23          	sd	ra,56(sp)
    80004560:	01313c23          	sd	s3,24(sp)
    80004564:	01413823          	sd	s4,16(sp)
    80004568:	01613023          	sd	s6,0(sp)
    8000456c:	04010413          	addi	s0,sp,64
    80004570:	00001a97          	auipc	s5,0x1
    80004574:	4c8a8a93          	addi	s5,s5,1224 # 80005a38 <freep>
    80004578:	00f50913          	addi	s2,a0,15
    8000457c:	000ab683          	ld	a3,0(s5)
    80004580:	00495913          	srli	s2,s2,0x4
    80004584:	0019049b          	addiw	s1,s2,1
    80004588:	00048913          	mv	s2,s1
    8000458c:	0c068c63          	beqz	a3,80004664 <__mem_alloc+0x11c>
    80004590:	0006b503          	ld	a0,0(a3)
    80004594:	00852703          	lw	a4,8(a0)
    80004598:	10977063          	bgeu	a4,s1,80004698 <__mem_alloc+0x150>
    8000459c:	000017b7          	lui	a5,0x1
    800045a0:	0009099b          	sext.w	s3,s2
    800045a4:	0af4e863          	bltu	s1,a5,80004654 <__mem_alloc+0x10c>
    800045a8:	02099a13          	slli	s4,s3,0x20
    800045ac:	01ca5a13          	srli	s4,s4,0x1c
    800045b0:	fff00b13          	li	s6,-1
    800045b4:	0100006f          	j	800045c4 <__mem_alloc+0x7c>
    800045b8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800045bc:	00852703          	lw	a4,8(a0)
    800045c0:	04977463          	bgeu	a4,s1,80004608 <__mem_alloc+0xc0>
    800045c4:	00050793          	mv	a5,a0
    800045c8:	fea698e3          	bne	a3,a0,800045b8 <__mem_alloc+0x70>
    800045cc:	000a0513          	mv	a0,s4
    800045d0:	00000097          	auipc	ra,0x0
    800045d4:	1f0080e7          	jalr	496(ra) # 800047c0 <kvmincrease>
    800045d8:	00050793          	mv	a5,a0
    800045dc:	01050513          	addi	a0,a0,16
    800045e0:	07678e63          	beq	a5,s6,8000465c <__mem_alloc+0x114>
    800045e4:	0137a423          	sw	s3,8(a5)
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	e94080e7          	jalr	-364(ra) # 8000447c <__mem_free>
    800045f0:	000ab783          	ld	a5,0(s5)
    800045f4:	06078463          	beqz	a5,8000465c <__mem_alloc+0x114>
    800045f8:	0007b503          	ld	a0,0(a5)
    800045fc:	00078693          	mv	a3,a5
    80004600:	00852703          	lw	a4,8(a0)
    80004604:	fc9760e3          	bltu	a4,s1,800045c4 <__mem_alloc+0x7c>
    80004608:	08e48263          	beq	s1,a4,8000468c <__mem_alloc+0x144>
    8000460c:	4127073b          	subw	a4,a4,s2
    80004610:	02071693          	slli	a3,a4,0x20
    80004614:	01c6d693          	srli	a3,a3,0x1c
    80004618:	00e52423          	sw	a4,8(a0)
    8000461c:	00d50533          	add	a0,a0,a3
    80004620:	01252423          	sw	s2,8(a0)
    80004624:	00fab023          	sd	a5,0(s5)
    80004628:	01050513          	addi	a0,a0,16
    8000462c:	03813083          	ld	ra,56(sp)
    80004630:	03013403          	ld	s0,48(sp)
    80004634:	02813483          	ld	s1,40(sp)
    80004638:	02013903          	ld	s2,32(sp)
    8000463c:	01813983          	ld	s3,24(sp)
    80004640:	01013a03          	ld	s4,16(sp)
    80004644:	00813a83          	ld	s5,8(sp)
    80004648:	00013b03          	ld	s6,0(sp)
    8000464c:	04010113          	addi	sp,sp,64
    80004650:	00008067          	ret
    80004654:	000019b7          	lui	s3,0x1
    80004658:	f51ff06f          	j	800045a8 <__mem_alloc+0x60>
    8000465c:	00000513          	li	a0,0
    80004660:	fcdff06f          	j	8000462c <__mem_alloc+0xe4>
    80004664:	00002797          	auipc	a5,0x2
    80004668:	67c78793          	addi	a5,a5,1660 # 80006ce0 <base>
    8000466c:	00078513          	mv	a0,a5
    80004670:	00fab023          	sd	a5,0(s5)
    80004674:	00f7b023          	sd	a5,0(a5)
    80004678:	00000713          	li	a4,0
    8000467c:	00002797          	auipc	a5,0x2
    80004680:	6607a623          	sw	zero,1644(a5) # 80006ce8 <base+0x8>
    80004684:	00050693          	mv	a3,a0
    80004688:	f11ff06f          	j	80004598 <__mem_alloc+0x50>
    8000468c:	00053703          	ld	a4,0(a0)
    80004690:	00e7b023          	sd	a4,0(a5)
    80004694:	f91ff06f          	j	80004624 <__mem_alloc+0xdc>
    80004698:	00068793          	mv	a5,a3
    8000469c:	f6dff06f          	j	80004608 <__mem_alloc+0xc0>

00000000800046a0 <__putc>:
    800046a0:	fe010113          	addi	sp,sp,-32
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	02010413          	addi	s0,sp,32
    800046b0:	00050793          	mv	a5,a0
    800046b4:	fef40593          	addi	a1,s0,-17
    800046b8:	00100613          	li	a2,1
    800046bc:	00000513          	li	a0,0
    800046c0:	fef407a3          	sb	a5,-17(s0)
    800046c4:	fffff097          	auipc	ra,0xfffff
    800046c8:	918080e7          	jalr	-1768(ra) # 80002fdc <console_write>
    800046cc:	01813083          	ld	ra,24(sp)
    800046d0:	01013403          	ld	s0,16(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret

00000000800046dc <__getc>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00813823          	sd	s0,16(sp)
    800046e4:	00113c23          	sd	ra,24(sp)
    800046e8:	02010413          	addi	s0,sp,32
    800046ec:	fe840593          	addi	a1,s0,-24
    800046f0:	00100613          	li	a2,1
    800046f4:	00000513          	li	a0,0
    800046f8:	fffff097          	auipc	ra,0xfffff
    800046fc:	8c4080e7          	jalr	-1852(ra) # 80002fbc <console_read>
    80004700:	fe844503          	lbu	a0,-24(s0)
    80004704:	01813083          	ld	ra,24(sp)
    80004708:	01013403          	ld	s0,16(sp)
    8000470c:	02010113          	addi	sp,sp,32
    80004710:	00008067          	ret

0000000080004714 <console_handler>:
    80004714:	fe010113          	addi	sp,sp,-32
    80004718:	00813823          	sd	s0,16(sp)
    8000471c:	00113c23          	sd	ra,24(sp)
    80004720:	00913423          	sd	s1,8(sp)
    80004724:	02010413          	addi	s0,sp,32
    80004728:	14202773          	csrr	a4,scause
    8000472c:	100027f3          	csrr	a5,sstatus
    80004730:	0027f793          	andi	a5,a5,2
    80004734:	06079e63          	bnez	a5,800047b0 <console_handler+0x9c>
    80004738:	00074c63          	bltz	a4,80004750 <console_handler+0x3c>
    8000473c:	01813083          	ld	ra,24(sp)
    80004740:	01013403          	ld	s0,16(sp)
    80004744:	00813483          	ld	s1,8(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret
    80004750:	0ff77713          	andi	a4,a4,255
    80004754:	00900793          	li	a5,9
    80004758:	fef712e3          	bne	a4,a5,8000473c <console_handler+0x28>
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	4b8080e7          	jalr	1208(ra) # 80002c14 <plic_claim>
    80004764:	00a00793          	li	a5,10
    80004768:	00050493          	mv	s1,a0
    8000476c:	02f50c63          	beq	a0,a5,800047a4 <console_handler+0x90>
    80004770:	fc0506e3          	beqz	a0,8000473c <console_handler+0x28>
    80004774:	00050593          	mv	a1,a0
    80004778:	00001517          	auipc	a0,0x1
    8000477c:	b0850513          	addi	a0,a0,-1272 # 80005280 <_ZZ12printIntegermE6digits+0xe0>
    80004780:	fffff097          	auipc	ra,0xfffff
    80004784:	8d8080e7          	jalr	-1832(ra) # 80003058 <__printf>
    80004788:	01013403          	ld	s0,16(sp)
    8000478c:	01813083          	ld	ra,24(sp)
    80004790:	00048513          	mv	a0,s1
    80004794:	00813483          	ld	s1,8(sp)
    80004798:	02010113          	addi	sp,sp,32
    8000479c:	ffffe317          	auipc	t1,0xffffe
    800047a0:	4b030067          	jr	1200(t1) # 80002c4c <plic_complete>
    800047a4:	fffff097          	auipc	ra,0xfffff
    800047a8:	1bc080e7          	jalr	444(ra) # 80003960 <uartintr>
    800047ac:	fddff06f          	j	80004788 <console_handler+0x74>
    800047b0:	00001517          	auipc	a0,0x1
    800047b4:	bd050513          	addi	a0,a0,-1072 # 80005380 <digits+0x78>
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	844080e7          	jalr	-1980(ra) # 80002ffc <panic>

00000000800047c0 <kvmincrease>:
    800047c0:	fe010113          	addi	sp,sp,-32
    800047c4:	01213023          	sd	s2,0(sp)
    800047c8:	00001937          	lui	s2,0x1
    800047cc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00913423          	sd	s1,8(sp)
    800047dc:	02010413          	addi	s0,sp,32
    800047e0:	01250933          	add	s2,a0,s2
    800047e4:	00c95913          	srli	s2,s2,0xc
    800047e8:	02090863          	beqz	s2,80004818 <kvmincrease+0x58>
    800047ec:	00000493          	li	s1,0
    800047f0:	00148493          	addi	s1,s1,1
    800047f4:	fffff097          	auipc	ra,0xfffff
    800047f8:	4bc080e7          	jalr	1212(ra) # 80003cb0 <kalloc>
    800047fc:	fe991ae3          	bne	s2,s1,800047f0 <kvmincrease+0x30>
    80004800:	01813083          	ld	ra,24(sp)
    80004804:	01013403          	ld	s0,16(sp)
    80004808:	00813483          	ld	s1,8(sp)
    8000480c:	00013903          	ld	s2,0(sp)
    80004810:	02010113          	addi	sp,sp,32
    80004814:	00008067          	ret
    80004818:	01813083          	ld	ra,24(sp)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	00813483          	ld	s1,8(sp)
    80004824:	00013903          	ld	s2,0(sp)
    80004828:	00000513          	li	a0,0
    8000482c:	02010113          	addi	sp,sp,32
    80004830:	00008067          	ret
	...
