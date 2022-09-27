
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	6d013103          	ld	sp,1744(sp) # 800086d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	619030ef          	jal	ra,80003e34 <start>

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
    80001084:	751000ef          	jal	ra,80001fd4 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "../h/codes.hpp"
#include "../h/riscv.hpp"

void* mem_alloc (size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00113423          	sd	ra,8(sp)
    8000114c:	00813023          	sd	s0,0(sp)
    80001150:	01010413          	addi	s0,sp,16
//    __asm__ volatile("mv a0, %0" : : "r" (MEM_ALLOC));
//    __asm__ volatile ("ecall");
//
//    return ret;     ne znam zasto je optimized out, uvek vrati null;

    return __mem_alloc(size);
    80001154:	00005097          	auipc	ra,0x5
    80001158:	e74080e7          	jalr	-396(ra) # 80005fc8 <__mem_alloc>
}
    8000115c:	00813083          	ld	ra,8(sp)
    80001160:	00013403          	ld	s0,0(sp)
    80001164:	01010113          	addi	sp,sp,16
    80001168:	00008067          	ret

000000008000116c <_Z8mem_freePv>:

int mem_free (void* v) {
    8000116c:	ff010113          	addi	sp,sp,-16
    80001170:	00113423          	sd	ra,8(sp)
    80001174:	00813023          	sd	s0,0(sp)
    80001178:	01010413          	addi	s0,sp,16
    return __mem_free(v);
    8000117c:	00005097          	auipc	ra,0x5
    80001180:	d80080e7          	jalr	-640(ra) # 80005efc <__mem_free>
}
    80001184:	00813083          	ld	ra,8(sp)
    80001188:	00013403          	ld	s0,0(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret

0000000080001194 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg) {
    80001194:	fc010113          	addi	sp,sp,-64
    80001198:	02113c23          	sd	ra,56(sp)
    8000119c:	02813823          	sd	s0,48(sp)
    800011a0:	02913423          	sd	s1,40(sp)
    800011a4:	03213023          	sd	s2,32(sp)
    800011a8:	01313c23          	sd	s3,24(sp)
    800011ac:	04010413          	addi	s0,sp,64
    800011b0:	00050493          	mv	s1,a0
    800011b4:	00058913          	mv	s2,a1
    800011b8:	00060993          	mv	s3,a2

    int x = 0;
    800011bc:	fc042623          	sw	zero,-52(s0)
    int *ret = &x;

    auto *stack = (uint64*)(new uint64[DEFAULT_STACK_SIZE]);
    800011c0:	00008537          	lui	a0,0x8
    800011c4:	00001097          	auipc	ra,0x1
    800011c8:	898080e7          	jalr	-1896(ra) # 80001a5c <_Znam>
    __asm__ volatile("mv a4, %0" : : "r" (stack));
    800011cc:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : "r" (arg));
    800011d0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800011d4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800011d8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_CREATE));
    800011dc:	00b00793          	li	a5,11
    800011e0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a5, %0" : : "r" (ret));
    800011e4:	fcc40793          	addi	a5,s0,-52
    800011e8:	00078793          	mv	a5,a5
    __asm__ volatile ("ecall");
    800011ec:	00000073          	ecall

    return *ret;
}
    800011f0:	fcc42503          	lw	a0,-52(s0)
    800011f4:	03813083          	ld	ra,56(sp)
    800011f8:	03013403          	ld	s0,48(sp)
    800011fc:	02813483          	ld	s1,40(sp)
    80001200:	02013903          	ld	s2,32(sp)
    80001204:	01813983          	ld	s3,24(sp)
    80001208:	04010113          	addi	sp,sp,64
    8000120c:	00008067          	ret

0000000080001210 <_Z11thread_exitv>:

int thread_exit () {
    80001210:	ff010113          	addi	sp,sp,-16
    80001214:	00813423          	sd	s0,8(sp)
    80001218:	01010413          	addi	s0,sp,16
    if (TCB::running->getMain()) {
    8000121c:	00007797          	auipc	a5,0x7
    80001220:	4cc7b783          	ld	a5,1228(a5) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001224:	0007b783          	ld	a5,0(a5)
    void setSleeping(bool value) { sleeping = value; }

    bool isBlocked() const { return blocked; }
    void setBlocked(bool value) { blocked = value; }

    bool getMain() const { return main; }
    80001228:	03f7c783          	lbu	a5,63(a5)
    8000122c:	02079063          	bnez	a5,8000124c <_Z11thread_exitv+0x3c>
        return -1;
    }
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_EXIT));
    80001230:	00c00793          	li	a5,12
    80001234:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001238:	00000073          	ecall
    return 0;
    8000123c:	00000513          	li	a0,0
}
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret
        return -1;
    8000124c:	fff00513          	li	a0,-1
    80001250:	ff1ff06f          	j	80001240 <_Z11thread_exitv+0x30>

0000000080001254 <_Z15thread_dispatchv>:

void thread_dispatch () {
    80001254:	ff010113          	addi	sp,sp,-16
    80001258:	00813423          	sd	s0,8(sp)
    8000125c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0" : : "r" (THREAD_DISPATCH));
    80001260:	00d00793          	li	a5,13
    80001264:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001268:	00000073          	ecall
}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle, unsigned init) {
    80001278:	fe010113          	addi	sp,sp,-32
    8000127c:	00813c23          	sd	s0,24(sp)
    80001280:	02010413          	addi	s0,sp,32

    int x = 0;
    80001284:	fe042623          	sw	zero,-20(s0)
    int *ret = &x;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001288:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000128c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_OPEN));
    80001290:	01500793          	li	a5,21
    80001294:	00078513          	mv	a0,a5
    __asm__ volatile("mv a3, %0" : : "r" (ret));
    80001298:	fec40793          	addi	a5,s0,-20
    8000129c:	00078693          	mv	a3,a5
    __asm__ volatile ("ecall");
    800012a0:	00000073          	ecall
    return *ret;
}
    800012a4:	fec42503          	lw	a0,-20(s0)
    800012a8:	01813403          	ld	s0,24(sp)
    800012ac:	02010113          	addi	sp,sp,32
    800012b0:	00008067          	ret

00000000800012b4 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle) {
    if (handle == nullptr) {
    800012b4:	02050e63          	beqz	a0,800012f0 <_Z9sem_closeP4_sem+0x3c>
int sem_close (sem_t handle) {
    800012b8:	fe010113          	addi	sp,sp,-32
    800012bc:	00813c23          	sd	s0,24(sp)
    800012c0:	02010413          	addi	s0,sp,32
        return -1;
    }

    int x = 0;
    800012c4:	fe042623          	sw	zero,-20(s0)
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_CLOSE));
    800012cc:	01600793          	li	a5,22
    800012d0:	00078513          	mv	a0,a5
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    800012d4:	fec40793          	addi	a5,s0,-20
    800012d8:	00078613          	mv	a2,a5
    __asm__ volatile ("ecall");
    800012dc:	00000073          	ecall
    return *ret;
    800012e0:	fec42503          	lw	a0,-20(s0)
}
    800012e4:	01813403          	ld	s0,24(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret
        return -1;
    800012f0:	fff00513          	li	a0,-1
}
    800012f4:	00008067          	ret

00000000800012f8 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id) {
    if (id == nullptr) {
    800012f8:	02050e63          	beqz	a0,80001334 <_Z8sem_waitP4_sem+0x3c>
int sem_wait (sem_t id) {
    800012fc:	fe010113          	addi	sp,sp,-32
    80001300:	00813c23          	sd	s0,24(sp)
    80001304:	02010413          	addi	s0,sp,32
        return -1;
    }

    int x = 0;
    80001308:	fe042623          	sw	zero,-20(s0)
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    8000130c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_WAIT));
    80001310:	01700793          	li	a5,23
    80001314:	00078513          	mv	a0,a5
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    80001318:	fec40793          	addi	a5,s0,-20
    8000131c:	00078613          	mv	a2,a5
    __asm__ volatile ("ecall");
    80001320:	00000073          	ecall
    return *ret;
    80001324:	fec42503          	lw	a0,-20(s0)
}
    80001328:	01813403          	ld	s0,24(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret
        return -1;
    80001334:	fff00513          	li	a0,-1
}
    80001338:	00008067          	ret

000000008000133c <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id) {
    if (id == nullptr) {
    8000133c:	02050e63          	beqz	a0,80001378 <_Z10sem_signalP4_sem+0x3c>
int sem_signal (sem_t id) {
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00813c23          	sd	s0,24(sp)
    80001348:	02010413          	addi	s0,sp,32
        return -1;
    }

    int x = 0;
    8000134c:	fe042623          	sw	zero,-20(s0)
    int *ret = &x;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    80001350:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (SEM_SIGNAL));
    80001354:	01800793          	li	a5,24
    80001358:	00078513          	mv	a0,a5
    __asm__ volatile("mv a2, %0" : : "r" (ret));
    8000135c:	fec40793          	addi	a5,s0,-20
    80001360:	00078613          	mv	a2,a5
    __asm__ volatile ("ecall");
    80001364:	00000073          	ecall
    return *ret;
    80001368:	fec42503          	lw	a0,-20(s0)
}
    8000136c:	01813403          	ld	s0,24(sp)
    80001370:	02010113          	addi	sp,sp,32
    80001374:	00008067          	ret
        return -1;
    80001378:	fff00513          	li	a0,-1
}
    8000137c:	00008067          	ret

0000000080001380 <_Z10time_sleepm>:

int time_sleep (time_t slice) {
    80001380:	ff010113          	addi	sp,sp,-16
    80001384:	00813423          	sd	s0,8(sp)
    80001388:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (slice));
    8000138c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (TIME_SLEEP));
    80001390:	01f00793          	li	a5,31
    80001394:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001398:	00000073          	ecall
    return 0;
}
    8000139c:	00000513          	li	a0,0
    800013a0:	00813403          	ld	s0,8(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_Z4getcv>:

char getc () {
    800013ac:	fe010113          	addi	sp,sp,-32
    800013b0:	00813c23          	sd	s0,24(sp)
    800013b4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0" : : "r" (GET_C));
    800013b8:	02900793          	li	a5,41
    800013bc:	00078513          	mv	a0,a5
    char c = 's';
    800013c0:	07300793          	li	a5,115
    800013c4:	fef407a3          	sb	a5,-17(s0)
    char* ret = &c;
    __asm__ volatile("mv a1, %0" : : "r" (ret));
    800013c8:	fef40793          	addi	a5,s0,-17
    800013cc:	00078593          	mv	a1,a5
    __asm__ volatile ("ecall");
    800013d0:	00000073          	ecall
    if (ret != nullptr)
        return *ret;
    else {
        return ' ';
    }
}
    800013d4:	fef44503          	lbu	a0,-17(s0)
    800013d8:	01813403          	ld	s0,24(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret

00000000800013e4 <_Z4putcc>:

void putc (char c){
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    800013f0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (PUT_C));
    800013f4:	02a00793          	li	a5,42
    800013f8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800013fc:	00000073          	ecall
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z12user_wrapperPv>:
#include "../h/print.hpp"

bool finishedMain = false;
extern void userMain();
void user_wrapper(void*)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00113423          	sd	ra,8(sp)
    80001414:	00813023          	sd	s0,0(sp)
    80001418:	01010413          	addi	s0,sp,16
    printStringForUserMode("UserMain() started.\n\n");
    8000141c:	00006517          	auipc	a0,0x6
    80001420:	c0450513          	addi	a0,a0,-1020 # 80007020 <CONSOLE_STATUS+0x10>
    80001424:	00002097          	auipc	ra,0x2
    80001428:	854080e7          	jalr	-1964(ra) # 80002c78 <_Z22printStringForUserModePKc>
    userMain();
    8000142c:	00002097          	auipc	ra,0x2
    80001430:	358080e7          	jalr	856(ra) # 80003784 <_Z8userMainv>
    printStringForUserMode("userMain() finished.\n");
    80001434:	00006517          	auipc	a0,0x6
    80001438:	c0450513          	addi	a0,a0,-1020 # 80007038 <CONSOLE_STATUS+0x28>
    8000143c:	00002097          	auipc	ra,0x2
    80001440:	83c080e7          	jalr	-1988(ra) # 80002c78 <_Z22printStringForUserModePKc>
    finishedMain = true;
    80001444:	00100793          	li	a5,1
    80001448:	00007717          	auipc	a4,0x7
    8000144c:	30f70423          	sb	a5,776(a4) # 80008750 <finishedMain>
}
    80001450:	00813083          	ld	ra,8(sp)
    80001454:	00013403          	ld	s0,0(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <main>:

int main() {
    80001460:	fc010113          	addi	sp,sp,-64
    80001464:	02113c23          	sd	ra,56(sp)
    80001468:	02813823          	sd	s0,48(sp)
    8000146c:	02913423          	sd	s1,40(sp)
    80001470:	03213023          	sd	s2,32(sp)
    80001474:	04010413          	addi	s0,sp,64
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001478:	00007797          	auipc	a5,0x7
    8000147c:	2307b783          	ld	a5,560(a5) # 800086a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001480:	10579073          	csrw	stvec,a5
        head = (Node*)HEAP_START_ADDR;
    80001484:	00007717          	auipc	a4,0x7
    80001488:	21c73703          	ld	a4,540(a4) # 800086a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000148c:	00073683          	ld	a3,0(a4)
    80001490:	00007797          	auipc	a5,0x7
    80001494:	2487b783          	ld	a5,584(a5) # 800086d8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001498:	00d7b023          	sd	a3,0(a5)
        head->next = nullptr;
    8000149c:	0006b023          	sd	zero,0(a3)
        head->size = ((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR);
    800014a0:	0007b683          	ld	a3,0(a5)
    800014a4:	00007797          	auipc	a5,0x7
    800014a8:	24c7b783          	ld	a5,588(a5) # 800086f0 <_GLOBAL_OFFSET_TABLE_+0x70>
    800014ac:	0007b783          	ld	a5,0(a5)
    800014b0:	00073703          	ld	a4,0(a4)
    800014b4:	40e787b3          	sub	a5,a5,a4
    800014b8:	00f6b423          	sd	a5,8(a3)
    Riscv::InitMem();

    Riscv::putCBuffer = new Buffer();
    800014bc:	12000513          	li	a0,288
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	574080e7          	jalr	1396(ra) # 80001a34 <_Znwm>
    800014c8:	00050493          	mv	s1,a0
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	590080e7          	jalr	1424(ra) # 80002a5c <_ZN6BufferC1Ev>
    800014d4:	00007797          	auipc	a5,0x7
    800014d8:	1ec7b783          	ld	a5,492(a5) # 800086c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800014dc:	0097b023          	sd	s1,0(a5)
    Riscv::getCBuffer = new Buffer();
    800014e0:	12000513          	li	a0,288
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	550080e7          	jalr	1360(ra) # 80001a34 <_Znwm>
    800014ec:	00050493          	mv	s1,a0
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	56c080e7          	jalr	1388(ra) # 80002a5c <_ZN6BufferC1Ev>
    800014f8:	00007797          	auipc	a5,0x7
    800014fc:	1a07b783          	ld	a5,416(a5) # 80008698 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001500:	0097b023          	sd	s1,0(a5)
    Riscv::listOfClosedSemaphores = new List<_sem>;
    80001504:	01000513          	li	a0,16
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	52c080e7          	jalr	1324(ra) # 80001a34 <_Znwm>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001510:	00053023          	sd	zero,0(a0)
    80001514:	00053423          	sd	zero,8(a0)
    80001518:	00007797          	auipc	a5,0x7
    8000151c:	1e07b783          	ld	a5,480(a5) # 800086f8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001520:	00a7b023          	sd	a0,0(a5)

    TCB *outputThread;
    thread_create(&outputThread, &TCB::outputThreadBody, nullptr);
    80001524:	00000613          	li	a2,0
    80001528:	00007597          	auipc	a1,0x7
    8000152c:	1b85b583          	ld	a1,440(a1) # 800086e0 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001530:	fd840513          	addi	a0,s0,-40
    80001534:	00000097          	auipc	ra,0x0
    80001538:	c60080e7          	jalr	-928(ra) # 80001194 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB *main;
    thread_create(&main, nullptr, nullptr);
    8000153c:	00000613          	li	a2,0
    80001540:	00000593          	li	a1,0
    80001544:	fd040513          	addi	a0,s0,-48
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	c4c080e7          	jalr	-948(ra) # 80001194 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80001550:	00007797          	auipc	a5,0x7
    80001554:	1987b783          	ld	a5,408(a5) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001558:	fd043703          	ld	a4,-48(s0)
    8000155c:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001560:	00200793          	li	a5,2
    80001564:	1007a073          	csrs	sstatus,a5

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    Riscv::setMode(true);
    80001568:	00100513          	li	a0,1
    8000156c:	00001097          	auipc	ra,0x1
    80001570:	a08080e7          	jalr	-1528(ra) # 80001f74 <_ZN5Riscv7setModeEb>
    __asm__ volatile ("ecall");
    80001574:	00000073          	ecall
    printString2("UserMode Started \n");
    80001578:	00006517          	auipc	a0,0x6
    8000157c:	ad850513          	addi	a0,a0,-1320 # 80007050 <CONSOLE_STATUS+0x40>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	5cc080e7          	jalr	1484(ra) # 80002b4c <_Z12printString2PKc>

    thread_t user;
    thread_create(&user, user_wrapper, nullptr);
    80001588:	00000613          	li	a2,0
    8000158c:	00000597          	auipc	a1,0x0
    80001590:	e8058593          	addi	a1,a1,-384 # 8000140c <_Z12user_wrapperPv>
    80001594:	fc840513          	addi	a0,s0,-56
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	bfc080e7          	jalr	-1028(ra) # 80001194 <_Z13thread_createPP3TCBPFvPvES2_>

    while (!finishedMain) {
    800015a0:	00007797          	auipc	a5,0x7
    800015a4:	1b07c783          	lbu	a5,432(a5) # 80008750 <finishedMain>
    800015a8:	00079863          	bnez	a5,800015b8 <main+0x158>
        thread_dispatch();
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	ca8080e7          	jalr	-856(ra) # 80001254 <_Z15thread_dispatchv>
    800015b4:	fedff06f          	j	800015a0 <main+0x140>
    }

    while (Riscv::putCBuffer->getCount() > 0) {
    800015b8:	00007797          	auipc	a5,0x7
    800015bc:	1087b783          	ld	a5,264(a5) # 800086c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    800015c0:	0007b783          	ld	a5,0(a5)
class Buffer {
public:
    Buffer();
    char getc ();
    void putc (char c);
    uint64 getCount() { return count; }
    800015c4:	1187b783          	ld	a5,280(a5)
    800015c8:	00078863          	beqz	a5,800015d8 <main+0x178>
        thread_dispatch();
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	c88080e7          	jalr	-888(ra) # 80001254 <_Z15thread_dispatchv>
    800015d4:	fe5ff06f          	j	800015b8 <main+0x158>
    }

    printString2("UserMode Ended\n");
    800015d8:	00006517          	auipc	a0,0x6
    800015dc:	a9050513          	addi	a0,a0,-1392 # 80007068 <CONSOLE_STATUS+0x58>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	56c080e7          	jalr	1388(ra) # 80002b4c <_Z12printString2PKc>
    Riscv::setMode(false);
    800015e8:	00000513          	li	a0,0
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	988080e7          	jalr	-1656(ra) # 80001f74 <_ZN5Riscv7setModeEb>
    __asm__ volatile ("ecall");
    800015f4:	00000073          	ecall
    800015f8:	0180006f          	j	80001610 <main+0x1b0>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    800015fc:	0007b423          	sd	zero,8(a5)

        T *ret = elem->data;
    80001600:	00053483          	ld	s1,0(a0)
        delete elem;
    80001604:	00000097          	auipc	ra,0x0
    80001608:	480080e7          	jalr	1152(ra) # 80001a84 <_ZdlPv>

    while (Riscv::listOfClosedSemaphores->peekFirst()) {
        delete Riscv::listOfClosedSemaphores->removeFirst();
    8000160c:	02049863          	bnez	s1,8000163c <main+0x1dc>
    while (Riscv::listOfClosedSemaphores->peekFirst()) {
    80001610:	00007797          	auipc	a5,0x7
    80001614:	0e87b783          	ld	a5,232(a5) # 800086f8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001618:	0007b783          	ld	a5,0(a5)
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    8000161c:	0007b503          	ld	a0,0(a5)
    80001620:	02050c63          	beqz	a0,80001658 <main+0x1f8>
        return head->data;
    80001624:	00053703          	ld	a4,0(a0)
    80001628:	02070863          	beqz	a4,80001658 <main+0x1f8>
        head = head->next;
    8000162c:	00853703          	ld	a4,8(a0)
    80001630:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80001634:	fc0716e3          	bnez	a4,80001600 <main+0x1a0>
    80001638:	fc5ff06f          	j	800015fc <main+0x19c>
        delete Riscv::listOfClosedSemaphores->removeFirst();
    8000163c:	00048513          	mv	a0,s1
    80001640:	00001097          	auipc	ra,0x1
    80001644:	2ac080e7          	jalr	684(ra) # 800028ec <_ZN4_semD1Ev>
    80001648:	00048513          	mv	a0,s1
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	438080e7          	jalr	1080(ra) # 80001a84 <_ZdlPv>
    80001654:	fbdff06f          	j	80001610 <main+0x1b0>
    }

    delete Riscv::listOfClosedSemaphores;
    80001658:	00078863          	beqz	a5,80001668 <main+0x208>
    8000165c:	00078513          	mv	a0,a5
    80001660:	00000097          	auipc	ra,0x0
    80001664:	424080e7          	jalr	1060(ra) # 80001a84 <_ZdlPv>
    delete user;
    80001668:	fc843503          	ld	a0,-56(s0)
    8000166c:	00050863          	beqz	a0,8000167c <main+0x21c>
    80001670:	00053783          	ld	a5,0(a0)
    80001674:	0087b783          	ld	a5,8(a5)
    80001678:	000780e7          	jalr	a5
    delete outputThread;
    8000167c:	fd843503          	ld	a0,-40(s0)
    80001680:	00050863          	beqz	a0,80001690 <main+0x230>
    80001684:	00053783          	ld	a5,0(a0)
    80001688:	0087b783          	ld	a5,8(a5)
    8000168c:	000780e7          	jalr	a5
    delete Riscv::putCBuffer;
    80001690:	00007797          	auipc	a5,0x7
    80001694:	0307b783          	ld	a5,48(a5) # 800086c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001698:	0007b503          	ld	a0,0(a5)
    8000169c:	00050663          	beqz	a0,800016a8 <main+0x248>
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	3e4080e7          	jalr	996(ra) # 80001a84 <_ZdlPv>
    delete Riscv::getCBuffer;
    800016a8:	00007797          	auipc	a5,0x7
    800016ac:	ff07b783          	ld	a5,-16(a5) # 80008698 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016b0:	0007b503          	ld	a0,0(a5)
    800016b4:	00050663          	beqz	a0,800016c0 <main+0x260>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	3cc080e7          	jalr	972(ra) # 80001a84 <_ZdlPv>

    return 0;
}
    800016c0:	00000513          	li	a0,0
    800016c4:	03813083          	ld	ra,56(sp)
    800016c8:	03013403          	ld	s0,48(sp)
    800016cc:	02813483          	ld	s1,40(sp)
    800016d0:	02013903          	ld	s2,32(sp)
    800016d4:	04010113          	addi	sp,sp,64
    800016d8:	00008067          	ret
    800016dc:	00050913          	mv	s2,a0
    Riscv::putCBuffer = new Buffer();
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	3a0080e7          	jalr	928(ra) # 80001a84 <_ZdlPv>
    800016ec:	00090513          	mv	a0,s2
    800016f0:	00008097          	auipc	ra,0x8
    800016f4:	1a8080e7          	jalr	424(ra) # 80009898 <_Unwind_Resume>
    800016f8:	00050913          	mv	s2,a0
    Riscv::getCBuffer = new Buffer();
    800016fc:	00048513          	mv	a0,s1
    80001700:	00000097          	auipc	ra,0x0
    80001704:	384080e7          	jalr	900(ra) # 80001a84 <_ZdlPv>
    80001708:	00090513          	mv	a0,s2
    8000170c:	00008097          	auipc	ra,0x8
    80001710:	18c080e7          	jalr	396(ra) # 80009898 <_Unwind_Resume>

0000000080001714 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
TCB *TCB::running = nullptr;
int TCB::x = 0;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(TCB** handle, Body body, void* arg, uint64* stack_space)
{
    80001714:	fc010113          	addi	sp,sp,-64
    80001718:	02113c23          	sd	ra,56(sp)
    8000171c:	02813823          	sd	s0,48(sp)
    80001720:	02913423          	sd	s1,40(sp)
    80001724:	03213023          	sd	s2,32(sp)
    80001728:	01313c23          	sd	s3,24(sp)
    8000172c:	01413823          	sd	s4,16(sp)
    80001730:	01513423          	sd	s5,8(sp)
    80001734:	04010413          	addi	s0,sp,64
    80001738:	00050a13          	mv	s4,a0
    8000173c:	00058993          	mv	s3,a1
    80001740:	00060a93          	mv	s5,a2
    80001744:	00068913          	mv	s2,a3
    *handle = new TCB(body, DEFAULT_TIME_SLICE, arg, stack_space);
    80001748:	04000513          	li	a0,64
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	2e8080e7          	jalr	744(ra) # 80001a34 <_Znwm>
    80001754:	00050493          	mv	s1,a0
            timeSlice(timeSlice),
            id(x),
            finished(false),
            sleeping(false),
            blocked(false),
            main(body == nullptr)
    80001758:	00007797          	auipc	a5,0x7
    8000175c:	e1078793          	addi	a5,a5,-496 # 80008568 <_ZTV3TCB+0x10>
    80001760:	00f53023          	sd	a5,0(a0)
    80001764:	01553423          	sd	s5,8(a0)
    80001768:	01353823          	sd	s3,16(a0)
            stack(body != nullptr ? stack_space : nullptr),
    8000176c:	06098663          	beqz	s3,800017d8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xc4>
            main(body == nullptr)
    80001770:	0124bc23          	sd	s2,24(s1)
    80001774:	00000797          	auipc	a5,0x0
    80001778:	15478793          	addi	a5,a5,340 # 800018c8 <_ZN3TCB13threadWrapperEv>
    8000177c:	02f4b023          	sd	a5,32(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001780:	06090063          	beqz	s2,800017e0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xcc>
    80001784:	000086b7          	lui	a3,0x8
    80001788:	00d90933          	add	s2,s2,a3
            main(body == nullptr)
    8000178c:	0324b423          	sd	s2,40(s1)
    80001790:	00200793          	li	a5,2
    80001794:	02f4b823          	sd	a5,48(s1)
    80001798:	00007797          	auipc	a5,0x7
    8000179c:	fc07a783          	lw	a5,-64(a5) # 80008758 <_ZN3TCB1xE>
    800017a0:	02f4ac23          	sw	a5,56(s1)
    800017a4:	02048e23          	sb	zero,60(s1)
    800017a8:	02048ea3          	sb	zero,61(s1)
    800017ac:	02048f23          	sb	zero,62(s1)
    800017b0:	0019b793          	seqz	a5,s3
    800017b4:	02f48fa3          	sb	a5,63(s1)
    {
        if (body != nullptr && body != Thread::threadWrapper) {
    800017b8:	02098863          	beqz	s3,800017e8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xd4>
    800017bc:	00007797          	auipc	a5,0x7
    800017c0:	efc7b783          	ld	a5,-260(a5) # 800086b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017c4:	02f98263          	beq	s3,a5,800017e8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xd4>
            Scheduler::put(this);
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00001097          	auipc	ra,0x1
    800017d0:	1f0080e7          	jalr	496(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
    800017d4:	0140006f          	j	800017e8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xd4>
            stack(body != nullptr ? stack_space : nullptr),
    800017d8:	00000913          	li	s2,0
    800017dc:	f95ff06f          	j	80001770 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x5c>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017e0:	00000913          	li	s2,0
    800017e4:	fa9ff06f          	j	8000178c <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x78>
    800017e8:	009a3023          	sd	s1,0(s4)
    x++;
    800017ec:	00007717          	auipc	a4,0x7
    800017f0:	f6c70713          	addi	a4,a4,-148 # 80008758 <_ZN3TCB1xE>
    800017f4:	00072783          	lw	a5,0(a4)
    800017f8:	0017879b          	addiw	a5,a5,1
    800017fc:	00f72023          	sw	a5,0(a4)
    return *handle;
    80001800:	000a3503          	ld	a0,0(s4)
}
    80001804:	03813083          	ld	ra,56(sp)
    80001808:	03013403          	ld	s0,48(sp)
    8000180c:	02813483          	ld	s1,40(sp)
    80001810:	02013903          	ld	s2,32(sp)
    80001814:	01813983          	ld	s3,24(sp)
    80001818:	01013a03          	ld	s4,16(sp)
    8000181c:	00813a83          	ld	s5,8(sp)
    80001820:	04010113          	addi	sp,sp,64
    80001824:	00008067          	ret
    80001828:	00050913          	mv	s2,a0
    *handle = new TCB(body, DEFAULT_TIME_SLICE, arg, stack_space);
    8000182c:	00048513          	mv	a0,s1
    80001830:	00000097          	auipc	ra,0x0
    80001834:	254080e7          	jalr	596(ra) # 80001a84 <_ZdlPv>
    80001838:	00090513          	mv	a0,s2
    8000183c:	00008097          	auipc	ra,0x8
    80001840:	05c080e7          	jalr	92(ra) # 80009898 <_Unwind_Resume>

0000000080001844 <_ZN3TCB16outputThreadBodyEPv>:

void TCB::outputThreadBody(void *) {
    while(true){
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)){
    80001844:	00007797          	auipc	a5,0x7
    80001848:	e4c7b783          	ld	a5,-436(a5) # 80008690 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000184c:	0007b783          	ld	a5,0(a5)
    80001850:	0007c783          	lbu	a5,0(a5)
    80001854:	0207f793          	andi	a5,a5,32
    80001858:	fe0786e3          	beqz	a5,80001844 <_ZN3TCB16outputThreadBodyEPv>
void TCB::outputThreadBody(void *) {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
            char c = Riscv::putCBuffer->getc();
    8000186c:	00007797          	auipc	a5,0x7
    80001870:	e547b783          	ld	a5,-428(a5) # 800086c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001874:	0007b503          	ld	a0,0(a5)
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	21c080e7          	jalr	540(ra) # 80002a94 <_ZN6Buffer4getcEv>
            *((char*)CONSOLE_TX_DATA) = c;
    80001880:	00007797          	auipc	a5,0x7
    80001884:	e487b783          	ld	a5,-440(a5) # 800086c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001888:	0007b783          	ld	a5,0(a5)
    8000188c:	00a78023          	sb	a0,0(a5)
        while((*((char*)(CONSOLE_STATUS)) & CONSOLE_TX_STATUS_BIT)){
    80001890:	00007797          	auipc	a5,0x7
    80001894:	e007b783          	ld	a5,-512(a5) # 80008690 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001898:	0007b783          	ld	a5,0(a5)
    8000189c:	0007c783          	lbu	a5,0(a5)
    800018a0:	0207f793          	andi	a5,a5,32
    800018a4:	fe0786e3          	beqz	a5,80001890 <_ZN3TCB16outputThreadBodyEPv+0x4c>
    800018a8:	fc5ff06f          	j	8000186c <_ZN3TCB16outputThreadBodyEPv+0x28>

00000000800018ac <_ZN3TCB5yieldEv>:
        }
    }
}

void TCB::yield()
{
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00813423          	sd	s0,8(sp)
    800018b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800018b8:	00000073          	ecall
}
    800018bc:	00813403          	ld	s0,8(sp)
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3TCB13threadWrapperEv>:
        TCB::contextSwitch(&old->context, &running->context);
    }
}

void TCB::threadWrapper()
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	6b8080e7          	jalr	1720(ra) # 80001f94 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800018e4:	00007497          	auipc	s1,0x7
    800018e8:	e7448493          	addi	s1,s1,-396 # 80008758 <_ZN3TCB1xE>
    800018ec:	0084b783          	ld	a5,8(s1)
    800018f0:	0107b703          	ld	a4,16(a5)
    800018f4:	0087b503          	ld	a0,8(a5)
    800018f8:	000700e7          	jalr	a4
    running->setFinished(true);
    800018fc:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    80001900:	00100713          	li	a4,1
    80001904:	02e78e23          	sb	a4,60(a5)
    TCB::yield();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	fa4080e7          	jalr	-92(ra) # 800018ac <_ZN3TCB5yieldEv>
}
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret

0000000080001924 <_ZN3TCB8dispatchEv>:
{
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001938:	00007497          	auipc	s1,0x7
    8000193c:	e284b483          	ld	s1,-472(s1) # 80008760 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001940:	03c4c783          	lbu	a5,60(s1)
    if (!old->isFinished() && !old->isSleeping() && !old->isBlocked()) { Scheduler::put(old); }
    80001944:	00079a63          	bnez	a5,80001958 <_ZN3TCB8dispatchEv+0x34>
    bool isSleeping() const { return sleeping; }
    80001948:	03d4c783          	lbu	a5,61(s1)
    8000194c:	00079663          	bnez	a5,80001958 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return blocked; }
    80001950:	03e4c783          	lbu	a5,62(s1)
    80001954:	02078e63          	beqz	a5,80001990 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	ffc080e7          	jalr	-4(ra) # 80002954 <_ZN9Scheduler3getEv>
    80001960:	00007797          	auipc	a5,0x7
    80001964:	e0a7b023          	sd	a0,-512(a5) # 80008760 <_ZN3TCB7runningE>
    if (old != running) {
    80001968:	00a48a63          	beq	s1,a0,8000197c <_ZN3TCB8dispatchEv+0x58>
        TCB::contextSwitch(&old->context, &running->context);
    8000196c:	02050593          	addi	a1,a0,32
    80001970:	02048513          	addi	a0,s1,32
    80001974:	fffff097          	auipc	ra,0xfffff
    80001978:	79c080e7          	jalr	1948(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	02010113          	addi	sp,sp,32
    8000198c:	00008067          	ret
    if (!old->isFinished() && !old->isSleeping() && !old->isBlocked()) { Scheduler::put(old); }
    80001990:	00048513          	mv	a0,s1
    80001994:	00001097          	auipc	ra,0x1
    80001998:	028080e7          	jalr	40(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
    8000199c:	fbdff06f          	j	80001958 <_ZN3TCB8dispatchEv+0x34>

00000000800019a0 <_ZN3TCBD1Ev>:
    virtual ~TCB() {
    800019a0:	00007797          	auipc	a5,0x7
    800019a4:	bc878793          	addi	a5,a5,-1080 # 80008568 <_ZTV3TCB+0x10>
    800019a8:	00f53023          	sd	a5,0(a0)
        delete[] stack;
    800019ac:	01853503          	ld	a0,24(a0)
    800019b0:	02050663          	beqz	a0,800019dc <_ZN3TCBD1Ev+0x3c>
    virtual ~TCB() {
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00113423          	sd	ra,8(sp)
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	01010413          	addi	s0,sp,16
        delete[] stack;
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	0e8080e7          	jalr	232(ra) # 80001aac <_ZdaPv>
    }
    800019cc:	00813083          	ld	ra,8(sp)
    800019d0:	00013403          	ld	s0,0(sp)
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret
    800019dc:	00008067          	ret

00000000800019e0 <_ZN3TCBD0Ev>:
    virtual ~TCB() {
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	02010413          	addi	s0,sp,32
    800019f4:	00050493          	mv	s1,a0
    800019f8:	00007797          	auipc	a5,0x7
    800019fc:	b7078793          	addi	a5,a5,-1168 # 80008568 <_ZTV3TCB+0x10>
    80001a00:	00f53023          	sd	a5,0(a0)
        delete[] stack;
    80001a04:	01853503          	ld	a0,24(a0)
    80001a08:	00050663          	beqz	a0,80001a14 <_ZN3TCBD0Ev+0x34>
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	0a0080e7          	jalr	160(ra) # 80001aac <_ZdaPv>
    }
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	06c080e7          	jalr	108(ra) # 80001a84 <_ZdlPv>
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	02010113          	addi	sp,sp,32
    80001a30:	00008067          	ret

0000000080001a34 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00113423          	sd	ra,8(sp)
    80001a3c:	00813023          	sd	s0,0(sp)
    80001a40:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a44:	fffff097          	auipc	ra,0xfffff
    80001a48:	700080e7          	jalr	1792(ra) # 80001144 <_Z9mem_allocm>
}
    80001a4c:	00813083          	ld	ra,8(sp)
    80001a50:	00013403          	ld	s0,0(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_Znam>:

void *operator new[](size_t n)
{
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001a6c:	fffff097          	auipc	ra,0xfffff
    80001a70:	6d8080e7          	jalr	1752(ra) # 80001144 <_Z9mem_allocm>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00113423          	sd	ra,8(sp)
    80001a8c:	00813023          	sd	s0,0(sp)
    80001a90:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001a94:	00004097          	auipc	ra,0x4
    80001a98:	468080e7          	jalr	1128(ra) # 80005efc <__mem_free>
}
    80001a9c:	00813083          	ld	ra,8(sp)
    80001aa0:	00013403          	ld	s0,0(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00113423          	sd	ra,8(sp)
    80001ab4:	00813023          	sd	s0,0(sp)
    80001ab8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001abc:	00004097          	auipc	ra,0x4
    80001ac0:	440080e7          	jalr	1088(ra) # 80005efc <__mem_free>
}
    80001ac4:	00813083          	ld	ra,8(sp)
    80001ac8:	00013403          	ld	s0,0(sp)
    80001acc:	01010113          	addi	sp,sp,16
    80001ad0:	00008067          	ret

0000000080001ad4 <_ZN6ThreadD1Ev>:
Thread::Thread(void (*body)(void *), void *arg) {
    myHandle = nullptr;
    thread_create(&myHandle, body, arg);
}

Thread::~Thread() {
    80001ad4:	00007797          	auipc	a5,0x7
    80001ad8:	ae478793          	addi	a5,a5,-1308 # 800085b8 <_ZTV6Thread+0x10>
    80001adc:	00f53023          	sd	a5,0(a0)
    myHandle->setFinished(true);
    80001ae0:	00853783          	ld	a5,8(a0)
    void setFinished(bool value) { finished = value; }
    80001ae4:	00100713          	li	a4,1
    80001ae8:	02e78e23          	sb	a4,60(a5)
    delete myHandle;
    80001aec:	00853503          	ld	a0,8(a0)
    80001af0:	02050863          	beqz	a0,80001b20 <_ZN6ThreadD1Ev+0x4c>
Thread::~Thread() {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001b04:	00053783          	ld	a5,0(a0)
    80001b08:	0087b783          	ld	a5,8(a5)
    80001b0c:	000780e7          	jalr	a5
}
    80001b10:	00813083          	ld	ra,8(sp)
    80001b14:	00013403          	ld	s0,0(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret
    80001b20:	00008067          	ret

0000000080001b24 <_ZN6Thread13threadWrapperEPv>:
Thread::Thread() {
    myHandle = nullptr;
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
}

void Thread::threadWrapper(void *thread) {
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00113423          	sd	ra,8(sp)
    80001b2c:	00813023          	sd	s0,0(sp)
    80001b30:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001b34:	00053783          	ld	a5,0(a0)
    80001b38:	0107b783          	ld	a5,16(a5)
    80001b3c:	000780e7          	jalr	a5
}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001b50:	fe010113          	addi	sp,sp,-32
    80001b54:	00113c23          	sd	ra,24(sp)
    80001b58:	00813823          	sd	s0,16(sp)
    80001b5c:	00913423          	sd	s1,8(sp)
    80001b60:	02010413          	addi	s0,sp,32
    80001b64:	00050493          	mv	s1,a0
}
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	f6c080e7          	jalr	-148(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    80001b70:	00048513          	mv	a0,s1
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	f10080e7          	jalr	-240(ra) # 80001a84 <_ZdlPv>
    80001b7c:	01813083          	ld	ra,24(sp)
    80001b80:	01013403          	ld	s0,16(sp)
    80001b84:	00813483          	ld	s1,8(sp)
    80001b88:	02010113          	addi	sp,sp,32
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    80001ba0:	00007797          	auipc	a5,0x7
    80001ba4:	a4078793          	addi	a5,a5,-1472 # 800085e0 <_ZTV9Semaphore+0x10>
    80001ba8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001bac:	00853503          	ld	a0,8(a0)
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	704080e7          	jalr	1796(ra) # 800012b4 <_Z9sem_closeP4_sem>
}
    80001bb8:	00813083          	ld	ra,8(sp)
    80001bbc:	00013403          	ld	s0,0(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    80001bdc:	00050493          	mv	s1,a0
}
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	fb0080e7          	jalr	-80(ra) # 80001b90 <_ZN9SemaphoreD1Ev>
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	e98080e7          	jalr	-360(ra) # 80001a84 <_ZdlPv>
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret

0000000080001c08 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    80001c18:	00007797          	auipc	a5,0x7
    80001c1c:	9a078793          	addi	a5,a5,-1632 # 800085b8 <_ZTV6Thread+0x10>
    80001c20:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001c24:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg);
    80001c28:	00850513          	addi	a0,a0,8
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	568080e7          	jalr	1384(ra) # 80001194 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001c34:	00813083          	ld	ra,8(sp)
    80001c38:	00013403          	ld	s0,0(sp)
    80001c3c:	01010113          	addi	sp,sp,16
    80001c40:	00008067          	ret

0000000080001c44 <_ZN6Thread5startEv>:
int Thread::start() {
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00113423          	sd	ra,8(sp)
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	01010413          	addi	s0,sp,16
        Scheduler::put(this);
    80001c54:	00853503          	ld	a0,8(a0)
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	d64080e7          	jalr	-668(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
}
    80001c60:	00000513          	li	a0,0
    80001c64:	00813083          	ld	ra,8(sp)
    80001c68:	00013403          	ld	s0,0(sp)
    80001c6c:	01010113          	addi	sp,sp,16
    80001c70:	00008067          	ret

0000000080001c74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	5d0080e7          	jalr	1488(ra) # 80001254 <_Z15thread_dispatchv>
}
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	6d4080e7          	jalr	1748(ra) # 80001380 <_Z10time_sleepm>
}
    80001cb4:	00000513          	li	a0,0
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00113423          	sd	ra,8(sp)
    80001cd0:	00813023          	sd	s0,0(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    80001cd8:	00007797          	auipc	a5,0x7
    80001cdc:	8e078793          	addi	a5,a5,-1824 # 800085b8 <_ZTV6Thread+0x10>
    80001ce0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001ce4:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, Thread::threadWrapper, (void*)this);
    80001ce8:	00050613          	mv	a2,a0
    80001cec:	00000597          	auipc	a1,0x0
    80001cf0:	e3858593          	addi	a1,a1,-456 # 80001b24 <_ZN6Thread13threadWrapperEPv>
    80001cf4:	00850513          	addi	a0,a0,8
    80001cf8:	fffff097          	auipc	ra,0xfffff
    80001cfc:	49c080e7          	jalr	1180(ra) # 80001194 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001d00:	00813083          	ld	ra,8(sp)
    80001d04:	00013403          	ld	s0,0(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN7Console4getcEv>:
char Console::getc() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00113423          	sd	ra,8(sp)
    80001d18:	00813023          	sd	s0,0(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    return ::getc();
    80001d20:	fffff097          	auipc	ra,0xfffff
    80001d24:	68c080e7          	jalr	1676(ra) # 800013ac <_Z4getcv>
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret

0000000080001d38 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80001d38:	ff010113          	addi	sp,sp,-16
    80001d3c:	00113423          	sd	ra,8(sp)
    80001d40:	00813023          	sd	s0,0(sp)
    80001d44:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	69c080e7          	jalr	1692(ra) # 800013e4 <_Z4putcc>
}
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    80001d70:	00007797          	auipc	a5,0x7
    80001d74:	87078793          	addi	a5,a5,-1936 # 800085e0 <_ZTV9Semaphore+0x10>
    80001d78:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80001d7c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80001d80:	00850513          	addi	a0,a0,8
    80001d84:	fffff097          	auipc	ra,0xfffff
    80001d88:	4f4080e7          	jalr	1268(ra) # 80001278 <_Z8sem_openPP4_semj>
}
    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
    sem_wait(myHandle);
    80001dac:	00853503          	ld	a0,8(a0)
    80001db0:	fffff097          	auipc	ra,0xfffff
    80001db4:	548080e7          	jalr	1352(ra) # 800012f8 <_Z8sem_waitP4_sem>
    return 0;
}
    80001db8:	00000513          	li	a0,0
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00113423          	sd	ra,8(sp)
    80001dd4:	00813023          	sd	s0,0(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    sem_signal(myHandle);
    80001ddc:	00853503          	ld	a0,8(a0)
    80001de0:	fffff097          	auipc	ra,0xfffff
    80001de4:	55c080e7          	jalr	1372(ra) # 8000133c <_Z10sem_signalP4_sem>
    return 0;
}
    80001de8:	00000513          	li	a0,0
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread(), period(period){}
    80001dfc:	fe010113          	addi	sp,sp,-32
    80001e00:	00113c23          	sd	ra,24(sp)
    80001e04:	00813823          	sd	s0,16(sp)
    80001e08:	00913423          	sd	s1,8(sp)
    80001e0c:	01213023          	sd	s2,0(sp)
    80001e10:	02010413          	addi	s0,sp,32
    80001e14:	00050493          	mv	s1,a0
    80001e18:	00058913          	mv	s2,a1
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	eac080e7          	jalr	-340(ra) # 80001cc8 <_ZN6ThreadC1Ev>
    80001e24:	00006797          	auipc	a5,0x6
    80001e28:	76478793          	addi	a5,a5,1892 # 80008588 <_ZTV14PeriodicThread+0x10>
    80001e2c:	00f4b023          	sd	a5,0(s1)
    80001e30:	0124b823          	sd	s2,16(s1)
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	00013903          	ld	s2,0(sp)
    80001e44:	02010113          	addi	sp,sp,32
    80001e48:	00008067          	ret

0000000080001e4c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void threadWrapper(void *);
protected:
    Thread ();
    virtual void run () {}
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00813423          	sd	s0,8(sp)
    80001e54:	01010413          	addi	s0,sp,16
    80001e58:	00813403          	ld	s0,8(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_ZN14PeriodicThread18periodicActivationEv>:
};

class PeriodicThread : public Thread {
protected:
    explicit PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	01010113          	addi	sp,sp,16
    80001e78:	00008067          	ret

0000000080001e7c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e7c:	ff010113          	addi	sp,sp,-16
    80001e80:	00113423          	sd	ra,8(sp)
    80001e84:	00813023          	sd	s0,0(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00006797          	auipc	a5,0x6
    80001e90:	6fc78793          	addi	a5,a5,1788 # 80008588 <_ZTV14PeriodicThread+0x10>
    80001e94:	00f53023          	sd	a5,0(a0)
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	c3c080e7          	jalr	-964(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    80001ea0:	00813083          	ld	ra,8(sp)
    80001ea4:	00013403          	ld	s0,0(sp)
    80001ea8:	01010113          	addi	sp,sp,16
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN14PeriodicThreadD0Ev>:
    80001eb0:	fe010113          	addi	sp,sp,-32
    80001eb4:	00113c23          	sd	ra,24(sp)
    80001eb8:	00813823          	sd	s0,16(sp)
    80001ebc:	00913423          	sd	s1,8(sp)
    80001ec0:	02010413          	addi	s0,sp,32
    80001ec4:	00050493          	mv	s1,a0
    80001ec8:	00006797          	auipc	a5,0x6
    80001ecc:	6c078793          	addi	a5,a5,1728 # 80008588 <_ZTV14PeriodicThread+0x10>
    80001ed0:	00f53023          	sd	a5,0(a0)
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	c00080e7          	jalr	-1024(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    80001edc:	00048513          	mv	a0,s1
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	ba4080e7          	jalr	-1116(ra) # 80001a84 <_ZdlPv>
    80001ee8:	01813083          	ld	ra,24(sp)
    80001eec:	01013403          	ld	s0,16(sp)
    80001ef0:	00813483          	ld	s1,8(sp)
    80001ef4:	02010113          	addi	sp,sp,32
    80001ef8:	00008067          	ret

0000000080001efc <_ZN14PeriodicThread3runEv>:
    void run() override {
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    80001f10:	00050493          	mv	s1,a0
        while(true){
            periodicActivation();
    80001f14:	0004b783          	ld	a5,0(s1)
    80001f18:	0187b783          	ld	a5,24(a5)
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	000780e7          	jalr	a5
            time_sleep(period);
    80001f24:	0104b503          	ld	a0,16(s1)
    80001f28:	fffff097          	auipc	ra,0xfffff
    80001f2c:	458080e7          	jalr	1112(ra) # 80001380 <_Z10time_sleepm>
        while(true){
    80001f30:	fe5ff06f          	j	80001f14 <_ZN14PeriodicThread3runEv+0x18>

0000000080001f34 <_Z41__static_initialization_and_destruction_0ii>:
    }
    else
    {
        // unexpected trap cause
    }
    80001f34:	ff010113          	addi	sp,sp,-16
    80001f38:	00813423          	sd	s0,8(sp)
    80001f3c:	01010413          	addi	s0,sp,16
    80001f40:	00100793          	li	a5,1
    80001f44:	00f50863          	beq	a0,a5,80001f54 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret
    80001f54:	000107b7          	lui	a5,0x10
    80001f58:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f5c:	fef596e3          	bne	a1,a5,80001f48 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(nullptr), tail(nullptr) {}
    80001f60:	00007797          	auipc	a5,0x7
    80001f64:	81078793          	addi	a5,a5,-2032 # 80008770 <_ZN5Riscv15sleepingThreadsE>
    80001f68:	0007b023          	sd	zero,0(a5)
    80001f6c:	0007b423          	sd	zero,8(a5)
    80001f70:	fd9ff06f          	j	80001f48 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f74 <_ZN5Riscv7setModeEb>:
void Riscv::setMode(bool value) {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00813423          	sd	s0,8(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    userMode = value;
    80001f80:	00007797          	auipc	a5,0x7
    80001f84:	80a78023          	sb	a0,-2048(a5) # 80008780 <_ZN5Riscv8userModeE>
}
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN5Riscv10popSppSpieEv>:
{
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00813423          	sd	s0,8(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    if (userMode) {
    80001fa0:	00006797          	auipc	a5,0x6
    80001fa4:	7e07c783          	lbu	a5,2016(a5) # 80008780 <_ZN5Riscv8userModeE>
    80001fa8:	02078063          	beqz	a5,80001fc8 <_ZN5Riscv10popSppSpieEv+0x34>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fac:	10000793          	li	a5,256
    80001fb0:	1007b073          	csrc	sstatus,a5
    __asm__ volatile("csrw sepc, ra");
    80001fb4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001fb8:	10200073          	sret
}
    80001fbc:	00813403          	ld	s0,8(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fc8:	10000793          	li	a5,256
    80001fcc:	1007a073          	csrs	sstatus,a5
}
    80001fd0:	fe5ff06f          	j	80001fb4 <_ZN5Riscv10popSppSpieEv+0x20>

0000000080001fd4 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80001fd4:	f8010113          	addi	sp,sp,-128
    80001fd8:	06113c23          	sd	ra,120(sp)
    80001fdc:	06813823          	sd	s0,112(sp)
    80001fe0:	06913423          	sd	s1,104(sp)
    80001fe4:	07213023          	sd	s2,96(sp)
    80001fe8:	05313c23          	sd	s3,88(sp)
    80001fec:	05413823          	sd	s4,80(sp)
    80001ff0:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ff4:	142027f3          	csrr	a5,scause
    80001ff8:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001ffc:	fa843703          	ld	a4,-88(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002000:	ff870693          	addi	a3,a4,-8
    80002004:	00100793          	li	a5,1
    80002008:	06d7f663          	bgeu	a5,a3,80002074 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
    else if (scause == 0x8000000000000001UL)
    8000200c:	fff00793          	li	a5,-1
    80002010:	03f79793          	slli	a5,a5,0x3f
    80002014:	00178793          	addi	a5,a5,1
    80002018:	48f70263          	beq	a4,a5,8000249c <_ZN5Riscv20handleSupervisorTrapEv+0x4c8>
    else if (scause == 0x8000000000000009UL)
    8000201c:	fff00793          	li	a5,-1
    80002020:	03f79793          	slli	a5,a5,0x3f
    80002024:	00978793          	addi	a5,a5,9
    80002028:	16f71663          	bne	a4,a5,80002194 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        int irq = plic_claim();
    8000202c:	00002097          	auipc	ra,0x2
    80002030:	668080e7          	jalr	1640(ra) # 80004694 <plic_claim>
    80002034:	00050493          	mv	s1,a0
        while (*((char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT) {
    80002038:	00006797          	auipc	a5,0x6
    8000203c:	6587b783          	ld	a5,1624(a5) # 80008690 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002040:	0007b783          	ld	a5,0(a5)
    80002044:	0007c783          	lbu	a5,0(a5)
    80002048:	0017f793          	andi	a5,a5,1
    8000204c:	54078263          	beqz	a5,80002590 <_ZN5Riscv20handleSupervisorTrapEv+0x5bc>
            char c = (*(char*)CONSOLE_RX_DATA);
    80002050:	00006797          	auipc	a5,0x6
    80002054:	6387b783          	ld	a5,1592(a5) # 80008688 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002058:	0007b783          	ld	a5,0(a5)
            getCBuffer->putc(c);
    8000205c:	0007c583          	lbu	a1,0(a5)
    80002060:	00006517          	auipc	a0,0x6
    80002064:	73053503          	ld	a0,1840(a0) # 80008790 <_ZN5Riscv10getCBufferE>
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	a88080e7          	jalr	-1400(ra) # 80002af0 <_ZN6Buffer4putcEc>
        while (*((char*)(CONSOLE_STATUS)) & CONSOLE_RX_STATUS_BIT) {
    80002070:	fc9ff06f          	j	80002038 <_ZN5Riscv20handleSupervisorTrapEv+0x64>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002074:	141027f3          	csrr	a5,sepc
    80002078:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000207c:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002080:	00478793          	addi	a5,a5,4
    80002084:	f8f43423          	sd	a5,-120(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002088:	100027f3          	csrr	a5,sstatus
    8000208c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80002090:	fb043783          	ld	a5,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002094:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("ld t1, 8*10(fp)");
    80002098:	05043303          	ld	t1,80(s0)
        __asm__ volatile("mv %0, t1" : "=r" (code));
    8000209c:	00030793          	mv	a5,t1
        if (code == MEM_ALLOC) {
    800020a0:	00100713          	li	a4,1
    800020a4:	06e78a63          	beq	a5,a4,80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
        else if (code == MEM_FREE) {
    800020a8:	00200713          	li	a4,2
    800020ac:	0ce78c63          	beq	a5,a4,80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
        else if (code == THREAD_CREATE){
    800020b0:	00b00713          	li	a4,11
    800020b4:	10e78063          	beq	a5,a4,800021b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
        else if (code == THREAD_EXIT){
    800020b8:	00c00713          	li	a4,12
    800020bc:	14e78063          	beq	a5,a4,800021fc <_ZN5Riscv20handleSupervisorTrapEv+0x228>
        else if (code == THREAD_DISPATCH){
    800020c0:	00d00713          	li	a4,13
    800020c4:	16e78e63          	beq	a5,a4,80002240 <_ZN5Riscv20handleSupervisorTrapEv+0x26c>
        else if (code == SEM_OPEN){
    800020c8:	01500713          	li	a4,21
    800020cc:	18e78e63          	beq	a5,a4,80002268 <_ZN5Riscv20handleSupervisorTrapEv+0x294>
        else if (code == SEM_CLOSE){
    800020d0:	01600713          	li	a4,22
    800020d4:	1ce78863          	beq	a5,a4,800022a4 <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
        else if (code == SEM_WAIT){
    800020d8:	01700713          	li	a4,23
    800020dc:	1ee78463          	beq	a5,a4,800022c4 <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
        else if (code == SEM_SIGNAL){
    800020e0:	01800713          	li	a4,24
    800020e4:	20e78063          	beq	a5,a4,800022e4 <_ZN5Riscv20handleSupervisorTrapEv+0x310>
        else if (code == TIME_SLEEP){
    800020e8:	01f00713          	li	a4,31
    800020ec:	20e78c63          	beq	a5,a4,80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
        else if (code == GET_C){
    800020f0:	02900713          	li	a4,41
    800020f4:	36e78463          	beq	a5,a4,8000245c <_ZN5Riscv20handleSupervisorTrapEv+0x488>
        else if (code == PUT_C){
    800020f8:	02a00713          	li	a4,42
    800020fc:	38e78063          	beq	a5,a4,8000247c <_ZN5Riscv20handleSupervisorTrapEv+0x4a8>
            TCB::timeSliceCounter = 0;
    80002100:	00006797          	auipc	a5,0x6
    80002104:	5b07b783          	ld	a5,1456(a5) # 800086b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002108:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	818080e7          	jalr	-2024(ra) # 80001924 <_ZN3TCB8dispatchEv>
    80002114:	0700006f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    80002118:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (brojBlokova));
    8000211c:	00038613          	mv	a2,t2
            __asm__ volatile("ld t2, 8*12(fp)");
    80002120:	06043383          	ld	t2,96(s0)
            __asm__ volatile("mv %0, t2" : "=r" (ret));
    80002124:	00038793          	mv	a5,t2
            Node* temp = head;
    80002128:	00006797          	auipc	a5,0x6
    8000212c:	6607b783          	ld	a5,1632(a5) # 80008788 <_ZN5Riscv4headE>
    80002130:	0200006f          	j	80002150 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
                        head = (Node*)((char*)head + size);
    80002134:	00d70733          	add	a4,a4,a3
    80002138:	00006597          	auipc	a1,0x6
    8000213c:	64e5b823          	sd	a4,1616(a1) # 80008788 <_ZN5Riscv4headE>
                        head->size = size;
    80002140:	00d73423          	sd	a3,8(a4)
                        head->next = temp->next;
    80002144:	0007b683          	ld	a3,0(a5)
    80002148:	00d73023          	sd	a3,0(a4)
                temp = temp->next;
    8000214c:	0007b783          	ld	a5,0(a5)
            while (temp && temp->size < brojBlokova*MEM_BLOCK_SIZE) {    //while temp and temp->size < brojBLokova * min_block_size...
    80002150:	02078263          	beqz	a5,80002174 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
    80002154:	0087b703          	ld	a4,8(a5)
    80002158:	00661693          	slli	a3,a2,0x6
    8000215c:	00d77c63          	bgeu	a4,a3,80002174 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                if (temp->size >= brojBlokova) {
    80002160:	fec766e3          	bltu	a4,a2,8000214c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
                    if (temp == head) {
    80002164:	00006717          	auipc	a4,0x6
    80002168:	62473703          	ld	a4,1572(a4) # 80008788 <_ZN5Riscv4headE>
    8000216c:	fef710e3          	bne	a4,a5,8000214c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80002170:	fc5ff06f          	j	80002134 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            w_sstatus(sstatus);
    80002174:	f9043783          	ld	a5,-112(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002178:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000217c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002180:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002184:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002188:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000218c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002190:	14179073          	csrw	sepc,a5
    80002194:	07813083          	ld	ra,120(sp)
    80002198:	07013403          	ld	s0,112(sp)
    8000219c:	06813483          	ld	s1,104(sp)
    800021a0:	06013903          	ld	s2,96(sp)
    800021a4:	05813983          	ld	s3,88(sp)
    800021a8:	05013a03          	ld	s4,80(sp)
    800021ac:	08010113          	addi	sp,sp,128
    800021b0:	00008067          	ret
            __asm__ volatile("ld t2, 8*11(fp)");
    800021b4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    800021b8:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    800021bc:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));
    800021c0:	00030593          	mv	a1,t1
            __asm__ volatile("ld t1, 8*13(fp)");
    800021c4:	06843303          	ld	t1,104(s0)
            __asm__ volatile("mv %0, t1" : "=r" (args));
    800021c8:	00030613          	mv	a2,t1
            __asm__ volatile("ld t1, 8*14(fp)");
    800021cc:	07043303          	ld	t1,112(s0)
            __asm__ volatile("mv %0, t1" : "=r" (stack));
    800021d0:	00030693          	mv	a3,t1
            __asm__ volatile("ld t1, 8*15(fp)");
    800021d4:	07843303          	ld	t1,120(s0)
            __asm__ volatile("mv %0, t1" : "=r" (ret));
    800021d8:	00030493          	mv	s1,t1
            if (!(TCB::createThread(handle, start_routine, args, stack))){
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	538080e7          	jalr	1336(ra) # 80001714 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
    800021e4:	00050663          	beqz	a0,800021f0 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
                *ret = 0;
    800021e8:	0004a023          	sw	zero,0(s1)
    800021ec:	f99ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                *ret = -1;
    800021f0:	fff00793          	li	a5,-1
    800021f4:	00f4a023          	sw	a5,0(s1)
    800021f8:	f8dff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            TCB::running->setFinished(true);
    800021fc:	00006797          	auipc	a5,0x6
    80002200:	4ec7b783          	ld	a5,1260(a5) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002204:	0007b483          	ld	s1,0(a5)
    void setFinished(bool value) { finished = value; }
    80002208:	00100793          	li	a5,1
    8000220c:	02f48e23          	sb	a5,60(s1)
            TCB::dispatch();
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	714080e7          	jalr	1812(ra) # 80001924 <_ZN3TCB8dispatchEv>
            delete t;
    80002218:	00048a63          	beqz	s1,8000222c <_ZN5Riscv20handleSupervisorTrapEv+0x258>
    8000221c:	0004b783          	ld	a5,0(s1)
    80002220:	0087b783          	ld	a5,8(a5)
    80002224:	00048513          	mv	a0,s1
    80002228:	000780e7          	jalr	a5
            w_sstatus(sstatus);
    8000222c:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002230:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002234:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002238:	14179073          	csrw	sepc,a5
}
    8000223c:	f49ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            TCB::timeSliceCounter = 0;
    80002240:	00006797          	auipc	a5,0x6
    80002244:	4707b783          	ld	a5,1136(a5) # 800086b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002248:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	6d8080e7          	jalr	1752(ra) # 80001924 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002254:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002258:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000225c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002260:	14179073          	csrw	sepc,a5
}
    80002264:	f21ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    80002268:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    8000226c:	00038513          	mv	a0,t2
            __asm__ volatile("ld t2, 8*12(fp)");
    80002270:	06043383          	ld	t2,96(s0)
            __asm__ volatile("mv %0, t2" : "=r" (init));
    80002274:	00038593          	mv	a1,t2
    80002278:	0005859b          	sext.w	a1,a1
            __asm__ volatile("ld t1, 8*13(fp)");
    8000227c:	06843303          	ld	t1,104(s0)
            __asm__ volatile("mv %0, t1" : "=r" (ret));
    80002280:	00030493          	mv	s1,t1
            if (!(_sem::createSemaphore(handle, init))){
    80002284:	00000097          	auipc	ra,0x0
    80002288:	60c080e7          	jalr	1548(ra) # 80002890 <_ZN4_sem15createSemaphoreEPPS_j>
    8000228c:	00050663          	beqz	a0,80002298 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
                *ret = 0;
    80002290:	0004a023          	sw	zero,0(s1)
    80002294:	ef1ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                *ret = -1;
    80002298:	fff00793          	li	a5,-1
    8000229c:	00f4a023          	sw	a5,0(s1)
    800022a0:	ee5ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    800022a4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    800022a8:	00038513          	mv	a0,t2
            __asm__ volatile("ld t2, 8*12(fp)");
    800022ac:	06043383          	ld	t2,96(s0)
            __asm__ volatile("mv %0, t2" : "=r" (ret));
    800022b0:	00038493          	mv	s1,t2
            *ret = handle->close();
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	320080e7          	jalr	800(ra) # 800025d4 <_ZN4_sem5closeEv>
    800022bc:	00a4a023          	sw	a0,0(s1)
    800022c0:	ec5ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    800022c4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (id));
    800022c8:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    800022cc:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (ret));
    800022d0:	00030493          	mv	s1,t1
            *ret = id->wait();
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	478080e7          	jalr	1144(ra) # 8000274c <_ZN4_sem4waitEv>
    800022dc:	00a4a023          	sw	a0,0(s1)
    800022e0:	ea5ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    800022e4:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (id));
    800022e8:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    800022ec:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (ret));
    800022f0:	00030493          	mv	s1,t1
            *ret = id->signal();
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	544080e7          	jalr	1348(ra) # 80002838 <_ZN4_sem6signalEv>
    800022fc:	00a4a023          	sw	a0,0(s1)
    80002300:	e85ff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    80002304:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (slice));
    80002308:	00038913          	mv	s2,t2
            if(slice != 0) {
    8000230c:	00091863          	bnez	s2,8000231c <_ZN5Riscv20handleSupervisorTrapEv+0x348>
            TCB::dispatch();
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	614080e7          	jalr	1556(ra) # 80001924 <_ZN3TCB8dispatchEv>
    80002318:	e6dff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                TCB::running->setSleeping(true);
    8000231c:	00006797          	auipc	a5,0x6
    80002320:	3cc7b783          	ld	a5,972(a5) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002324:	0007ba03          	ld	s4,0(a5)
    void setSleeping(bool value) { sleeping = value; }
    80002328:	00100793          	li	a5,1
    8000232c:	02fa0ea3          	sb	a5,61(s4)
            delete elem;
        }
    }

    void put(TCB* thread, time_t slice){
        if (head == nullptr) {
    80002330:	00006497          	auipc	s1,0x6
    80002334:	4404b483          	ld	s1,1088(s1) # 80008770 <_ZN5Riscv15sleepingThreadsE>
    80002338:	02048663          	beqz	s1,80002364 <_ZN5Riscv20handleSupervisorTrapEv+0x390>
            head = new Elem(thread, nullptr, slice);
            tail = head;
        }
        else {
            Elem* temp = head;
            Elem* prev = nullptr;
    8000233c:	00000993          	li	s3,0
            while (temp != tail && slice >= temp->relativeTime) {
    80002340:	00006717          	auipc	a4,0x6
    80002344:	43873703          	ld	a4,1080(a4) # 80008778 <_ZN5Riscv15sleepingThreadsE+0x8>
    80002348:	04970463          	beq	a4,s1,80002390 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
    8000234c:	0104b783          	ld	a5,16(s1)
    80002350:	04f96063          	bltu	s2,a5,80002390 <_ZN5Riscv20handleSupervisorTrapEv+0x3bc>
                slice -= temp->relativeTime;
    80002354:	40f90933          	sub	s2,s2,a5
                prev = temp;
    80002358:	00048993          	mv	s3,s1
                temp = temp->next;
    8000235c:	0084b483          	ld	s1,8(s1)
            while (temp != tail && slice >= temp->relativeTime) {
    80002360:	fe1ff06f          	j	80002340 <_ZN5Riscv20handleSupervisorTrapEv+0x36c>
            head = new Elem(thread, nullptr, slice);
    80002364:	01800513          	li	a0,24
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	6cc080e7          	jalr	1740(ra) # 80001a34 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80002370:	01453023          	sd	s4,0(a0)
    80002374:	00053423          	sd	zero,8(a0)
    80002378:	01253823          	sd	s2,16(a0)
            head = new Elem(thread, nullptr, slice);
    8000237c:	00006717          	auipc	a4,0x6
    80002380:	3f470713          	addi	a4,a4,1012 # 80008770 <_ZN5Riscv15sleepingThreadsE>
    80002384:	00a73023          	sd	a0,0(a4)
            tail = head;
    80002388:	00a73423          	sd	a0,8(a4)
    8000238c:	f85ff06f          	j	80002310 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
            }
            if (temp == tail){
    80002390:	02970a63          	beq	a4,s1,800023c4 <_ZN5Riscv20handleSupervisorTrapEv+0x3f0>
                    }
                    tail->relativeTime -= slice;
                }
            }
            else {
                Elem* novi = new Elem(thread, temp, slice);
    80002394:	01800513          	li	a0,24
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	69c080e7          	jalr	1692(ra) # 80001a34 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    800023a0:	01453023          	sd	s4,0(a0)
    800023a4:	00953423          	sd	s1,8(a0)
    800023a8:	01253823          	sd	s2,16(a0)
                if (prev) {
    800023ac:	0a098263          	beqz	s3,80002450 <_ZN5Riscv20handleSupervisorTrapEv+0x47c>
                    prev->next = novi;
    800023b0:	00a9b423          	sd	a0,8(s3)
                }
                else {
                    head = novi;
                }
                temp->relativeTime -= slice;
    800023b4:	0104b783          	ld	a5,16(s1)
    800023b8:	41278933          	sub	s2,a5,s2
    800023bc:	0124b823          	sd	s2,16(s1)
            }
        }
    }
    800023c0:	f51ff06f          	j	80002310 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
                if (slice >= tail->relativeTime){
    800023c4:	01073783          	ld	a5,16(a4)
    800023c8:	02f96e63          	bltu	s2,a5,80002404 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
                    Elem* novi = new Elem(thread, nullptr, slice - tail->relativeTime);
    800023cc:	01800513          	li	a0,24
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	664080e7          	jalr	1636(ra) # 80001a34 <_Znwm>
    800023d8:	00006697          	auipc	a3,0x6
    800023dc:	39868693          	addi	a3,a3,920 # 80008770 <_ZN5Riscv15sleepingThreadsE>
    800023e0:	0086b603          	ld	a2,8(a3)
    800023e4:	01063703          	ld	a4,16(a2)
    800023e8:	40e90933          	sub	s2,s2,a4
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    800023ec:	01453023          	sd	s4,0(a0)
    800023f0:	00053423          	sd	zero,8(a0)
    800023f4:	01253823          	sd	s2,16(a0)
                    tail->next = novi;
    800023f8:	00a63423          	sd	a0,8(a2)
                    tail = novi;
    800023fc:	00a6b423          	sd	a0,8(a3)
    80002400:	f11ff06f          	j	80002310 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
                    Elem* novi = new Elem(thread, tail, slice);
    80002404:	01800513          	li	a0,24
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	62c080e7          	jalr	1580(ra) # 80001a34 <_Znwm>
        Elem(TCB *data, Elem *next, time_t relativeTime) : data(data), next(next), relativeTime(relativeTime) {}
    80002410:	01453023          	sd	s4,0(a0)
    80002414:	00006717          	auipc	a4,0x6
    80002418:	36473703          	ld	a4,868(a4) # 80008778 <_ZN5Riscv15sleepingThreadsE+0x8>
    8000241c:	00e53423          	sd	a4,8(a0)
    80002420:	01253823          	sd	s2,16(a0)
                    if (prev != nullptr){
    80002424:	02098063          	beqz	s3,80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x470>
                        prev->next = novi;
    80002428:	00a9b423          	sd	a0,8(s3)
                    tail->relativeTime -= slice;
    8000242c:	00006717          	auipc	a4,0x6
    80002430:	34c73703          	ld	a4,844(a4) # 80008778 <_ZN5Riscv15sleepingThreadsE+0x8>
    80002434:	01073783          	ld	a5,16(a4)
    80002438:	41278933          	sub	s2,a5,s2
    8000243c:	01273823          	sd	s2,16(a4)
    80002440:	ed1ff06f          	j	80002310 <_ZN5Riscv20handleSupervisorTrapEv+0x33c>
                        head = novi;
    80002444:	00006717          	auipc	a4,0x6
    80002448:	32a73623          	sd	a0,812(a4) # 80008770 <_ZN5Riscv15sleepingThreadsE>
    8000244c:	fe1ff06f          	j	8000242c <_ZN5Riscv20handleSupervisorTrapEv+0x458>
                    head = novi;
    80002450:	00006717          	auipc	a4,0x6
    80002454:	32a73023          	sd	a0,800(a4) # 80008770 <_ZN5Riscv15sleepingThreadsE>
    80002458:	f5dff06f          	j	800023b4 <_ZN5Riscv20handleSupervisorTrapEv+0x3e0>
            __asm__ volatile("ld t2, 8*11(fp)");
    8000245c:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (ret));
    80002460:	00038493          	mv	s1,t2
            *ret = getCBuffer->getc();
    80002464:	00006517          	auipc	a0,0x6
    80002468:	32c53503          	ld	a0,812(a0) # 80008790 <_ZN5Riscv10getCBufferE>
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	628080e7          	jalr	1576(ra) # 80002a94 <_ZN6Buffer4getcEv>
    80002474:	00a48023          	sb	a0,0(s1)
    80002478:	d0dff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
            __asm__ volatile("ld t2, 8*11(fp)");
    8000247c:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (c));
    80002480:	00038593          	mv	a1,t2
            putCBuffer->putc(c);
    80002484:	0ff5f593          	andi	a1,a1,255
    80002488:	00006517          	auipc	a0,0x6
    8000248c:	31053503          	ld	a0,784(a0) # 80008798 <_ZN5Riscv10putCBufferE>
    80002490:	00000097          	auipc	ra,0x0
    80002494:	660080e7          	jalr	1632(ra) # 80002af0 <_ZN6Buffer4putcEc>
    80002498:	cedff06f          	j	80002184 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
        if (!head) { return -1; }
    8000249c:	00006717          	auipc	a4,0x6
    800024a0:	2d473703          	ld	a4,724(a4) # 80008770 <_ZN5Riscv15sleepingThreadsE>
    800024a4:	00070e63          	beqz	a4,800024c0 <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
        return head->relativeTime;
    800024a8:	01073783          	ld	a5,16(a4)
        if (temp != t1){
    800024ac:	fff00693          	li	a3,-1
    800024b0:	00d78863          	beq	a5,a3,800024c0 <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
            head->relativeTime -= 1;
    800024b4:	fff78793          	addi	a5,a5,-1
    800024b8:	00f73823          	sd	a5,16(a4)
            if (Riscv::sleepingThreads.peekFirstSlice() == 0) {
    800024bc:	08078e63          	beqz	a5,80002558 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800024c0:	00200793          	li	a5,2
    800024c4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800024c8:	00006717          	auipc	a4,0x6
    800024cc:	1e873703          	ld	a4,488(a4) # 800086b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024d0:	00073783          	ld	a5,0(a4)
    800024d4:	00178793          	addi	a5,a5,1
    800024d8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800024dc:	00006717          	auipc	a4,0x6
    800024e0:	20c73703          	ld	a4,524(a4) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800024e4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800024e8:	03073703          	ld	a4,48(a4)
    800024ec:	cae7e4e3          	bltu	a5,a4,80002194 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024f0:	141027f3          	csrr	a5,sepc
    800024f4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800024f8:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    800024fc:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002500:	100027f3          	csrr	a5,sstatus
    80002504:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002508:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    8000250c:	faf43023          	sd	a5,-96(s0)
            TCB::timeSliceCounter = 0;
    80002510:	00006797          	auipc	a5,0x6
    80002514:	1a07b783          	ld	a5,416(a5) # 800086b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002518:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	408080e7          	jalr	1032(ra) # 80001924 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002524:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002528:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000252c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002530:	14179073          	csrw	sepc,a5
}
    80002534:	c61ff06f          	j	80002194 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
            if (!head) { tail = nullptr; }
    80002538:	00006797          	auipc	a5,0x6
    8000253c:	2407b023          	sd	zero,576(a5) # 80008778 <_ZN5Riscv15sleepingThreadsE+0x8>
            elem->data->setSleeping(false);
    80002540:	0004b783          	ld	a5,0(s1)
    void setSleeping(bool value) { sleeping = value; }
    80002544:	02078ea3          	sb	zero,61(a5)
            Scheduler::put(elem->data);
    80002548:	0004b503          	ld	a0,0(s1)
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	470080e7          	jalr	1136(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
            delete elem;
    80002554:	02049663          	bnez	s1,80002580 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
        while (head != nullptr && head->relativeTime == 0){
    80002558:	00006497          	auipc	s1,0x6
    8000255c:	2184b483          	ld	s1,536(s1) # 80008770 <_ZN5Riscv15sleepingThreadsE>
    80002560:	f60480e3          	beqz	s1,800024c0 <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
    80002564:	0104b783          	ld	a5,16(s1)
    80002568:	f4079ce3          	bnez	a5,800024c0 <_ZN5Riscv20handleSupervisorTrapEv+0x4ec>
            head = head->next;
    8000256c:	0084b783          	ld	a5,8(s1)
    80002570:	00006717          	auipc	a4,0x6
    80002574:	20f73023          	sd	a5,512(a4) # 80008770 <_ZN5Riscv15sleepingThreadsE>
            if (!head) { tail = nullptr; }
    80002578:	fc0794e3          	bnez	a5,80002540 <_ZN5Riscv20handleSupervisorTrapEv+0x56c>
    8000257c:	fbdff06f          	j	80002538 <_ZN5Riscv20handleSupervisorTrapEv+0x564>
            delete elem;
    80002580:	00048513          	mv	a0,s1
    80002584:	fffff097          	auipc	ra,0xfffff
    80002588:	500080e7          	jalr	1280(ra) # 80001a84 <_ZdlPv>
    8000258c:	fcdff06f          	j	80002558 <_ZN5Riscv20handleSupervisorTrapEv+0x584>
        plic_complete(irq);
    80002590:	00048513          	mv	a0,s1
    80002594:	00002097          	auipc	ra,0x2
    80002598:	138080e7          	jalr	312(ra) # 800046cc <plic_complete>
    8000259c:	bf9ff06f          	j	80002194 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>

00000000800025a0 <_GLOBAL__sub_I__ZN5Riscv15sleepingThreadsE>:
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    800025b0:	000105b7          	lui	a1,0x10
    800025b4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025b8:	00100513          	li	a0,1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	978080e7          	jalr	-1672(ra) # 80001f34 <_Z41__static_initialization_and_destruction_0ii>
    800025c4:	00813083          	ld	ra,8(sp)
    800025c8:	00013403          	ld	s0,0(sp)
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret

00000000800025d4 <_ZN4_sem5closeEv>:
    }
    return 0;
}

int _sem::close() {
    if (closed)
    800025d4:	00054783          	lbu	a5,0(a0)
    800025d8:	0e079063          	bnez	a5,800026b8 <_ZN4_sem5closeEv+0xe4>
int _sem::close() {
    800025dc:	fe010113          	addi	sp,sp,-32
    800025e0:	00113c23          	sd	ra,24(sp)
    800025e4:	00813823          	sd	s0,16(sp)
    800025e8:	00913423          	sd	s1,8(sp)
    800025ec:	01213023          	sd	s2,0(sp)
    800025f0:	02010413          	addi	s0,sp,32
    800025f4:	00050493          	mv	s1,a0
        return -1;
    closed = true;
    800025f8:	00100793          	li	a5,1
    800025fc:	00f50023          	sb	a5,0(a0)
        if (!head) { return 0; }
    80002600:	01053783          	ld	a5,16(a0)
    80002604:	00078663          	beqz	a5,80002610 <_ZN4_sem5closeEv+0x3c>
        return head->data;
    80002608:	0007b783          	ld	a5,0(a5)
    if (blocked.peekFirst() != nullptr) {
    8000260c:	04079e63          	bnez	a5,80002668 <_ZN4_sem5closeEv+0x94>
            blocked.peekFirst()->setBlocked(false);
            Scheduler::put(blocked.peekFirst());
            blocked.removeFirst();
        }
    }
    Riscv::listOfClosedSemaphores->addLast(this);
    80002610:	00006797          	auipc	a5,0x6
    80002614:	0e87b783          	ld	a5,232(a5) # 800086f8 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002618:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    8000261c:	01000513          	li	a0,16
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	414080e7          	jalr	1044(ra) # 80001a34 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002628:	00953023          	sd	s1,0(a0)
    8000262c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002630:	00893783          	ld	a5,8(s2)
    80002634:	06078a63          	beqz	a5,800026a8 <_ZN4_sem5closeEv+0xd4>
            tail->next = elem;
    80002638:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000263c:	00a93423          	sd	a0,8(s2)
    return 0;
    80002640:	00000513          	li	a0,0
}
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	00013903          	ld	s2,0(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret
        if (!head) { tail = 0; }
    8000265c:	0004bc23          	sd	zero,24(s1)
        delete elem;
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	424080e7          	jalr	1060(ra) # 80001a84 <_ZdlPv>
        if (!head) { return 0; }
    80002668:	0104b783          	ld	a5,16(s1)
    8000266c:	fa0782e3          	beqz	a5,80002610 <_ZN4_sem5closeEv+0x3c>
        return head->data;
    80002670:	0007b783          	ld	a5,0(a5)
        while (blocked.peekFirst()) {
    80002674:	f8078ee3          	beqz	a5,80002610 <_ZN4_sem5closeEv+0x3c>
    void setBlocked(bool value) { blocked = value; }
    80002678:	02078f23          	sb	zero,62(a5)
        if (!head) { return 0; }
    8000267c:	0104b503          	ld	a0,16(s1)
    80002680:	00050463          	beqz	a0,80002688 <_ZN4_sem5closeEv+0xb4>
        return head->data;
    80002684:	00053503          	ld	a0,0(a0)
            Scheduler::put(blocked.peekFirst());
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	334080e7          	jalr	820(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80002690:	0104b503          	ld	a0,16(s1)
    80002694:	fc050ae3          	beqz	a0,80002668 <_ZN4_sem5closeEv+0x94>
        head = head->next;
    80002698:	00853783          	ld	a5,8(a0)
    8000269c:	00f4b823          	sd	a5,16(s1)
        if (!head) { tail = 0; }
    800026a0:	fc0790e3          	bnez	a5,80002660 <_ZN4_sem5closeEv+0x8c>
    800026a4:	fb9ff06f          	j	8000265c <_ZN4_sem5closeEv+0x88>
            head = tail = elem;
    800026a8:	00a93423          	sd	a0,8(s2)
    800026ac:	00a93023          	sd	a0,0(s2)
    return 0;
    800026b0:	00000513          	li	a0,0
    800026b4:	f91ff06f          	j	80002644 <_ZN4_sem5closeEv+0x70>
        return -1;
    800026b8:	fff00513          	li	a0,-1
}
    800026bc:	00008067          	ret

00000000800026c0 <_ZN4_sem5blockEv>:

void _sem::block() {
    800026c0:	fe010113          	addi	sp,sp,-32
    800026c4:	00113c23          	sd	ra,24(sp)
    800026c8:	00813823          	sd	s0,16(sp)
    800026cc:	00913423          	sd	s1,8(sp)
    800026d0:	01213023          	sd	s2,0(sp)
    800026d4:	02010413          	addi	s0,sp,32
    800026d8:	00050493          	mv	s1,a0
    NumOfBlockedThreads++;
    800026dc:	00852783          	lw	a5,8(a0)
    800026e0:	0017879b          	addiw	a5,a5,1
    800026e4:	00f52423          	sw	a5,8(a0)
    TCB::running->setBlocked(true);
    800026e8:	00006797          	auipc	a5,0x6
    800026ec:	0007b783          	ld	a5,0(a5) # 800086e8 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026f0:	0007b903          	ld	s2,0(a5)
    800026f4:	00100793          	li	a5,1
    800026f8:	02f90f23          	sb	a5,62(s2)
        Elem *elem = new Elem(data, 0);
    800026fc:	01000513          	li	a0,16
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	334080e7          	jalr	820(ra) # 80001a34 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002708:	01253023          	sd	s2,0(a0)
    8000270c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002710:	0184b783          	ld	a5,24(s1)
    80002714:	02078663          	beqz	a5,80002740 <_ZN4_sem5blockEv+0x80>
            tail->next = elem;
    80002718:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000271c:	00a4bc23          	sd	a0,24(s1)
    blocked.addLast(TCB::running);
    thread_dispatch();
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	b34080e7          	jalr	-1228(ra) # 80001254 <_Z15thread_dispatchv>
}
    80002728:	01813083          	ld	ra,24(sp)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	00813483          	ld	s1,8(sp)
    80002734:	00013903          	ld	s2,0(sp)
    80002738:	02010113          	addi	sp,sp,32
    8000273c:	00008067          	ret
            head = tail = elem;
    80002740:	00a4bc23          	sd	a0,24(s1)
    80002744:	00a4b823          	sd	a0,16(s1)
    80002748:	fd9ff06f          	j	80002720 <_ZN4_sem5blockEv+0x60>

000000008000274c <_ZN4_sem4waitEv>:
int _sem::wait() {
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
    val--;
    80002764:	00452783          	lw	a5,4(a0)
    80002768:	fff7879b          	addiw	a5,a5,-1
    8000276c:	00f52223          	sw	a5,4(a0)
    if (val<0){
    80002770:	02079713          	slli	a4,a5,0x20
    80002774:	02074463          	bltz	a4,8000279c <_ZN4_sem4waitEv+0x50>
    if (!closed)
    80002778:	0004c783          	lbu	a5,0(s1)
    8000277c:	02078e63          	beqz	a5,800027b8 <_ZN4_sem4waitEv+0x6c>
        if (NumOfBlockedThreads == 0)   // Ako je broj blokiranih niti 0 to znaci da se nit prvo oslobodila sa signal
    80002780:	0084a503          	lw	a0,8(s1)
    80002784:	02051263          	bnez	a0,800027a8 <_ZN4_sem4waitEv+0x5c>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret
        block();
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	f24080e7          	jalr	-220(ra) # 800026c0 <_ZN4_sem5blockEv>
    800027a4:	fd5ff06f          	j	80002778 <_ZN4_sem4waitEv+0x2c>
            NumOfBlockedThreads--;
    800027a8:	fff5051b          	addiw	a0,a0,-1
    800027ac:	00a4a423          	sw	a0,8(s1)
            return -1;
    800027b0:	fff00513          	li	a0,-1
    800027b4:	fd5ff06f          	j	80002788 <_ZN4_sem4waitEv+0x3c>
        return 0;
    800027b8:	00000513          	li	a0,0
    800027bc:	fcdff06f          	j	80002788 <_ZN4_sem4waitEv+0x3c>

00000000800027c0 <_ZN4_sem7deblockEv>:

void _sem::deblock() {
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	02010413          	addi	s0,sp,32
    800027d4:	00050793          	mv	a5,a0
    NumOfBlockedThreads--;
    800027d8:	00852703          	lw	a4,8(a0)
    800027dc:	fff7071b          	addiw	a4,a4,-1
    800027e0:	00e52423          	sw	a4,8(a0)
        if (!head) { return 0; }
    800027e4:	01053503          	ld	a0,16(a0)
    800027e8:	04050463          	beqz	a0,80002830 <_ZN4_sem7deblockEv+0x70>
        head = head->next;
    800027ec:	00853703          	ld	a4,8(a0)
    800027f0:	00e7b823          	sd	a4,16(a5)
        if (!head) { tail = 0; }
    800027f4:	02070a63          	beqz	a4,80002828 <_ZN4_sem7deblockEv+0x68>
        T *ret = elem->data;
    800027f8:	00053483          	ld	s1,0(a0)
        delete elem;
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	288080e7          	jalr	648(ra) # 80001a84 <_ZdlPv>
    80002804:	02048f23          	sb	zero,62(s1)
    TCB* temp = blocked.removeFirst();
    temp->setBlocked(false);
    Scheduler::put(temp);
    80002808:	00048513          	mv	a0,s1
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	1b0080e7          	jalr	432(ra) # 800029bc <_ZN9Scheduler3putEP3TCB>
}
    80002814:	01813083          	ld	ra,24(sp)
    80002818:	01013403          	ld	s0,16(sp)
    8000281c:	00813483          	ld	s1,8(sp)
    80002820:	02010113          	addi	sp,sp,32
    80002824:	00008067          	ret
        if (!head) { tail = 0; }
    80002828:	0007bc23          	sd	zero,24(a5)
    8000282c:	fcdff06f          	j	800027f8 <_ZN4_sem7deblockEv+0x38>
        if (!head) { return 0; }
    80002830:	00050493          	mv	s1,a0
    80002834:	fd1ff06f          	j	80002804 <_ZN4_sem7deblockEv+0x44>

0000000080002838 <_ZN4_sem6signalEv>:
    if (closed) {
    80002838:	00054783          	lbu	a5,0(a0)
    8000283c:	04079663          	bnez	a5,80002888 <_ZN4_sem6signalEv+0x50>
    val++;
    80002840:	00452783          	lw	a5,4(a0)
    80002844:	0017879b          	addiw	a5,a5,1
    80002848:	0007871b          	sext.w	a4,a5
    8000284c:	00f52223          	sw	a5,4(a0)
    if (val<=0) {
    80002850:	00e05663          	blez	a4,8000285c <_ZN4_sem6signalEv+0x24>
    return 0;
    80002854:	00000513          	li	a0,0
}
    80002858:	00008067          	ret
int _sem::signal() {
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	00813023          	sd	s0,0(sp)
    80002868:	01010413          	addi	s0,sp,16
        deblock();
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	f54080e7          	jalr	-172(ra) # 800027c0 <_ZN4_sem7deblockEv>
    return 0;
    80002874:	00000513          	li	a0,0
}
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret
        return -1;
    80002888:	fff00513          	li	a0,-1
    8000288c:	00008067          	ret

0000000080002890 <_ZN4_sem15createSemaphoreEPPS_j>:

_sem *_sem::createSemaphore(_sem **handle, unsigned int init) {
    80002890:	fe010113          	addi	sp,sp,-32
    80002894:	00113c23          	sd	ra,24(sp)
    80002898:	00813823          	sd	s0,16(sp)
    8000289c:	00913423          	sd	s1,8(sp)
    800028a0:	01213023          	sd	s2,0(sp)
    800028a4:	02010413          	addi	s0,sp,32
    800028a8:	00050493          	mv	s1,a0
    800028ac:	00058913          	mv	s2,a1
    *handle = new _sem(init);
    800028b0:	02000513          	li	a0,32
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	180080e7          	jalr	384(ra) # 80001a34 <_Znwm>
class TCB;

class _sem
{
public:
    explicit _sem (int initValue=0) : closed(false), val(initValue) {}
    800028bc:	00050023          	sb	zero,0(a0)
    800028c0:	01252223          	sw	s2,4(a0)
    800028c4:	00052423          	sw	zero,8(a0)
    List() : head(0), tail(0) {}
    800028c8:	00053823          	sd	zero,16(a0)
    800028cc:	00053c23          	sd	zero,24(a0)
    800028d0:	00a4b023          	sd	a0,0(s1)
    return *handle;
}
    800028d4:	01813083          	ld	ra,24(sp)
    800028d8:	01013403          	ld	s0,16(sp)
    800028dc:	00813483          	ld	s1,8(sp)
    800028e0:	00013903          	ld	s2,0(sp)
    800028e4:	02010113          	addi	sp,sp,32
    800028e8:	00008067          	ret

00000000800028ec <_ZN4_semD1Ev>:

_sem::~_sem(){
    800028ec:	ff010113          	addi	sp,sp,-16
    800028f0:	00113423          	sd	ra,8(sp)
    800028f4:	00813023          	sd	s0,0(sp)
    800028f8:	01010413          	addi	s0,sp,16
    close();
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	cd8080e7          	jalr	-808(ra) # 800025d4 <_ZN4_sem5closeEv>
}
    80002904:	00813083          	ld	ra,8(sp)
    80002908:	00013403          	ld	s0,0(sp)
    8000290c:	01010113          	addi	sp,sp,16
    80002910:	00008067          	ret

0000000080002914 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00813423          	sd	s0,8(sp)
    8000291c:	01010413          	addi	s0,sp,16
    80002920:	00100793          	li	a5,1
    80002924:	00f50863          	beq	a0,a5,80002934 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002928:	00813403          	ld	s0,8(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret
    80002934:	000107b7          	lui	a5,0x10
    80002938:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000293c:	fef596e3          	bne	a1,a5,80002928 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002940:	00006797          	auipc	a5,0x6
    80002944:	e6878793          	addi	a5,a5,-408 # 800087a8 <_ZN9Scheduler16readyThreadQueueE>
    80002948:	0007b023          	sd	zero,0(a5)
    8000294c:	0007b423          	sd	zero,8(a5)
    80002950:	fd9ff06f          	j	80002928 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002954 <_ZN9Scheduler3getEv>:
{
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00113c23          	sd	ra,24(sp)
    8000295c:	00813823          	sd	s0,16(sp)
    80002960:	00913423          	sd	s1,8(sp)
    80002964:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002968:	00006517          	auipc	a0,0x6
    8000296c:	e4053503          	ld	a0,-448(a0) # 800087a8 <_ZN9Scheduler16readyThreadQueueE>
    80002970:	04050263          	beqz	a0,800029b4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002974:	00853783          	ld	a5,8(a0)
    80002978:	00006717          	auipc	a4,0x6
    8000297c:	e2f73823          	sd	a5,-464(a4) # 800087a8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002980:	02078463          	beqz	a5,800029a8 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002984:	00053483          	ld	s1,0(a0)
        delete elem;
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	0fc080e7          	jalr	252(ra) # 80001a84 <_ZdlPv>
}
    80002990:	00048513          	mv	a0,s1
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	02010113          	addi	sp,sp,32
    800029a4:	00008067          	ret
        if (!head) { tail = 0; }
    800029a8:	00006797          	auipc	a5,0x6
    800029ac:	e007b423          	sd	zero,-504(a5) # 800087b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029b0:	fd5ff06f          	j	80002984 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800029b4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800029b8:	fd9ff06f          	j	80002990 <_ZN9Scheduler3getEv+0x3c>

00000000800029bc <_ZN9Scheduler3putEP3TCB>:
{
    800029bc:	fe010113          	addi	sp,sp,-32
    800029c0:	00113c23          	sd	ra,24(sp)
    800029c4:	00813823          	sd	s0,16(sp)
    800029c8:	00913423          	sd	s1,8(sp)
    800029cc:	02010413          	addi	s0,sp,32
    800029d0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800029d4:	01000513          	li	a0,16
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	05c080e7          	jalr	92(ra) # 80001a34 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029e0:	00953023          	sd	s1,0(a0)
    800029e4:	00053423          	sd	zero,8(a0)
        if (tail)
    800029e8:	00006797          	auipc	a5,0x6
    800029ec:	dc87b783          	ld	a5,-568(a5) # 800087b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800029f0:	02078263          	beqz	a5,80002a14 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800029f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029f8:	00006797          	auipc	a5,0x6
    800029fc:	daa7bc23          	sd	a0,-584(a5) # 800087b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002a00:	01813083          	ld	ra,24(sp)
    80002a04:	01013403          	ld	s0,16(sp)
    80002a08:	00813483          	ld	s1,8(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret
            head = tail = elem;
    80002a14:	00006797          	auipc	a5,0x6
    80002a18:	d9478793          	addi	a5,a5,-620 # 800087a8 <_ZN9Scheduler16readyThreadQueueE>
    80002a1c:	00a7b423          	sd	a0,8(a5)
    80002a20:	00a7b023          	sd	a0,0(a5)
    80002a24:	fddff06f          	j	80002a00 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002a28 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00113423          	sd	ra,8(sp)
    80002a30:	00813023          	sd	s0,0(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	000105b7          	lui	a1,0x10
    80002a3c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002a40:	00100513          	li	a0,1
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	ed0080e7          	jalr	-304(ra) # 80002914 <_Z41__static_initialization_and_destruction_0ii>
    80002a4c:	00813083          	ld	ra,8(sp)
    80002a50:	00013403          	ld	s0,0(sp)
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00008067          	ret

0000000080002a5c <_ZN6BufferC1Ev>:
#include "../h/buffer.hpp"
#include "../h/syscall_c.h"

Buffer::Buffer() : head(0),tail(0),count(0) {
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00113423          	sd	ra,8(sp)
    80002a64:	00813023          	sd	s0,0(sp)
    80002a68:	01010413          	addi	s0,sp,16
    80002a6c:	10053423          	sd	zero,264(a0)
    80002a70:	10053823          	sd	zero,272(a0)
    80002a74:	10053c23          	sd	zero,280(a0)
    sem_open(&itemAvailable, 0);
    80002a78:	00000593          	li	a1,0
    80002a7c:	ffffe097          	auipc	ra,0xffffe
    80002a80:	7fc080e7          	jalr	2044(ra) # 80001278 <_Z8sem_openPP4_semj>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN6Buffer4getcEv>:

char Buffer::getc () {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	02010413          	addi	s0,sp,32
    80002aa8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002aac:	00053503          	ld	a0,0(a0)
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	c9c080e7          	jalr	-868(ra) # 8000274c <_ZN4_sem4waitEv>
    char c = buffer[head];
    80002ab8:	1084b783          	ld	a5,264(s1)
    80002abc:	00f48733          	add	a4,s1,a5
    80002ac0:	00874503          	lbu	a0,8(a4)
    head = (head+1)%KB_SIZE;
    80002ac4:	00178793          	addi	a5,a5,1
    80002ac8:	0ff7f793          	andi	a5,a5,255
    80002acc:	10f4b423          	sd	a5,264(s1)
    count--;
    80002ad0:	1184b783          	ld	a5,280(s1)
    80002ad4:	fff78793          	addi	a5,a5,-1
    80002ad8:	10f4bc23          	sd	a5,280(s1)
    return c;
}
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret

0000000080002af0 <_ZN6Buffer4putcEc>:
void Buffer::putc (char c) {
    if (count<KB_SIZE) {
    80002af0:	11853783          	ld	a5,280(a0)
    80002af4:	0ff00713          	li	a4,255
    80002af8:	00f77463          	bgeu	a4,a5,80002b00 <_ZN6Buffer4putcEc+0x10>
    80002afc:	00008067          	ret
void Buffer::putc (char c) {
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00113423          	sd	ra,8(sp)
    80002b08:	00813023          	sd	s0,0(sp)
    80002b0c:	01010413          	addi	s0,sp,16
        buffer[tail] = c;
    80002b10:	11053703          	ld	a4,272(a0)
    80002b14:	00e506b3          	add	a3,a0,a4
    80002b18:	00b68423          	sb	a1,8(a3)
        tail = (tail+1)%KB_SIZE;
    80002b1c:	00170713          	addi	a4,a4,1
    80002b20:	0ff77713          	andi	a4,a4,255
    80002b24:	10e53823          	sd	a4,272(a0)
        count++;
    80002b28:	00178793          	addi	a5,a5,1
    80002b2c:	10f53c23          	sd	a5,280(a0)
        itemAvailable->signal();
    80002b30:	00053503          	ld	a0,0(a0)
    80002b34:	00000097          	auipc	ra,0x0
    80002b38:	d04080e7          	jalr	-764(ra) # 80002838 <_ZN4_sem6signalEv>
    }
}
    80002b3c:	00813083          	ld	ra,8(sp)
    80002b40:	00013403          	ld	s0,0(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret

0000000080002b4c <_Z12printString2PKc>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"


void printString2(char const *string)
{
    80002b4c:	fd010113          	addi	sp,sp,-48
    80002b50:	02113423          	sd	ra,40(sp)
    80002b54:	02813023          	sd	s0,32(sp)
    80002b58:	00913c23          	sd	s1,24(sp)
    80002b5c:	01213823          	sd	s2,16(sp)
    80002b60:	03010413          	addi	s0,sp,48
    80002b64:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b68:	100027f3          	csrr	a5,sstatus
    80002b6c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002b70:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002b74:	00200793          	li	a5,2
    80002b78:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80002b7c:	0004c503          	lbu	a0,0(s1)
    80002b80:	00050a63          	beqz	a0,80002b94 <_Z12printString2PKc+0x48>
    {
        putc(*string);
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	860080e7          	jalr	-1952(ra) # 800013e4 <_Z4putcc>
        string++;
    80002b8c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002b90:	fedff06f          	j	80002b7c <_Z12printString2PKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002b94:	0009091b          	sext.w	s2,s2
    80002b98:	00297913          	andi	s2,s2,2
    80002b9c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002ba0:	10092073          	csrs	sstatus,s2
}
    80002ba4:	02813083          	ld	ra,40(sp)
    80002ba8:	02013403          	ld	s0,32(sp)
    80002bac:	01813483          	ld	s1,24(sp)
    80002bb0:	01013903          	ld	s2,16(sp)
    80002bb4:	03010113          	addi	sp,sp,48
    80002bb8:	00008067          	ret

0000000080002bbc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002bbc:	fc010113          	addi	sp,sp,-64
    80002bc0:	02113c23          	sd	ra,56(sp)
    80002bc4:	02813823          	sd	s0,48(sp)
    80002bc8:	02913423          	sd	s1,40(sp)
    80002bcc:	03213023          	sd	s2,32(sp)
    80002bd0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002bd4:	100027f3          	csrr	a5,sstatus
    80002bd8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002bdc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002be0:	00200793          	li	a5,2
    80002be4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002be8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002bec:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002bf0:	00a00613          	li	a2,10
    80002bf4:	02c5773b          	remuw	a4,a0,a2
    80002bf8:	02071693          	slli	a3,a4,0x20
    80002bfc:	0206d693          	srli	a3,a3,0x20
    80002c00:	00004717          	auipc	a4,0x4
    80002c04:	47870713          	addi	a4,a4,1144 # 80007078 <_ZZ12printIntegermE6digits>
    80002c08:	00d70733          	add	a4,a4,a3
    80002c0c:	00074703          	lbu	a4,0(a4)
    80002c10:	fe040693          	addi	a3,s0,-32
    80002c14:	009687b3          	add	a5,a3,s1
    80002c18:	0014849b          	addiw	s1,s1,1
    80002c1c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002c20:	0005071b          	sext.w	a4,a0
    80002c24:	02c5553b          	divuw	a0,a0,a2
    80002c28:	00900793          	li	a5,9
    80002c2c:	fce7e2e3          	bltu	a5,a4,80002bf0 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { putc(buf[i]); }
    80002c30:	fff4849b          	addiw	s1,s1,-1
    80002c34:	0004ce63          	bltz	s1,80002c50 <_Z12printIntegerm+0x94>
    80002c38:	fe040793          	addi	a5,s0,-32
    80002c3c:	009787b3          	add	a5,a5,s1
    80002c40:	ff07c503          	lbu	a0,-16(a5)
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	7a0080e7          	jalr	1952(ra) # 800013e4 <_Z4putcc>
    80002c4c:	fe5ff06f          	j	80002c30 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002c50:	0009091b          	sext.w	s2,s2
    80002c54:	00297913          	andi	s2,s2,2
    80002c58:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c5c:	10092073          	csrs	sstatus,s2
}
    80002c60:	03813083          	ld	ra,56(sp)
    80002c64:	03013403          	ld	s0,48(sp)
    80002c68:	02813483          	ld	s1,40(sp)
    80002c6c:	02013903          	ld	s2,32(sp)
    80002c70:	04010113          	addi	sp,sp,64
    80002c74:	00008067          	ret

0000000080002c78 <_Z22printStringForUserModePKc>:

void printStringForUserMode(char const *string) {
    80002c78:	fe010113          	addi	sp,sp,-32
    80002c7c:	00113c23          	sd	ra,24(sp)
    80002c80:	00813823          	sd	s0,16(sp)
    80002c84:	00913423          	sd	s1,8(sp)
    80002c88:	02010413          	addi	s0,sp,32
    80002c8c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80002c90:	0004c503          	lbu	a0,0(s1)
    80002c94:	00050a63          	beqz	a0,80002ca8 <_Z22printStringForUserModePKc+0x30>
    {
        putc(*string);
    80002c98:	ffffe097          	auipc	ra,0xffffe
    80002c9c:	74c080e7          	jalr	1868(ra) # 800013e4 <_Z4putcc>
        string++;
    80002ca0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ca4:	fedff06f          	j	80002c90 <_Z22printStringForUserModePKc+0x18>
    }
    80002ca8:	01813083          	ld	ra,24(sp)
    80002cac:	01013403          	ld	s0,16(sp)
    80002cb0:	00813483          	ld	s1,8(sp)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00008067          	ret

0000000080002cbc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	02010413          	addi	s0,sp,32
    80002cd0:	00050493          	mv	s1,a0
    LOCK();
    80002cd4:	00100613          	li	a2,1
    80002cd8:	00000593          	li	a1,0
    80002cdc:	00006517          	auipc	a0,0x6
    80002ce0:	adc50513          	addi	a0,a0,-1316 # 800087b8 <lockPrint>
    80002ce4:	ffffe097          	auipc	ra,0xffffe
    80002ce8:	440080e7          	jalr	1088(ra) # 80001124 <copy_and_swap>
    80002cec:	fe0514e3          	bnez	a0,80002cd4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002cf0:	0004c503          	lbu	a0,0(s1)
    80002cf4:	00050a63          	beqz	a0,80002d08 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	6ec080e7          	jalr	1772(ra) # 800013e4 <_Z4putcc>
        string++;
    80002d00:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002d04:	fedff06f          	j	80002cf0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002d08:	00000613          	li	a2,0
    80002d0c:	00100593          	li	a1,1
    80002d10:	00006517          	auipc	a0,0x6
    80002d14:	aa850513          	addi	a0,a0,-1368 # 800087b8 <lockPrint>
    80002d18:	ffffe097          	auipc	ra,0xffffe
    80002d1c:	40c080e7          	jalr	1036(ra) # 80001124 <copy_and_swap>
    80002d20:	fe0514e3          	bnez	a0,80002d08 <_Z11printStringPKc+0x4c>
}
    80002d24:	01813083          	ld	ra,24(sp)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	02010113          	addi	sp,sp,32
    80002d34:	00008067          	ret

0000000080002d38 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002d38:	fd010113          	addi	sp,sp,-48
    80002d3c:	02113423          	sd	ra,40(sp)
    80002d40:	02813023          	sd	s0,32(sp)
    80002d44:	00913c23          	sd	s1,24(sp)
    80002d48:	01213823          	sd	s2,16(sp)
    80002d4c:	01313423          	sd	s3,8(sp)
    80002d50:	01413023          	sd	s4,0(sp)
    80002d54:	03010413          	addi	s0,sp,48
    80002d58:	00050993          	mv	s3,a0
    80002d5c:	00058a13          	mv	s4,a1
    LOCK();
    80002d60:	00100613          	li	a2,1
    80002d64:	00000593          	li	a1,0
    80002d68:	00006517          	auipc	a0,0x6
    80002d6c:	a5050513          	addi	a0,a0,-1456 # 800087b8 <lockPrint>
    80002d70:	ffffe097          	auipc	ra,0xffffe
    80002d74:	3b4080e7          	jalr	948(ra) # 80001124 <copy_and_swap>
    80002d78:	fe0514e3          	bnez	a0,80002d60 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002d7c:	00000913          	li	s2,0
    80002d80:	00090493          	mv	s1,s2
    80002d84:	0019091b          	addiw	s2,s2,1
    80002d88:	03495a63          	bge	s2,s4,80002dbc <_Z9getStringPci+0x84>
        cc = getc();
    80002d8c:	ffffe097          	auipc	ra,0xffffe
    80002d90:	620080e7          	jalr	1568(ra) # 800013ac <_Z4getcv>
        if(cc < 1)
    80002d94:	02050463          	beqz	a0,80002dbc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002d98:	009984b3          	add	s1,s3,s1
    80002d9c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002da0:	00a00793          	li	a5,10
    80002da4:	00f50a63          	beq	a0,a5,80002db8 <_Z9getStringPci+0x80>
    80002da8:	00d00793          	li	a5,13
    80002dac:	fcf51ae3          	bne	a0,a5,80002d80 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002db0:	00090493          	mv	s1,s2
    80002db4:	0080006f          	j	80002dbc <_Z9getStringPci+0x84>
    80002db8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002dbc:	009984b3          	add	s1,s3,s1
    80002dc0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002dc4:	00000613          	li	a2,0
    80002dc8:	00100593          	li	a1,1
    80002dcc:	00006517          	auipc	a0,0x6
    80002dd0:	9ec50513          	addi	a0,a0,-1556 # 800087b8 <lockPrint>
    80002dd4:	ffffe097          	auipc	ra,0xffffe
    80002dd8:	350080e7          	jalr	848(ra) # 80001124 <copy_and_swap>
    80002ddc:	fe0514e3          	bnez	a0,80002dc4 <_Z9getStringPci+0x8c>
    return buf;
}
    80002de0:	00098513          	mv	a0,s3
    80002de4:	02813083          	ld	ra,40(sp)
    80002de8:	02013403          	ld	s0,32(sp)
    80002dec:	01813483          	ld	s1,24(sp)
    80002df0:	01013903          	ld	s2,16(sp)
    80002df4:	00813983          	ld	s3,8(sp)
    80002df8:	00013a03          	ld	s4,0(sp)
    80002dfc:	03010113          	addi	sp,sp,48
    80002e00:	00008067          	ret

0000000080002e04 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00813423          	sd	s0,8(sp)
    80002e0c:	01010413          	addi	s0,sp,16
    80002e10:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002e14:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002e18:	0006c603          	lbu	a2,0(a3)
    80002e1c:	fd06071b          	addiw	a4,a2,-48
    80002e20:	0ff77713          	andi	a4,a4,255
    80002e24:	00900793          	li	a5,9
    80002e28:	02e7e063          	bltu	a5,a4,80002e48 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002e2c:	0025179b          	slliw	a5,a0,0x2
    80002e30:	00a787bb          	addw	a5,a5,a0
    80002e34:	0017979b          	slliw	a5,a5,0x1
    80002e38:	00168693          	addi	a3,a3,1
    80002e3c:	00c787bb          	addw	a5,a5,a2
    80002e40:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002e44:	fd5ff06f          	j	80002e18 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002e54:	fc010113          	addi	sp,sp,-64
    80002e58:	02113c23          	sd	ra,56(sp)
    80002e5c:	02813823          	sd	s0,48(sp)
    80002e60:	02913423          	sd	s1,40(sp)
    80002e64:	03213023          	sd	s2,32(sp)
    80002e68:	01313c23          	sd	s3,24(sp)
    80002e6c:	04010413          	addi	s0,sp,64
    80002e70:	00050493          	mv	s1,a0
    80002e74:	00058913          	mv	s2,a1
    80002e78:	00060993          	mv	s3,a2
    LOCK();
    80002e7c:	00100613          	li	a2,1
    80002e80:	00000593          	li	a1,0
    80002e84:	00006517          	auipc	a0,0x6
    80002e88:	93450513          	addi	a0,a0,-1740 # 800087b8 <lockPrint>
    80002e8c:	ffffe097          	auipc	ra,0xffffe
    80002e90:	298080e7          	jalr	664(ra) # 80001124 <copy_and_swap>
    80002e94:	fe0514e3          	bnez	a0,80002e7c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002e98:	00098463          	beqz	s3,80002ea0 <_Z8printIntiii+0x4c>
    80002e9c:	0804c463          	bltz	s1,80002f24 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002ea0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002ea4:	00000593          	li	a1,0
    }

    i = 0;
    80002ea8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002eac:	0009079b          	sext.w	a5,s2
    80002eb0:	0325773b          	remuw	a4,a0,s2
    80002eb4:	00048613          	mv	a2,s1
    80002eb8:	0014849b          	addiw	s1,s1,1
    80002ebc:	02071693          	slli	a3,a4,0x20
    80002ec0:	0206d693          	srli	a3,a3,0x20
    80002ec4:	00005717          	auipc	a4,0x5
    80002ec8:	72c70713          	addi	a4,a4,1836 # 800085f0 <digits>
    80002ecc:	00d70733          	add	a4,a4,a3
    80002ed0:	00074683          	lbu	a3,0(a4)
    80002ed4:	fd040713          	addi	a4,s0,-48
    80002ed8:	00c70733          	add	a4,a4,a2
    80002edc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002ee0:	0005071b          	sext.w	a4,a0
    80002ee4:	0325553b          	divuw	a0,a0,s2
    80002ee8:	fcf772e3          	bgeu	a4,a5,80002eac <_Z8printIntiii+0x58>
    if(neg)
    80002eec:	00058c63          	beqz	a1,80002f04 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002ef0:	fd040793          	addi	a5,s0,-48
    80002ef4:	009784b3          	add	s1,a5,s1
    80002ef8:	02d00793          	li	a5,45
    80002efc:	fef48823          	sb	a5,-16(s1)
    80002f00:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002f04:	fff4849b          	addiw	s1,s1,-1
    80002f08:	0204c463          	bltz	s1,80002f30 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002f0c:	fd040793          	addi	a5,s0,-48
    80002f10:	009787b3          	add	a5,a5,s1
    80002f14:	ff07c503          	lbu	a0,-16(a5)
    80002f18:	ffffe097          	auipc	ra,0xffffe
    80002f1c:	4cc080e7          	jalr	1228(ra) # 800013e4 <_Z4putcc>
    80002f20:	fe5ff06f          	j	80002f04 <_Z8printIntiii+0xb0>
        x = -xx;
    80002f24:	4090053b          	negw	a0,s1
        neg = 1;
    80002f28:	00100593          	li	a1,1
        x = -xx;
    80002f2c:	f7dff06f          	j	80002ea8 <_Z8printIntiii+0x54>

    UNLOCK();
    80002f30:	00000613          	li	a2,0
    80002f34:	00100593          	li	a1,1
    80002f38:	00006517          	auipc	a0,0x6
    80002f3c:	88050513          	addi	a0,a0,-1920 # 800087b8 <lockPrint>
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	1e4080e7          	jalr	484(ra) # 80001124 <copy_and_swap>
    80002f48:	fe0514e3          	bnez	a0,80002f30 <_Z8printIntiii+0xdc>
    80002f4c:	03813083          	ld	ra,56(sp)
    80002f50:	03013403          	ld	s0,48(sp)
    80002f54:	02813483          	ld	s1,40(sp)
    80002f58:	02013903          	ld	s2,32(sp)
    80002f5c:	01813983          	ld	s3,24(sp)
    80002f60:	04010113          	addi	sp,sp,64
    80002f64:	00008067          	ret

0000000080002f68 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002f68:	fd010113          	addi	sp,sp,-48
    80002f6c:	02113423          	sd	ra,40(sp)
    80002f70:	02813023          	sd	s0,32(sp)
    80002f74:	00913c23          	sd	s1,24(sp)
    80002f78:	01213823          	sd	s2,16(sp)
    80002f7c:	01313423          	sd	s3,8(sp)
    80002f80:	03010413          	addi	s0,sp,48
    80002f84:	00050493          	mv	s1,a0
    80002f88:	00058913          	mv	s2,a1
    80002f8c:	0015879b          	addiw	a5,a1,1
    80002f90:	0007851b          	sext.w	a0,a5
    80002f94:	00f4a023          	sw	a5,0(s1)
    80002f98:	0004a823          	sw	zero,16(s1)
    80002f9c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002fa0:	00251513          	slli	a0,a0,0x2
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	1a0080e7          	jalr	416(ra) # 80001144 <_Z9mem_allocm>
    80002fac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002fb0:	01000513          	li	a0,16
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	a80080e7          	jalr	-1408(ra) # 80001a34 <_Znwm>
    80002fbc:	00050993          	mv	s3,a0
    80002fc0:	00000593          	li	a1,0
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	d9c080e7          	jalr	-612(ra) # 80001d60 <_ZN9SemaphoreC1Ej>
    80002fcc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002fd0:	01000513          	li	a0,16
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	a60080e7          	jalr	-1440(ra) # 80001a34 <_Znwm>
    80002fdc:	00050993          	mv	s3,a0
    80002fe0:	00090593          	mv	a1,s2
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	d7c080e7          	jalr	-644(ra) # 80001d60 <_ZN9SemaphoreC1Ej>
    80002fec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002ff0:	01000513          	li	a0,16
    80002ff4:	fffff097          	auipc	ra,0xfffff
    80002ff8:	a40080e7          	jalr	-1472(ra) # 80001a34 <_Znwm>
    80002ffc:	00050913          	mv	s2,a0
    80003000:	00100593          	li	a1,1
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	d5c080e7          	jalr	-676(ra) # 80001d60 <_ZN9SemaphoreC1Ej>
    8000300c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003010:	01000513          	li	a0,16
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	a20080e7          	jalr	-1504(ra) # 80001a34 <_Znwm>
    8000301c:	00050913          	mv	s2,a0
    80003020:	00100593          	li	a1,1
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	d3c080e7          	jalr	-708(ra) # 80001d60 <_ZN9SemaphoreC1Ej>
    8000302c:	0324b823          	sd	s2,48(s1)
}
    80003030:	02813083          	ld	ra,40(sp)
    80003034:	02013403          	ld	s0,32(sp)
    80003038:	01813483          	ld	s1,24(sp)
    8000303c:	01013903          	ld	s2,16(sp)
    80003040:	00813983          	ld	s3,8(sp)
    80003044:	03010113          	addi	sp,sp,48
    80003048:	00008067          	ret
    8000304c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003050:	00098513          	mv	a0,s3
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	a30080e7          	jalr	-1488(ra) # 80001a84 <_ZdlPv>
    8000305c:	00048513          	mv	a0,s1
    80003060:	00007097          	auipc	ra,0x7
    80003064:	838080e7          	jalr	-1992(ra) # 80009898 <_Unwind_Resume>
    80003068:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000306c:	00098513          	mv	a0,s3
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	a14080e7          	jalr	-1516(ra) # 80001a84 <_ZdlPv>
    80003078:	00048513          	mv	a0,s1
    8000307c:	00007097          	auipc	ra,0x7
    80003080:	81c080e7          	jalr	-2020(ra) # 80009898 <_Unwind_Resume>
    80003084:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003088:	00090513          	mv	a0,s2
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	9f8080e7          	jalr	-1544(ra) # 80001a84 <_ZdlPv>
    80003094:	00048513          	mv	a0,s1
    80003098:	00007097          	auipc	ra,0x7
    8000309c:	800080e7          	jalr	-2048(ra) # 80009898 <_Unwind_Resume>
    800030a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800030a4:	00090513          	mv	a0,s2
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	9dc080e7          	jalr	-1572(ra) # 80001a84 <_ZdlPv>
    800030b0:	00048513          	mv	a0,s1
    800030b4:	00006097          	auipc	ra,0x6
    800030b8:	7e4080e7          	jalr	2020(ra) # 80009898 <_Unwind_Resume>

00000000800030bc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800030bc:	fe010113          	addi	sp,sp,-32
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00813823          	sd	s0,16(sp)
    800030c8:	00913423          	sd	s1,8(sp)
    800030cc:	01213023          	sd	s2,0(sp)
    800030d0:	02010413          	addi	s0,sp,32
    800030d4:	00050493          	mv	s1,a0
    800030d8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800030dc:	01853503          	ld	a0,24(a0)
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	cbc080e7          	jalr	-836(ra) # 80001d9c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800030e8:	0304b503          	ld	a0,48(s1)
    800030ec:	fffff097          	auipc	ra,0xfffff
    800030f0:	cb0080e7          	jalr	-848(ra) # 80001d9c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800030f4:	0084b783          	ld	a5,8(s1)
    800030f8:	0144a703          	lw	a4,20(s1)
    800030fc:	00271713          	slli	a4,a4,0x2
    80003100:	00e787b3          	add	a5,a5,a4
    80003104:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003108:	0144a783          	lw	a5,20(s1)
    8000310c:	0017879b          	addiw	a5,a5,1
    80003110:	0004a703          	lw	a4,0(s1)
    80003114:	02e7e7bb          	remw	a5,a5,a4
    80003118:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000311c:	0304b503          	ld	a0,48(s1)
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	cac080e7          	jalr	-852(ra) # 80001dcc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003128:	0204b503          	ld	a0,32(s1)
    8000312c:	fffff097          	auipc	ra,0xfffff
    80003130:	ca0080e7          	jalr	-864(ra) # 80001dcc <_ZN9Semaphore6signalEv>

}
    80003134:	01813083          	ld	ra,24(sp)
    80003138:	01013403          	ld	s0,16(sp)
    8000313c:	00813483          	ld	s1,8(sp)
    80003140:	00013903          	ld	s2,0(sp)
    80003144:	02010113          	addi	sp,sp,32
    80003148:	00008067          	ret

000000008000314c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	01213023          	sd	s2,0(sp)
    80003160:	02010413          	addi	s0,sp,32
    80003164:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003168:	02053503          	ld	a0,32(a0)
    8000316c:	fffff097          	auipc	ra,0xfffff
    80003170:	c30080e7          	jalr	-976(ra) # 80001d9c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003174:	0284b503          	ld	a0,40(s1)
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	c24080e7          	jalr	-988(ra) # 80001d9c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003180:	0084b703          	ld	a4,8(s1)
    80003184:	0104a783          	lw	a5,16(s1)
    80003188:	00279693          	slli	a3,a5,0x2
    8000318c:	00d70733          	add	a4,a4,a3
    80003190:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003194:	0017879b          	addiw	a5,a5,1
    80003198:	0004a703          	lw	a4,0(s1)
    8000319c:	02e7e7bb          	remw	a5,a5,a4
    800031a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800031a4:	0284b503          	ld	a0,40(s1)
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	c24080e7          	jalr	-988(ra) # 80001dcc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800031b0:	0184b503          	ld	a0,24(s1)
    800031b4:	fffff097          	auipc	ra,0xfffff
    800031b8:	c18080e7          	jalr	-1000(ra) # 80001dcc <_ZN9Semaphore6signalEv>

    return ret;
}
    800031bc:	00090513          	mv	a0,s2
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	01013403          	ld	s0,16(sp)
    800031c8:	00813483          	ld	s1,8(sp)
    800031cc:	00013903          	ld	s2,0(sp)
    800031d0:	02010113          	addi	sp,sp,32
    800031d4:	00008067          	ret

00000000800031d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800031d8:	fe010113          	addi	sp,sp,-32
    800031dc:	00113c23          	sd	ra,24(sp)
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00913423          	sd	s1,8(sp)
    800031e8:	01213023          	sd	s2,0(sp)
    800031ec:	02010413          	addi	s0,sp,32
    800031f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800031f4:	02853503          	ld	a0,40(a0)
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	ba4080e7          	jalr	-1116(ra) # 80001d9c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003200:	0304b503          	ld	a0,48(s1)
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	b98080e7          	jalr	-1128(ra) # 80001d9c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000320c:	0144a783          	lw	a5,20(s1)
    80003210:	0104a903          	lw	s2,16(s1)
    80003214:	0327ce63          	blt	a5,s2,80003250 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003218:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000321c:	0304b503          	ld	a0,48(s1)
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	bac080e7          	jalr	-1108(ra) # 80001dcc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003228:	0284b503          	ld	a0,40(s1)
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	ba0080e7          	jalr	-1120(ra) # 80001dcc <_ZN9Semaphore6signalEv>

    return ret;
}
    80003234:	00090513          	mv	a0,s2
    80003238:	01813083          	ld	ra,24(sp)
    8000323c:	01013403          	ld	s0,16(sp)
    80003240:	00813483          	ld	s1,8(sp)
    80003244:	00013903          	ld	s2,0(sp)
    80003248:	02010113          	addi	sp,sp,32
    8000324c:	00008067          	ret
        ret = cap - head + tail;
    80003250:	0004a703          	lw	a4,0(s1)
    80003254:	4127093b          	subw	s2,a4,s2
    80003258:	00f9093b          	addw	s2,s2,a5
    8000325c:	fc1ff06f          	j	8000321c <_ZN9BufferCPP6getCntEv+0x44>

0000000080003260 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003260:	fe010113          	addi	sp,sp,-32
    80003264:	00113c23          	sd	ra,24(sp)
    80003268:	00813823          	sd	s0,16(sp)
    8000326c:	00913423          	sd	s1,8(sp)
    80003270:	02010413          	addi	s0,sp,32
    80003274:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003278:	00a00513          	li	a0,10
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	abc080e7          	jalr	-1348(ra) # 80001d38 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003284:	00004517          	auipc	a0,0x4
    80003288:	e0450513          	addi	a0,a0,-508 # 80007088 <_ZZ12printIntegermE6digits+0x10>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	a30080e7          	jalr	-1488(ra) # 80002cbc <_Z11printStringPKc>
    while (getCnt()) {
    80003294:	00048513          	mv	a0,s1
    80003298:	00000097          	auipc	ra,0x0
    8000329c:	f40080e7          	jalr	-192(ra) # 800031d8 <_ZN9BufferCPP6getCntEv>
    800032a0:	02050c63          	beqz	a0,800032d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800032a4:	0084b783          	ld	a5,8(s1)
    800032a8:	0104a703          	lw	a4,16(s1)
    800032ac:	00271713          	slli	a4,a4,0x2
    800032b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800032b4:	0007c503          	lbu	a0,0(a5)
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	a80080e7          	jalr	-1408(ra) # 80001d38 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800032c0:	0104a783          	lw	a5,16(s1)
    800032c4:	0017879b          	addiw	a5,a5,1
    800032c8:	0004a703          	lw	a4,0(s1)
    800032cc:	02e7e7bb          	remw	a5,a5,a4
    800032d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800032d4:	fc1ff06f          	j	80003294 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800032d8:	02100513          	li	a0,33
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	a5c080e7          	jalr	-1444(ra) # 80001d38 <_ZN7Console4putcEc>
    Console::putc('\n');
    800032e4:	00a00513          	li	a0,10
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	a50080e7          	jalr	-1456(ra) # 80001d38 <_ZN7Console4putcEc>
    mem_free(buffer);
    800032f0:	0084b503          	ld	a0,8(s1)
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	e78080e7          	jalr	-392(ra) # 8000116c <_Z8mem_freePv>
    delete itemAvailable;
    800032fc:	0204b503          	ld	a0,32(s1)
    80003300:	00050863          	beqz	a0,80003310 <_ZN9BufferCPPD1Ev+0xb0>
    80003304:	00053783          	ld	a5,0(a0)
    80003308:	0087b783          	ld	a5,8(a5)
    8000330c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003310:	0184b503          	ld	a0,24(s1)
    80003314:	00050863          	beqz	a0,80003324 <_ZN9BufferCPPD1Ev+0xc4>
    80003318:	00053783          	ld	a5,0(a0)
    8000331c:	0087b783          	ld	a5,8(a5)
    80003320:	000780e7          	jalr	a5
    delete mutexTail;
    80003324:	0304b503          	ld	a0,48(s1)
    80003328:	00050863          	beqz	a0,80003338 <_ZN9BufferCPPD1Ev+0xd8>
    8000332c:	00053783          	ld	a5,0(a0)
    80003330:	0087b783          	ld	a5,8(a5)
    80003334:	000780e7          	jalr	a5
    delete mutexHead;
    80003338:	0284b503          	ld	a0,40(s1)
    8000333c:	00050863          	beqz	a0,8000334c <_ZN9BufferCPPD1Ev+0xec>
    80003340:	00053783          	ld	a5,0(a0)
    80003344:	0087b783          	ld	a5,8(a5)
    80003348:	000780e7          	jalr	a5
}
    8000334c:	01813083          	ld	ra,24(sp)
    80003350:	01013403          	ld	s0,16(sp)
    80003354:	00813483          	ld	s1,8(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret

0000000080003360 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80003360:	f8010113          	addi	sp,sp,-128
    80003364:	06113c23          	sd	ra,120(sp)
    80003368:	06813823          	sd	s0,112(sp)
    8000336c:	06913423          	sd	s1,104(sp)
    80003370:	07213023          	sd	s2,96(sp)
    80003374:	05313c23          	sd	s3,88(sp)
    80003378:	05413823          	sd	s4,80(sp)
    8000337c:	05513423          	sd	s5,72(sp)
    80003380:	05613023          	sd	s6,64(sp)
    80003384:	03713c23          	sd	s7,56(sp)
    80003388:	03813823          	sd	s8,48(sp)
    8000338c:	03913423          	sd	s9,40(sp)
    80003390:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80003394:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80003398:	00004517          	auipc	a0,0x4
    8000339c:	d0850513          	addi	a0,a0,-760 # 800070a0 <_ZZ12printIntegermE6digits+0x28>
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	91c080e7          	jalr	-1764(ra) # 80002cbc <_Z11printStringPKc>
        getString(input, 30);
    800033a8:	01e00593          	li	a1,30
    800033ac:	f8040493          	addi	s1,s0,-128
    800033b0:	00048513          	mv	a0,s1
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	984080e7          	jalr	-1660(ra) # 80002d38 <_Z9getStringPci>
        threadNum = stringToInt(input);
    800033bc:	00048513          	mv	a0,s1
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	a44080e7          	jalr	-1468(ra) # 80002e04 <_Z11stringToIntPKc>
    800033c8:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    800033cc:	00004517          	auipc	a0,0x4
    800033d0:	cf450513          	addi	a0,a0,-780 # 800070c0 <_ZZ12printIntegermE6digits+0x48>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	8e8080e7          	jalr	-1816(ra) # 80002cbc <_Z11printStringPKc>
        getString(input, 30);
    800033dc:	01e00593          	li	a1,30
    800033e0:	00048513          	mv	a0,s1
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	954080e7          	jalr	-1708(ra) # 80002d38 <_Z9getStringPci>
        n = stringToInt(input);
    800033ec:	00048513          	mv	a0,s1
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	a14080e7          	jalr	-1516(ra) # 80002e04 <_Z11stringToIntPKc>
    800033f8:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    800033fc:	00004517          	auipc	a0,0x4
    80003400:	ce450513          	addi	a0,a0,-796 # 800070e0 <_ZZ12printIntegermE6digits+0x68>
    80003404:	00000097          	auipc	ra,0x0
    80003408:	8b8080e7          	jalr	-1864(ra) # 80002cbc <_Z11printStringPKc>
    8000340c:	00000613          	li	a2,0
    80003410:	00a00593          	li	a1,10
    80003414:	00098513          	mv	a0,s3
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	a3c080e7          	jalr	-1476(ra) # 80002e54 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80003420:	00004517          	auipc	a0,0x4
    80003424:	cd850513          	addi	a0,a0,-808 # 800070f8 <_ZZ12printIntegermE6digits+0x80>
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	894080e7          	jalr	-1900(ra) # 80002cbc <_Z11printStringPKc>
    80003430:	00000613          	li	a2,0
    80003434:	00a00593          	li	a1,10
    80003438:	00048513          	mv	a0,s1
    8000343c:	00000097          	auipc	ra,0x0
    80003440:	a18080e7          	jalr	-1512(ra) # 80002e54 <_Z8printIntiii>
        printString(".\n");
    80003444:	00004517          	auipc	a0,0x4
    80003448:	ccc50513          	addi	a0,a0,-820 # 80007110 <_ZZ12printIntegermE6digits+0x98>
    8000344c:	00000097          	auipc	ra,0x0
    80003450:	870080e7          	jalr	-1936(ra) # 80002cbc <_Z11printStringPKc>
        if(threadNum > n) {
    80003454:	0334c463          	blt	s1,s3,8000347c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80003458:	03305c63          	blez	s3,80003490 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    8000345c:	03800513          	li	a0,56
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	5d4080e7          	jalr	1492(ra) # 80001a34 <_Znwm>
    80003468:	00050a93          	mv	s5,a0
    8000346c:	00048593          	mv	a1,s1
    80003470:	00000097          	auipc	ra,0x0
    80003474:	af8080e7          	jalr	-1288(ra) # 80002f68 <_ZN9BufferCPPC1Ei>
    80003478:	0300006f          	j	800034a8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000347c:	00004517          	auipc	a0,0x4
    80003480:	c9c50513          	addi	a0,a0,-868 # 80007118 <_ZZ12printIntegermE6digits+0xa0>
    80003484:	00000097          	auipc	ra,0x0
    80003488:	838080e7          	jalr	-1992(ra) # 80002cbc <_Z11printStringPKc>
            return;
    8000348c:	0140006f          	j	800034a0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003490:	00004517          	auipc	a0,0x4
    80003494:	cc850513          	addi	a0,a0,-824 # 80007158 <_ZZ12printIntegermE6digits+0xe0>
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	824080e7          	jalr	-2012(ra) # 80002cbc <_Z11printStringPKc>
            return;
    800034a0:	000c0113          	mv	sp,s8
    800034a4:	21c0006f          	j	800036c0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    800034a8:	01000513          	li	a0,16
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	588080e7          	jalr	1416(ra) # 80001a34 <_Znwm>
    800034b4:	00050493          	mv	s1,a0
    800034b8:	00000593          	li	a1,0
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	8a4080e7          	jalr	-1884(ra) # 80001d60 <_ZN9SemaphoreC1Ej>
    800034c4:	00005717          	auipc	a4,0x5
    800034c8:	2fc70713          	addi	a4,a4,764 # 800087c0 <_ZN19ConsumerProducerCPP9threadEndE>
    800034cc:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    800034d0:	00399793          	slli	a5,s3,0x3
    800034d4:	00f78793          	addi	a5,a5,15
    800034d8:	ff07f793          	andi	a5,a5,-16
    800034dc:	40f10133          	sub	sp,sp,a5
    800034e0:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800034e4:	0019869b          	addiw	a3,s3,1
    800034e8:	00169793          	slli	a5,a3,0x1
    800034ec:	00d787b3          	add	a5,a5,a3
    800034f0:	00379793          	slli	a5,a5,0x3
    800034f4:	00f78793          	addi	a5,a5,15
    800034f8:	ff07f793          	andi	a5,a5,-16
    800034fc:	40f10133          	sub	sp,sp,a5
    80003500:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80003504:	00199493          	slli	s1,s3,0x1
    80003508:	013484b3          	add	s1,s1,s3
    8000350c:	00349493          	slli	s1,s1,0x3
    80003510:	009b04b3          	add	s1,s6,s1
    80003514:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80003518:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    8000351c:	00873783          	ld	a5,8(a4)
    80003520:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80003524:	01800513          	li	a0,24
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	50c080e7          	jalr	1292(ra) # 80001a34 <_Znwm>
    80003530:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	794080e7          	jalr	1940(ra) # 80001cc8 <_ZN6ThreadC1Ev>
    8000353c:	00005797          	auipc	a5,0x5
    80003540:	12c78793          	addi	a5,a5,300 # 80008668 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003544:	00fbb023          	sd	a5,0(s7)
    80003548:	009bb823          	sd	s1,16(s7)
        consumer->start();
    8000354c:	000b8513          	mv	a0,s7
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	6f4080e7          	jalr	1780(ra) # 80001c44 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80003558:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    8000355c:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80003560:	00005797          	auipc	a5,0x5
    80003564:	2687b783          	ld	a5,616(a5) # 800087c8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003568:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000356c:	01800513          	li	a0,24
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	4c4080e7          	jalr	1220(ra) # 80001a34 <_Znwm>
    80003578:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	74c080e7          	jalr	1868(ra) # 80001cc8 <_ZN6ThreadC1Ev>
    80003584:	00005797          	auipc	a5,0x5
    80003588:	09478793          	addi	a5,a5,148 # 80008618 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    8000358c:	00f4b023          	sd	a5,0(s1)
    80003590:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003594:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80003598:	00048513          	mv	a0,s1
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	6a8080e7          	jalr	1704(ra) # 80001c44 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800035a4:	00100913          	li	s2,1
    800035a8:	0300006f          	j	800035d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    800035ac:	00005797          	auipc	a5,0x5
    800035b0:	09478793          	addi	a5,a5,148 # 80008640 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800035b4:	00fcb023          	sd	a5,0(s9)
    800035b8:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    800035bc:	00391793          	slli	a5,s2,0x3
    800035c0:	00fa07b3          	add	a5,s4,a5
    800035c4:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    800035c8:	000c8513          	mv	a0,s9
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	678080e7          	jalr	1656(ra) # 80001c44 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800035d4:	0019091b          	addiw	s2,s2,1
    800035d8:	05395263          	bge	s2,s3,8000361c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    800035dc:	00191493          	slli	s1,s2,0x1
    800035e0:	012484b3          	add	s1,s1,s2
    800035e4:	00349493          	slli	s1,s1,0x3
    800035e8:	009b04b3          	add	s1,s6,s1
    800035ec:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    800035f0:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    800035f4:	00005797          	auipc	a5,0x5
    800035f8:	1d47b783          	ld	a5,468(a5) # 800087c8 <_ZN19ConsumerProducerCPP10waitForAllE>
    800035fc:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80003600:	01800513          	li	a0,24
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	430080e7          	jalr	1072(ra) # 80001a34 <_Znwm>
    8000360c:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	6b8080e7          	jalr	1720(ra) # 80001cc8 <_ZN6ThreadC1Ev>
    80003618:	f95ff06f          	j	800035ac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	658080e7          	jalr	1624(ra) # 80001c74 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80003624:	00000493          	li	s1,0
    80003628:	0099ce63          	blt	s3,s1,80003644 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    8000362c:	00005517          	auipc	a0,0x5
    80003630:	19c53503          	ld	a0,412(a0) # 800087c8 <_ZN19ConsumerProducerCPP10waitForAllE>
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	768080e7          	jalr	1896(ra) # 80001d9c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    8000363c:	0014849b          	addiw	s1,s1,1
    80003640:	fe9ff06f          	j	80003628 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80003644:	00005517          	auipc	a0,0x5
    80003648:	18453503          	ld	a0,388(a0) # 800087c8 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000364c:	00050863          	beqz	a0,8000365c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80003650:	00053783          	ld	a5,0(a0)
    80003654:	0087b783          	ld	a5,8(a5)
    80003658:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    8000365c:	00000493          	li	s1,0
    80003660:	0080006f          	j	80003668 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80003664:	0014849b          	addiw	s1,s1,1
    80003668:	0334d263          	bge	s1,s3,8000368c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    8000366c:	00349793          	slli	a5,s1,0x3
    80003670:	00fa07b3          	add	a5,s4,a5
    80003674:	0007b503          	ld	a0,0(a5)
    80003678:	fe0506e3          	beqz	a0,80003664 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    8000367c:	00053783          	ld	a5,0(a0)
    80003680:	0087b783          	ld	a5,8(a5)
    80003684:	000780e7          	jalr	a5
    80003688:	fddff06f          	j	80003664 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    8000368c:	000b8a63          	beqz	s7,800036a0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80003690:	000bb783          	ld	a5,0(s7)
    80003694:	0087b783          	ld	a5,8(a5)
    80003698:	000b8513          	mv	a0,s7
    8000369c:	000780e7          	jalr	a5
        delete buffer;
    800036a0:	000a8e63          	beqz	s5,800036bc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    800036a4:	000a8513          	mv	a0,s5
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	bb8080e7          	jalr	-1096(ra) # 80003260 <_ZN9BufferCPPD1Ev>
    800036b0:	000a8513          	mv	a0,s5
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	3d0080e7          	jalr	976(ra) # 80001a84 <_ZdlPv>
    800036bc:	000c0113          	mv	sp,s8
    }
    800036c0:	f8040113          	addi	sp,s0,-128
    800036c4:	07813083          	ld	ra,120(sp)
    800036c8:	07013403          	ld	s0,112(sp)
    800036cc:	06813483          	ld	s1,104(sp)
    800036d0:	06013903          	ld	s2,96(sp)
    800036d4:	05813983          	ld	s3,88(sp)
    800036d8:	05013a03          	ld	s4,80(sp)
    800036dc:	04813a83          	ld	s5,72(sp)
    800036e0:	04013b03          	ld	s6,64(sp)
    800036e4:	03813b83          	ld	s7,56(sp)
    800036e8:	03013c03          	ld	s8,48(sp)
    800036ec:	02813c83          	ld	s9,40(sp)
    800036f0:	08010113          	addi	sp,sp,128
    800036f4:	00008067          	ret
    800036f8:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    800036fc:	000a8513          	mv	a0,s5
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	384080e7          	jalr	900(ra) # 80001a84 <_ZdlPv>
    80003708:	00048513          	mv	a0,s1
    8000370c:	00006097          	auipc	ra,0x6
    80003710:	18c080e7          	jalr	396(ra) # 80009898 <_Unwind_Resume>
    80003714:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80003718:	00048513          	mv	a0,s1
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	368080e7          	jalr	872(ra) # 80001a84 <_ZdlPv>
    80003724:	00090513          	mv	a0,s2
    80003728:	00006097          	auipc	ra,0x6
    8000372c:	170080e7          	jalr	368(ra) # 80009898 <_Unwind_Resume>
    80003730:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80003734:	000b8513          	mv	a0,s7
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	34c080e7          	jalr	844(ra) # 80001a84 <_ZdlPv>
    80003740:	00048513          	mv	a0,s1
    80003744:	00006097          	auipc	ra,0x6
    80003748:	154080e7          	jalr	340(ra) # 80009898 <_Unwind_Resume>
    8000374c:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80003750:	00048513          	mv	a0,s1
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	330080e7          	jalr	816(ra) # 80001a84 <_ZdlPv>
    8000375c:	00090513          	mv	a0,s2
    80003760:	00006097          	auipc	ra,0x6
    80003764:	138080e7          	jalr	312(ra) # 80009898 <_Unwind_Resume>
    80003768:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    8000376c:	000c8513          	mv	a0,s9
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	314080e7          	jalr	788(ra) # 80001a84 <_ZdlPv>
    80003778:	00048513          	mv	a0,s1
    8000377c:	00006097          	auipc	ra,0x6
    80003780:	11c080e7          	jalr	284(ra) # 80009898 <_Unwind_Resume>

0000000080003784 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00113423          	sd	ra,8(sp)
    8000378c:	00813023          	sd	s0,0(sp)
    80003790:	01010413          	addi	s0,sp,16

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//    testSleeping(); // thread_sleep test C API
    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80003794:	00000097          	auipc	ra,0x0
    80003798:	bcc080e7          	jalr	-1076(ra) # 80003360 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>

    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    800037ac:	fd010113          	addi	sp,sp,-48
    800037b0:	02113423          	sd	ra,40(sp)
    800037b4:	02813023          	sd	s0,32(sp)
    800037b8:	00913c23          	sd	s1,24(sp)
    800037bc:	01213823          	sd	s2,16(sp)
    800037c0:	01313423          	sd	s3,8(sp)
    800037c4:	03010413          	addi	s0,sp,48
    800037c8:	00050913          	mv	s2,a0
            int i = 0;
    800037cc:	00000993          	li	s3,0
    800037d0:	0100006f          	j	800037e0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800037d4:	00a00513          	li	a0,10
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	560080e7          	jalr	1376(ra) # 80001d38 <_ZN7Console4putcEc>
            while (!threadEnd) {
    800037e0:	00005797          	auipc	a5,0x5
    800037e4:	fe07a783          	lw	a5,-32(a5) # 800087c0 <_ZN19ConsumerProducerCPP9threadEndE>
    800037e8:	04079a63          	bnez	a5,8000383c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800037ec:	01093783          	ld	a5,16(s2)
    800037f0:	0087b503          	ld	a0,8(a5)
    800037f4:	00000097          	auipc	ra,0x0
    800037f8:	958080e7          	jalr	-1704(ra) # 8000314c <_ZN9BufferCPP3getEv>
                i++;
    800037fc:	0019849b          	addiw	s1,s3,1
    80003800:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80003804:	0ff57513          	andi	a0,a0,255
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	530080e7          	jalr	1328(ra) # 80001d38 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80003810:	05000793          	li	a5,80
    80003814:	02f4e4bb          	remw	s1,s1,a5
    80003818:	fc0494e3          	bnez	s1,800037e0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    8000381c:	fb9ff06f          	j	800037d4 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80003820:	01093783          	ld	a5,16(s2)
    80003824:	0087b503          	ld	a0,8(a5)
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	924080e7          	jalr	-1756(ra) # 8000314c <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80003830:	0ff57513          	andi	a0,a0,255
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	504080e7          	jalr	1284(ra) # 80001d38 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    8000383c:	01093783          	ld	a5,16(s2)
    80003840:	0087b503          	ld	a0,8(a5)
    80003844:	00000097          	auipc	ra,0x0
    80003848:	994080e7          	jalr	-1644(ra) # 800031d8 <_ZN9BufferCPP6getCntEv>
    8000384c:	fca04ae3          	bgtz	a0,80003820 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80003850:	01093783          	ld	a5,16(s2)
    80003854:	0107b503          	ld	a0,16(a5)
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	574080e7          	jalr	1396(ra) # 80001dcc <_ZN9Semaphore6signalEv>
        }
    80003860:	02813083          	ld	ra,40(sp)
    80003864:	02013403          	ld	s0,32(sp)
    80003868:	01813483          	ld	s1,24(sp)
    8000386c:	01013903          	ld	s2,16(sp)
    80003870:	00813983          	ld	s3,8(sp)
    80003874:	03010113          	addi	sp,sp,48
    80003878:	00008067          	ret

000000008000387c <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	00813023          	sd	s0,0(sp)
    80003888:	01010413          	addi	s0,sp,16
    8000388c:	00005797          	auipc	a5,0x5
    80003890:	ddc78793          	addi	a5,a5,-548 # 80008668 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80003894:	00f53023          	sd	a5,0(a0)
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	23c080e7          	jalr	572(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    800038a0:	00813083          	ld	ra,8(sp)
    800038a4:	00013403          	ld	s0,0(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	00008067          	ret

00000000800038b0 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00113c23          	sd	ra,24(sp)
    800038b8:	00813823          	sd	s0,16(sp)
    800038bc:	00913423          	sd	s1,8(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	00050493          	mv	s1,a0
    800038c8:	00005797          	auipc	a5,0x5
    800038cc:	da078793          	addi	a5,a5,-608 # 80008668 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    800038d0:	00f53023          	sd	a5,0(a0)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	200080e7          	jalr	512(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    800038dc:	00048513          	mv	a0,s1
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	1a4080e7          	jalr	420(ra) # 80001a84 <_ZdlPv>
    800038e8:	01813083          	ld	ra,24(sp)
    800038ec:	01013403          	ld	s0,16(sp)
    800038f0:	00813483          	ld	s1,8(sp)
    800038f4:	02010113          	addi	sp,sp,32
    800038f8:	00008067          	ret

00000000800038fc <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800038fc:	ff010113          	addi	sp,sp,-16
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	01010413          	addi	s0,sp,16
    8000390c:	00005797          	auipc	a5,0x5
    80003910:	d0c78793          	addi	a5,a5,-756 # 80008618 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003914:	00f53023          	sd	a5,0(a0)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	1bc080e7          	jalr	444(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    80003920:	00813083          	ld	ra,8(sp)
    80003924:	00013403          	ld	s0,0(sp)
    80003928:	01010113          	addi	sp,sp,16
    8000392c:	00008067          	ret

0000000080003930 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80003930:	fe010113          	addi	sp,sp,-32
    80003934:	00113c23          	sd	ra,24(sp)
    80003938:	00813823          	sd	s0,16(sp)
    8000393c:	00913423          	sd	s1,8(sp)
    80003940:	02010413          	addi	s0,sp,32
    80003944:	00050493          	mv	s1,a0
    80003948:	00005797          	auipc	a5,0x5
    8000394c:	cd078793          	addi	a5,a5,-816 # 80008618 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80003950:	00f53023          	sd	a5,0(a0)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	180080e7          	jalr	384(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    8000395c:	00048513          	mv	a0,s1
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	124080e7          	jalr	292(ra) # 80001a84 <_ZdlPv>
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00113423          	sd	ra,8(sp)
    80003984:	00813023          	sd	s0,0(sp)
    80003988:	01010413          	addi	s0,sp,16
    8000398c:	00005797          	auipc	a5,0x5
    80003990:	cb478793          	addi	a5,a5,-844 # 80008640 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80003994:	00f53023          	sd	a5,0(a0)
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	13c080e7          	jalr	316(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    800039a0:	00813083          	ld	ra,8(sp)
    800039a4:	00013403          	ld	s0,0(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00113c23          	sd	ra,24(sp)
    800039b8:	00813823          	sd	s0,16(sp)
    800039bc:	00913423          	sd	s1,8(sp)
    800039c0:	02010413          	addi	s0,sp,32
    800039c4:	00050493          	mv	s1,a0
    800039c8:	00005797          	auipc	a5,0x5
    800039cc:	c7878793          	addi	a5,a5,-904 # 80008640 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    800039d0:	00f53023          	sd	a5,0(a0)
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	100080e7          	jalr	256(ra) # 80001ad4 <_ZN6ThreadD1Ev>
    800039dc:	00048513          	mv	a0,s1
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	0a4080e7          	jalr	164(ra) # 80001a84 <_ZdlPv>
    800039e8:	01813083          	ld	ra,24(sp)
    800039ec:	01013403          	ld	s0,16(sp)
    800039f0:	00813483          	ld	s1,8(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00113c23          	sd	ra,24(sp)
    80003a04:	00813823          	sd	s0,16(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	998080e7          	jalr	-1640(ra) # 800013ac <_Z4getcv>
    80003a1c:	0005059b          	sext.w	a1,a0
    80003a20:	01b00793          	li	a5,27
    80003a24:	00f58c63          	beq	a1,a5,80003a3c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80003a28:	0104b783          	ld	a5,16(s1)
    80003a2c:	0087b503          	ld	a0,8(a5)
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	68c080e7          	jalr	1676(ra) # 800030bc <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80003a38:	fddff06f          	j	80003a14 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80003a3c:	00100793          	li	a5,1
    80003a40:	00005717          	auipc	a4,0x5
    80003a44:	d8f72023          	sw	a5,-640(a4) # 800087c0 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80003a48:	0104b783          	ld	a5,16(s1)
    80003a4c:	02100593          	li	a1,33
    80003a50:	0087b503          	ld	a0,8(a5)
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	668080e7          	jalr	1640(ra) # 800030bc <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80003a5c:	0104b783          	ld	a5,16(s1)
    80003a60:	0107b503          	ld	a0,16(a5)
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	368080e7          	jalr	872(ra) # 80001dcc <_ZN9Semaphore6signalEv>
        }
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret

0000000080003a80 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80003a80:	fe010113          	addi	sp,sp,-32
    80003a84:	00113c23          	sd	ra,24(sp)
    80003a88:	00813823          	sd	s0,16(sp)
    80003a8c:	00913423          	sd	s1,8(sp)
    80003a90:	01213023          	sd	s2,0(sp)
    80003a94:	02010413          	addi	s0,sp,32
    80003a98:	00050493          	mv	s1,a0
            int i = 0;
    80003a9c:	00000913          	li	s2,0
            while (!threadEnd) {
    80003aa0:	00005797          	auipc	a5,0x5
    80003aa4:	d207a783          	lw	a5,-736(a5) # 800087c0 <_ZN19ConsumerProducerCPP9threadEndE>
    80003aa8:	04079263          	bnez	a5,80003aec <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80003aac:	0104b783          	ld	a5,16(s1)
    80003ab0:	0007a583          	lw	a1,0(a5)
    80003ab4:	0305859b          	addiw	a1,a1,48
    80003ab8:	0087b503          	ld	a0,8(a5)
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	600080e7          	jalr	1536(ra) # 800030bc <_ZN9BufferCPP3putEi>
                i++;
    80003ac4:	0019071b          	addiw	a4,s2,1
    80003ac8:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80003acc:	0104b783          	ld	a5,16(s1)
    80003ad0:	0007a783          	lw	a5,0(a5)
    80003ad4:	00e787bb          	addw	a5,a5,a4
    80003ad8:	00500513          	li	a0,5
    80003adc:	02a7e53b          	remw	a0,a5,a0
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	1bc080e7          	jalr	444(ra) # 80001c9c <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80003ae8:	fb9ff06f          	j	80003aa0 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80003aec:	0104b783          	ld	a5,16(s1)
    80003af0:	0107b503          	ld	a0,16(a5)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	2d8080e7          	jalr	728(ra) # 80001dcc <_ZN9Semaphore6signalEv>
        }
    80003afc:	01813083          	ld	ra,24(sp)
    80003b00:	01013403          	ld	s0,16(sp)
    80003b04:	00813483          	ld	s1,8(sp)
    80003b08:	00013903          	ld	s2,0(sp)
    80003b0c:	02010113          	addi	sp,sp,32
    80003b10:	00008067          	ret

0000000080003b14 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../h/_sem.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003b14:	fe010113          	addi	sp,sp,-32
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	00813823          	sd	s0,16(sp)
    80003b20:	00913423          	sd	s1,8(sp)
    80003b24:	01213023          	sd	s2,0(sp)
    80003b28:	02010413          	addi	s0,sp,32
    80003b2c:	00050493          	mv	s1,a0
    80003b30:	00058913          	mv	s2,a1
    80003b34:	0015879b          	addiw	a5,a1,1
    80003b38:	0007851b          	sext.w	a0,a5
    80003b3c:	00f4a023          	sw	a5,0(s1)
    80003b40:	0004a823          	sw	zero,16(s1)
    80003b44:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b48:	00251513          	slli	a0,a0,0x2
    80003b4c:	ffffd097          	auipc	ra,0xffffd
    80003b50:	5f8080e7          	jalr	1528(ra) # 80001144 <_Z9mem_allocm>
    80003b54:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003b58:	00000593          	li	a1,0
    80003b5c:	02048513          	addi	a0,s1,32
    80003b60:	ffffd097          	auipc	ra,0xffffd
    80003b64:	718080e7          	jalr	1816(ra) # 80001278 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80003b68:	00090593          	mv	a1,s2
    80003b6c:	01848513          	addi	a0,s1,24
    80003b70:	ffffd097          	auipc	ra,0xffffd
    80003b74:	708080e7          	jalr	1800(ra) # 80001278 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80003b78:	00100593          	li	a1,1
    80003b7c:	02848513          	addi	a0,s1,40
    80003b80:	ffffd097          	auipc	ra,0xffffd
    80003b84:	6f8080e7          	jalr	1784(ra) # 80001278 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80003b88:	00100593          	li	a1,1
    80003b8c:	03048513          	addi	a0,s1,48
    80003b90:	ffffd097          	auipc	ra,0xffffd
    80003b94:	6e8080e7          	jalr	1768(ra) # 80001278 <_Z8sem_openPP4_semj>
}
    80003b98:	01813083          	ld	ra,24(sp)
    80003b9c:	01013403          	ld	s0,16(sp)
    80003ba0:	00813483          	ld	s1,8(sp)
    80003ba4:	00013903          	ld	s2,0(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret

0000000080003bb0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	00050493          	mv	s1,a0
    80003bcc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003bd0:	01853503          	ld	a0,24(a0)
    80003bd4:	ffffd097          	auipc	ra,0xffffd
    80003bd8:	724080e7          	jalr	1828(ra) # 800012f8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80003bdc:	0304b503          	ld	a0,48(s1)
    80003be0:	ffffd097          	auipc	ra,0xffffd
    80003be4:	718080e7          	jalr	1816(ra) # 800012f8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80003be8:	0084b783          	ld	a5,8(s1)
    80003bec:	0144a703          	lw	a4,20(s1)
    80003bf0:	00271713          	slli	a4,a4,0x2
    80003bf4:	00e787b3          	add	a5,a5,a4
    80003bf8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003bfc:	0144a783          	lw	a5,20(s1)
    80003c00:	0017879b          	addiw	a5,a5,1
    80003c04:	0004a703          	lw	a4,0(s1)
    80003c08:	02e7e7bb          	remw	a5,a5,a4
    80003c0c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003c10:	0304b503          	ld	a0,48(s1)
    80003c14:	ffffd097          	auipc	ra,0xffffd
    80003c18:	728080e7          	jalr	1832(ra) # 8000133c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80003c1c:	0204b503          	ld	a0,32(s1)
    80003c20:	ffffd097          	auipc	ra,0xffffd
    80003c24:	71c080e7          	jalr	1820(ra) # 8000133c <_Z10sem_signalP4_sem>

}
    80003c28:	01813083          	ld	ra,24(sp)
    80003c2c:	01013403          	ld	s0,16(sp)
    80003c30:	00813483          	ld	s1,8(sp)
    80003c34:	00013903          	ld	s2,0(sp)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	01213023          	sd	s2,0(sp)
    80003c54:	02010413          	addi	s0,sp,32
    80003c58:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003c5c:	02053503          	ld	a0,32(a0)
    80003c60:	ffffd097          	auipc	ra,0xffffd
    80003c64:	698080e7          	jalr	1688(ra) # 800012f8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80003c68:	0284b503          	ld	a0,40(s1)
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	68c080e7          	jalr	1676(ra) # 800012f8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80003c74:	0084b703          	ld	a4,8(s1)
    80003c78:	0104a783          	lw	a5,16(s1)
    80003c7c:	00279693          	slli	a3,a5,0x2
    80003c80:	00d70733          	add	a4,a4,a3
    80003c84:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003c88:	0017879b          	addiw	a5,a5,1
    80003c8c:	0004a703          	lw	a4,0(s1)
    80003c90:	02e7e7bb          	remw	a5,a5,a4
    80003c94:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003c98:	0284b503          	ld	a0,40(s1)
    80003c9c:	ffffd097          	auipc	ra,0xffffd
    80003ca0:	6a0080e7          	jalr	1696(ra) # 8000133c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80003ca4:	0184b503          	ld	a0,24(s1)
    80003ca8:	ffffd097          	auipc	ra,0xffffd
    80003cac:	694080e7          	jalr	1684(ra) # 8000133c <_Z10sem_signalP4_sem>

    return ret;
}
    80003cb0:	00090513          	mv	a0,s2
    80003cb4:	01813083          	ld	ra,24(sp)
    80003cb8:	01013403          	ld	s0,16(sp)
    80003cbc:	00813483          	ld	s1,8(sp)
    80003cc0:	00013903          	ld	s2,0(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	00008067          	ret

0000000080003ccc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00113c23          	sd	ra,24(sp)
    80003cd4:	00813823          	sd	s0,16(sp)
    80003cd8:	00913423          	sd	s1,8(sp)
    80003cdc:	01213023          	sd	s2,0(sp)
    80003ce0:	02010413          	addi	s0,sp,32
    80003ce4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003ce8:	02853503          	ld	a0,40(a0)
    80003cec:	ffffd097          	auipc	ra,0xffffd
    80003cf0:	60c080e7          	jalr	1548(ra) # 800012f8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80003cf4:	0304b503          	ld	a0,48(s1)
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	600080e7          	jalr	1536(ra) # 800012f8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80003d00:	0144a783          	lw	a5,20(s1)
    80003d04:	0104a903          	lw	s2,16(s1)
    80003d08:	0327ce63          	blt	a5,s2,80003d44 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003d0c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003d10:	0304b503          	ld	a0,48(s1)
    80003d14:	ffffd097          	auipc	ra,0xffffd
    80003d18:	628080e7          	jalr	1576(ra) # 8000133c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80003d1c:	0284b503          	ld	a0,40(s1)
    80003d20:	ffffd097          	auipc	ra,0xffffd
    80003d24:	61c080e7          	jalr	1564(ra) # 8000133c <_Z10sem_signalP4_sem>

    return ret;
}
    80003d28:	00090513          	mv	a0,s2
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	00813483          	ld	s1,8(sp)
    80003d38:	00013903          	ld	s2,0(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret
        ret = cap - head + tail;
    80003d44:	0004a703          	lw	a4,0(s1)
    80003d48:	4127093b          	subw	s2,a4,s2
    80003d4c:	00f9093b          	addw	s2,s2,a5
    80003d50:	fc1ff06f          	j	80003d10 <_ZN6Buffer6getCntEv+0x44>

0000000080003d54 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003d54:	fe010113          	addi	sp,sp,-32
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	00813823          	sd	s0,16(sp)
    80003d60:	00913423          	sd	s1,8(sp)
    80003d64:	02010413          	addi	s0,sp,32
    80003d68:	00050493          	mv	s1,a0
    putc('\n');
    80003d6c:	00a00513          	li	a0,10
    80003d70:	ffffd097          	auipc	ra,0xffffd
    80003d74:	674080e7          	jalr	1652(ra) # 800013e4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003d78:	00003517          	auipc	a0,0x3
    80003d7c:	31050513          	addi	a0,a0,784 # 80007088 <_ZZ12printIntegermE6digits+0x10>
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	f3c080e7          	jalr	-196(ra) # 80002cbc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	f40080e7          	jalr	-192(ra) # 80003ccc <_ZN6Buffer6getCntEv>
    80003d94:	02a05c63          	blez	a0,80003dcc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003d98:	0084b783          	ld	a5,8(s1)
    80003d9c:	0104a703          	lw	a4,16(s1)
    80003da0:	00271713          	slli	a4,a4,0x2
    80003da4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003da8:	0007c503          	lbu	a0,0(a5)
    80003dac:	ffffd097          	auipc	ra,0xffffd
    80003db0:	638080e7          	jalr	1592(ra) # 800013e4 <_Z4putcc>
        head = (head + 1) % cap;
    80003db4:	0104a783          	lw	a5,16(s1)
    80003db8:	0017879b          	addiw	a5,a5,1
    80003dbc:	0004a703          	lw	a4,0(s1)
    80003dc0:	02e7e7bb          	remw	a5,a5,a4
    80003dc4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003dc8:	fc1ff06f          	j	80003d88 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003dcc:	02100513          	li	a0,33
    80003dd0:	ffffd097          	auipc	ra,0xffffd
    80003dd4:	614080e7          	jalr	1556(ra) # 800013e4 <_Z4putcc>
    putc('\n');
    80003dd8:	00a00513          	li	a0,10
    80003ddc:	ffffd097          	auipc	ra,0xffffd
    80003de0:	608080e7          	jalr	1544(ra) # 800013e4 <_Z4putcc>
    mem_free(buffer);
    80003de4:	0084b503          	ld	a0,8(s1)
    80003de8:	ffffd097          	auipc	ra,0xffffd
    80003dec:	384080e7          	jalr	900(ra) # 8000116c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003df0:	0204b503          	ld	a0,32(s1)
    80003df4:	ffffd097          	auipc	ra,0xffffd
    80003df8:	4c0080e7          	jalr	1216(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003dfc:	0184b503          	ld	a0,24(s1)
    80003e00:	ffffd097          	auipc	ra,0xffffd
    80003e04:	4b4080e7          	jalr	1204(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80003e08:	0304b503          	ld	a0,48(s1)
    80003e0c:	ffffd097          	auipc	ra,0xffffd
    80003e10:	4a8080e7          	jalr	1192(ra) # 800012b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80003e14:	0284b503          	ld	a0,40(s1)
    80003e18:	ffffd097          	auipc	ra,0xffffd
    80003e1c:	49c080e7          	jalr	1180(ra) # 800012b4 <_Z9sem_closeP4_sem>
}
    80003e20:	01813083          	ld	ra,24(sp)
    80003e24:	01013403          	ld	s0,16(sp)
    80003e28:	00813483          	ld	s1,8(sp)
    80003e2c:	02010113          	addi	sp,sp,32
    80003e30:	00008067          	ret

0000000080003e34 <start>:
    80003e34:	ff010113          	addi	sp,sp,-16
    80003e38:	00813423          	sd	s0,8(sp)
    80003e3c:	01010413          	addi	s0,sp,16
    80003e40:	300027f3          	csrr	a5,mstatus
    80003e44:	ffffe737          	lui	a4,0xffffe
    80003e48:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4dbf>
    80003e4c:	00e7f7b3          	and	a5,a5,a4
    80003e50:	00001737          	lui	a4,0x1
    80003e54:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003e58:	00e7e7b3          	or	a5,a5,a4
    80003e5c:	30079073          	csrw	mstatus,a5
    80003e60:	00000797          	auipc	a5,0x0
    80003e64:	16078793          	addi	a5,a5,352 # 80003fc0 <system_main>
    80003e68:	34179073          	csrw	mepc,a5
    80003e6c:	00000793          	li	a5,0
    80003e70:	18079073          	csrw	satp,a5
    80003e74:	000107b7          	lui	a5,0x10
    80003e78:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003e7c:	30279073          	csrw	medeleg,a5
    80003e80:	30379073          	csrw	mideleg,a5
    80003e84:	104027f3          	csrr	a5,sie
    80003e88:	2227e793          	ori	a5,a5,546
    80003e8c:	10479073          	csrw	sie,a5
    80003e90:	fff00793          	li	a5,-1
    80003e94:	00a7d793          	srli	a5,a5,0xa
    80003e98:	3b079073          	csrw	pmpaddr0,a5
    80003e9c:	00f00793          	li	a5,15
    80003ea0:	3a079073          	csrw	pmpcfg0,a5
    80003ea4:	f14027f3          	csrr	a5,mhartid
    80003ea8:	0200c737          	lui	a4,0x200c
    80003eac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003eb0:	0007869b          	sext.w	a3,a5
    80003eb4:	00269713          	slli	a4,a3,0x2
    80003eb8:	000f4637          	lui	a2,0xf4
    80003ebc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ec0:	00d70733          	add	a4,a4,a3
    80003ec4:	0037979b          	slliw	a5,a5,0x3
    80003ec8:	020046b7          	lui	a3,0x2004
    80003ecc:	00d787b3          	add	a5,a5,a3
    80003ed0:	00c585b3          	add	a1,a1,a2
    80003ed4:	00371693          	slli	a3,a4,0x3
    80003ed8:	00005717          	auipc	a4,0x5
    80003edc:	8f870713          	addi	a4,a4,-1800 # 800087d0 <timer_scratch>
    80003ee0:	00b7b023          	sd	a1,0(a5)
    80003ee4:	00d70733          	add	a4,a4,a3
    80003ee8:	00f73c23          	sd	a5,24(a4)
    80003eec:	02c73023          	sd	a2,32(a4)
    80003ef0:	34071073          	csrw	mscratch,a4
    80003ef4:	00000797          	auipc	a5,0x0
    80003ef8:	6ec78793          	addi	a5,a5,1772 # 800045e0 <timervec>
    80003efc:	30579073          	csrw	mtvec,a5
    80003f00:	300027f3          	csrr	a5,mstatus
    80003f04:	0087e793          	ori	a5,a5,8
    80003f08:	30079073          	csrw	mstatus,a5
    80003f0c:	304027f3          	csrr	a5,mie
    80003f10:	0807e793          	ori	a5,a5,128
    80003f14:	30479073          	csrw	mie,a5
    80003f18:	f14027f3          	csrr	a5,mhartid
    80003f1c:	0007879b          	sext.w	a5,a5
    80003f20:	00078213          	mv	tp,a5
    80003f24:	30200073          	mret
    80003f28:	00813403          	ld	s0,8(sp)
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <timerinit>:
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00813423          	sd	s0,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	f14027f3          	csrr	a5,mhartid
    80003f44:	0200c737          	lui	a4,0x200c
    80003f48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003f4c:	0007869b          	sext.w	a3,a5
    80003f50:	00269713          	slli	a4,a3,0x2
    80003f54:	000f4637          	lui	a2,0xf4
    80003f58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003f5c:	00d70733          	add	a4,a4,a3
    80003f60:	0037979b          	slliw	a5,a5,0x3
    80003f64:	020046b7          	lui	a3,0x2004
    80003f68:	00d787b3          	add	a5,a5,a3
    80003f6c:	00c585b3          	add	a1,a1,a2
    80003f70:	00371693          	slli	a3,a4,0x3
    80003f74:	00005717          	auipc	a4,0x5
    80003f78:	85c70713          	addi	a4,a4,-1956 # 800087d0 <timer_scratch>
    80003f7c:	00b7b023          	sd	a1,0(a5)
    80003f80:	00d70733          	add	a4,a4,a3
    80003f84:	00f73c23          	sd	a5,24(a4)
    80003f88:	02c73023          	sd	a2,32(a4)
    80003f8c:	34071073          	csrw	mscratch,a4
    80003f90:	00000797          	auipc	a5,0x0
    80003f94:	65078793          	addi	a5,a5,1616 # 800045e0 <timervec>
    80003f98:	30579073          	csrw	mtvec,a5
    80003f9c:	300027f3          	csrr	a5,mstatus
    80003fa0:	0087e793          	ori	a5,a5,8
    80003fa4:	30079073          	csrw	mstatus,a5
    80003fa8:	304027f3          	csrr	a5,mie
    80003fac:	0807e793          	ori	a5,a5,128
    80003fb0:	30479073          	csrw	mie,a5
    80003fb4:	00813403          	ld	s0,8(sp)
    80003fb8:	01010113          	addi	sp,sp,16
    80003fbc:	00008067          	ret

0000000080003fc0 <system_main>:
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00913423          	sd	s1,8(sp)
    80003fcc:	00113c23          	sd	ra,24(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00000097          	auipc	ra,0x0
    80003fd8:	0c4080e7          	jalr	196(ra) # 80004098 <cpuid>
    80003fdc:	00004497          	auipc	s1,0x4
    80003fe0:	74448493          	addi	s1,s1,1860 # 80008720 <started>
    80003fe4:	02050263          	beqz	a0,80004008 <system_main+0x48>
    80003fe8:	0004a783          	lw	a5,0(s1)
    80003fec:	0007879b          	sext.w	a5,a5
    80003ff0:	fe078ce3          	beqz	a5,80003fe8 <system_main+0x28>
    80003ff4:	0ff0000f          	fence
    80003ff8:	00003517          	auipc	a0,0x3
    80003ffc:	1c050513          	addi	a0,a0,448 # 800071b8 <_ZZ12printIntegermE6digits+0x140>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	a7c080e7          	jalr	-1412(ra) # 80004a7c <panic>
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	9d0080e7          	jalr	-1584(ra) # 800049d8 <consoleinit>
    80004010:	00001097          	auipc	ra,0x1
    80004014:	15c080e7          	jalr	348(ra) # 8000516c <printfinit>
    80004018:	00003517          	auipc	a0,0x3
    8000401c:	0c050513          	addi	a0,a0,192 # 800070d8 <_ZZ12printIntegermE6digits+0x60>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	ab8080e7          	jalr	-1352(ra) # 80004ad8 <__printf>
    80004028:	00003517          	auipc	a0,0x3
    8000402c:	16050513          	addi	a0,a0,352 # 80007188 <_ZZ12printIntegermE6digits+0x110>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	aa8080e7          	jalr	-1368(ra) # 80004ad8 <__printf>
    80004038:	00003517          	auipc	a0,0x3
    8000403c:	0a050513          	addi	a0,a0,160 # 800070d8 <_ZZ12printIntegermE6digits+0x60>
    80004040:	00001097          	auipc	ra,0x1
    80004044:	a98080e7          	jalr	-1384(ra) # 80004ad8 <__printf>
    80004048:	00001097          	auipc	ra,0x1
    8000404c:	4b0080e7          	jalr	1200(ra) # 800054f8 <kinit>
    80004050:	00000097          	auipc	ra,0x0
    80004054:	148080e7          	jalr	328(ra) # 80004198 <trapinit>
    80004058:	00000097          	auipc	ra,0x0
    8000405c:	16c080e7          	jalr	364(ra) # 800041c4 <trapinithart>
    80004060:	00000097          	auipc	ra,0x0
    80004064:	5c0080e7          	jalr	1472(ra) # 80004620 <plicinit>
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	5e0080e7          	jalr	1504(ra) # 80004648 <plicinithart>
    80004070:	00000097          	auipc	ra,0x0
    80004074:	078080e7          	jalr	120(ra) # 800040e8 <userinit>
    80004078:	0ff0000f          	fence
    8000407c:	00100793          	li	a5,1
    80004080:	00003517          	auipc	a0,0x3
    80004084:	12050513          	addi	a0,a0,288 # 800071a0 <_ZZ12printIntegermE6digits+0x128>
    80004088:	00f4a023          	sw	a5,0(s1)
    8000408c:	00001097          	auipc	ra,0x1
    80004090:	a4c080e7          	jalr	-1460(ra) # 80004ad8 <__printf>
    80004094:	0000006f          	j	80004094 <system_main+0xd4>

0000000080004098 <cpuid>:
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813423          	sd	s0,8(sp)
    800040a0:	01010413          	addi	s0,sp,16
    800040a4:	00020513          	mv	a0,tp
    800040a8:	00813403          	ld	s0,8(sp)
    800040ac:	0005051b          	sext.w	a0,a0
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <mycpu>:
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00813423          	sd	s0,8(sp)
    800040c0:	01010413          	addi	s0,sp,16
    800040c4:	00020793          	mv	a5,tp
    800040c8:	00813403          	ld	s0,8(sp)
    800040cc:	0007879b          	sext.w	a5,a5
    800040d0:	00779793          	slli	a5,a5,0x7
    800040d4:	00005517          	auipc	a0,0x5
    800040d8:	72c50513          	addi	a0,a0,1836 # 80009800 <cpus>
    800040dc:	00f50533          	add	a0,a0,a5
    800040e0:	01010113          	addi	sp,sp,16
    800040e4:	00008067          	ret

00000000800040e8 <userinit>:
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00813423          	sd	s0,8(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00813403          	ld	s0,8(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	ffffd317          	auipc	t1,0xffffd
    80004100:	36430067          	jr	868(t1) # 80001460 <main>

0000000080004104 <either_copyout>:
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	00113423          	sd	ra,8(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	02051663          	bnez	a0,80004140 <either_copyout+0x3c>
    80004118:	00058513          	mv	a0,a1
    8000411c:	00060593          	mv	a1,a2
    80004120:	0006861b          	sext.w	a2,a3
    80004124:	00002097          	auipc	ra,0x2
    80004128:	c60080e7          	jalr	-928(ra) # 80005d84 <__memmove>
    8000412c:	00813083          	ld	ra,8(sp)
    80004130:	00013403          	ld	s0,0(sp)
    80004134:	00000513          	li	a0,0
    80004138:	01010113          	addi	sp,sp,16
    8000413c:	00008067          	ret
    80004140:	00003517          	auipc	a0,0x3
    80004144:	0a050513          	addi	a0,a0,160 # 800071e0 <_ZZ12printIntegermE6digits+0x168>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	934080e7          	jalr	-1740(ra) # 80004a7c <panic>

0000000080004150 <either_copyin>:
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00813023          	sd	s0,0(sp)
    80004158:	00113423          	sd	ra,8(sp)
    8000415c:	01010413          	addi	s0,sp,16
    80004160:	02059463          	bnez	a1,80004188 <either_copyin+0x38>
    80004164:	00060593          	mv	a1,a2
    80004168:	0006861b          	sext.w	a2,a3
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	c18080e7          	jalr	-1000(ra) # 80005d84 <__memmove>
    80004174:	00813083          	ld	ra,8(sp)
    80004178:	00013403          	ld	s0,0(sp)
    8000417c:	00000513          	li	a0,0
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret
    80004188:	00003517          	auipc	a0,0x3
    8000418c:	08050513          	addi	a0,a0,128 # 80007208 <_ZZ12printIntegermE6digits+0x190>
    80004190:	00001097          	auipc	ra,0x1
    80004194:	8ec080e7          	jalr	-1812(ra) # 80004a7c <panic>

0000000080004198 <trapinit>:
    80004198:	ff010113          	addi	sp,sp,-16
    8000419c:	00813423          	sd	s0,8(sp)
    800041a0:	01010413          	addi	s0,sp,16
    800041a4:	00813403          	ld	s0,8(sp)
    800041a8:	00003597          	auipc	a1,0x3
    800041ac:	08858593          	addi	a1,a1,136 # 80007230 <_ZZ12printIntegermE6digits+0x1b8>
    800041b0:	00005517          	auipc	a0,0x5
    800041b4:	6d050513          	addi	a0,a0,1744 # 80009880 <tickslock>
    800041b8:	01010113          	addi	sp,sp,16
    800041bc:	00001317          	auipc	t1,0x1
    800041c0:	5cc30067          	jr	1484(t1) # 80005788 <initlock>

00000000800041c4 <trapinithart>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813423          	sd	s0,8(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	00000797          	auipc	a5,0x0
    800041d4:	30078793          	addi	a5,a5,768 # 800044d0 <kernelvec>
    800041d8:	10579073          	csrw	stvec,a5
    800041dc:	00813403          	ld	s0,8(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <usertrap>:
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00813423          	sd	s0,8(sp)
    800041f0:	01010413          	addi	s0,sp,16
    800041f4:	00813403          	ld	s0,8(sp)
    800041f8:	01010113          	addi	sp,sp,16
    800041fc:	00008067          	ret

0000000080004200 <usertrapret>:
    80004200:	ff010113          	addi	sp,sp,-16
    80004204:	00813423          	sd	s0,8(sp)
    80004208:	01010413          	addi	s0,sp,16
    8000420c:	00813403          	ld	s0,8(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <kerneltrap>:
    80004218:	fe010113          	addi	sp,sp,-32
    8000421c:	00813823          	sd	s0,16(sp)
    80004220:	00113c23          	sd	ra,24(sp)
    80004224:	00913423          	sd	s1,8(sp)
    80004228:	02010413          	addi	s0,sp,32
    8000422c:	142025f3          	csrr	a1,scause
    80004230:	100027f3          	csrr	a5,sstatus
    80004234:	0027f793          	andi	a5,a5,2
    80004238:	10079c63          	bnez	a5,80004350 <kerneltrap+0x138>
    8000423c:	142027f3          	csrr	a5,scause
    80004240:	0207ce63          	bltz	a5,8000427c <kerneltrap+0x64>
    80004244:	00003517          	auipc	a0,0x3
    80004248:	03450513          	addi	a0,a0,52 # 80007278 <_ZZ12printIntegermE6digits+0x200>
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	88c080e7          	jalr	-1908(ra) # 80004ad8 <__printf>
    80004254:	141025f3          	csrr	a1,sepc
    80004258:	14302673          	csrr	a2,stval
    8000425c:	00003517          	auipc	a0,0x3
    80004260:	02c50513          	addi	a0,a0,44 # 80007288 <_ZZ12printIntegermE6digits+0x210>
    80004264:	00001097          	auipc	ra,0x1
    80004268:	874080e7          	jalr	-1932(ra) # 80004ad8 <__printf>
    8000426c:	00003517          	auipc	a0,0x3
    80004270:	03450513          	addi	a0,a0,52 # 800072a0 <_ZZ12printIntegermE6digits+0x228>
    80004274:	00001097          	auipc	ra,0x1
    80004278:	808080e7          	jalr	-2040(ra) # 80004a7c <panic>
    8000427c:	0ff7f713          	andi	a4,a5,255
    80004280:	00900693          	li	a3,9
    80004284:	04d70063          	beq	a4,a3,800042c4 <kerneltrap+0xac>
    80004288:	fff00713          	li	a4,-1
    8000428c:	03f71713          	slli	a4,a4,0x3f
    80004290:	00170713          	addi	a4,a4,1
    80004294:	fae798e3          	bne	a5,a4,80004244 <kerneltrap+0x2c>
    80004298:	00000097          	auipc	ra,0x0
    8000429c:	e00080e7          	jalr	-512(ra) # 80004098 <cpuid>
    800042a0:	06050663          	beqz	a0,8000430c <kerneltrap+0xf4>
    800042a4:	144027f3          	csrr	a5,sip
    800042a8:	ffd7f793          	andi	a5,a5,-3
    800042ac:	14479073          	csrw	sip,a5
    800042b0:	01813083          	ld	ra,24(sp)
    800042b4:	01013403          	ld	s0,16(sp)
    800042b8:	00813483          	ld	s1,8(sp)
    800042bc:	02010113          	addi	sp,sp,32
    800042c0:	00008067          	ret
    800042c4:	00000097          	auipc	ra,0x0
    800042c8:	3d0080e7          	jalr	976(ra) # 80004694 <plic_claim>
    800042cc:	00a00793          	li	a5,10
    800042d0:	00050493          	mv	s1,a0
    800042d4:	06f50863          	beq	a0,a5,80004344 <kerneltrap+0x12c>
    800042d8:	fc050ce3          	beqz	a0,800042b0 <kerneltrap+0x98>
    800042dc:	00050593          	mv	a1,a0
    800042e0:	00003517          	auipc	a0,0x3
    800042e4:	f7850513          	addi	a0,a0,-136 # 80007258 <_ZZ12printIntegermE6digits+0x1e0>
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	7f0080e7          	jalr	2032(ra) # 80004ad8 <__printf>
    800042f0:	01013403          	ld	s0,16(sp)
    800042f4:	01813083          	ld	ra,24(sp)
    800042f8:	00048513          	mv	a0,s1
    800042fc:	00813483          	ld	s1,8(sp)
    80004300:	02010113          	addi	sp,sp,32
    80004304:	00000317          	auipc	t1,0x0
    80004308:	3c830067          	jr	968(t1) # 800046cc <plic_complete>
    8000430c:	00005517          	auipc	a0,0x5
    80004310:	57450513          	addi	a0,a0,1396 # 80009880 <tickslock>
    80004314:	00001097          	auipc	ra,0x1
    80004318:	498080e7          	jalr	1176(ra) # 800057ac <acquire>
    8000431c:	00004717          	auipc	a4,0x4
    80004320:	40870713          	addi	a4,a4,1032 # 80008724 <ticks>
    80004324:	00072783          	lw	a5,0(a4)
    80004328:	00005517          	auipc	a0,0x5
    8000432c:	55850513          	addi	a0,a0,1368 # 80009880 <tickslock>
    80004330:	0017879b          	addiw	a5,a5,1
    80004334:	00f72023          	sw	a5,0(a4)
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	540080e7          	jalr	1344(ra) # 80005878 <release>
    80004340:	f65ff06f          	j	800042a4 <kerneltrap+0x8c>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	09c080e7          	jalr	156(ra) # 800053e0 <uartintr>
    8000434c:	fa5ff06f          	j	800042f0 <kerneltrap+0xd8>
    80004350:	00003517          	auipc	a0,0x3
    80004354:	ee850513          	addi	a0,a0,-280 # 80007238 <_ZZ12printIntegermE6digits+0x1c0>
    80004358:	00000097          	auipc	ra,0x0
    8000435c:	724080e7          	jalr	1828(ra) # 80004a7c <panic>

0000000080004360 <clockintr>:
    80004360:	fe010113          	addi	sp,sp,-32
    80004364:	00813823          	sd	s0,16(sp)
    80004368:	00913423          	sd	s1,8(sp)
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	02010413          	addi	s0,sp,32
    80004374:	00005497          	auipc	s1,0x5
    80004378:	50c48493          	addi	s1,s1,1292 # 80009880 <tickslock>
    8000437c:	00048513          	mv	a0,s1
    80004380:	00001097          	auipc	ra,0x1
    80004384:	42c080e7          	jalr	1068(ra) # 800057ac <acquire>
    80004388:	00004717          	auipc	a4,0x4
    8000438c:	39c70713          	addi	a4,a4,924 # 80008724 <ticks>
    80004390:	00072783          	lw	a5,0(a4)
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	01813083          	ld	ra,24(sp)
    8000439c:	00048513          	mv	a0,s1
    800043a0:	0017879b          	addiw	a5,a5,1
    800043a4:	00813483          	ld	s1,8(sp)
    800043a8:	00f72023          	sw	a5,0(a4)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00001317          	auipc	t1,0x1
    800043b4:	4c830067          	jr	1224(t1) # 80005878 <release>

00000000800043b8 <devintr>:
    800043b8:	142027f3          	csrr	a5,scause
    800043bc:	00000513          	li	a0,0
    800043c0:	0007c463          	bltz	a5,800043c8 <devintr+0x10>
    800043c4:	00008067          	ret
    800043c8:	fe010113          	addi	sp,sp,-32
    800043cc:	00813823          	sd	s0,16(sp)
    800043d0:	00113c23          	sd	ra,24(sp)
    800043d4:	00913423          	sd	s1,8(sp)
    800043d8:	02010413          	addi	s0,sp,32
    800043dc:	0ff7f713          	andi	a4,a5,255
    800043e0:	00900693          	li	a3,9
    800043e4:	04d70c63          	beq	a4,a3,8000443c <devintr+0x84>
    800043e8:	fff00713          	li	a4,-1
    800043ec:	03f71713          	slli	a4,a4,0x3f
    800043f0:	00170713          	addi	a4,a4,1
    800043f4:	00e78c63          	beq	a5,a4,8000440c <devintr+0x54>
    800043f8:	01813083          	ld	ra,24(sp)
    800043fc:	01013403          	ld	s0,16(sp)
    80004400:	00813483          	ld	s1,8(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret
    8000440c:	00000097          	auipc	ra,0x0
    80004410:	c8c080e7          	jalr	-884(ra) # 80004098 <cpuid>
    80004414:	06050663          	beqz	a0,80004480 <devintr+0xc8>
    80004418:	144027f3          	csrr	a5,sip
    8000441c:	ffd7f793          	andi	a5,a5,-3
    80004420:	14479073          	csrw	sip,a5
    80004424:	01813083          	ld	ra,24(sp)
    80004428:	01013403          	ld	s0,16(sp)
    8000442c:	00813483          	ld	s1,8(sp)
    80004430:	00200513          	li	a0,2
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00008067          	ret
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	258080e7          	jalr	600(ra) # 80004694 <plic_claim>
    80004444:	00a00793          	li	a5,10
    80004448:	00050493          	mv	s1,a0
    8000444c:	06f50663          	beq	a0,a5,800044b8 <devintr+0x100>
    80004450:	00100513          	li	a0,1
    80004454:	fa0482e3          	beqz	s1,800043f8 <devintr+0x40>
    80004458:	00048593          	mv	a1,s1
    8000445c:	00003517          	auipc	a0,0x3
    80004460:	dfc50513          	addi	a0,a0,-516 # 80007258 <_ZZ12printIntegermE6digits+0x1e0>
    80004464:	00000097          	auipc	ra,0x0
    80004468:	674080e7          	jalr	1652(ra) # 80004ad8 <__printf>
    8000446c:	00048513          	mv	a0,s1
    80004470:	00000097          	auipc	ra,0x0
    80004474:	25c080e7          	jalr	604(ra) # 800046cc <plic_complete>
    80004478:	00100513          	li	a0,1
    8000447c:	f7dff06f          	j	800043f8 <devintr+0x40>
    80004480:	00005517          	auipc	a0,0x5
    80004484:	40050513          	addi	a0,a0,1024 # 80009880 <tickslock>
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	324080e7          	jalr	804(ra) # 800057ac <acquire>
    80004490:	00004717          	auipc	a4,0x4
    80004494:	29470713          	addi	a4,a4,660 # 80008724 <ticks>
    80004498:	00072783          	lw	a5,0(a4)
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	3e450513          	addi	a0,a0,996 # 80009880 <tickslock>
    800044a4:	0017879b          	addiw	a5,a5,1
    800044a8:	00f72023          	sw	a5,0(a4)
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	3cc080e7          	jalr	972(ra) # 80005878 <release>
    800044b4:	f65ff06f          	j	80004418 <devintr+0x60>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	f28080e7          	jalr	-216(ra) # 800053e0 <uartintr>
    800044c0:	fadff06f          	j	8000446c <devintr+0xb4>
	...

00000000800044d0 <kernelvec>:
    800044d0:	f0010113          	addi	sp,sp,-256
    800044d4:	00113023          	sd	ra,0(sp)
    800044d8:	00213423          	sd	sp,8(sp)
    800044dc:	00313823          	sd	gp,16(sp)
    800044e0:	00413c23          	sd	tp,24(sp)
    800044e4:	02513023          	sd	t0,32(sp)
    800044e8:	02613423          	sd	t1,40(sp)
    800044ec:	02713823          	sd	t2,48(sp)
    800044f0:	02813c23          	sd	s0,56(sp)
    800044f4:	04913023          	sd	s1,64(sp)
    800044f8:	04a13423          	sd	a0,72(sp)
    800044fc:	04b13823          	sd	a1,80(sp)
    80004500:	04c13c23          	sd	a2,88(sp)
    80004504:	06d13023          	sd	a3,96(sp)
    80004508:	06e13423          	sd	a4,104(sp)
    8000450c:	06f13823          	sd	a5,112(sp)
    80004510:	07013c23          	sd	a6,120(sp)
    80004514:	09113023          	sd	a7,128(sp)
    80004518:	09213423          	sd	s2,136(sp)
    8000451c:	09313823          	sd	s3,144(sp)
    80004520:	09413c23          	sd	s4,152(sp)
    80004524:	0b513023          	sd	s5,160(sp)
    80004528:	0b613423          	sd	s6,168(sp)
    8000452c:	0b713823          	sd	s7,176(sp)
    80004530:	0b813c23          	sd	s8,184(sp)
    80004534:	0d913023          	sd	s9,192(sp)
    80004538:	0da13423          	sd	s10,200(sp)
    8000453c:	0db13823          	sd	s11,208(sp)
    80004540:	0dc13c23          	sd	t3,216(sp)
    80004544:	0fd13023          	sd	t4,224(sp)
    80004548:	0fe13423          	sd	t5,232(sp)
    8000454c:	0ff13823          	sd	t6,240(sp)
    80004550:	cc9ff0ef          	jal	ra,80004218 <kerneltrap>
    80004554:	00013083          	ld	ra,0(sp)
    80004558:	00813103          	ld	sp,8(sp)
    8000455c:	01013183          	ld	gp,16(sp)
    80004560:	02013283          	ld	t0,32(sp)
    80004564:	02813303          	ld	t1,40(sp)
    80004568:	03013383          	ld	t2,48(sp)
    8000456c:	03813403          	ld	s0,56(sp)
    80004570:	04013483          	ld	s1,64(sp)
    80004574:	04813503          	ld	a0,72(sp)
    80004578:	05013583          	ld	a1,80(sp)
    8000457c:	05813603          	ld	a2,88(sp)
    80004580:	06013683          	ld	a3,96(sp)
    80004584:	06813703          	ld	a4,104(sp)
    80004588:	07013783          	ld	a5,112(sp)
    8000458c:	07813803          	ld	a6,120(sp)
    80004590:	08013883          	ld	a7,128(sp)
    80004594:	08813903          	ld	s2,136(sp)
    80004598:	09013983          	ld	s3,144(sp)
    8000459c:	09813a03          	ld	s4,152(sp)
    800045a0:	0a013a83          	ld	s5,160(sp)
    800045a4:	0a813b03          	ld	s6,168(sp)
    800045a8:	0b013b83          	ld	s7,176(sp)
    800045ac:	0b813c03          	ld	s8,184(sp)
    800045b0:	0c013c83          	ld	s9,192(sp)
    800045b4:	0c813d03          	ld	s10,200(sp)
    800045b8:	0d013d83          	ld	s11,208(sp)
    800045bc:	0d813e03          	ld	t3,216(sp)
    800045c0:	0e013e83          	ld	t4,224(sp)
    800045c4:	0e813f03          	ld	t5,232(sp)
    800045c8:	0f013f83          	ld	t6,240(sp)
    800045cc:	10010113          	addi	sp,sp,256
    800045d0:	10200073          	sret
    800045d4:	00000013          	nop
    800045d8:	00000013          	nop
    800045dc:	00000013          	nop

00000000800045e0 <timervec>:
    800045e0:	34051573          	csrrw	a0,mscratch,a0
    800045e4:	00b53023          	sd	a1,0(a0)
    800045e8:	00c53423          	sd	a2,8(a0)
    800045ec:	00d53823          	sd	a3,16(a0)
    800045f0:	01853583          	ld	a1,24(a0)
    800045f4:	02053603          	ld	a2,32(a0)
    800045f8:	0005b683          	ld	a3,0(a1)
    800045fc:	00c686b3          	add	a3,a3,a2
    80004600:	00d5b023          	sd	a3,0(a1)
    80004604:	00200593          	li	a1,2
    80004608:	14459073          	csrw	sip,a1
    8000460c:	01053683          	ld	a3,16(a0)
    80004610:	00853603          	ld	a2,8(a0)
    80004614:	00053583          	ld	a1,0(a0)
    80004618:	34051573          	csrrw	a0,mscratch,a0
    8000461c:	30200073          	mret

0000000080004620 <plicinit>:
    80004620:	ff010113          	addi	sp,sp,-16
    80004624:	00813423          	sd	s0,8(sp)
    80004628:	01010413          	addi	s0,sp,16
    8000462c:	00813403          	ld	s0,8(sp)
    80004630:	0c0007b7          	lui	a5,0xc000
    80004634:	00100713          	li	a4,1
    80004638:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000463c:	00e7a223          	sw	a4,4(a5)
    80004640:	01010113          	addi	sp,sp,16
    80004644:	00008067          	ret

0000000080004648 <plicinithart>:
    80004648:	ff010113          	addi	sp,sp,-16
    8000464c:	00813023          	sd	s0,0(sp)
    80004650:	00113423          	sd	ra,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00000097          	auipc	ra,0x0
    8000465c:	a40080e7          	jalr	-1472(ra) # 80004098 <cpuid>
    80004660:	0085171b          	slliw	a4,a0,0x8
    80004664:	0c0027b7          	lui	a5,0xc002
    80004668:	00e787b3          	add	a5,a5,a4
    8000466c:	40200713          	li	a4,1026
    80004670:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004674:	00813083          	ld	ra,8(sp)
    80004678:	00013403          	ld	s0,0(sp)
    8000467c:	00d5151b          	slliw	a0,a0,0xd
    80004680:	0c2017b7          	lui	a5,0xc201
    80004684:	00a78533          	add	a0,a5,a0
    80004688:	00052023          	sw	zero,0(a0)
    8000468c:	01010113          	addi	sp,sp,16
    80004690:	00008067          	ret

0000000080004694 <plic_claim>:
    80004694:	ff010113          	addi	sp,sp,-16
    80004698:	00813023          	sd	s0,0(sp)
    8000469c:	00113423          	sd	ra,8(sp)
    800046a0:	01010413          	addi	s0,sp,16
    800046a4:	00000097          	auipc	ra,0x0
    800046a8:	9f4080e7          	jalr	-1548(ra) # 80004098 <cpuid>
    800046ac:	00813083          	ld	ra,8(sp)
    800046b0:	00013403          	ld	s0,0(sp)
    800046b4:	00d5151b          	slliw	a0,a0,0xd
    800046b8:	0c2017b7          	lui	a5,0xc201
    800046bc:	00a78533          	add	a0,a5,a0
    800046c0:	00452503          	lw	a0,4(a0)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret

00000000800046cc <plic_complete>:
    800046cc:	fe010113          	addi	sp,sp,-32
    800046d0:	00813823          	sd	s0,16(sp)
    800046d4:	00913423          	sd	s1,8(sp)
    800046d8:	00113c23          	sd	ra,24(sp)
    800046dc:	02010413          	addi	s0,sp,32
    800046e0:	00050493          	mv	s1,a0
    800046e4:	00000097          	auipc	ra,0x0
    800046e8:	9b4080e7          	jalr	-1612(ra) # 80004098 <cpuid>
    800046ec:	01813083          	ld	ra,24(sp)
    800046f0:	01013403          	ld	s0,16(sp)
    800046f4:	00d5179b          	slliw	a5,a0,0xd
    800046f8:	0c201737          	lui	a4,0xc201
    800046fc:	00f707b3          	add	a5,a4,a5
    80004700:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <consolewrite>:
    80004710:	fb010113          	addi	sp,sp,-80
    80004714:	04813023          	sd	s0,64(sp)
    80004718:	04113423          	sd	ra,72(sp)
    8000471c:	02913c23          	sd	s1,56(sp)
    80004720:	03213823          	sd	s2,48(sp)
    80004724:	03313423          	sd	s3,40(sp)
    80004728:	03413023          	sd	s4,32(sp)
    8000472c:	01513c23          	sd	s5,24(sp)
    80004730:	05010413          	addi	s0,sp,80
    80004734:	06c05c63          	blez	a2,800047ac <consolewrite+0x9c>
    80004738:	00060993          	mv	s3,a2
    8000473c:	00050a13          	mv	s4,a0
    80004740:	00058493          	mv	s1,a1
    80004744:	00000913          	li	s2,0
    80004748:	fff00a93          	li	s5,-1
    8000474c:	01c0006f          	j	80004768 <consolewrite+0x58>
    80004750:	fbf44503          	lbu	a0,-65(s0)
    80004754:	0019091b          	addiw	s2,s2,1
    80004758:	00148493          	addi	s1,s1,1
    8000475c:	00001097          	auipc	ra,0x1
    80004760:	a9c080e7          	jalr	-1380(ra) # 800051f8 <uartputc>
    80004764:	03298063          	beq	s3,s2,80004784 <consolewrite+0x74>
    80004768:	00048613          	mv	a2,s1
    8000476c:	00100693          	li	a3,1
    80004770:	000a0593          	mv	a1,s4
    80004774:	fbf40513          	addi	a0,s0,-65
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	9d8080e7          	jalr	-1576(ra) # 80004150 <either_copyin>
    80004780:	fd5518e3          	bne	a0,s5,80004750 <consolewrite+0x40>
    80004784:	04813083          	ld	ra,72(sp)
    80004788:	04013403          	ld	s0,64(sp)
    8000478c:	03813483          	ld	s1,56(sp)
    80004790:	02813983          	ld	s3,40(sp)
    80004794:	02013a03          	ld	s4,32(sp)
    80004798:	01813a83          	ld	s5,24(sp)
    8000479c:	00090513          	mv	a0,s2
    800047a0:	03013903          	ld	s2,48(sp)
    800047a4:	05010113          	addi	sp,sp,80
    800047a8:	00008067          	ret
    800047ac:	00000913          	li	s2,0
    800047b0:	fd5ff06f          	j	80004784 <consolewrite+0x74>

00000000800047b4 <consoleread>:
    800047b4:	f9010113          	addi	sp,sp,-112
    800047b8:	06813023          	sd	s0,96(sp)
    800047bc:	04913c23          	sd	s1,88(sp)
    800047c0:	05213823          	sd	s2,80(sp)
    800047c4:	05313423          	sd	s3,72(sp)
    800047c8:	05413023          	sd	s4,64(sp)
    800047cc:	03513c23          	sd	s5,56(sp)
    800047d0:	03613823          	sd	s6,48(sp)
    800047d4:	03713423          	sd	s7,40(sp)
    800047d8:	03813023          	sd	s8,32(sp)
    800047dc:	06113423          	sd	ra,104(sp)
    800047e0:	01913c23          	sd	s9,24(sp)
    800047e4:	07010413          	addi	s0,sp,112
    800047e8:	00060b93          	mv	s7,a2
    800047ec:	00050913          	mv	s2,a0
    800047f0:	00058c13          	mv	s8,a1
    800047f4:	00060b1b          	sext.w	s6,a2
    800047f8:	00005497          	auipc	s1,0x5
    800047fc:	0b048493          	addi	s1,s1,176 # 800098a8 <cons>
    80004800:	00400993          	li	s3,4
    80004804:	fff00a13          	li	s4,-1
    80004808:	00a00a93          	li	s5,10
    8000480c:	05705e63          	blez	s7,80004868 <consoleread+0xb4>
    80004810:	09c4a703          	lw	a4,156(s1)
    80004814:	0984a783          	lw	a5,152(s1)
    80004818:	0007071b          	sext.w	a4,a4
    8000481c:	08e78463          	beq	a5,a4,800048a4 <consoleread+0xf0>
    80004820:	07f7f713          	andi	a4,a5,127
    80004824:	00e48733          	add	a4,s1,a4
    80004828:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000482c:	0017869b          	addiw	a3,a5,1
    80004830:	08d4ac23          	sw	a3,152(s1)
    80004834:	00070c9b          	sext.w	s9,a4
    80004838:	0b370663          	beq	a4,s3,800048e4 <consoleread+0x130>
    8000483c:	00100693          	li	a3,1
    80004840:	f9f40613          	addi	a2,s0,-97
    80004844:	000c0593          	mv	a1,s8
    80004848:	00090513          	mv	a0,s2
    8000484c:	f8e40fa3          	sb	a4,-97(s0)
    80004850:	00000097          	auipc	ra,0x0
    80004854:	8b4080e7          	jalr	-1868(ra) # 80004104 <either_copyout>
    80004858:	01450863          	beq	a0,s4,80004868 <consoleread+0xb4>
    8000485c:	001c0c13          	addi	s8,s8,1
    80004860:	fffb8b9b          	addiw	s7,s7,-1
    80004864:	fb5c94e3          	bne	s9,s5,8000480c <consoleread+0x58>
    80004868:	000b851b          	sext.w	a0,s7
    8000486c:	06813083          	ld	ra,104(sp)
    80004870:	06013403          	ld	s0,96(sp)
    80004874:	05813483          	ld	s1,88(sp)
    80004878:	05013903          	ld	s2,80(sp)
    8000487c:	04813983          	ld	s3,72(sp)
    80004880:	04013a03          	ld	s4,64(sp)
    80004884:	03813a83          	ld	s5,56(sp)
    80004888:	02813b83          	ld	s7,40(sp)
    8000488c:	02013c03          	ld	s8,32(sp)
    80004890:	01813c83          	ld	s9,24(sp)
    80004894:	40ab053b          	subw	a0,s6,a0
    80004898:	03013b03          	ld	s6,48(sp)
    8000489c:	07010113          	addi	sp,sp,112
    800048a0:	00008067          	ret
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	1d8080e7          	jalr	472(ra) # 80005a7c <push_on>
    800048ac:	0984a703          	lw	a4,152(s1)
    800048b0:	09c4a783          	lw	a5,156(s1)
    800048b4:	0007879b          	sext.w	a5,a5
    800048b8:	fef70ce3          	beq	a4,a5,800048b0 <consoleread+0xfc>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	234080e7          	jalr	564(ra) # 80005af0 <pop_on>
    800048c4:	0984a783          	lw	a5,152(s1)
    800048c8:	07f7f713          	andi	a4,a5,127
    800048cc:	00e48733          	add	a4,s1,a4
    800048d0:	01874703          	lbu	a4,24(a4)
    800048d4:	0017869b          	addiw	a3,a5,1
    800048d8:	08d4ac23          	sw	a3,152(s1)
    800048dc:	00070c9b          	sext.w	s9,a4
    800048e0:	f5371ee3          	bne	a4,s3,8000483c <consoleread+0x88>
    800048e4:	000b851b          	sext.w	a0,s7
    800048e8:	f96bf2e3          	bgeu	s7,s6,8000486c <consoleread+0xb8>
    800048ec:	08f4ac23          	sw	a5,152(s1)
    800048f0:	f7dff06f          	j	8000486c <consoleread+0xb8>

00000000800048f4 <consputc>:
    800048f4:	10000793          	li	a5,256
    800048f8:	00f50663          	beq	a0,a5,80004904 <consputc+0x10>
    800048fc:	00001317          	auipc	t1,0x1
    80004900:	9f430067          	jr	-1548(t1) # 800052f0 <uartputc_sync>
    80004904:	ff010113          	addi	sp,sp,-16
    80004908:	00113423          	sd	ra,8(sp)
    8000490c:	00813023          	sd	s0,0(sp)
    80004910:	01010413          	addi	s0,sp,16
    80004914:	00800513          	li	a0,8
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	9d8080e7          	jalr	-1576(ra) # 800052f0 <uartputc_sync>
    80004920:	02000513          	li	a0,32
    80004924:	00001097          	auipc	ra,0x1
    80004928:	9cc080e7          	jalr	-1588(ra) # 800052f0 <uartputc_sync>
    8000492c:	00013403          	ld	s0,0(sp)
    80004930:	00813083          	ld	ra,8(sp)
    80004934:	00800513          	li	a0,8
    80004938:	01010113          	addi	sp,sp,16
    8000493c:	00001317          	auipc	t1,0x1
    80004940:	9b430067          	jr	-1612(t1) # 800052f0 <uartputc_sync>

0000000080004944 <consoleintr>:
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	01213023          	sd	s2,0(sp)
    80004954:	00113c23          	sd	ra,24(sp)
    80004958:	02010413          	addi	s0,sp,32
    8000495c:	00005917          	auipc	s2,0x5
    80004960:	f4c90913          	addi	s2,s2,-180 # 800098a8 <cons>
    80004964:	00050493          	mv	s1,a0
    80004968:	00090513          	mv	a0,s2
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	e40080e7          	jalr	-448(ra) # 800057ac <acquire>
    80004974:	02048c63          	beqz	s1,800049ac <consoleintr+0x68>
    80004978:	0a092783          	lw	a5,160(s2)
    8000497c:	09892703          	lw	a4,152(s2)
    80004980:	07f00693          	li	a3,127
    80004984:	40e7873b          	subw	a4,a5,a4
    80004988:	02e6e263          	bltu	a3,a4,800049ac <consoleintr+0x68>
    8000498c:	00d00713          	li	a4,13
    80004990:	04e48063          	beq	s1,a4,800049d0 <consoleintr+0x8c>
    80004994:	07f7f713          	andi	a4,a5,127
    80004998:	00e90733          	add	a4,s2,a4
    8000499c:	0017879b          	addiw	a5,a5,1
    800049a0:	0af92023          	sw	a5,160(s2)
    800049a4:	00970c23          	sb	s1,24(a4)
    800049a8:	08f92e23          	sw	a5,156(s2)
    800049ac:	01013403          	ld	s0,16(sp)
    800049b0:	01813083          	ld	ra,24(sp)
    800049b4:	00813483          	ld	s1,8(sp)
    800049b8:	00013903          	ld	s2,0(sp)
    800049bc:	00005517          	auipc	a0,0x5
    800049c0:	eec50513          	addi	a0,a0,-276 # 800098a8 <cons>
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00001317          	auipc	t1,0x1
    800049cc:	eb030067          	jr	-336(t1) # 80005878 <release>
    800049d0:	00a00493          	li	s1,10
    800049d4:	fc1ff06f          	j	80004994 <consoleintr+0x50>

00000000800049d8 <consoleinit>:
    800049d8:	fe010113          	addi	sp,sp,-32
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	02010413          	addi	s0,sp,32
    800049ec:	00005497          	auipc	s1,0x5
    800049f0:	ebc48493          	addi	s1,s1,-324 # 800098a8 <cons>
    800049f4:	00048513          	mv	a0,s1
    800049f8:	00003597          	auipc	a1,0x3
    800049fc:	8b858593          	addi	a1,a1,-1864 # 800072b0 <_ZZ12printIntegermE6digits+0x238>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	d88080e7          	jalr	-632(ra) # 80005788 <initlock>
    80004a08:	00000097          	auipc	ra,0x0
    80004a0c:	7ac080e7          	jalr	1964(ra) # 800051b4 <uartinit>
    80004a10:	01813083          	ld	ra,24(sp)
    80004a14:	01013403          	ld	s0,16(sp)
    80004a18:	00000797          	auipc	a5,0x0
    80004a1c:	d9c78793          	addi	a5,a5,-612 # 800047b4 <consoleread>
    80004a20:	0af4bc23          	sd	a5,184(s1)
    80004a24:	00000797          	auipc	a5,0x0
    80004a28:	cec78793          	addi	a5,a5,-788 # 80004710 <consolewrite>
    80004a2c:	0cf4b023          	sd	a5,192(s1)
    80004a30:	00813483          	ld	s1,8(sp)
    80004a34:	02010113          	addi	sp,sp,32
    80004a38:	00008067          	ret

0000000080004a3c <console_read>:
    80004a3c:	ff010113          	addi	sp,sp,-16
    80004a40:	00813423          	sd	s0,8(sp)
    80004a44:	01010413          	addi	s0,sp,16
    80004a48:	00813403          	ld	s0,8(sp)
    80004a4c:	00005317          	auipc	t1,0x5
    80004a50:	f1433303          	ld	t1,-236(t1) # 80009960 <devsw+0x10>
    80004a54:	01010113          	addi	sp,sp,16
    80004a58:	00030067          	jr	t1

0000000080004a5c <console_write>:
    80004a5c:	ff010113          	addi	sp,sp,-16
    80004a60:	00813423          	sd	s0,8(sp)
    80004a64:	01010413          	addi	s0,sp,16
    80004a68:	00813403          	ld	s0,8(sp)
    80004a6c:	00005317          	auipc	t1,0x5
    80004a70:	efc33303          	ld	t1,-260(t1) # 80009968 <devsw+0x18>
    80004a74:	01010113          	addi	sp,sp,16
    80004a78:	00030067          	jr	t1

0000000080004a7c <panic>:
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00113c23          	sd	ra,24(sp)
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00913423          	sd	s1,8(sp)
    80004a8c:	02010413          	addi	s0,sp,32
    80004a90:	00050493          	mv	s1,a0
    80004a94:	00003517          	auipc	a0,0x3
    80004a98:	82450513          	addi	a0,a0,-2012 # 800072b8 <_ZZ12printIntegermE6digits+0x240>
    80004a9c:	00005797          	auipc	a5,0x5
    80004aa0:	f607a623          	sw	zero,-148(a5) # 80009a08 <pr+0x18>
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	034080e7          	jalr	52(ra) # 80004ad8 <__printf>
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	028080e7          	jalr	40(ra) # 80004ad8 <__printf>
    80004ab8:	00002517          	auipc	a0,0x2
    80004abc:	62050513          	addi	a0,a0,1568 # 800070d8 <_ZZ12printIntegermE6digits+0x60>
    80004ac0:	00000097          	auipc	ra,0x0
    80004ac4:	018080e7          	jalr	24(ra) # 80004ad8 <__printf>
    80004ac8:	00100793          	li	a5,1
    80004acc:	00004717          	auipc	a4,0x4
    80004ad0:	c4f72e23          	sw	a5,-932(a4) # 80008728 <panicked>
    80004ad4:	0000006f          	j	80004ad4 <panic+0x58>

0000000080004ad8 <__printf>:
    80004ad8:	f3010113          	addi	sp,sp,-208
    80004adc:	08813023          	sd	s0,128(sp)
    80004ae0:	07313423          	sd	s3,104(sp)
    80004ae4:	09010413          	addi	s0,sp,144
    80004ae8:	05813023          	sd	s8,64(sp)
    80004aec:	08113423          	sd	ra,136(sp)
    80004af0:	06913c23          	sd	s1,120(sp)
    80004af4:	07213823          	sd	s2,112(sp)
    80004af8:	07413023          	sd	s4,96(sp)
    80004afc:	05513c23          	sd	s5,88(sp)
    80004b00:	05613823          	sd	s6,80(sp)
    80004b04:	05713423          	sd	s7,72(sp)
    80004b08:	03913c23          	sd	s9,56(sp)
    80004b0c:	03a13823          	sd	s10,48(sp)
    80004b10:	03b13423          	sd	s11,40(sp)
    80004b14:	00005317          	auipc	t1,0x5
    80004b18:	edc30313          	addi	t1,t1,-292 # 800099f0 <pr>
    80004b1c:	01832c03          	lw	s8,24(t1)
    80004b20:	00b43423          	sd	a1,8(s0)
    80004b24:	00c43823          	sd	a2,16(s0)
    80004b28:	00d43c23          	sd	a3,24(s0)
    80004b2c:	02e43023          	sd	a4,32(s0)
    80004b30:	02f43423          	sd	a5,40(s0)
    80004b34:	03043823          	sd	a6,48(s0)
    80004b38:	03143c23          	sd	a7,56(s0)
    80004b3c:	00050993          	mv	s3,a0
    80004b40:	4a0c1663          	bnez	s8,80004fec <__printf+0x514>
    80004b44:	60098c63          	beqz	s3,8000515c <__printf+0x684>
    80004b48:	0009c503          	lbu	a0,0(s3)
    80004b4c:	00840793          	addi	a5,s0,8
    80004b50:	f6f43c23          	sd	a5,-136(s0)
    80004b54:	00000493          	li	s1,0
    80004b58:	22050063          	beqz	a0,80004d78 <__printf+0x2a0>
    80004b5c:	00002a37          	lui	s4,0x2
    80004b60:	00018ab7          	lui	s5,0x18
    80004b64:	000f4b37          	lui	s6,0xf4
    80004b68:	00989bb7          	lui	s7,0x989
    80004b6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004b70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004b74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004b78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004b7c:	00148c9b          	addiw	s9,s1,1
    80004b80:	02500793          	li	a5,37
    80004b84:	01998933          	add	s2,s3,s9
    80004b88:	38f51263          	bne	a0,a5,80004f0c <__printf+0x434>
    80004b8c:	00094783          	lbu	a5,0(s2)
    80004b90:	00078c9b          	sext.w	s9,a5
    80004b94:	1e078263          	beqz	a5,80004d78 <__printf+0x2a0>
    80004b98:	0024849b          	addiw	s1,s1,2
    80004b9c:	07000713          	li	a4,112
    80004ba0:	00998933          	add	s2,s3,s1
    80004ba4:	38e78a63          	beq	a5,a4,80004f38 <__printf+0x460>
    80004ba8:	20f76863          	bltu	a4,a5,80004db8 <__printf+0x2e0>
    80004bac:	42a78863          	beq	a5,a0,80004fdc <__printf+0x504>
    80004bb0:	06400713          	li	a4,100
    80004bb4:	40e79663          	bne	a5,a4,80004fc0 <__printf+0x4e8>
    80004bb8:	f7843783          	ld	a5,-136(s0)
    80004bbc:	0007a603          	lw	a2,0(a5)
    80004bc0:	00878793          	addi	a5,a5,8
    80004bc4:	f6f43c23          	sd	a5,-136(s0)
    80004bc8:	42064a63          	bltz	a2,80004ffc <__printf+0x524>
    80004bcc:	00a00713          	li	a4,10
    80004bd0:	02e677bb          	remuw	a5,a2,a4
    80004bd4:	00002d97          	auipc	s11,0x2
    80004bd8:	70cd8d93          	addi	s11,s11,1804 # 800072e0 <digits>
    80004bdc:	00900593          	li	a1,9
    80004be0:	0006051b          	sext.w	a0,a2
    80004be4:	00000c93          	li	s9,0
    80004be8:	02079793          	slli	a5,a5,0x20
    80004bec:	0207d793          	srli	a5,a5,0x20
    80004bf0:	00fd87b3          	add	a5,s11,a5
    80004bf4:	0007c783          	lbu	a5,0(a5)
    80004bf8:	02e656bb          	divuw	a3,a2,a4
    80004bfc:	f8f40023          	sb	a5,-128(s0)
    80004c00:	14c5d863          	bge	a1,a2,80004d50 <__printf+0x278>
    80004c04:	06300593          	li	a1,99
    80004c08:	00100c93          	li	s9,1
    80004c0c:	02e6f7bb          	remuw	a5,a3,a4
    80004c10:	02079793          	slli	a5,a5,0x20
    80004c14:	0207d793          	srli	a5,a5,0x20
    80004c18:	00fd87b3          	add	a5,s11,a5
    80004c1c:	0007c783          	lbu	a5,0(a5)
    80004c20:	02e6d73b          	divuw	a4,a3,a4
    80004c24:	f8f400a3          	sb	a5,-127(s0)
    80004c28:	12a5f463          	bgeu	a1,a0,80004d50 <__printf+0x278>
    80004c2c:	00a00693          	li	a3,10
    80004c30:	00900593          	li	a1,9
    80004c34:	02d777bb          	remuw	a5,a4,a3
    80004c38:	02079793          	slli	a5,a5,0x20
    80004c3c:	0207d793          	srli	a5,a5,0x20
    80004c40:	00fd87b3          	add	a5,s11,a5
    80004c44:	0007c503          	lbu	a0,0(a5)
    80004c48:	02d757bb          	divuw	a5,a4,a3
    80004c4c:	f8a40123          	sb	a0,-126(s0)
    80004c50:	48e5f263          	bgeu	a1,a4,800050d4 <__printf+0x5fc>
    80004c54:	06300513          	li	a0,99
    80004c58:	02d7f5bb          	remuw	a1,a5,a3
    80004c5c:	02059593          	slli	a1,a1,0x20
    80004c60:	0205d593          	srli	a1,a1,0x20
    80004c64:	00bd85b3          	add	a1,s11,a1
    80004c68:	0005c583          	lbu	a1,0(a1)
    80004c6c:	02d7d7bb          	divuw	a5,a5,a3
    80004c70:	f8b401a3          	sb	a1,-125(s0)
    80004c74:	48e57263          	bgeu	a0,a4,800050f8 <__printf+0x620>
    80004c78:	3e700513          	li	a0,999
    80004c7c:	02d7f5bb          	remuw	a1,a5,a3
    80004c80:	02059593          	slli	a1,a1,0x20
    80004c84:	0205d593          	srli	a1,a1,0x20
    80004c88:	00bd85b3          	add	a1,s11,a1
    80004c8c:	0005c583          	lbu	a1,0(a1)
    80004c90:	02d7d7bb          	divuw	a5,a5,a3
    80004c94:	f8b40223          	sb	a1,-124(s0)
    80004c98:	46e57663          	bgeu	a0,a4,80005104 <__printf+0x62c>
    80004c9c:	02d7f5bb          	remuw	a1,a5,a3
    80004ca0:	02059593          	slli	a1,a1,0x20
    80004ca4:	0205d593          	srli	a1,a1,0x20
    80004ca8:	00bd85b3          	add	a1,s11,a1
    80004cac:	0005c583          	lbu	a1,0(a1)
    80004cb0:	02d7d7bb          	divuw	a5,a5,a3
    80004cb4:	f8b402a3          	sb	a1,-123(s0)
    80004cb8:	46ea7863          	bgeu	s4,a4,80005128 <__printf+0x650>
    80004cbc:	02d7f5bb          	remuw	a1,a5,a3
    80004cc0:	02059593          	slli	a1,a1,0x20
    80004cc4:	0205d593          	srli	a1,a1,0x20
    80004cc8:	00bd85b3          	add	a1,s11,a1
    80004ccc:	0005c583          	lbu	a1,0(a1)
    80004cd0:	02d7d7bb          	divuw	a5,a5,a3
    80004cd4:	f8b40323          	sb	a1,-122(s0)
    80004cd8:	3eeaf863          	bgeu	s5,a4,800050c8 <__printf+0x5f0>
    80004cdc:	02d7f5bb          	remuw	a1,a5,a3
    80004ce0:	02059593          	slli	a1,a1,0x20
    80004ce4:	0205d593          	srli	a1,a1,0x20
    80004ce8:	00bd85b3          	add	a1,s11,a1
    80004cec:	0005c583          	lbu	a1,0(a1)
    80004cf0:	02d7d7bb          	divuw	a5,a5,a3
    80004cf4:	f8b403a3          	sb	a1,-121(s0)
    80004cf8:	42eb7e63          	bgeu	s6,a4,80005134 <__printf+0x65c>
    80004cfc:	02d7f5bb          	remuw	a1,a5,a3
    80004d00:	02059593          	slli	a1,a1,0x20
    80004d04:	0205d593          	srli	a1,a1,0x20
    80004d08:	00bd85b3          	add	a1,s11,a1
    80004d0c:	0005c583          	lbu	a1,0(a1)
    80004d10:	02d7d7bb          	divuw	a5,a5,a3
    80004d14:	f8b40423          	sb	a1,-120(s0)
    80004d18:	42ebfc63          	bgeu	s7,a4,80005150 <__printf+0x678>
    80004d1c:	02079793          	slli	a5,a5,0x20
    80004d20:	0207d793          	srli	a5,a5,0x20
    80004d24:	00fd8db3          	add	s11,s11,a5
    80004d28:	000dc703          	lbu	a4,0(s11)
    80004d2c:	00a00793          	li	a5,10
    80004d30:	00900c93          	li	s9,9
    80004d34:	f8e404a3          	sb	a4,-119(s0)
    80004d38:	00065c63          	bgez	a2,80004d50 <__printf+0x278>
    80004d3c:	f9040713          	addi	a4,s0,-112
    80004d40:	00f70733          	add	a4,a4,a5
    80004d44:	02d00693          	li	a3,45
    80004d48:	fed70823          	sb	a3,-16(a4)
    80004d4c:	00078c93          	mv	s9,a5
    80004d50:	f8040793          	addi	a5,s0,-128
    80004d54:	01978cb3          	add	s9,a5,s9
    80004d58:	f7f40d13          	addi	s10,s0,-129
    80004d5c:	000cc503          	lbu	a0,0(s9)
    80004d60:	fffc8c93          	addi	s9,s9,-1
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	b90080e7          	jalr	-1136(ra) # 800048f4 <consputc>
    80004d6c:	ffac98e3          	bne	s9,s10,80004d5c <__printf+0x284>
    80004d70:	00094503          	lbu	a0,0(s2)
    80004d74:	e00514e3          	bnez	a0,80004b7c <__printf+0xa4>
    80004d78:	1a0c1663          	bnez	s8,80004f24 <__printf+0x44c>
    80004d7c:	08813083          	ld	ra,136(sp)
    80004d80:	08013403          	ld	s0,128(sp)
    80004d84:	07813483          	ld	s1,120(sp)
    80004d88:	07013903          	ld	s2,112(sp)
    80004d8c:	06813983          	ld	s3,104(sp)
    80004d90:	06013a03          	ld	s4,96(sp)
    80004d94:	05813a83          	ld	s5,88(sp)
    80004d98:	05013b03          	ld	s6,80(sp)
    80004d9c:	04813b83          	ld	s7,72(sp)
    80004da0:	04013c03          	ld	s8,64(sp)
    80004da4:	03813c83          	ld	s9,56(sp)
    80004da8:	03013d03          	ld	s10,48(sp)
    80004dac:	02813d83          	ld	s11,40(sp)
    80004db0:	0d010113          	addi	sp,sp,208
    80004db4:	00008067          	ret
    80004db8:	07300713          	li	a4,115
    80004dbc:	1ce78a63          	beq	a5,a4,80004f90 <__printf+0x4b8>
    80004dc0:	07800713          	li	a4,120
    80004dc4:	1ee79e63          	bne	a5,a4,80004fc0 <__printf+0x4e8>
    80004dc8:	f7843783          	ld	a5,-136(s0)
    80004dcc:	0007a703          	lw	a4,0(a5)
    80004dd0:	00878793          	addi	a5,a5,8
    80004dd4:	f6f43c23          	sd	a5,-136(s0)
    80004dd8:	28074263          	bltz	a4,8000505c <__printf+0x584>
    80004ddc:	00002d97          	auipc	s11,0x2
    80004de0:	504d8d93          	addi	s11,s11,1284 # 800072e0 <digits>
    80004de4:	00f77793          	andi	a5,a4,15
    80004de8:	00fd87b3          	add	a5,s11,a5
    80004dec:	0007c683          	lbu	a3,0(a5)
    80004df0:	00f00613          	li	a2,15
    80004df4:	0007079b          	sext.w	a5,a4
    80004df8:	f8d40023          	sb	a3,-128(s0)
    80004dfc:	0047559b          	srliw	a1,a4,0x4
    80004e00:	0047569b          	srliw	a3,a4,0x4
    80004e04:	00000c93          	li	s9,0
    80004e08:	0ee65063          	bge	a2,a4,80004ee8 <__printf+0x410>
    80004e0c:	00f6f693          	andi	a3,a3,15
    80004e10:	00dd86b3          	add	a3,s11,a3
    80004e14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004e18:	0087d79b          	srliw	a5,a5,0x8
    80004e1c:	00100c93          	li	s9,1
    80004e20:	f8d400a3          	sb	a3,-127(s0)
    80004e24:	0cb67263          	bgeu	a2,a1,80004ee8 <__printf+0x410>
    80004e28:	00f7f693          	andi	a3,a5,15
    80004e2c:	00dd86b3          	add	a3,s11,a3
    80004e30:	0006c583          	lbu	a1,0(a3)
    80004e34:	00f00613          	li	a2,15
    80004e38:	0047d69b          	srliw	a3,a5,0x4
    80004e3c:	f8b40123          	sb	a1,-126(s0)
    80004e40:	0047d593          	srli	a1,a5,0x4
    80004e44:	28f67e63          	bgeu	a2,a5,800050e0 <__printf+0x608>
    80004e48:	00f6f693          	andi	a3,a3,15
    80004e4c:	00dd86b3          	add	a3,s11,a3
    80004e50:	0006c503          	lbu	a0,0(a3)
    80004e54:	0087d813          	srli	a6,a5,0x8
    80004e58:	0087d69b          	srliw	a3,a5,0x8
    80004e5c:	f8a401a3          	sb	a0,-125(s0)
    80004e60:	28b67663          	bgeu	a2,a1,800050ec <__printf+0x614>
    80004e64:	00f6f693          	andi	a3,a3,15
    80004e68:	00dd86b3          	add	a3,s11,a3
    80004e6c:	0006c583          	lbu	a1,0(a3)
    80004e70:	00c7d513          	srli	a0,a5,0xc
    80004e74:	00c7d69b          	srliw	a3,a5,0xc
    80004e78:	f8b40223          	sb	a1,-124(s0)
    80004e7c:	29067a63          	bgeu	a2,a6,80005110 <__printf+0x638>
    80004e80:	00f6f693          	andi	a3,a3,15
    80004e84:	00dd86b3          	add	a3,s11,a3
    80004e88:	0006c583          	lbu	a1,0(a3)
    80004e8c:	0107d813          	srli	a6,a5,0x10
    80004e90:	0107d69b          	srliw	a3,a5,0x10
    80004e94:	f8b402a3          	sb	a1,-123(s0)
    80004e98:	28a67263          	bgeu	a2,a0,8000511c <__printf+0x644>
    80004e9c:	00f6f693          	andi	a3,a3,15
    80004ea0:	00dd86b3          	add	a3,s11,a3
    80004ea4:	0006c683          	lbu	a3,0(a3)
    80004ea8:	0147d79b          	srliw	a5,a5,0x14
    80004eac:	f8d40323          	sb	a3,-122(s0)
    80004eb0:	21067663          	bgeu	a2,a6,800050bc <__printf+0x5e4>
    80004eb4:	02079793          	slli	a5,a5,0x20
    80004eb8:	0207d793          	srli	a5,a5,0x20
    80004ebc:	00fd8db3          	add	s11,s11,a5
    80004ec0:	000dc683          	lbu	a3,0(s11)
    80004ec4:	00800793          	li	a5,8
    80004ec8:	00700c93          	li	s9,7
    80004ecc:	f8d403a3          	sb	a3,-121(s0)
    80004ed0:	00075c63          	bgez	a4,80004ee8 <__printf+0x410>
    80004ed4:	f9040713          	addi	a4,s0,-112
    80004ed8:	00f70733          	add	a4,a4,a5
    80004edc:	02d00693          	li	a3,45
    80004ee0:	fed70823          	sb	a3,-16(a4)
    80004ee4:	00078c93          	mv	s9,a5
    80004ee8:	f8040793          	addi	a5,s0,-128
    80004eec:	01978cb3          	add	s9,a5,s9
    80004ef0:	f7f40d13          	addi	s10,s0,-129
    80004ef4:	000cc503          	lbu	a0,0(s9)
    80004ef8:	fffc8c93          	addi	s9,s9,-1
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	9f8080e7          	jalr	-1544(ra) # 800048f4 <consputc>
    80004f04:	ff9d18e3          	bne	s10,s9,80004ef4 <__printf+0x41c>
    80004f08:	0100006f          	j	80004f18 <__printf+0x440>
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	9e8080e7          	jalr	-1560(ra) # 800048f4 <consputc>
    80004f14:	000c8493          	mv	s1,s9
    80004f18:	00094503          	lbu	a0,0(s2)
    80004f1c:	c60510e3          	bnez	a0,80004b7c <__printf+0xa4>
    80004f20:	e40c0ee3          	beqz	s8,80004d7c <__printf+0x2a4>
    80004f24:	00005517          	auipc	a0,0x5
    80004f28:	acc50513          	addi	a0,a0,-1332 # 800099f0 <pr>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	94c080e7          	jalr	-1716(ra) # 80005878 <release>
    80004f34:	e49ff06f          	j	80004d7c <__printf+0x2a4>
    80004f38:	f7843783          	ld	a5,-136(s0)
    80004f3c:	03000513          	li	a0,48
    80004f40:	01000d13          	li	s10,16
    80004f44:	00878713          	addi	a4,a5,8
    80004f48:	0007bc83          	ld	s9,0(a5)
    80004f4c:	f6e43c23          	sd	a4,-136(s0)
    80004f50:	00000097          	auipc	ra,0x0
    80004f54:	9a4080e7          	jalr	-1628(ra) # 800048f4 <consputc>
    80004f58:	07800513          	li	a0,120
    80004f5c:	00000097          	auipc	ra,0x0
    80004f60:	998080e7          	jalr	-1640(ra) # 800048f4 <consputc>
    80004f64:	00002d97          	auipc	s11,0x2
    80004f68:	37cd8d93          	addi	s11,s11,892 # 800072e0 <digits>
    80004f6c:	03ccd793          	srli	a5,s9,0x3c
    80004f70:	00fd87b3          	add	a5,s11,a5
    80004f74:	0007c503          	lbu	a0,0(a5)
    80004f78:	fffd0d1b          	addiw	s10,s10,-1
    80004f7c:	004c9c93          	slli	s9,s9,0x4
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	974080e7          	jalr	-1676(ra) # 800048f4 <consputc>
    80004f88:	fe0d12e3          	bnez	s10,80004f6c <__printf+0x494>
    80004f8c:	f8dff06f          	j	80004f18 <__printf+0x440>
    80004f90:	f7843783          	ld	a5,-136(s0)
    80004f94:	0007bc83          	ld	s9,0(a5)
    80004f98:	00878793          	addi	a5,a5,8
    80004f9c:	f6f43c23          	sd	a5,-136(s0)
    80004fa0:	000c9a63          	bnez	s9,80004fb4 <__printf+0x4dc>
    80004fa4:	1080006f          	j	800050ac <__printf+0x5d4>
    80004fa8:	001c8c93          	addi	s9,s9,1
    80004fac:	00000097          	auipc	ra,0x0
    80004fb0:	948080e7          	jalr	-1720(ra) # 800048f4 <consputc>
    80004fb4:	000cc503          	lbu	a0,0(s9)
    80004fb8:	fe0518e3          	bnez	a0,80004fa8 <__printf+0x4d0>
    80004fbc:	f5dff06f          	j	80004f18 <__printf+0x440>
    80004fc0:	02500513          	li	a0,37
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	930080e7          	jalr	-1744(ra) # 800048f4 <consputc>
    80004fcc:	000c8513          	mv	a0,s9
    80004fd0:	00000097          	auipc	ra,0x0
    80004fd4:	924080e7          	jalr	-1756(ra) # 800048f4 <consputc>
    80004fd8:	f41ff06f          	j	80004f18 <__printf+0x440>
    80004fdc:	02500513          	li	a0,37
    80004fe0:	00000097          	auipc	ra,0x0
    80004fe4:	914080e7          	jalr	-1772(ra) # 800048f4 <consputc>
    80004fe8:	f31ff06f          	j	80004f18 <__printf+0x440>
    80004fec:	00030513          	mv	a0,t1
    80004ff0:	00000097          	auipc	ra,0x0
    80004ff4:	7bc080e7          	jalr	1980(ra) # 800057ac <acquire>
    80004ff8:	b4dff06f          	j	80004b44 <__printf+0x6c>
    80004ffc:	40c0053b          	negw	a0,a2
    80005000:	00a00713          	li	a4,10
    80005004:	02e576bb          	remuw	a3,a0,a4
    80005008:	00002d97          	auipc	s11,0x2
    8000500c:	2d8d8d93          	addi	s11,s11,728 # 800072e0 <digits>
    80005010:	ff700593          	li	a1,-9
    80005014:	02069693          	slli	a3,a3,0x20
    80005018:	0206d693          	srli	a3,a3,0x20
    8000501c:	00dd86b3          	add	a3,s11,a3
    80005020:	0006c683          	lbu	a3,0(a3)
    80005024:	02e557bb          	divuw	a5,a0,a4
    80005028:	f8d40023          	sb	a3,-128(s0)
    8000502c:	10b65e63          	bge	a2,a1,80005148 <__printf+0x670>
    80005030:	06300593          	li	a1,99
    80005034:	02e7f6bb          	remuw	a3,a5,a4
    80005038:	02069693          	slli	a3,a3,0x20
    8000503c:	0206d693          	srli	a3,a3,0x20
    80005040:	00dd86b3          	add	a3,s11,a3
    80005044:	0006c683          	lbu	a3,0(a3)
    80005048:	02e7d73b          	divuw	a4,a5,a4
    8000504c:	00200793          	li	a5,2
    80005050:	f8d400a3          	sb	a3,-127(s0)
    80005054:	bca5ece3          	bltu	a1,a0,80004c2c <__printf+0x154>
    80005058:	ce5ff06f          	j	80004d3c <__printf+0x264>
    8000505c:	40e007bb          	negw	a5,a4
    80005060:	00002d97          	auipc	s11,0x2
    80005064:	280d8d93          	addi	s11,s11,640 # 800072e0 <digits>
    80005068:	00f7f693          	andi	a3,a5,15
    8000506c:	00dd86b3          	add	a3,s11,a3
    80005070:	0006c583          	lbu	a1,0(a3)
    80005074:	ff100613          	li	a2,-15
    80005078:	0047d69b          	srliw	a3,a5,0x4
    8000507c:	f8b40023          	sb	a1,-128(s0)
    80005080:	0047d59b          	srliw	a1,a5,0x4
    80005084:	0ac75e63          	bge	a4,a2,80005140 <__printf+0x668>
    80005088:	00f6f693          	andi	a3,a3,15
    8000508c:	00dd86b3          	add	a3,s11,a3
    80005090:	0006c603          	lbu	a2,0(a3)
    80005094:	00f00693          	li	a3,15
    80005098:	0087d79b          	srliw	a5,a5,0x8
    8000509c:	f8c400a3          	sb	a2,-127(s0)
    800050a0:	d8b6e4e3          	bltu	a3,a1,80004e28 <__printf+0x350>
    800050a4:	00200793          	li	a5,2
    800050a8:	e2dff06f          	j	80004ed4 <__printf+0x3fc>
    800050ac:	00002c97          	auipc	s9,0x2
    800050b0:	214c8c93          	addi	s9,s9,532 # 800072c0 <_ZZ12printIntegermE6digits+0x248>
    800050b4:	02800513          	li	a0,40
    800050b8:	ef1ff06f          	j	80004fa8 <__printf+0x4d0>
    800050bc:	00700793          	li	a5,7
    800050c0:	00600c93          	li	s9,6
    800050c4:	e0dff06f          	j	80004ed0 <__printf+0x3f8>
    800050c8:	00700793          	li	a5,7
    800050cc:	00600c93          	li	s9,6
    800050d0:	c69ff06f          	j	80004d38 <__printf+0x260>
    800050d4:	00300793          	li	a5,3
    800050d8:	00200c93          	li	s9,2
    800050dc:	c5dff06f          	j	80004d38 <__printf+0x260>
    800050e0:	00300793          	li	a5,3
    800050e4:	00200c93          	li	s9,2
    800050e8:	de9ff06f          	j	80004ed0 <__printf+0x3f8>
    800050ec:	00400793          	li	a5,4
    800050f0:	00300c93          	li	s9,3
    800050f4:	dddff06f          	j	80004ed0 <__printf+0x3f8>
    800050f8:	00400793          	li	a5,4
    800050fc:	00300c93          	li	s9,3
    80005100:	c39ff06f          	j	80004d38 <__printf+0x260>
    80005104:	00500793          	li	a5,5
    80005108:	00400c93          	li	s9,4
    8000510c:	c2dff06f          	j	80004d38 <__printf+0x260>
    80005110:	00500793          	li	a5,5
    80005114:	00400c93          	li	s9,4
    80005118:	db9ff06f          	j	80004ed0 <__printf+0x3f8>
    8000511c:	00600793          	li	a5,6
    80005120:	00500c93          	li	s9,5
    80005124:	dadff06f          	j	80004ed0 <__printf+0x3f8>
    80005128:	00600793          	li	a5,6
    8000512c:	00500c93          	li	s9,5
    80005130:	c09ff06f          	j	80004d38 <__printf+0x260>
    80005134:	00800793          	li	a5,8
    80005138:	00700c93          	li	s9,7
    8000513c:	bfdff06f          	j	80004d38 <__printf+0x260>
    80005140:	00100793          	li	a5,1
    80005144:	d91ff06f          	j	80004ed4 <__printf+0x3fc>
    80005148:	00100793          	li	a5,1
    8000514c:	bf1ff06f          	j	80004d3c <__printf+0x264>
    80005150:	00900793          	li	a5,9
    80005154:	00800c93          	li	s9,8
    80005158:	be1ff06f          	j	80004d38 <__printf+0x260>
    8000515c:	00002517          	auipc	a0,0x2
    80005160:	16c50513          	addi	a0,a0,364 # 800072c8 <_ZZ12printIntegermE6digits+0x250>
    80005164:	00000097          	auipc	ra,0x0
    80005168:	918080e7          	jalr	-1768(ra) # 80004a7c <panic>

000000008000516c <printfinit>:
    8000516c:	fe010113          	addi	sp,sp,-32
    80005170:	00813823          	sd	s0,16(sp)
    80005174:	00913423          	sd	s1,8(sp)
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	02010413          	addi	s0,sp,32
    80005180:	00005497          	auipc	s1,0x5
    80005184:	87048493          	addi	s1,s1,-1936 # 800099f0 <pr>
    80005188:	00048513          	mv	a0,s1
    8000518c:	00002597          	auipc	a1,0x2
    80005190:	14c58593          	addi	a1,a1,332 # 800072d8 <_ZZ12printIntegermE6digits+0x260>
    80005194:	00000097          	auipc	ra,0x0
    80005198:	5f4080e7          	jalr	1524(ra) # 80005788 <initlock>
    8000519c:	01813083          	ld	ra,24(sp)
    800051a0:	01013403          	ld	s0,16(sp)
    800051a4:	0004ac23          	sw	zero,24(s1)
    800051a8:	00813483          	ld	s1,8(sp)
    800051ac:	02010113          	addi	sp,sp,32
    800051b0:	00008067          	ret

00000000800051b4 <uartinit>:
    800051b4:	ff010113          	addi	sp,sp,-16
    800051b8:	00813423          	sd	s0,8(sp)
    800051bc:	01010413          	addi	s0,sp,16
    800051c0:	100007b7          	lui	a5,0x10000
    800051c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800051c8:	f8000713          	li	a4,-128
    800051cc:	00e781a3          	sb	a4,3(a5)
    800051d0:	00300713          	li	a4,3
    800051d4:	00e78023          	sb	a4,0(a5)
    800051d8:	000780a3          	sb	zero,1(a5)
    800051dc:	00e781a3          	sb	a4,3(a5)
    800051e0:	00700693          	li	a3,7
    800051e4:	00d78123          	sb	a3,2(a5)
    800051e8:	00e780a3          	sb	a4,1(a5)
    800051ec:	00813403          	ld	s0,8(sp)
    800051f0:	01010113          	addi	sp,sp,16
    800051f4:	00008067          	ret

00000000800051f8 <uartputc>:
    800051f8:	00003797          	auipc	a5,0x3
    800051fc:	5307a783          	lw	a5,1328(a5) # 80008728 <panicked>
    80005200:	00078463          	beqz	a5,80005208 <uartputc+0x10>
    80005204:	0000006f          	j	80005204 <uartputc+0xc>
    80005208:	fd010113          	addi	sp,sp,-48
    8000520c:	02813023          	sd	s0,32(sp)
    80005210:	00913c23          	sd	s1,24(sp)
    80005214:	01213823          	sd	s2,16(sp)
    80005218:	01313423          	sd	s3,8(sp)
    8000521c:	02113423          	sd	ra,40(sp)
    80005220:	03010413          	addi	s0,sp,48
    80005224:	00003917          	auipc	s2,0x3
    80005228:	50c90913          	addi	s2,s2,1292 # 80008730 <uart_tx_r>
    8000522c:	00093783          	ld	a5,0(s2)
    80005230:	00003497          	auipc	s1,0x3
    80005234:	50848493          	addi	s1,s1,1288 # 80008738 <uart_tx_w>
    80005238:	0004b703          	ld	a4,0(s1)
    8000523c:	02078693          	addi	a3,a5,32
    80005240:	00050993          	mv	s3,a0
    80005244:	02e69c63          	bne	a3,a4,8000527c <uartputc+0x84>
    80005248:	00001097          	auipc	ra,0x1
    8000524c:	834080e7          	jalr	-1996(ra) # 80005a7c <push_on>
    80005250:	00093783          	ld	a5,0(s2)
    80005254:	0004b703          	ld	a4,0(s1)
    80005258:	02078793          	addi	a5,a5,32
    8000525c:	00e79463          	bne	a5,a4,80005264 <uartputc+0x6c>
    80005260:	0000006f          	j	80005260 <uartputc+0x68>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	88c080e7          	jalr	-1908(ra) # 80005af0 <pop_on>
    8000526c:	00093783          	ld	a5,0(s2)
    80005270:	0004b703          	ld	a4,0(s1)
    80005274:	02078693          	addi	a3,a5,32
    80005278:	fce688e3          	beq	a3,a4,80005248 <uartputc+0x50>
    8000527c:	01f77693          	andi	a3,a4,31
    80005280:	00004597          	auipc	a1,0x4
    80005284:	79058593          	addi	a1,a1,1936 # 80009a10 <uart_tx_buf>
    80005288:	00d586b3          	add	a3,a1,a3
    8000528c:	00170713          	addi	a4,a4,1
    80005290:	01368023          	sb	s3,0(a3)
    80005294:	00e4b023          	sd	a4,0(s1)
    80005298:	10000637          	lui	a2,0x10000
    8000529c:	02f71063          	bne	a4,a5,800052bc <uartputc+0xc4>
    800052a0:	0340006f          	j	800052d4 <uartputc+0xdc>
    800052a4:	00074703          	lbu	a4,0(a4)
    800052a8:	00f93023          	sd	a5,0(s2)
    800052ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800052b0:	00093783          	ld	a5,0(s2)
    800052b4:	0004b703          	ld	a4,0(s1)
    800052b8:	00f70e63          	beq	a4,a5,800052d4 <uartputc+0xdc>
    800052bc:	00564683          	lbu	a3,5(a2)
    800052c0:	01f7f713          	andi	a4,a5,31
    800052c4:	00e58733          	add	a4,a1,a4
    800052c8:	0206f693          	andi	a3,a3,32
    800052cc:	00178793          	addi	a5,a5,1
    800052d0:	fc069ae3          	bnez	a3,800052a4 <uartputc+0xac>
    800052d4:	02813083          	ld	ra,40(sp)
    800052d8:	02013403          	ld	s0,32(sp)
    800052dc:	01813483          	ld	s1,24(sp)
    800052e0:	01013903          	ld	s2,16(sp)
    800052e4:	00813983          	ld	s3,8(sp)
    800052e8:	03010113          	addi	sp,sp,48
    800052ec:	00008067          	ret

00000000800052f0 <uartputc_sync>:
    800052f0:	ff010113          	addi	sp,sp,-16
    800052f4:	00813423          	sd	s0,8(sp)
    800052f8:	01010413          	addi	s0,sp,16
    800052fc:	00003717          	auipc	a4,0x3
    80005300:	42c72703          	lw	a4,1068(a4) # 80008728 <panicked>
    80005304:	02071663          	bnez	a4,80005330 <uartputc_sync+0x40>
    80005308:	00050793          	mv	a5,a0
    8000530c:	100006b7          	lui	a3,0x10000
    80005310:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005314:	02077713          	andi	a4,a4,32
    80005318:	fe070ce3          	beqz	a4,80005310 <uartputc_sync+0x20>
    8000531c:	0ff7f793          	andi	a5,a5,255
    80005320:	00f68023          	sb	a5,0(a3)
    80005324:	00813403          	ld	s0,8(sp)
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00008067          	ret
    80005330:	0000006f          	j	80005330 <uartputc_sync+0x40>

0000000080005334 <uartstart>:
    80005334:	ff010113          	addi	sp,sp,-16
    80005338:	00813423          	sd	s0,8(sp)
    8000533c:	01010413          	addi	s0,sp,16
    80005340:	00003617          	auipc	a2,0x3
    80005344:	3f060613          	addi	a2,a2,1008 # 80008730 <uart_tx_r>
    80005348:	00003517          	auipc	a0,0x3
    8000534c:	3f050513          	addi	a0,a0,1008 # 80008738 <uart_tx_w>
    80005350:	00063783          	ld	a5,0(a2)
    80005354:	00053703          	ld	a4,0(a0)
    80005358:	04f70263          	beq	a4,a5,8000539c <uartstart+0x68>
    8000535c:	100005b7          	lui	a1,0x10000
    80005360:	00004817          	auipc	a6,0x4
    80005364:	6b080813          	addi	a6,a6,1712 # 80009a10 <uart_tx_buf>
    80005368:	01c0006f          	j	80005384 <uartstart+0x50>
    8000536c:	0006c703          	lbu	a4,0(a3)
    80005370:	00f63023          	sd	a5,0(a2)
    80005374:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005378:	00063783          	ld	a5,0(a2)
    8000537c:	00053703          	ld	a4,0(a0)
    80005380:	00f70e63          	beq	a4,a5,8000539c <uartstart+0x68>
    80005384:	01f7f713          	andi	a4,a5,31
    80005388:	00e806b3          	add	a3,a6,a4
    8000538c:	0055c703          	lbu	a4,5(a1)
    80005390:	00178793          	addi	a5,a5,1
    80005394:	02077713          	andi	a4,a4,32
    80005398:	fc071ae3          	bnez	a4,8000536c <uartstart+0x38>
    8000539c:	00813403          	ld	s0,8(sp)
    800053a0:	01010113          	addi	sp,sp,16
    800053a4:	00008067          	ret

00000000800053a8 <uartgetc>:
    800053a8:	ff010113          	addi	sp,sp,-16
    800053ac:	00813423          	sd	s0,8(sp)
    800053b0:	01010413          	addi	s0,sp,16
    800053b4:	10000737          	lui	a4,0x10000
    800053b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800053bc:	0017f793          	andi	a5,a5,1
    800053c0:	00078c63          	beqz	a5,800053d8 <uartgetc+0x30>
    800053c4:	00074503          	lbu	a0,0(a4)
    800053c8:	0ff57513          	andi	a0,a0,255
    800053cc:	00813403          	ld	s0,8(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret
    800053d8:	fff00513          	li	a0,-1
    800053dc:	ff1ff06f          	j	800053cc <uartgetc+0x24>

00000000800053e0 <uartintr>:
    800053e0:	100007b7          	lui	a5,0x10000
    800053e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800053e8:	0017f793          	andi	a5,a5,1
    800053ec:	0a078463          	beqz	a5,80005494 <uartintr+0xb4>
    800053f0:	fe010113          	addi	sp,sp,-32
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	00113c23          	sd	ra,24(sp)
    80005400:	02010413          	addi	s0,sp,32
    80005404:	100004b7          	lui	s1,0x10000
    80005408:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000540c:	0ff57513          	andi	a0,a0,255
    80005410:	fffff097          	auipc	ra,0xfffff
    80005414:	534080e7          	jalr	1332(ra) # 80004944 <consoleintr>
    80005418:	0054c783          	lbu	a5,5(s1)
    8000541c:	0017f793          	andi	a5,a5,1
    80005420:	fe0794e3          	bnez	a5,80005408 <uartintr+0x28>
    80005424:	00003617          	auipc	a2,0x3
    80005428:	30c60613          	addi	a2,a2,780 # 80008730 <uart_tx_r>
    8000542c:	00003517          	auipc	a0,0x3
    80005430:	30c50513          	addi	a0,a0,780 # 80008738 <uart_tx_w>
    80005434:	00063783          	ld	a5,0(a2)
    80005438:	00053703          	ld	a4,0(a0)
    8000543c:	04f70263          	beq	a4,a5,80005480 <uartintr+0xa0>
    80005440:	100005b7          	lui	a1,0x10000
    80005444:	00004817          	auipc	a6,0x4
    80005448:	5cc80813          	addi	a6,a6,1484 # 80009a10 <uart_tx_buf>
    8000544c:	01c0006f          	j	80005468 <uartintr+0x88>
    80005450:	0006c703          	lbu	a4,0(a3)
    80005454:	00f63023          	sd	a5,0(a2)
    80005458:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000545c:	00063783          	ld	a5,0(a2)
    80005460:	00053703          	ld	a4,0(a0)
    80005464:	00f70e63          	beq	a4,a5,80005480 <uartintr+0xa0>
    80005468:	01f7f713          	andi	a4,a5,31
    8000546c:	00e806b3          	add	a3,a6,a4
    80005470:	0055c703          	lbu	a4,5(a1)
    80005474:	00178793          	addi	a5,a5,1
    80005478:	02077713          	andi	a4,a4,32
    8000547c:	fc071ae3          	bnez	a4,80005450 <uartintr+0x70>
    80005480:	01813083          	ld	ra,24(sp)
    80005484:	01013403          	ld	s0,16(sp)
    80005488:	00813483          	ld	s1,8(sp)
    8000548c:	02010113          	addi	sp,sp,32
    80005490:	00008067          	ret
    80005494:	00003617          	auipc	a2,0x3
    80005498:	29c60613          	addi	a2,a2,668 # 80008730 <uart_tx_r>
    8000549c:	00003517          	auipc	a0,0x3
    800054a0:	29c50513          	addi	a0,a0,668 # 80008738 <uart_tx_w>
    800054a4:	00063783          	ld	a5,0(a2)
    800054a8:	00053703          	ld	a4,0(a0)
    800054ac:	04f70263          	beq	a4,a5,800054f0 <uartintr+0x110>
    800054b0:	100005b7          	lui	a1,0x10000
    800054b4:	00004817          	auipc	a6,0x4
    800054b8:	55c80813          	addi	a6,a6,1372 # 80009a10 <uart_tx_buf>
    800054bc:	01c0006f          	j	800054d8 <uartintr+0xf8>
    800054c0:	0006c703          	lbu	a4,0(a3)
    800054c4:	00f63023          	sd	a5,0(a2)
    800054c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800054cc:	00063783          	ld	a5,0(a2)
    800054d0:	00053703          	ld	a4,0(a0)
    800054d4:	02f70063          	beq	a4,a5,800054f4 <uartintr+0x114>
    800054d8:	01f7f713          	andi	a4,a5,31
    800054dc:	00e806b3          	add	a3,a6,a4
    800054e0:	0055c703          	lbu	a4,5(a1)
    800054e4:	00178793          	addi	a5,a5,1
    800054e8:	02077713          	andi	a4,a4,32
    800054ec:	fc071ae3          	bnez	a4,800054c0 <uartintr+0xe0>
    800054f0:	00008067          	ret
    800054f4:	00008067          	ret

00000000800054f8 <kinit>:
    800054f8:	fc010113          	addi	sp,sp,-64
    800054fc:	02913423          	sd	s1,40(sp)
    80005500:	fffff7b7          	lui	a5,0xfffff
    80005504:	00005497          	auipc	s1,0x5
    80005508:	53b48493          	addi	s1,s1,1339 # 8000aa3f <end+0xfff>
    8000550c:	02813823          	sd	s0,48(sp)
    80005510:	01313c23          	sd	s3,24(sp)
    80005514:	00f4f4b3          	and	s1,s1,a5
    80005518:	02113c23          	sd	ra,56(sp)
    8000551c:	03213023          	sd	s2,32(sp)
    80005520:	01413823          	sd	s4,16(sp)
    80005524:	01513423          	sd	s5,8(sp)
    80005528:	04010413          	addi	s0,sp,64
    8000552c:	000017b7          	lui	a5,0x1
    80005530:	01100993          	li	s3,17
    80005534:	00f487b3          	add	a5,s1,a5
    80005538:	01b99993          	slli	s3,s3,0x1b
    8000553c:	06f9e063          	bltu	s3,a5,8000559c <kinit+0xa4>
    80005540:	00004a97          	auipc	s5,0x4
    80005544:	500a8a93          	addi	s5,s5,1280 # 80009a40 <end>
    80005548:	0754ec63          	bltu	s1,s5,800055c0 <kinit+0xc8>
    8000554c:	0734fa63          	bgeu	s1,s3,800055c0 <kinit+0xc8>
    80005550:	00088a37          	lui	s4,0x88
    80005554:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005558:	00003917          	auipc	s2,0x3
    8000555c:	1e890913          	addi	s2,s2,488 # 80008740 <kmem>
    80005560:	00ca1a13          	slli	s4,s4,0xc
    80005564:	0140006f          	j	80005578 <kinit+0x80>
    80005568:	000017b7          	lui	a5,0x1
    8000556c:	00f484b3          	add	s1,s1,a5
    80005570:	0554e863          	bltu	s1,s5,800055c0 <kinit+0xc8>
    80005574:	0534f663          	bgeu	s1,s3,800055c0 <kinit+0xc8>
    80005578:	00001637          	lui	a2,0x1
    8000557c:	00100593          	li	a1,1
    80005580:	00048513          	mv	a0,s1
    80005584:	00000097          	auipc	ra,0x0
    80005588:	5e4080e7          	jalr	1508(ra) # 80005b68 <__memset>
    8000558c:	00093783          	ld	a5,0(s2)
    80005590:	00f4b023          	sd	a5,0(s1)
    80005594:	00993023          	sd	s1,0(s2)
    80005598:	fd4498e3          	bne	s1,s4,80005568 <kinit+0x70>
    8000559c:	03813083          	ld	ra,56(sp)
    800055a0:	03013403          	ld	s0,48(sp)
    800055a4:	02813483          	ld	s1,40(sp)
    800055a8:	02013903          	ld	s2,32(sp)
    800055ac:	01813983          	ld	s3,24(sp)
    800055b0:	01013a03          	ld	s4,16(sp)
    800055b4:	00813a83          	ld	s5,8(sp)
    800055b8:	04010113          	addi	sp,sp,64
    800055bc:	00008067          	ret
    800055c0:	00002517          	auipc	a0,0x2
    800055c4:	d3850513          	addi	a0,a0,-712 # 800072f8 <digits+0x18>
    800055c8:	fffff097          	auipc	ra,0xfffff
    800055cc:	4b4080e7          	jalr	1204(ra) # 80004a7c <panic>

00000000800055d0 <freerange>:
    800055d0:	fc010113          	addi	sp,sp,-64
    800055d4:	000017b7          	lui	a5,0x1
    800055d8:	02913423          	sd	s1,40(sp)
    800055dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800055e0:	009504b3          	add	s1,a0,s1
    800055e4:	fffff537          	lui	a0,0xfffff
    800055e8:	02813823          	sd	s0,48(sp)
    800055ec:	02113c23          	sd	ra,56(sp)
    800055f0:	03213023          	sd	s2,32(sp)
    800055f4:	01313c23          	sd	s3,24(sp)
    800055f8:	01413823          	sd	s4,16(sp)
    800055fc:	01513423          	sd	s5,8(sp)
    80005600:	01613023          	sd	s6,0(sp)
    80005604:	04010413          	addi	s0,sp,64
    80005608:	00a4f4b3          	and	s1,s1,a0
    8000560c:	00f487b3          	add	a5,s1,a5
    80005610:	06f5e463          	bltu	a1,a5,80005678 <freerange+0xa8>
    80005614:	00004a97          	auipc	s5,0x4
    80005618:	42ca8a93          	addi	s5,s5,1068 # 80009a40 <end>
    8000561c:	0954e263          	bltu	s1,s5,800056a0 <freerange+0xd0>
    80005620:	01100993          	li	s3,17
    80005624:	01b99993          	slli	s3,s3,0x1b
    80005628:	0734fc63          	bgeu	s1,s3,800056a0 <freerange+0xd0>
    8000562c:	00058a13          	mv	s4,a1
    80005630:	00003917          	auipc	s2,0x3
    80005634:	11090913          	addi	s2,s2,272 # 80008740 <kmem>
    80005638:	00002b37          	lui	s6,0x2
    8000563c:	0140006f          	j	80005650 <freerange+0x80>
    80005640:	000017b7          	lui	a5,0x1
    80005644:	00f484b3          	add	s1,s1,a5
    80005648:	0554ec63          	bltu	s1,s5,800056a0 <freerange+0xd0>
    8000564c:	0534fa63          	bgeu	s1,s3,800056a0 <freerange+0xd0>
    80005650:	00001637          	lui	a2,0x1
    80005654:	00100593          	li	a1,1
    80005658:	00048513          	mv	a0,s1
    8000565c:	00000097          	auipc	ra,0x0
    80005660:	50c080e7          	jalr	1292(ra) # 80005b68 <__memset>
    80005664:	00093703          	ld	a4,0(s2)
    80005668:	016487b3          	add	a5,s1,s6
    8000566c:	00e4b023          	sd	a4,0(s1)
    80005670:	00993023          	sd	s1,0(s2)
    80005674:	fcfa76e3          	bgeu	s4,a5,80005640 <freerange+0x70>
    80005678:	03813083          	ld	ra,56(sp)
    8000567c:	03013403          	ld	s0,48(sp)
    80005680:	02813483          	ld	s1,40(sp)
    80005684:	02013903          	ld	s2,32(sp)
    80005688:	01813983          	ld	s3,24(sp)
    8000568c:	01013a03          	ld	s4,16(sp)
    80005690:	00813a83          	ld	s5,8(sp)
    80005694:	00013b03          	ld	s6,0(sp)
    80005698:	04010113          	addi	sp,sp,64
    8000569c:	00008067          	ret
    800056a0:	00002517          	auipc	a0,0x2
    800056a4:	c5850513          	addi	a0,a0,-936 # 800072f8 <digits+0x18>
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	3d4080e7          	jalr	980(ra) # 80004a7c <panic>

00000000800056b0 <kfree>:
    800056b0:	fe010113          	addi	sp,sp,-32
    800056b4:	00813823          	sd	s0,16(sp)
    800056b8:	00113c23          	sd	ra,24(sp)
    800056bc:	00913423          	sd	s1,8(sp)
    800056c0:	02010413          	addi	s0,sp,32
    800056c4:	03451793          	slli	a5,a0,0x34
    800056c8:	04079c63          	bnez	a5,80005720 <kfree+0x70>
    800056cc:	00004797          	auipc	a5,0x4
    800056d0:	37478793          	addi	a5,a5,884 # 80009a40 <end>
    800056d4:	00050493          	mv	s1,a0
    800056d8:	04f56463          	bltu	a0,a5,80005720 <kfree+0x70>
    800056dc:	01100793          	li	a5,17
    800056e0:	01b79793          	slli	a5,a5,0x1b
    800056e4:	02f57e63          	bgeu	a0,a5,80005720 <kfree+0x70>
    800056e8:	00001637          	lui	a2,0x1
    800056ec:	00100593          	li	a1,1
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	478080e7          	jalr	1144(ra) # 80005b68 <__memset>
    800056f8:	00003797          	auipc	a5,0x3
    800056fc:	04878793          	addi	a5,a5,72 # 80008740 <kmem>
    80005700:	0007b703          	ld	a4,0(a5)
    80005704:	01813083          	ld	ra,24(sp)
    80005708:	01013403          	ld	s0,16(sp)
    8000570c:	00e4b023          	sd	a4,0(s1)
    80005710:	0097b023          	sd	s1,0(a5)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	02010113          	addi	sp,sp,32
    8000571c:	00008067          	ret
    80005720:	00002517          	auipc	a0,0x2
    80005724:	bd850513          	addi	a0,a0,-1064 # 800072f8 <digits+0x18>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	354080e7          	jalr	852(ra) # 80004a7c <panic>

0000000080005730 <kalloc>:
    80005730:	fe010113          	addi	sp,sp,-32
    80005734:	00813823          	sd	s0,16(sp)
    80005738:	00913423          	sd	s1,8(sp)
    8000573c:	00113c23          	sd	ra,24(sp)
    80005740:	02010413          	addi	s0,sp,32
    80005744:	00003797          	auipc	a5,0x3
    80005748:	ffc78793          	addi	a5,a5,-4 # 80008740 <kmem>
    8000574c:	0007b483          	ld	s1,0(a5)
    80005750:	02048063          	beqz	s1,80005770 <kalloc+0x40>
    80005754:	0004b703          	ld	a4,0(s1)
    80005758:	00001637          	lui	a2,0x1
    8000575c:	00500593          	li	a1,5
    80005760:	00048513          	mv	a0,s1
    80005764:	00e7b023          	sd	a4,0(a5)
    80005768:	00000097          	auipc	ra,0x0
    8000576c:	400080e7          	jalr	1024(ra) # 80005b68 <__memset>
    80005770:	01813083          	ld	ra,24(sp)
    80005774:	01013403          	ld	s0,16(sp)
    80005778:	00048513          	mv	a0,s1
    8000577c:	00813483          	ld	s1,8(sp)
    80005780:	02010113          	addi	sp,sp,32
    80005784:	00008067          	ret

0000000080005788 <initlock>:
    80005788:	ff010113          	addi	sp,sp,-16
    8000578c:	00813423          	sd	s0,8(sp)
    80005790:	01010413          	addi	s0,sp,16
    80005794:	00813403          	ld	s0,8(sp)
    80005798:	00b53423          	sd	a1,8(a0)
    8000579c:	00052023          	sw	zero,0(a0)
    800057a0:	00053823          	sd	zero,16(a0)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret

00000000800057ac <acquire>:
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00813823          	sd	s0,16(sp)
    800057b4:	00913423          	sd	s1,8(sp)
    800057b8:	00113c23          	sd	ra,24(sp)
    800057bc:	01213023          	sd	s2,0(sp)
    800057c0:	02010413          	addi	s0,sp,32
    800057c4:	00050493          	mv	s1,a0
    800057c8:	10002973          	csrr	s2,sstatus
    800057cc:	100027f3          	csrr	a5,sstatus
    800057d0:	ffd7f793          	andi	a5,a5,-3
    800057d4:	10079073          	csrw	sstatus,a5
    800057d8:	fffff097          	auipc	ra,0xfffff
    800057dc:	8e0080e7          	jalr	-1824(ra) # 800040b8 <mycpu>
    800057e0:	07852783          	lw	a5,120(a0)
    800057e4:	06078e63          	beqz	a5,80005860 <acquire+0xb4>
    800057e8:	fffff097          	auipc	ra,0xfffff
    800057ec:	8d0080e7          	jalr	-1840(ra) # 800040b8 <mycpu>
    800057f0:	07852783          	lw	a5,120(a0)
    800057f4:	0004a703          	lw	a4,0(s1)
    800057f8:	0017879b          	addiw	a5,a5,1
    800057fc:	06f52c23          	sw	a5,120(a0)
    80005800:	04071063          	bnez	a4,80005840 <acquire+0x94>
    80005804:	00100713          	li	a4,1
    80005808:	00070793          	mv	a5,a4
    8000580c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005810:	0007879b          	sext.w	a5,a5
    80005814:	fe079ae3          	bnez	a5,80005808 <acquire+0x5c>
    80005818:	0ff0000f          	fence
    8000581c:	fffff097          	auipc	ra,0xfffff
    80005820:	89c080e7          	jalr	-1892(ra) # 800040b8 <mycpu>
    80005824:	01813083          	ld	ra,24(sp)
    80005828:	01013403          	ld	s0,16(sp)
    8000582c:	00a4b823          	sd	a0,16(s1)
    80005830:	00013903          	ld	s2,0(sp)
    80005834:	00813483          	ld	s1,8(sp)
    80005838:	02010113          	addi	sp,sp,32
    8000583c:	00008067          	ret
    80005840:	0104b903          	ld	s2,16(s1)
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	874080e7          	jalr	-1932(ra) # 800040b8 <mycpu>
    8000584c:	faa91ce3          	bne	s2,a0,80005804 <acquire+0x58>
    80005850:	00002517          	auipc	a0,0x2
    80005854:	ab050513          	addi	a0,a0,-1360 # 80007300 <digits+0x20>
    80005858:	fffff097          	auipc	ra,0xfffff
    8000585c:	224080e7          	jalr	548(ra) # 80004a7c <panic>
    80005860:	00195913          	srli	s2,s2,0x1
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	854080e7          	jalr	-1964(ra) # 800040b8 <mycpu>
    8000586c:	00197913          	andi	s2,s2,1
    80005870:	07252e23          	sw	s2,124(a0)
    80005874:	f75ff06f          	j	800057e8 <acquire+0x3c>

0000000080005878 <release>:
    80005878:	fe010113          	addi	sp,sp,-32
    8000587c:	00813823          	sd	s0,16(sp)
    80005880:	00113c23          	sd	ra,24(sp)
    80005884:	00913423          	sd	s1,8(sp)
    80005888:	01213023          	sd	s2,0(sp)
    8000588c:	02010413          	addi	s0,sp,32
    80005890:	00052783          	lw	a5,0(a0)
    80005894:	00079a63          	bnez	a5,800058a8 <release+0x30>
    80005898:	00002517          	auipc	a0,0x2
    8000589c:	a7050513          	addi	a0,a0,-1424 # 80007308 <digits+0x28>
    800058a0:	fffff097          	auipc	ra,0xfffff
    800058a4:	1dc080e7          	jalr	476(ra) # 80004a7c <panic>
    800058a8:	01053903          	ld	s2,16(a0)
    800058ac:	00050493          	mv	s1,a0
    800058b0:	fffff097          	auipc	ra,0xfffff
    800058b4:	808080e7          	jalr	-2040(ra) # 800040b8 <mycpu>
    800058b8:	fea910e3          	bne	s2,a0,80005898 <release+0x20>
    800058bc:	0004b823          	sd	zero,16(s1)
    800058c0:	0ff0000f          	fence
    800058c4:	0f50000f          	fence	iorw,ow
    800058c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800058cc:	ffffe097          	auipc	ra,0xffffe
    800058d0:	7ec080e7          	jalr	2028(ra) # 800040b8 <mycpu>
    800058d4:	100027f3          	csrr	a5,sstatus
    800058d8:	0027f793          	andi	a5,a5,2
    800058dc:	04079a63          	bnez	a5,80005930 <release+0xb8>
    800058e0:	07852783          	lw	a5,120(a0)
    800058e4:	02f05e63          	blez	a5,80005920 <release+0xa8>
    800058e8:	fff7871b          	addiw	a4,a5,-1
    800058ec:	06e52c23          	sw	a4,120(a0)
    800058f0:	00071c63          	bnez	a4,80005908 <release+0x90>
    800058f4:	07c52783          	lw	a5,124(a0)
    800058f8:	00078863          	beqz	a5,80005908 <release+0x90>
    800058fc:	100027f3          	csrr	a5,sstatus
    80005900:	0027e793          	ori	a5,a5,2
    80005904:	10079073          	csrw	sstatus,a5
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	01013403          	ld	s0,16(sp)
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	00013903          	ld	s2,0(sp)
    80005918:	02010113          	addi	sp,sp,32
    8000591c:	00008067          	ret
    80005920:	00002517          	auipc	a0,0x2
    80005924:	a0850513          	addi	a0,a0,-1528 # 80007328 <digits+0x48>
    80005928:	fffff097          	auipc	ra,0xfffff
    8000592c:	154080e7          	jalr	340(ra) # 80004a7c <panic>
    80005930:	00002517          	auipc	a0,0x2
    80005934:	9e050513          	addi	a0,a0,-1568 # 80007310 <digits+0x30>
    80005938:	fffff097          	auipc	ra,0xfffff
    8000593c:	144080e7          	jalr	324(ra) # 80004a7c <panic>

0000000080005940 <holding>:
    80005940:	00052783          	lw	a5,0(a0)
    80005944:	00079663          	bnez	a5,80005950 <holding+0x10>
    80005948:	00000513          	li	a0,0
    8000594c:	00008067          	ret
    80005950:	fe010113          	addi	sp,sp,-32
    80005954:	00813823          	sd	s0,16(sp)
    80005958:	00913423          	sd	s1,8(sp)
    8000595c:	00113c23          	sd	ra,24(sp)
    80005960:	02010413          	addi	s0,sp,32
    80005964:	01053483          	ld	s1,16(a0)
    80005968:	ffffe097          	auipc	ra,0xffffe
    8000596c:	750080e7          	jalr	1872(ra) # 800040b8 <mycpu>
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	40a48533          	sub	a0,s1,a0
    8000597c:	00153513          	seqz	a0,a0
    80005980:	00813483          	ld	s1,8(sp)
    80005984:	02010113          	addi	sp,sp,32
    80005988:	00008067          	ret

000000008000598c <push_off>:
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00113c23          	sd	ra,24(sp)
    80005998:	00913423          	sd	s1,8(sp)
    8000599c:	02010413          	addi	s0,sp,32
    800059a0:	100024f3          	csrr	s1,sstatus
    800059a4:	100027f3          	csrr	a5,sstatus
    800059a8:	ffd7f793          	andi	a5,a5,-3
    800059ac:	10079073          	csrw	sstatus,a5
    800059b0:	ffffe097          	auipc	ra,0xffffe
    800059b4:	708080e7          	jalr	1800(ra) # 800040b8 <mycpu>
    800059b8:	07852783          	lw	a5,120(a0)
    800059bc:	02078663          	beqz	a5,800059e8 <push_off+0x5c>
    800059c0:	ffffe097          	auipc	ra,0xffffe
    800059c4:	6f8080e7          	jalr	1784(ra) # 800040b8 <mycpu>
    800059c8:	07852783          	lw	a5,120(a0)
    800059cc:	01813083          	ld	ra,24(sp)
    800059d0:	01013403          	ld	s0,16(sp)
    800059d4:	0017879b          	addiw	a5,a5,1
    800059d8:	06f52c23          	sw	a5,120(a0)
    800059dc:	00813483          	ld	s1,8(sp)
    800059e0:	02010113          	addi	sp,sp,32
    800059e4:	00008067          	ret
    800059e8:	0014d493          	srli	s1,s1,0x1
    800059ec:	ffffe097          	auipc	ra,0xffffe
    800059f0:	6cc080e7          	jalr	1740(ra) # 800040b8 <mycpu>
    800059f4:	0014f493          	andi	s1,s1,1
    800059f8:	06952e23          	sw	s1,124(a0)
    800059fc:	fc5ff06f          	j	800059c0 <push_off+0x34>

0000000080005a00 <pop_off>:
    80005a00:	ff010113          	addi	sp,sp,-16
    80005a04:	00813023          	sd	s0,0(sp)
    80005a08:	00113423          	sd	ra,8(sp)
    80005a0c:	01010413          	addi	s0,sp,16
    80005a10:	ffffe097          	auipc	ra,0xffffe
    80005a14:	6a8080e7          	jalr	1704(ra) # 800040b8 <mycpu>
    80005a18:	100027f3          	csrr	a5,sstatus
    80005a1c:	0027f793          	andi	a5,a5,2
    80005a20:	04079663          	bnez	a5,80005a6c <pop_off+0x6c>
    80005a24:	07852783          	lw	a5,120(a0)
    80005a28:	02f05a63          	blez	a5,80005a5c <pop_off+0x5c>
    80005a2c:	fff7871b          	addiw	a4,a5,-1
    80005a30:	06e52c23          	sw	a4,120(a0)
    80005a34:	00071c63          	bnez	a4,80005a4c <pop_off+0x4c>
    80005a38:	07c52783          	lw	a5,124(a0)
    80005a3c:	00078863          	beqz	a5,80005a4c <pop_off+0x4c>
    80005a40:	100027f3          	csrr	a5,sstatus
    80005a44:	0027e793          	ori	a5,a5,2
    80005a48:	10079073          	csrw	sstatus,a5
    80005a4c:	00813083          	ld	ra,8(sp)
    80005a50:	00013403          	ld	s0,0(sp)
    80005a54:	01010113          	addi	sp,sp,16
    80005a58:	00008067          	ret
    80005a5c:	00002517          	auipc	a0,0x2
    80005a60:	8cc50513          	addi	a0,a0,-1844 # 80007328 <digits+0x48>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	018080e7          	jalr	24(ra) # 80004a7c <panic>
    80005a6c:	00002517          	auipc	a0,0x2
    80005a70:	8a450513          	addi	a0,a0,-1884 # 80007310 <digits+0x30>
    80005a74:	fffff097          	auipc	ra,0xfffff
    80005a78:	008080e7          	jalr	8(ra) # 80004a7c <panic>

0000000080005a7c <push_on>:
    80005a7c:	fe010113          	addi	sp,sp,-32
    80005a80:	00813823          	sd	s0,16(sp)
    80005a84:	00113c23          	sd	ra,24(sp)
    80005a88:	00913423          	sd	s1,8(sp)
    80005a8c:	02010413          	addi	s0,sp,32
    80005a90:	100024f3          	csrr	s1,sstatus
    80005a94:	100027f3          	csrr	a5,sstatus
    80005a98:	0027e793          	ori	a5,a5,2
    80005a9c:	10079073          	csrw	sstatus,a5
    80005aa0:	ffffe097          	auipc	ra,0xffffe
    80005aa4:	618080e7          	jalr	1560(ra) # 800040b8 <mycpu>
    80005aa8:	07852783          	lw	a5,120(a0)
    80005aac:	02078663          	beqz	a5,80005ad8 <push_on+0x5c>
    80005ab0:	ffffe097          	auipc	ra,0xffffe
    80005ab4:	608080e7          	jalr	1544(ra) # 800040b8 <mycpu>
    80005ab8:	07852783          	lw	a5,120(a0)
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	0017879b          	addiw	a5,a5,1
    80005ac8:	06f52c23          	sw	a5,120(a0)
    80005acc:	00813483          	ld	s1,8(sp)
    80005ad0:	02010113          	addi	sp,sp,32
    80005ad4:	00008067          	ret
    80005ad8:	0014d493          	srli	s1,s1,0x1
    80005adc:	ffffe097          	auipc	ra,0xffffe
    80005ae0:	5dc080e7          	jalr	1500(ra) # 800040b8 <mycpu>
    80005ae4:	0014f493          	andi	s1,s1,1
    80005ae8:	06952e23          	sw	s1,124(a0)
    80005aec:	fc5ff06f          	j	80005ab0 <push_on+0x34>

0000000080005af0 <pop_on>:
    80005af0:	ff010113          	addi	sp,sp,-16
    80005af4:	00813023          	sd	s0,0(sp)
    80005af8:	00113423          	sd	ra,8(sp)
    80005afc:	01010413          	addi	s0,sp,16
    80005b00:	ffffe097          	auipc	ra,0xffffe
    80005b04:	5b8080e7          	jalr	1464(ra) # 800040b8 <mycpu>
    80005b08:	100027f3          	csrr	a5,sstatus
    80005b0c:	0027f793          	andi	a5,a5,2
    80005b10:	04078463          	beqz	a5,80005b58 <pop_on+0x68>
    80005b14:	07852783          	lw	a5,120(a0)
    80005b18:	02f05863          	blez	a5,80005b48 <pop_on+0x58>
    80005b1c:	fff7879b          	addiw	a5,a5,-1
    80005b20:	06f52c23          	sw	a5,120(a0)
    80005b24:	07853783          	ld	a5,120(a0)
    80005b28:	00079863          	bnez	a5,80005b38 <pop_on+0x48>
    80005b2c:	100027f3          	csrr	a5,sstatus
    80005b30:	ffd7f793          	andi	a5,a5,-3
    80005b34:	10079073          	csrw	sstatus,a5
    80005b38:	00813083          	ld	ra,8(sp)
    80005b3c:	00013403          	ld	s0,0(sp)
    80005b40:	01010113          	addi	sp,sp,16
    80005b44:	00008067          	ret
    80005b48:	00002517          	auipc	a0,0x2
    80005b4c:	80850513          	addi	a0,a0,-2040 # 80007350 <digits+0x70>
    80005b50:	fffff097          	auipc	ra,0xfffff
    80005b54:	f2c080e7          	jalr	-212(ra) # 80004a7c <panic>
    80005b58:	00001517          	auipc	a0,0x1
    80005b5c:	7d850513          	addi	a0,a0,2008 # 80007330 <digits+0x50>
    80005b60:	fffff097          	auipc	ra,0xfffff
    80005b64:	f1c080e7          	jalr	-228(ra) # 80004a7c <panic>

0000000080005b68 <__memset>:
    80005b68:	ff010113          	addi	sp,sp,-16
    80005b6c:	00813423          	sd	s0,8(sp)
    80005b70:	01010413          	addi	s0,sp,16
    80005b74:	1a060e63          	beqz	a2,80005d30 <__memset+0x1c8>
    80005b78:	40a007b3          	neg	a5,a0
    80005b7c:	0077f793          	andi	a5,a5,7
    80005b80:	00778693          	addi	a3,a5,7
    80005b84:	00b00813          	li	a6,11
    80005b88:	0ff5f593          	andi	a1,a1,255
    80005b8c:	fff6071b          	addiw	a4,a2,-1
    80005b90:	1b06e663          	bltu	a3,a6,80005d3c <__memset+0x1d4>
    80005b94:	1cd76463          	bltu	a4,a3,80005d5c <__memset+0x1f4>
    80005b98:	1a078e63          	beqz	a5,80005d54 <__memset+0x1ec>
    80005b9c:	00b50023          	sb	a1,0(a0)
    80005ba0:	00100713          	li	a4,1
    80005ba4:	1ae78463          	beq	a5,a4,80005d4c <__memset+0x1e4>
    80005ba8:	00b500a3          	sb	a1,1(a0)
    80005bac:	00200713          	li	a4,2
    80005bb0:	1ae78a63          	beq	a5,a4,80005d64 <__memset+0x1fc>
    80005bb4:	00b50123          	sb	a1,2(a0)
    80005bb8:	00300713          	li	a4,3
    80005bbc:	18e78463          	beq	a5,a4,80005d44 <__memset+0x1dc>
    80005bc0:	00b501a3          	sb	a1,3(a0)
    80005bc4:	00400713          	li	a4,4
    80005bc8:	1ae78263          	beq	a5,a4,80005d6c <__memset+0x204>
    80005bcc:	00b50223          	sb	a1,4(a0)
    80005bd0:	00500713          	li	a4,5
    80005bd4:	1ae78063          	beq	a5,a4,80005d74 <__memset+0x20c>
    80005bd8:	00b502a3          	sb	a1,5(a0)
    80005bdc:	00700713          	li	a4,7
    80005be0:	18e79e63          	bne	a5,a4,80005d7c <__memset+0x214>
    80005be4:	00b50323          	sb	a1,6(a0)
    80005be8:	00700e93          	li	t4,7
    80005bec:	00859713          	slli	a4,a1,0x8
    80005bf0:	00e5e733          	or	a4,a1,a4
    80005bf4:	01059e13          	slli	t3,a1,0x10
    80005bf8:	01c76e33          	or	t3,a4,t3
    80005bfc:	01859313          	slli	t1,a1,0x18
    80005c00:	006e6333          	or	t1,t3,t1
    80005c04:	02059893          	slli	a7,a1,0x20
    80005c08:	40f60e3b          	subw	t3,a2,a5
    80005c0c:	011368b3          	or	a7,t1,a7
    80005c10:	02859813          	slli	a6,a1,0x28
    80005c14:	0108e833          	or	a6,a7,a6
    80005c18:	03059693          	slli	a3,a1,0x30
    80005c1c:	003e589b          	srliw	a7,t3,0x3
    80005c20:	00d866b3          	or	a3,a6,a3
    80005c24:	03859713          	slli	a4,a1,0x38
    80005c28:	00389813          	slli	a6,a7,0x3
    80005c2c:	00f507b3          	add	a5,a0,a5
    80005c30:	00e6e733          	or	a4,a3,a4
    80005c34:	000e089b          	sext.w	a7,t3
    80005c38:	00f806b3          	add	a3,a6,a5
    80005c3c:	00e7b023          	sd	a4,0(a5)
    80005c40:	00878793          	addi	a5,a5,8
    80005c44:	fed79ce3          	bne	a5,a3,80005c3c <__memset+0xd4>
    80005c48:	ff8e7793          	andi	a5,t3,-8
    80005c4c:	0007871b          	sext.w	a4,a5
    80005c50:	01d787bb          	addw	a5,a5,t4
    80005c54:	0ce88e63          	beq	a7,a4,80005d30 <__memset+0x1c8>
    80005c58:	00f50733          	add	a4,a0,a5
    80005c5c:	00b70023          	sb	a1,0(a4)
    80005c60:	0017871b          	addiw	a4,a5,1
    80005c64:	0cc77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005c68:	00e50733          	add	a4,a0,a4
    80005c6c:	00b70023          	sb	a1,0(a4)
    80005c70:	0027871b          	addiw	a4,a5,2
    80005c74:	0ac77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005c78:	00e50733          	add	a4,a0,a4
    80005c7c:	00b70023          	sb	a1,0(a4)
    80005c80:	0037871b          	addiw	a4,a5,3
    80005c84:	0ac77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005c88:	00e50733          	add	a4,a0,a4
    80005c8c:	00b70023          	sb	a1,0(a4)
    80005c90:	0047871b          	addiw	a4,a5,4
    80005c94:	08c77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005c98:	00e50733          	add	a4,a0,a4
    80005c9c:	00b70023          	sb	a1,0(a4)
    80005ca0:	0057871b          	addiw	a4,a5,5
    80005ca4:	08c77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005ca8:	00e50733          	add	a4,a0,a4
    80005cac:	00b70023          	sb	a1,0(a4)
    80005cb0:	0067871b          	addiw	a4,a5,6
    80005cb4:	06c77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005cb8:	00e50733          	add	a4,a0,a4
    80005cbc:	00b70023          	sb	a1,0(a4)
    80005cc0:	0077871b          	addiw	a4,a5,7
    80005cc4:	06c77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005cc8:	00e50733          	add	a4,a0,a4
    80005ccc:	00b70023          	sb	a1,0(a4)
    80005cd0:	0087871b          	addiw	a4,a5,8
    80005cd4:	04c77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005cd8:	00e50733          	add	a4,a0,a4
    80005cdc:	00b70023          	sb	a1,0(a4)
    80005ce0:	0097871b          	addiw	a4,a5,9
    80005ce4:	04c77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005ce8:	00e50733          	add	a4,a0,a4
    80005cec:	00b70023          	sb	a1,0(a4)
    80005cf0:	00a7871b          	addiw	a4,a5,10
    80005cf4:	02c77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005cf8:	00e50733          	add	a4,a0,a4
    80005cfc:	00b70023          	sb	a1,0(a4)
    80005d00:	00b7871b          	addiw	a4,a5,11
    80005d04:	02c77663          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005d08:	00e50733          	add	a4,a0,a4
    80005d0c:	00b70023          	sb	a1,0(a4)
    80005d10:	00c7871b          	addiw	a4,a5,12
    80005d14:	00c77e63          	bgeu	a4,a2,80005d30 <__memset+0x1c8>
    80005d18:	00e50733          	add	a4,a0,a4
    80005d1c:	00b70023          	sb	a1,0(a4)
    80005d20:	00d7879b          	addiw	a5,a5,13
    80005d24:	00c7f663          	bgeu	a5,a2,80005d30 <__memset+0x1c8>
    80005d28:	00f507b3          	add	a5,a0,a5
    80005d2c:	00b78023          	sb	a1,0(a5)
    80005d30:	00813403          	ld	s0,8(sp)
    80005d34:	01010113          	addi	sp,sp,16
    80005d38:	00008067          	ret
    80005d3c:	00b00693          	li	a3,11
    80005d40:	e55ff06f          	j	80005b94 <__memset+0x2c>
    80005d44:	00300e93          	li	t4,3
    80005d48:	ea5ff06f          	j	80005bec <__memset+0x84>
    80005d4c:	00100e93          	li	t4,1
    80005d50:	e9dff06f          	j	80005bec <__memset+0x84>
    80005d54:	00000e93          	li	t4,0
    80005d58:	e95ff06f          	j	80005bec <__memset+0x84>
    80005d5c:	00000793          	li	a5,0
    80005d60:	ef9ff06f          	j	80005c58 <__memset+0xf0>
    80005d64:	00200e93          	li	t4,2
    80005d68:	e85ff06f          	j	80005bec <__memset+0x84>
    80005d6c:	00400e93          	li	t4,4
    80005d70:	e7dff06f          	j	80005bec <__memset+0x84>
    80005d74:	00500e93          	li	t4,5
    80005d78:	e75ff06f          	j	80005bec <__memset+0x84>
    80005d7c:	00600e93          	li	t4,6
    80005d80:	e6dff06f          	j	80005bec <__memset+0x84>

0000000080005d84 <__memmove>:
    80005d84:	ff010113          	addi	sp,sp,-16
    80005d88:	00813423          	sd	s0,8(sp)
    80005d8c:	01010413          	addi	s0,sp,16
    80005d90:	0e060863          	beqz	a2,80005e80 <__memmove+0xfc>
    80005d94:	fff6069b          	addiw	a3,a2,-1
    80005d98:	0006881b          	sext.w	a6,a3
    80005d9c:	0ea5e863          	bltu	a1,a0,80005e8c <__memmove+0x108>
    80005da0:	00758713          	addi	a4,a1,7
    80005da4:	00a5e7b3          	or	a5,a1,a0
    80005da8:	40a70733          	sub	a4,a4,a0
    80005dac:	0077f793          	andi	a5,a5,7
    80005db0:	00f73713          	sltiu	a4,a4,15
    80005db4:	00174713          	xori	a4,a4,1
    80005db8:	0017b793          	seqz	a5,a5
    80005dbc:	00e7f7b3          	and	a5,a5,a4
    80005dc0:	10078863          	beqz	a5,80005ed0 <__memmove+0x14c>
    80005dc4:	00900793          	li	a5,9
    80005dc8:	1107f463          	bgeu	a5,a6,80005ed0 <__memmove+0x14c>
    80005dcc:	0036581b          	srliw	a6,a2,0x3
    80005dd0:	fff8081b          	addiw	a6,a6,-1
    80005dd4:	02081813          	slli	a6,a6,0x20
    80005dd8:	01d85893          	srli	a7,a6,0x1d
    80005ddc:	00858813          	addi	a6,a1,8
    80005de0:	00058793          	mv	a5,a1
    80005de4:	00050713          	mv	a4,a0
    80005de8:	01088833          	add	a6,a7,a6
    80005dec:	0007b883          	ld	a7,0(a5)
    80005df0:	00878793          	addi	a5,a5,8
    80005df4:	00870713          	addi	a4,a4,8
    80005df8:	ff173c23          	sd	a7,-8(a4)
    80005dfc:	ff0798e3          	bne	a5,a6,80005dec <__memmove+0x68>
    80005e00:	ff867713          	andi	a4,a2,-8
    80005e04:	02071793          	slli	a5,a4,0x20
    80005e08:	0207d793          	srli	a5,a5,0x20
    80005e0c:	00f585b3          	add	a1,a1,a5
    80005e10:	40e686bb          	subw	a3,a3,a4
    80005e14:	00f507b3          	add	a5,a0,a5
    80005e18:	06e60463          	beq	a2,a4,80005e80 <__memmove+0xfc>
    80005e1c:	0005c703          	lbu	a4,0(a1)
    80005e20:	00e78023          	sb	a4,0(a5)
    80005e24:	04068e63          	beqz	a3,80005e80 <__memmove+0xfc>
    80005e28:	0015c603          	lbu	a2,1(a1)
    80005e2c:	00100713          	li	a4,1
    80005e30:	00c780a3          	sb	a2,1(a5)
    80005e34:	04e68663          	beq	a3,a4,80005e80 <__memmove+0xfc>
    80005e38:	0025c603          	lbu	a2,2(a1)
    80005e3c:	00200713          	li	a4,2
    80005e40:	00c78123          	sb	a2,2(a5)
    80005e44:	02e68e63          	beq	a3,a4,80005e80 <__memmove+0xfc>
    80005e48:	0035c603          	lbu	a2,3(a1)
    80005e4c:	00300713          	li	a4,3
    80005e50:	00c781a3          	sb	a2,3(a5)
    80005e54:	02e68663          	beq	a3,a4,80005e80 <__memmove+0xfc>
    80005e58:	0045c603          	lbu	a2,4(a1)
    80005e5c:	00400713          	li	a4,4
    80005e60:	00c78223          	sb	a2,4(a5)
    80005e64:	00e68e63          	beq	a3,a4,80005e80 <__memmove+0xfc>
    80005e68:	0055c603          	lbu	a2,5(a1)
    80005e6c:	00500713          	li	a4,5
    80005e70:	00c782a3          	sb	a2,5(a5)
    80005e74:	00e68663          	beq	a3,a4,80005e80 <__memmove+0xfc>
    80005e78:	0065c703          	lbu	a4,6(a1)
    80005e7c:	00e78323          	sb	a4,6(a5)
    80005e80:	00813403          	ld	s0,8(sp)
    80005e84:	01010113          	addi	sp,sp,16
    80005e88:	00008067          	ret
    80005e8c:	02061713          	slli	a4,a2,0x20
    80005e90:	02075713          	srli	a4,a4,0x20
    80005e94:	00e587b3          	add	a5,a1,a4
    80005e98:	f0f574e3          	bgeu	a0,a5,80005da0 <__memmove+0x1c>
    80005e9c:	02069613          	slli	a2,a3,0x20
    80005ea0:	02065613          	srli	a2,a2,0x20
    80005ea4:	fff64613          	not	a2,a2
    80005ea8:	00e50733          	add	a4,a0,a4
    80005eac:	00c78633          	add	a2,a5,a2
    80005eb0:	fff7c683          	lbu	a3,-1(a5)
    80005eb4:	fff78793          	addi	a5,a5,-1
    80005eb8:	fff70713          	addi	a4,a4,-1
    80005ebc:	00d70023          	sb	a3,0(a4)
    80005ec0:	fec798e3          	bne	a5,a2,80005eb0 <__memmove+0x12c>
    80005ec4:	00813403          	ld	s0,8(sp)
    80005ec8:	01010113          	addi	sp,sp,16
    80005ecc:	00008067          	ret
    80005ed0:	02069713          	slli	a4,a3,0x20
    80005ed4:	02075713          	srli	a4,a4,0x20
    80005ed8:	00170713          	addi	a4,a4,1
    80005edc:	00e50733          	add	a4,a0,a4
    80005ee0:	00050793          	mv	a5,a0
    80005ee4:	0005c683          	lbu	a3,0(a1)
    80005ee8:	00178793          	addi	a5,a5,1
    80005eec:	00158593          	addi	a1,a1,1
    80005ef0:	fed78fa3          	sb	a3,-1(a5)
    80005ef4:	fee798e3          	bne	a5,a4,80005ee4 <__memmove+0x160>
    80005ef8:	f89ff06f          	j	80005e80 <__memmove+0xfc>

0000000080005efc <__mem_free>:
    80005efc:	ff010113          	addi	sp,sp,-16
    80005f00:	00813423          	sd	s0,8(sp)
    80005f04:	01010413          	addi	s0,sp,16
    80005f08:	00003597          	auipc	a1,0x3
    80005f0c:	84058593          	addi	a1,a1,-1984 # 80008748 <freep>
    80005f10:	0005b783          	ld	a5,0(a1)
    80005f14:	ff050693          	addi	a3,a0,-16
    80005f18:	0007b703          	ld	a4,0(a5)
    80005f1c:	00d7fc63          	bgeu	a5,a3,80005f34 <__mem_free+0x38>
    80005f20:	00e6ee63          	bltu	a3,a4,80005f3c <__mem_free+0x40>
    80005f24:	00e7fc63          	bgeu	a5,a4,80005f3c <__mem_free+0x40>
    80005f28:	00070793          	mv	a5,a4
    80005f2c:	0007b703          	ld	a4,0(a5)
    80005f30:	fed7e8e3          	bltu	a5,a3,80005f20 <__mem_free+0x24>
    80005f34:	fee7eae3          	bltu	a5,a4,80005f28 <__mem_free+0x2c>
    80005f38:	fee6f8e3          	bgeu	a3,a4,80005f28 <__mem_free+0x2c>
    80005f3c:	ff852803          	lw	a6,-8(a0)
    80005f40:	02081613          	slli	a2,a6,0x20
    80005f44:	01c65613          	srli	a2,a2,0x1c
    80005f48:	00c68633          	add	a2,a3,a2
    80005f4c:	02c70a63          	beq	a4,a2,80005f80 <__mem_free+0x84>
    80005f50:	fee53823          	sd	a4,-16(a0)
    80005f54:	0087a503          	lw	a0,8(a5)
    80005f58:	02051613          	slli	a2,a0,0x20
    80005f5c:	01c65613          	srli	a2,a2,0x1c
    80005f60:	00c78633          	add	a2,a5,a2
    80005f64:	04c68263          	beq	a3,a2,80005fa8 <__mem_free+0xac>
    80005f68:	00813403          	ld	s0,8(sp)
    80005f6c:	00d7b023          	sd	a3,0(a5)
    80005f70:	00f5b023          	sd	a5,0(a1)
    80005f74:	00000513          	li	a0,0
    80005f78:	01010113          	addi	sp,sp,16
    80005f7c:	00008067          	ret
    80005f80:	00872603          	lw	a2,8(a4)
    80005f84:	00073703          	ld	a4,0(a4)
    80005f88:	0106083b          	addw	a6,a2,a6
    80005f8c:	ff052c23          	sw	a6,-8(a0)
    80005f90:	fee53823          	sd	a4,-16(a0)
    80005f94:	0087a503          	lw	a0,8(a5)
    80005f98:	02051613          	slli	a2,a0,0x20
    80005f9c:	01c65613          	srli	a2,a2,0x1c
    80005fa0:	00c78633          	add	a2,a5,a2
    80005fa4:	fcc692e3          	bne	a3,a2,80005f68 <__mem_free+0x6c>
    80005fa8:	00813403          	ld	s0,8(sp)
    80005fac:	0105053b          	addw	a0,a0,a6
    80005fb0:	00a7a423          	sw	a0,8(a5)
    80005fb4:	00e7b023          	sd	a4,0(a5)
    80005fb8:	00f5b023          	sd	a5,0(a1)
    80005fbc:	00000513          	li	a0,0
    80005fc0:	01010113          	addi	sp,sp,16
    80005fc4:	00008067          	ret

0000000080005fc8 <__mem_alloc>:
    80005fc8:	fc010113          	addi	sp,sp,-64
    80005fcc:	02813823          	sd	s0,48(sp)
    80005fd0:	02913423          	sd	s1,40(sp)
    80005fd4:	03213023          	sd	s2,32(sp)
    80005fd8:	01513423          	sd	s5,8(sp)
    80005fdc:	02113c23          	sd	ra,56(sp)
    80005fe0:	01313c23          	sd	s3,24(sp)
    80005fe4:	01413823          	sd	s4,16(sp)
    80005fe8:	01613023          	sd	s6,0(sp)
    80005fec:	04010413          	addi	s0,sp,64
    80005ff0:	00002a97          	auipc	s5,0x2
    80005ff4:	758a8a93          	addi	s5,s5,1880 # 80008748 <freep>
    80005ff8:	00f50913          	addi	s2,a0,15
    80005ffc:	000ab683          	ld	a3,0(s5)
    80006000:	00495913          	srli	s2,s2,0x4
    80006004:	0019049b          	addiw	s1,s2,1
    80006008:	00048913          	mv	s2,s1
    8000600c:	0c068c63          	beqz	a3,800060e4 <__mem_alloc+0x11c>
    80006010:	0006b503          	ld	a0,0(a3)
    80006014:	00852703          	lw	a4,8(a0)
    80006018:	10977063          	bgeu	a4,s1,80006118 <__mem_alloc+0x150>
    8000601c:	000017b7          	lui	a5,0x1
    80006020:	0009099b          	sext.w	s3,s2
    80006024:	0af4e863          	bltu	s1,a5,800060d4 <__mem_alloc+0x10c>
    80006028:	02099a13          	slli	s4,s3,0x20
    8000602c:	01ca5a13          	srli	s4,s4,0x1c
    80006030:	fff00b13          	li	s6,-1
    80006034:	0100006f          	j	80006044 <__mem_alloc+0x7c>
    80006038:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000603c:	00852703          	lw	a4,8(a0)
    80006040:	04977463          	bgeu	a4,s1,80006088 <__mem_alloc+0xc0>
    80006044:	00050793          	mv	a5,a0
    80006048:	fea698e3          	bne	a3,a0,80006038 <__mem_alloc+0x70>
    8000604c:	000a0513          	mv	a0,s4
    80006050:	00000097          	auipc	ra,0x0
    80006054:	0d0080e7          	jalr	208(ra) # 80006120 <kvmincrease>
    80006058:	00050793          	mv	a5,a0
    8000605c:	01050513          	addi	a0,a0,16
    80006060:	07678e63          	beq	a5,s6,800060dc <__mem_alloc+0x114>
    80006064:	0137a423          	sw	s3,8(a5)
    80006068:	00000097          	auipc	ra,0x0
    8000606c:	e94080e7          	jalr	-364(ra) # 80005efc <__mem_free>
    80006070:	000ab783          	ld	a5,0(s5)
    80006074:	06078463          	beqz	a5,800060dc <__mem_alloc+0x114>
    80006078:	0007b503          	ld	a0,0(a5)
    8000607c:	00078693          	mv	a3,a5
    80006080:	00852703          	lw	a4,8(a0)
    80006084:	fc9760e3          	bltu	a4,s1,80006044 <__mem_alloc+0x7c>
    80006088:	08e48263          	beq	s1,a4,8000610c <__mem_alloc+0x144>
    8000608c:	4127073b          	subw	a4,a4,s2
    80006090:	02071693          	slli	a3,a4,0x20
    80006094:	01c6d693          	srli	a3,a3,0x1c
    80006098:	00e52423          	sw	a4,8(a0)
    8000609c:	00d50533          	add	a0,a0,a3
    800060a0:	01252423          	sw	s2,8(a0)
    800060a4:	00fab023          	sd	a5,0(s5)
    800060a8:	01050513          	addi	a0,a0,16
    800060ac:	03813083          	ld	ra,56(sp)
    800060b0:	03013403          	ld	s0,48(sp)
    800060b4:	02813483          	ld	s1,40(sp)
    800060b8:	02013903          	ld	s2,32(sp)
    800060bc:	01813983          	ld	s3,24(sp)
    800060c0:	01013a03          	ld	s4,16(sp)
    800060c4:	00813a83          	ld	s5,8(sp)
    800060c8:	00013b03          	ld	s6,0(sp)
    800060cc:	04010113          	addi	sp,sp,64
    800060d0:	00008067          	ret
    800060d4:	000019b7          	lui	s3,0x1
    800060d8:	f51ff06f          	j	80006028 <__mem_alloc+0x60>
    800060dc:	00000513          	li	a0,0
    800060e0:	fcdff06f          	j	800060ac <__mem_alloc+0xe4>
    800060e4:	00004797          	auipc	a5,0x4
    800060e8:	94c78793          	addi	a5,a5,-1716 # 80009a30 <base>
    800060ec:	00078513          	mv	a0,a5
    800060f0:	00fab023          	sd	a5,0(s5)
    800060f4:	00f7b023          	sd	a5,0(a5)
    800060f8:	00000713          	li	a4,0
    800060fc:	00004797          	auipc	a5,0x4
    80006100:	9207ae23          	sw	zero,-1732(a5) # 80009a38 <base+0x8>
    80006104:	00050693          	mv	a3,a0
    80006108:	f11ff06f          	j	80006018 <__mem_alloc+0x50>
    8000610c:	00053703          	ld	a4,0(a0)
    80006110:	00e7b023          	sd	a4,0(a5)
    80006114:	f91ff06f          	j	800060a4 <__mem_alloc+0xdc>
    80006118:	00068793          	mv	a5,a3
    8000611c:	f6dff06f          	j	80006088 <__mem_alloc+0xc0>

0000000080006120 <kvmincrease>:
    80006120:	fe010113          	addi	sp,sp,-32
    80006124:	01213023          	sd	s2,0(sp)
    80006128:	00001937          	lui	s2,0x1
    8000612c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80006130:	00813823          	sd	s0,16(sp)
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00913423          	sd	s1,8(sp)
    8000613c:	02010413          	addi	s0,sp,32
    80006140:	01250933          	add	s2,a0,s2
    80006144:	00c95913          	srli	s2,s2,0xc
    80006148:	02090863          	beqz	s2,80006178 <kvmincrease+0x58>
    8000614c:	00000493          	li	s1,0
    80006150:	00148493          	addi	s1,s1,1
    80006154:	fffff097          	auipc	ra,0xfffff
    80006158:	5dc080e7          	jalr	1500(ra) # 80005730 <kalloc>
    8000615c:	fe991ae3          	bne	s2,s1,80006150 <kvmincrease+0x30>
    80006160:	01813083          	ld	ra,24(sp)
    80006164:	01013403          	ld	s0,16(sp)
    80006168:	00813483          	ld	s1,8(sp)
    8000616c:	00013903          	ld	s2,0(sp)
    80006170:	02010113          	addi	sp,sp,32
    80006174:	00008067          	ret
    80006178:	01813083          	ld	ra,24(sp)
    8000617c:	01013403          	ld	s0,16(sp)
    80006180:	00813483          	ld	s1,8(sp)
    80006184:	00013903          	ld	s2,0(sp)
    80006188:	00000513          	li	a0,0
    8000618c:	02010113          	addi	sp,sp,32
    80006190:	00008067          	ret
	...
