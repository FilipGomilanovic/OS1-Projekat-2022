
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	91813103          	ld	sp,-1768(sp) # 80005918 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	765010ef          	jal	ra,80001f80 <start>

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
    80001084:	29d000ef          	jal	ra,80001b20 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001138:	fd4080e7          	jalr	-44(ra) # 80004108 <__mem_alloc>
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
    80001160:	ee0080e7          	jalr	-288(ra) # 8000403c <__mem_free>
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
    800011a4:	8e8080e7          	jalr	-1816(ra) # 80001a88 <_Znam>
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

00000000800011e4 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800011e4:	fe010113          	addi	sp,sp,-32
    800011e8:	00113c23          	sd	ra,24(sp)
    800011ec:	00813823          	sd	s0,16(sp)
    800011f0:	00913423          	sd	s1,8(sp)
    800011f4:	01213023          	sd	s2,0(sp)
    800011f8:	02010413          	addi	s0,sp,32
    800011fc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001200:	00100793          	li	a5,1
    80001204:	02a7f863          	bgeu	a5,a0,80001234 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001208:	00a00793          	li	a5,10
    8000120c:	02f577b3          	remu	a5,a0,a5
    80001210:	02078e63          	beqz	a5,8000124c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001214:	fff48513          	addi	a0,s1,-1
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	fcc080e7          	jalr	-52(ra) # 800011e4 <_ZL9fibonaccim>
    80001220:	00050913          	mv	s2,a0
    80001224:	ffe48513          	addi	a0,s1,-2
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	fbc080e7          	jalr	-68(ra) # 800011e4 <_ZL9fibonaccim>
    80001230:	00a90533          	add	a0,s2,a0
}
    80001234:	01813083          	ld	ra,24(sp)
    80001238:	01013403          	ld	s0,16(sp)
    8000123c:	00813483          	ld	s1,8(sp)
    80001240:	00013903          	ld	s2,0(sp)
    80001244:	02010113          	addi	sp,sp,32
    80001248:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	738080e7          	jalr	1848(ra) # 80001984 <_ZN3TCB5yieldEv>
    80001254:	fc1ff06f          	j	80001214 <_ZL9fibonaccim+0x30>

0000000080001258 <_Z11workerBodyAPv>:
{
    80001258:	fe010113          	addi	sp,sp,-32
    8000125c:	00113c23          	sd	ra,24(sp)
    80001260:	00813823          	sd	s0,16(sp)
    80001264:	00913423          	sd	s1,8(sp)
    80001268:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000126c:	00000493          	li	s1,0
    80001270:	0300006f          	j	800012a0 <_Z11workerBodyAPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001274:	00168693          	addi	a3,a3,1
    80001278:	000027b7          	lui	a5,0x2
    8000127c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001280:	00d7ee63          	bltu	a5,a3,8000129c <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 3000; k++)
    80001284:	00000713          	li	a4,0
    80001288:	000017b7          	lui	a5,0x1
    8000128c:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80001290:	fee7e2e3          	bltu	a5,a4,80001274 <_Z11workerBodyAPv+0x1c>
    80001294:	00170713          	addi	a4,a4,1
    80001298:	ff1ff06f          	j	80001288 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++)
    8000129c:	00148493          	addi	s1,s1,1
    800012a0:	00900793          	li	a5,9
    800012a4:	0297ec63          	bltu	a5,s1,800012dc <_Z11workerBodyAPv+0x84>
        printString("A: i=");
    800012a8:	00004517          	auipc	a0,0x4
    800012ac:	d5850513          	addi	a0,a0,-680 # 80005000 <kvmincrease+0xc80>
    800012b0:	00001097          	auipc	ra,0x1
    800012b4:	ba4080e7          	jalr	-1116(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    800012b8:	00048513          	mv	a0,s1
    800012bc:	00001097          	auipc	ra,0x1
    800012c0:	c08080e7          	jalr	-1016(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    800012c4:	00004517          	auipc	a0,0x4
    800012c8:	efc50513          	addi	a0,a0,-260 # 800051c0 <kvmincrease+0xe40>
    800012cc:	00001097          	auipc	ra,0x1
    800012d0:	b88080e7          	jalr	-1144(ra) # 80001e54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012d4:	00000693          	li	a3,0
    800012d8:	fa1ff06f          	j	80001278 <_Z11workerBodyAPv+0x20>
}
    800012dc:	01813083          	ld	ra,24(sp)
    800012e0:	01013403          	ld	s0,16(sp)
    800012e4:	00813483          	ld	s1,8(sp)
    800012e8:	02010113          	addi	sp,sp,32
    800012ec:	00008067          	ret

00000000800012f0 <_Z11workerBodyBPv>:
{
    800012f0:	fe010113          	addi	sp,sp,-32
    800012f4:	00113c23          	sd	ra,24(sp)
    800012f8:	00813823          	sd	s0,16(sp)
    800012fc:	00913423          	sd	s1,8(sp)
    80001300:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001304:	00000493          	li	s1,0
    80001308:	0300006f          	j	80001338 <_Z11workerBodyBPv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000130c:	00168693          	addi	a3,a3,1
    80001310:	000027b7          	lui	a5,0x2
    80001314:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001318:	00d7ee63          	bltu	a5,a3,80001334 <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 3000; k++)
    8000131c:	00000713          	li	a4,0
    80001320:	000017b7          	lui	a5,0x1
    80001324:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80001328:	fee7e2e3          	bltu	a5,a4,8000130c <_Z11workerBodyBPv+0x1c>
    8000132c:	00170713          	addi	a4,a4,1
    80001330:	ff1ff06f          	j	80001320 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001334:	00148493          	addi	s1,s1,1
    80001338:	00f00793          	li	a5,15
    8000133c:	0297ec63          	bltu	a5,s1,80001374 <_Z11workerBodyBPv+0x84>
        printString("B: i=");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	cc850513          	addi	a0,a0,-824 # 80005008 <kvmincrease+0xc88>
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	b0c080e7          	jalr	-1268(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    80001350:	00048513          	mv	a0,s1
    80001354:	00001097          	auipc	ra,0x1
    80001358:	b70080e7          	jalr	-1168(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    8000135c:	00004517          	auipc	a0,0x4
    80001360:	e6450513          	addi	a0,a0,-412 # 800051c0 <kvmincrease+0xe40>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	af0080e7          	jalr	-1296(ra) # 80001e54 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000136c:	00000693          	li	a3,0
    80001370:	fa1ff06f          	j	80001310 <_Z11workerBodyBPv+0x20>
}
    80001374:	01813083          	ld	ra,24(sp)
    80001378:	01013403          	ld	s0,16(sp)
    8000137c:	00813483          	ld	s1,8(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret

0000000080001388 <_Z11workerBodyCPv>:

void workerBodyC(void* arg)
{
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	01213023          	sd	s2,0(sp)
    8000139c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013a0:	00000493          	li	s1,0
    800013a4:	0380006f          	j	800013dc <_Z11workerBodyCPv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800013a8:	00004517          	auipc	a0,0x4
    800013ac:	c6850513          	addi	a0,a0,-920 # 80005010 <kvmincrease+0xc90>
    800013b0:	00001097          	auipc	ra,0x1
    800013b4:	aa4080e7          	jalr	-1372(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    800013b8:	00048513          	mv	a0,s1
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	b08080e7          	jalr	-1272(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    800013c4:	00004517          	auipc	a0,0x4
    800013c8:	dfc50513          	addi	a0,a0,-516 # 800051c0 <kvmincrease+0xe40>
    800013cc:	00001097          	auipc	ra,0x1
    800013d0:	a88080e7          	jalr	-1400(ra) # 80001e54 <_Z11printStringPKc>
    for (; i < 3; i++)
    800013d4:	0014849b          	addiw	s1,s1,1
    800013d8:	0ff4f493          	andi	s1,s1,255
    800013dc:	00200793          	li	a5,2
    800013e0:	fc97f4e3          	bgeu	a5,s1,800013a8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: yield\n");
    800013e4:	00004517          	auipc	a0,0x4
    800013e8:	c3450513          	addi	a0,a0,-972 # 80005018 <kvmincrease+0xc98>
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	a68080e7          	jalr	-1432(ra) # 80001e54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013f4:	00700313          	li	t1,7
    TCB::yield();
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	58c080e7          	jalr	1420(ra) # 80001984 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001400:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001404:	00004517          	auipc	a0,0x4
    80001408:	c2450513          	addi	a0,a0,-988 # 80005028 <kvmincrease+0xca8>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	a48080e7          	jalr	-1464(ra) # 80001e54 <_Z11printStringPKc>
    printInteger(t1);
    80001414:	00090513          	mv	a0,s2
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	aac080e7          	jalr	-1364(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001420:	00004517          	auipc	a0,0x4
    80001424:	da050513          	addi	a0,a0,-608 # 800051c0 <kvmincrease+0xe40>
    80001428:	00001097          	auipc	ra,0x1
    8000142c:	a2c080e7          	jalr	-1492(ra) # 80001e54 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001430:	00c00513          	li	a0,12
    80001434:	00000097          	auipc	ra,0x0
    80001438:	db0080e7          	jalr	-592(ra) # 800011e4 <_ZL9fibonaccim>
    8000143c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	bf050513          	addi	a0,a0,-1040 # 80005030 <kvmincrease+0xcb0>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	a0c080e7          	jalr	-1524(ra) # 80001e54 <_Z11printStringPKc>
    printInteger(result);
    80001450:	00090513          	mv	a0,s2
    80001454:	00001097          	auipc	ra,0x1
    80001458:	a70080e7          	jalr	-1424(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	d6450513          	addi	a0,a0,-668 # 800051c0 <kvmincrease+0xe40>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	9f0080e7          	jalr	-1552(ra) # 80001e54 <_Z11printStringPKc>
    8000146c:	0380006f          	j	800014a4 <_Z11workerBodyCPv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001470:	00004517          	auipc	a0,0x4
    80001474:	ba050513          	addi	a0,a0,-1120 # 80005010 <kvmincrease+0xc90>
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	9dc080e7          	jalr	-1572(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    80001480:	00048513          	mv	a0,s1
    80001484:	00001097          	auipc	ra,0x1
    80001488:	a40080e7          	jalr	-1472(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	d3450513          	addi	a0,a0,-716 # 800051c0 <kvmincrease+0xe40>
    80001494:	00001097          	auipc	ra,0x1
    80001498:	9c0080e7          	jalr	-1600(ra) # 80001e54 <_Z11printStringPKc>
    for (; i < 6; i++)
    8000149c:	0014849b          	addiw	s1,s1,1
    800014a0:	0ff4f493          	andi	s1,s1,255
    800014a4:	00500793          	li	a5,5
    800014a8:	fc97f4e3          	bgeu	a5,s1,80001470 <_Z11workerBodyCPv+0xe8>
    }
//    TCB::yield();
}
    800014ac:	01813083          	ld	ra,24(sp)
    800014b0:	01013403          	ld	s0,16(sp)
    800014b4:	00813483          	ld	s1,8(sp)
    800014b8:	00013903          	ld	s2,0(sp)
    800014bc:	02010113          	addi	sp,sp,32
    800014c0:	00008067          	ret

00000000800014c4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg)
{
    800014c4:	fe010113          	addi	sp,sp,-32
    800014c8:	00113c23          	sd	ra,24(sp)
    800014cc:	00813823          	sd	s0,16(sp)
    800014d0:	00913423          	sd	s1,8(sp)
    800014d4:	01213023          	sd	s2,0(sp)
    800014d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800014dc:	00a00493          	li	s1,10
    800014e0:	0380006f          	j	80001518 <_Z11workerBodyDPv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800014e4:	00004517          	auipc	a0,0x4
    800014e8:	b5c50513          	addi	a0,a0,-1188 # 80005040 <kvmincrease+0xcc0>
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	968080e7          	jalr	-1688(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    800014f4:	00048513          	mv	a0,s1
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	9cc080e7          	jalr	-1588(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    80001500:	00004517          	auipc	a0,0x4
    80001504:	cc050513          	addi	a0,a0,-832 # 800051c0 <kvmincrease+0xe40>
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	94c080e7          	jalr	-1716(ra) # 80001e54 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001510:	0014849b          	addiw	s1,s1,1
    80001514:	0ff4f493          	andi	s1,s1,255
    80001518:	00c00793          	li	a5,12
    8000151c:	fc97f4e3          	bgeu	a5,s1,800014e4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: yield\n");
    80001520:	00004517          	auipc	a0,0x4
    80001524:	b2850513          	addi	a0,a0,-1240 # 80005048 <kvmincrease+0xcc8>
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	92c080e7          	jalr	-1748(ra) # 80001e54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001530:	00500313          	li	t1,5
    TCB::yield();
    80001534:	00000097          	auipc	ra,0x0
    80001538:	450080e7          	jalr	1104(ra) # 80001984 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000153c:	01000513          	li	a0,16
    80001540:	00000097          	auipc	ra,0x0
    80001544:	ca4080e7          	jalr	-860(ra) # 800011e4 <_ZL9fibonaccim>
    80001548:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000154c:	00004517          	auipc	a0,0x4
    80001550:	b0c50513          	addi	a0,a0,-1268 # 80005058 <kvmincrease+0xcd8>
    80001554:	00001097          	auipc	ra,0x1
    80001558:	900080e7          	jalr	-1792(ra) # 80001e54 <_Z11printStringPKc>
    printInteger(result);
    8000155c:	00090513          	mv	a0,s2
    80001560:	00001097          	auipc	ra,0x1
    80001564:	964080e7          	jalr	-1692(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	c5850513          	addi	a0,a0,-936 # 800051c0 <kvmincrease+0xe40>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	8e4080e7          	jalr	-1820(ra) # 80001e54 <_Z11printStringPKc>
    80001578:	0380006f          	j	800015b0 <_Z11workerBodyDPv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	ac450513          	addi	a0,a0,-1340 # 80005040 <kvmincrease+0xcc0>
    80001584:	00001097          	auipc	ra,0x1
    80001588:	8d0080e7          	jalr	-1840(ra) # 80001e54 <_Z11printStringPKc>
        printInteger(i);
    8000158c:	00048513          	mv	a0,s1
    80001590:	00001097          	auipc	ra,0x1
    80001594:	934080e7          	jalr	-1740(ra) # 80001ec4 <_Z12printIntegerm>
        printString("\n");
    80001598:	00004517          	auipc	a0,0x4
    8000159c:	c2850513          	addi	a0,a0,-984 # 800051c0 <kvmincrease+0xe40>
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	8b4080e7          	jalr	-1868(ra) # 80001e54 <_Z11printStringPKc>
    for (; i < 16; i++)
    800015a8:	0014849b          	addiw	s1,s1,1
    800015ac:	0ff4f493          	andi	s1,s1,255
    800015b0:	00f00793          	li	a5,15
    800015b4:	fc97f4e3          	bgeu	a5,s1,8000157c <_Z11workerBodyDPv+0xb8>
    }
//    TCB::yield();
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	00013903          	ld	s2,0(sp)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00008067          	ret

00000000800015d0 <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

int main()
{
    800015d0:	fb010113          	addi	sp,sp,-80
    800015d4:	04113423          	sd	ra,72(sp)
    800015d8:	04813023          	sd	s0,64(sp)
    800015dc:	02913c23          	sd	s1,56(sp)
    800015e0:	03213823          	sd	s2,48(sp)
    800015e4:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015e8:	00004797          	auipc	a5,0x4
    800015ec:	3207b783          	ld	a5,800(a5) # 80005908 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015f0:	10579073          	csrw	stvec,a5
    TCB *threads[5];

    thread_create(&threads[0], nullptr, nullptr);
    800015f4:	00000613          	li	a2,0
    800015f8:	00000593          	li	a1,0
    800015fc:	fb840513          	addi	a0,s0,-72
    80001600:	00000097          	auipc	ra,0x0
    80001604:	b74080e7          	jalr	-1164(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = threads[0];
    80001608:	fb843703          	ld	a4,-72(s0)
    8000160c:	00004797          	auipc	a5,0x4
    80001610:	31c7b783          	ld	a5,796(a5) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001614:	00e7b023          	sd	a4,0(a5)
    printString("Adresa koja je u threads[0] (handle) :   ");
    80001618:	00004517          	auipc	a0,0x4
    8000161c:	a5050513          	addi	a0,a0,-1456 # 80005068 <kvmincrease+0xce8>
    80001620:	00001097          	auipc	ra,0x1
    80001624:	834080e7          	jalr	-1996(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(*(threads[0])));
    80001628:	fb843503          	ld	a0,-72(s0)
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	898080e7          	jalr	-1896(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001634:	00004517          	auipc	a0,0x4
    80001638:	b8c50513          	addi	a0,a0,-1140 # 800051c0 <kvmincrease+0xe40>
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	818080e7          	jalr	-2024(ra) # 80001e54 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyA, nullptr);
    80001644:	00000613          	li	a2,0
    80001648:	00004597          	auipc	a1,0x4
    8000164c:	2d85b583          	ld	a1,728(a1) # 80005920 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001650:	fc040513          	addi	a0,s0,-64
    80001654:	00000097          	auipc	ra,0x0
    80001658:	b20080e7          	jalr	-1248(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Adresa koja je u threads[1] (handle) :   ");
    8000165c:	00004517          	auipc	a0,0x4
    80001660:	a3c50513          	addi	a0,a0,-1476 # 80005098 <kvmincrease+0xd18>
    80001664:	00000097          	auipc	ra,0x0
    80001668:	7f0080e7          	jalr	2032(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(*(threads[1])));
    8000166c:	fc043503          	ld	a0,-64(s0)
    80001670:	00001097          	auipc	ra,0x1
    80001674:	854080e7          	jalr	-1964(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001678:	00004517          	auipc	a0,0x4
    8000167c:	b4850513          	addi	a0,a0,-1208 # 800051c0 <kvmincrease+0xe40>
    80001680:	00000097          	auipc	ra,0x0
    80001684:	7d4080e7          	jalr	2004(ra) # 80001e54 <_Z11printStringPKc>
    printString("ThreadA created\n");
    80001688:	00004517          	auipc	a0,0x4
    8000168c:	a4050513          	addi	a0,a0,-1472 # 800050c8 <kvmincrease+0xd48>
    80001690:	00000097          	auipc	ra,0x0
    80001694:	7c4080e7          	jalr	1988(ra) # 80001e54 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyB, nullptr);
    80001698:	00000613          	li	a2,0
    8000169c:	00004597          	auipc	a1,0x4
    800016a0:	2945b583          	ld	a1,660(a1) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016a4:	fc840513          	addi	a0,s0,-56
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	acc080e7          	jalr	-1332(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Adresa koja je u threads[2] (handle) :   ");
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	a3050513          	addi	a0,a0,-1488 # 800050e0 <kvmincrease+0xd60>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	79c080e7          	jalr	1948(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(*(threads[2])));
    800016c0:	fc843503          	ld	a0,-56(s0)
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	800080e7          	jalr	-2048(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    800016cc:	00004517          	auipc	a0,0x4
    800016d0:	af450513          	addi	a0,a0,-1292 # 800051c0 <kvmincrease+0xe40>
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	780080e7          	jalr	1920(ra) # 80001e54 <_Z11printStringPKc>
    printString("ThreadB created\n");
    800016dc:	00004517          	auipc	a0,0x4
    800016e0:	a3450513          	addi	a0,a0,-1484 # 80005110 <kvmincrease+0xd90>
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	770080e7          	jalr	1904(ra) # 80001e54 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyC, nullptr);
    800016ec:	00000613          	li	a2,0
    800016f0:	00004597          	auipc	a1,0x4
    800016f4:	2105b583          	ld	a1,528(a1) # 80005900 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016f8:	fd040513          	addi	a0,s0,-48
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	a78080e7          	jalr	-1416(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Adresa koja je u threads[3] (handle) :   ");
    80001704:	00004517          	auipc	a0,0x4
    80001708:	a2450513          	addi	a0,a0,-1500 # 80005128 <kvmincrease+0xda8>
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	748080e7          	jalr	1864(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(*(threads[3])));
    80001714:	fd043503          	ld	a0,-48(s0)
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	7ac080e7          	jalr	1964(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001720:	00004517          	auipc	a0,0x4
    80001724:	aa050513          	addi	a0,a0,-1376 # 800051c0 <kvmincrease+0xe40>
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	72c080e7          	jalr	1836(ra) # 80001e54 <_Z11printStringPKc>
    printString("ThreadC created\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	a2850513          	addi	a0,a0,-1496 # 80005158 <kvmincrease+0xdd8>
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	71c080e7          	jalr	1820(ra) # 80001e54 <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyD, nullptr);
    80001740:	00000613          	li	a2,0
    80001744:	00004597          	auipc	a1,0x4
    80001748:	1f45b583          	ld	a1,500(a1) # 80005938 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000174c:	fd840513          	addi	a0,s0,-40
    80001750:	00000097          	auipc	ra,0x0
    80001754:	a24080e7          	jalr	-1500(ra) # 80001174 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Adresa koja je u threads[4] (handle) :   ");
    80001758:	00004517          	auipc	a0,0x4
    8000175c:	a1850513          	addi	a0,a0,-1512 # 80005170 <kvmincrease+0xdf0>
    80001760:	00000097          	auipc	ra,0x0
    80001764:	6f4080e7          	jalr	1780(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(*(threads[4])));
    80001768:	fd843503          	ld	a0,-40(s0)
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	758080e7          	jalr	1880(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001774:	00004517          	auipc	a0,0x4
    80001778:	a4c50513          	addi	a0,a0,-1460 # 800051c0 <kvmincrease+0xe40>
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	6d8080e7          	jalr	1752(ra) # 80001e54 <_Z11printStringPKc>
    printString("ThreadD created\n");
    80001784:	00004517          	auipc	a0,0x4
    80001788:	a1c50513          	addi	a0,a0,-1508 # 800051a0 <kvmincrease+0xe20>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	6c8080e7          	jalr	1736(ra) # 80001e54 <_Z11printStringPKc>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001794:	00200793          	li	a5,2
    80001798:	1007a073          	csrs	sstatus,a5
}
    8000179c:	00c0006f          	j	800017a8 <main+0x1d8>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	1e4080e7          	jalr	484(ra) # 80001984 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    800017a8:	fc043783          	ld	a5,-64(s0)
public:
    ~TCB() {
        delete[] stack;
    }

    bool isFinished() const { return finished; }
    800017ac:	0307c783          	lbu	a5,48(a5)
    800017b0:	fe0788e3          	beqz	a5,800017a0 <main+0x1d0>
             threads[2]->isFinished() &&
    800017b4:	fc843783          	ld	a5,-56(s0)
    800017b8:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800017bc:	fe0782e3          	beqz	a5,800017a0 <main+0x1d0>
             threads[3]->isFinished() &&
    800017c0:	fd043783          	ld	a5,-48(s0)
    800017c4:	0307c783          	lbu	a5,48(a5)
             threads[2]->isFinished() &&
    800017c8:	fc078ce3          	beqz	a5,800017a0 <main+0x1d0>
             threads[4]->isFinished()))
    800017cc:	fd843783          	ld	a5,-40(s0)
    800017d0:	0307c783          	lbu	a5,48(a5)
    while (!(threads[1]->isFinished() &&
    800017d4:	fc0786e3          	beqz	a5,800017a0 <main+0x1d0>
    800017d8:	fb840493          	addi	s1,s0,-72
    800017dc:	0140006f          	j	800017f0 <main+0x220>
    }

    for (auto &thread: threads)
    {
        delete thread;
    800017e0:	00090513          	mv	a0,s2
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	2cc080e7          	jalr	716(ra) # 80001ab0 <_ZdlPv>
    for (auto &thread: threads)
    800017ec:	00848493          	addi	s1,s1,8
    800017f0:	fe040793          	addi	a5,s0,-32
    800017f4:	02f48063          	beq	s1,a5,80001814 <main+0x244>
        delete thread;
    800017f8:	0004b903          	ld	s2,0(s1)
    800017fc:	fe0908e3          	beqz	s2,800017ec <main+0x21c>
        delete[] stack;
    80001800:	01093503          	ld	a0,16(s2)
    80001804:	fc050ee3          	beqz	a0,800017e0 <main+0x210>
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	2d0080e7          	jalr	720(ra) # 80001ad8 <_ZdaPv>
    80001810:	fd1ff06f          	j	800017e0 <main+0x210>
    }
    printString("Finished\n");
    80001814:	00004517          	auipc	a0,0x4
    80001818:	9a450513          	addi	a0,a0,-1628 # 800051b8 <kvmincrease+0xe38>
    8000181c:	00000097          	auipc	ra,0x0
    80001820:	638080e7          	jalr	1592(ra) # 80001e54 <_Z11printStringPKc>





}
    80001824:	00000513          	li	a0,0
    80001828:	04813083          	ld	ra,72(sp)
    8000182c:	04013403          	ld	s0,64(sp)
    80001830:	03813483          	ld	s1,56(sp)
    80001834:	03013903          	ld	s2,48(sp)
    80001838:	05010113          	addi	sp,sp,80
    8000183c:	00008067          	ret

0000000080001840 <_ZN3TCB12createThreadEPPS_PFvvEPvPm>:
TCB *TCB::running = nullptr;
int TCB::x = 0;
uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(TCB** handle, Body body, void* arg, uint64* stack_space)
{
    80001840:	fc010113          	addi	sp,sp,-64
    80001844:	02113c23          	sd	ra,56(sp)
    80001848:	02813823          	sd	s0,48(sp)
    8000184c:	02913423          	sd	s1,40(sp)
    80001850:	03213023          	sd	s2,32(sp)
    80001854:	01313c23          	sd	s3,24(sp)
    80001858:	01413823          	sd	s4,16(sp)
    8000185c:	01513423          	sd	s5,8(sp)
    80001860:	04010413          	addi	s0,sp,64
    80001864:	00050993          	mv	s3,a0
    80001868:	00058a13          	mv	s4,a1
    8000186c:	00060a93          	mv	s5,a2
    80001870:	00068913          	mv	s2,a3
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    80001874:	03800513          	li	a0,56
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	1e8080e7          	jalr	488(ra) # 80001a60 <_Znwm>
    80001880:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),

            finished(false)
    80001884:	01553023          	sd	s5,0(a0)
    80001888:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? stack_space : nullptr),
    8000188c:	040a0263          	beqz	s4,800018d0 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x90>
            finished(false)
    80001890:	0124b823          	sd	s2,16(s1)
    80001894:	00000797          	auipc	a5,0x0
    80001898:	10c78793          	addi	a5,a5,268 # 800019a0 <_ZN3TCB13threadWrapperEv>
    8000189c:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800018a0:	02090c63          	beqz	s2,800018d8 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x98>
    800018a4:	000086b7          	lui	a3,0x8
    800018a8:	00d90933          	add	s2,s2,a3
            finished(false)
    800018ac:	0324b023          	sd	s2,32(s1)
    800018b0:	00200793          	li	a5,2
    800018b4:	02f4b423          	sd	a5,40(s1)
    800018b8:	02048823          	sb	zero,48(s1)
    {
        if (body != nullptr) {
    800018bc:	020a0263          	beqz	s4,800018e0 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xa0>
            Scheduler::put(this);
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	4f0080e7          	jalr	1264(ra) # 80001db4 <_ZN9Scheduler3putEP3TCB>
    800018cc:	0140006f          	j	800018e0 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0xa0>
            stack(body != nullptr ? stack_space : nullptr),
    800018d0:	00000913          	li	s2,0
    800018d4:	fbdff06f          	j	80001890 <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x50>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800018d8:	00000913          	li	s2,0
    800018dc:	fd1ff06f          	j	800018ac <_ZN3TCB12createThreadEPPS_PFvvEPvPm+0x6c>
    800018e0:	0099b023          	sd	s1,0(s3)
    printString("handle iz createThread ");
    800018e4:	00004517          	auipc	a0,0x4
    800018e8:	8e450513          	addi	a0,a0,-1820 # 800051c8 <kvmincrease+0xe48>
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	568080e7          	jalr	1384(ra) # 80001e54 <_Z11printStringPKc>
    printInteger(x);
    800018f4:	00004497          	auipc	s1,0x4
    800018f8:	09c48493          	addi	s1,s1,156 # 80005990 <_ZN3TCB1xE>
    800018fc:	0004a503          	lw	a0,0(s1)
    80001900:	00000097          	auipc	ra,0x0
    80001904:	5c4080e7          	jalr	1476(ra) # 80001ec4 <_Z12printIntegerm>
    x++;
    80001908:	0004a783          	lw	a5,0(s1)
    8000190c:	0017879b          	addiw	a5,a5,1
    80001910:	00f4a023          	sw	a5,0(s1)
    printString(":                ");
    80001914:	00004517          	auipc	a0,0x4
    80001918:	8cc50513          	addi	a0,a0,-1844 # 800051e0 <kvmincrease+0xe60>
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	538080e7          	jalr	1336(ra) # 80001e54 <_Z11printStringPKc>
    printInteger((uint64)&(**handle));
    80001924:	0009b503          	ld	a0,0(s3)
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	59c080e7          	jalr	1436(ra) # 80001ec4 <_Z12printIntegerm>
    printString("\n");
    80001930:	00004517          	auipc	a0,0x4
    80001934:	89050513          	addi	a0,a0,-1904 # 800051c0 <kvmincrease+0xe40>
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	51c080e7          	jalr	1308(ra) # 80001e54 <_Z11printStringPKc>
    return *handle;
    80001940:	0009b503          	ld	a0,0(s3)
}
    80001944:	03813083          	ld	ra,56(sp)
    80001948:	03013403          	ld	s0,48(sp)
    8000194c:	02813483          	ld	s1,40(sp)
    80001950:	02013903          	ld	s2,32(sp)
    80001954:	01813983          	ld	s3,24(sp)
    80001958:	01013a03          	ld	s4,16(sp)
    8000195c:	00813a83          	ld	s5,8(sp)
    80001960:	04010113          	addi	sp,sp,64
    80001964:	00008067          	ret
    80001968:	00050913          	mv	s2,a0
    *handle = new TCB(body, TIME_SLICE, arg, stack_space);
    8000196c:	00048513          	mv	a0,s1
    80001970:	00000097          	auipc	ra,0x0
    80001974:	140080e7          	jalr	320(ra) # 80001ab0 <_ZdlPv>
    80001978:	00090513          	mv	a0,s2
    8000197c:	00005097          	auipc	ra,0x5
    80001980:	10c080e7          	jalr	268(ra) # 80006a88 <_Unwind_Resume>

0000000080001984 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001984:	ff010113          	addi	sp,sp,-16
    80001988:	00813423          	sd	s0,8(sp)
    8000198c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001990:	00000073          	ecall
}
    80001994:	00813403          	ld	s0,8(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800019a0:	fe010113          	addi	sp,sp,-32
    800019a4:	00113c23          	sd	ra,24(sp)
    800019a8:	00813823          	sd	s0,16(sp)
    800019ac:	00913423          	sd	s1,8(sp)
    800019b0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	14c080e7          	jalr	332(ra) # 80001b00 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800019bc:	00004497          	auipc	s1,0x4
    800019c0:	fd448493          	addi	s1,s1,-44 # 80005990 <_ZN3TCB1xE>
    800019c4:	0084b783          	ld	a5,8(s1)
    800019c8:	0087b783          	ld	a5,8(a5)
    800019cc:	000780e7          	jalr	a5
    running->setFinished(true);
    800019d0:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    800019d4:	00100713          	li	a4,1
    800019d8:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	fa8080e7          	jalr	-88(ra) # 80001984 <_ZN3TCB5yieldEv>
}
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret

00000000800019f8 <_ZN3TCB8dispatchEv>:
{
    800019f8:	fe010113          	addi	sp,sp,-32
    800019fc:	00113c23          	sd	ra,24(sp)
    80001a00:	00813823          	sd	s0,16(sp)
    80001a04:	00913423          	sd	s1,8(sp)
    80001a08:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a0c:	00004497          	auipc	s1,0x4
    80001a10:	f8c4b483          	ld	s1,-116(s1) # 80005998 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a14:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a18:	02078c63          	beqz	a5,80001a50 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	330080e7          	jalr	816(ra) # 80001d4c <_ZN9Scheduler3getEv>
    80001a24:	00004797          	auipc	a5,0x4
    80001a28:	f6a7ba23          	sd	a0,-140(a5) # 80005998 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a2c:	01850593          	addi	a1,a0,24
    80001a30:	01848513          	addi	a0,s1,24
    80001a34:	fffff097          	auipc	ra,0xfffff
    80001a38:	6dc080e7          	jalr	1756(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a3c:	01813083          	ld	ra,24(sp)
    80001a40:	01013403          	ld	s0,16(sp)
    80001a44:	00813483          	ld	s1,8(sp)
    80001a48:	02010113          	addi	sp,sp,32
    80001a4c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a50:	00048513          	mv	a0,s1
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	360080e7          	jalr	864(ra) # 80001db4 <_ZN9Scheduler3putEP3TCB>
    80001a5c:	fc1ff06f          	j	80001a1c <_ZN3TCB8dispatchEv+0x24>

0000000080001a60 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00113423          	sd	ra,8(sp)
    80001a68:	00813023          	sd	s0,0(sp)
    80001a6c:	01010413          	addi	s0,sp,16
//    printString("ALokacija + ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    80001a70:	00002097          	auipc	ra,0x2
    80001a74:	698080e7          	jalr	1688(ra) # 80004108 <__mem_alloc>
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_Znam>:

void *operator new[](size_t n)
{
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00113423          	sd	ra,8(sp)
    80001a90:	00813023          	sd	s0,0(sp)
    80001a94:	01010413          	addi	s0,sp,16
//    printString("Alokacija steka = ");
//    printInteger(n);
//    printString("\n");
    return __mem_alloc(n);
    80001a98:	00002097          	auipc	ra,0x2
    80001a9c:	670080e7          	jalr	1648(ra) # 80004108 <__mem_alloc>
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001ab0:	ff010113          	addi	sp,sp,-16
    80001ab4:	00113423          	sd	ra,8(sp)
    80001ab8:	00813023          	sd	s0,0(sp)
    80001abc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ac0:	00002097          	auipc	ra,0x2
    80001ac4:	57c080e7          	jalr	1404(ra) # 8000403c <__mem_free>
}
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ae8:	00002097          	auipc	ra,0x2
    80001aec:	554080e7          	jalr	1364(ra) # 8000403c <__mem_free>
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZN5Riscv10popSppSpieEv>:
#include "../h/print.hpp"
#include "../h/codes.h"
#include "../h/syscall_c.h"

void Riscv::popSppSpie()
{
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00813423          	sd	s0,8(sp)
    80001b08:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001b0c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001b10:	10200073          	sret
}
    80001b14:	00813403          	ld	s0,8(sp)
    80001b18:	01010113          	addi	sp,sp,16
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001b20:	f8010113          	addi	sp,sp,-128
    80001b24:	06113c23          	sd	ra,120(sp)
    80001b28:	06813823          	sd	s0,112(sp)
    80001b2c:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b30:	142027f3          	csrr	a5,scause
    80001b34:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001b38:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001b3c:	ff870693          	addi	a3,a4,-8
    80001b40:	00100793          	li	a5,1
    80001b44:	02d7f863          	bgeu	a5,a3,80001b74 <_ZN5Riscv20handleSupervisorTrapEv+0x54>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001b48:	fff00793          	li	a5,-1
    80001b4c:	03f79793          	slli	a5,a5,0x3f
    80001b50:	00178793          	addi	a5,a5,1
    80001b54:	14f70063          	beq	a4,a5,80001c94 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001b58:	fff00793          	li	a5,-1
    80001b5c:	03f79793          	slli	a5,a5,0x3f
    80001b60:	00978793          	addi	a5,a5,9
    80001b64:	12f71063          	bne	a4,a5,80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001b68:	00002097          	auipc	ra,0x2
    80001b6c:	76c080e7          	jalr	1900(ra) # 800042d4 <console_handler>
    }
    else
    {
        // unexpected trap cause
    }
    80001b70:	1140006f          	j	80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b74:	141027f3          	csrr	a5,sepc
    80001b78:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001b7c:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001b80:	00478793          	addi	a5,a5,4
    80001b84:	f8f43423          	sd	a5,-120(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b88:	100027f3          	csrr	a5,sstatus
    80001b8c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001b90:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001b94:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("ld t1, 8*10(fp)");
    80001b98:	05043303          	ld	t1,80(s0)
        __asm__ volatile("mv %0, t1" : "=r" (code));
    80001b9c:	00030793          	mv	a5,t1
        if (code == MemAlloc) {
    80001ba0:	00100713          	li	a4,1
    80001ba4:	0ce78863          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == MemFree) {
    80001ba8:	00200713          	li	a4,2
    80001bac:	0ce78463          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == ThreadCreate){
    80001bb0:	00b00713          	li	a4,11
    80001bb4:	08e78c63          	beq	a5,a4,80001c4c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        else if (code == ThreadExit){
    80001bb8:	00c00713          	li	a4,12
    80001bbc:	0ae78c63          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == ThreadDispatch){
    80001bc0:	00d00713          	li	a4,13
    80001bc4:	0ae78863          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == SemOpen){
    80001bc8:	01500713          	li	a4,21
    80001bcc:	0ae78463          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == SemClose){
    80001bd0:	01600713          	li	a4,22
    80001bd4:	0ae78063          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == SemWait){
    80001bd8:	01700713          	li	a4,23
    80001bdc:	08e78c63          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == SemSignal){
    80001be0:	01800713          	li	a4,24
    80001be4:	08e78863          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == TimeSleep){
    80001be8:	01f00713          	li	a4,31
    80001bec:	08e78463          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == GetC){
    80001bf0:	02900713          	li	a4,41
    80001bf4:	08e78063          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
        else if (code == PutC){
    80001bf8:	02a00713          	li	a4,42
    80001bfc:	06e78c63          	beq	a5,a4,80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c00:	141027f3          	csrr	a5,sepc
    80001c04:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c08:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc() + 4;
    80001c0c:	00478793          	addi	a5,a5,4
    80001c10:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c14:	100027f3          	csrr	a5,sstatus
    80001c18:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001c1c:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001c20:	faf43023          	sd	a5,-96(s0)
            TCB::timeSliceCounter = 0;
    80001c24:	00004797          	auipc	a5,0x4
    80001c28:	cec7b783          	ld	a5,-788(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c2c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	dc8080e7          	jalr	-568(ra) # 800019f8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001c38:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c3c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001c40:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c44:	14179073          	csrw	sepc,a5
}
    80001c48:	02c0006f          	j	80001c74 <_ZN5Riscv20handleSupervisorTrapEv+0x154>
            __asm__ volatile("ld t2, 8*11(fp)");
    80001c4c:	05843383          	ld	t2,88(s0)
            __asm__ volatile("mv %0, t2" : "=r" (handle));
    80001c50:	00038513          	mv	a0,t2
            __asm__ volatile("ld t1, 8*12(fp)");
    80001c54:	06043303          	ld	t1,96(s0)
            __asm__ volatile("mv %0, t1" : "=r" (start_routine));
    80001c58:	00030593          	mv	a1,t1
            __asm__ volatile("ld t1, 8*13(fp)");
    80001c5c:	06843303          	ld	t1,104(s0)
            __asm__ volatile("mv %0, t1" : "=r" (args));
    80001c60:	00030613          	mv	a2,t1
            __asm__ volatile("ld t1, 8*14(fp)");
    80001c64:	07043303          	ld	t1,112(s0)
            __asm__ volatile("mv %0, t1" : "=r" (stack));
    80001c68:	00030693          	mv	a3,t1
            TCB::createThread(handle, start_routine, args, stack);
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	bd4080e7          	jalr	-1068(ra) # 80001840 <_ZN3TCB12createThreadEPPS_PFvvEPvPm>
        w_sstatus(sstatus);
    80001c74:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c78:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001c7c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c80:	14179073          	csrw	sepc,a5
    80001c84:	07813083          	ld	ra,120(sp)
    80001c88:	07013403          	ld	s0,112(sp)
    80001c8c:	08010113          	addi	sp,sp,128
    80001c90:	00008067          	ret
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001c94:	00200793          	li	a5,2
    80001c98:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001c9c:	00004717          	auipc	a4,0x4
    80001ca0:	c7473703          	ld	a4,-908(a4) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ca4:	00073783          	ld	a5,0(a4)
    80001ca8:	00178793          	addi	a5,a5,1
    80001cac:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001cb0:	00004717          	auipc	a4,0x4
    80001cb4:	c7873703          	ld	a4,-904(a4) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cb8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001cbc:	02873703          	ld	a4,40(a4)
    80001cc0:	fce7e2e3          	bltu	a5,a4,80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cc4:	141027f3          	csrr	a5,sepc
    80001cc8:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001ccc:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80001cd0:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cd4:	100027f3          	csrr	a5,sstatus
    80001cd8:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001cdc:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80001ce0:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter = 0;
    80001ce4:	00004797          	auipc	a5,0x4
    80001ce8:	c2c7b783          	ld	a5,-980(a5) # 80005910 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001cec:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	d08080e7          	jalr	-760(ra) # 800019f8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001cf8:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cfc:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001d00:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d04:	14179073          	csrw	sepc,a5
}
    80001d08:	f7dff06f          	j	80001c84 <_ZN5Riscv20handleSupervisorTrapEv+0x164>

0000000080001d0c <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
//    printString("Zavrsen sedjuler");
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    80001d18:	00100793          	li	a5,1
    80001d1c:	00f50863          	beq	a0,a5,80001d2c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret
    80001d2c:	000107b7          	lui	a5,0x10
    80001d30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d34:	fef596e3          	bne	a1,a5,80001d20 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001d38:	00004797          	auipc	a5,0x4
    80001d3c:	c7078793          	addi	a5,a5,-912 # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    80001d40:	0007b023          	sd	zero,0(a5)
    80001d44:	0007b423          	sd	zero,8(a5)
    80001d48:	fd9ff06f          	j	80001d20 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001d4c <_ZN9Scheduler3getEv>:
{
    80001d4c:	fe010113          	addi	sp,sp,-32
    80001d50:	00113c23          	sd	ra,24(sp)
    80001d54:	00813823          	sd	s0,16(sp)
    80001d58:	00913423          	sd	s1,8(sp)
    80001d5c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001d60:	00004517          	auipc	a0,0x4
    80001d64:	c4853503          	ld	a0,-952(a0) # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    80001d68:	04050263          	beqz	a0,80001dac <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001d6c:	00853783          	ld	a5,8(a0)
    80001d70:	00004717          	auipc	a4,0x4
    80001d74:	c2f73c23          	sd	a5,-968(a4) # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001d78:	02078463          	beqz	a5,80001da0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001d7c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	d30080e7          	jalr	-720(ra) # 80001ab0 <_ZdlPv>
}
    80001d88:	00048513          	mv	a0,s1
    80001d8c:	01813083          	ld	ra,24(sp)
    80001d90:	01013403          	ld	s0,16(sp)
    80001d94:	00813483          	ld	s1,8(sp)
    80001d98:	02010113          	addi	sp,sp,32
    80001d9c:	00008067          	ret
        if (!head) { tail = 0; }
    80001da0:	00004797          	auipc	a5,0x4
    80001da4:	c007b823          	sd	zero,-1008(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001da8:	fd5ff06f          	j	80001d7c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001dac:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001db0:	fd9ff06f          	j	80001d88 <_ZN9Scheduler3getEv+0x3c>

0000000080001db4 <_ZN9Scheduler3putEP3TCB>:
{
    80001db4:	fe010113          	addi	sp,sp,-32
    80001db8:	00113c23          	sd	ra,24(sp)
    80001dbc:	00813823          	sd	s0,16(sp)
    80001dc0:	00913423          	sd	s1,8(sp)
    80001dc4:	02010413          	addi	s0,sp,32
    80001dc8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001dcc:	01000513          	li	a0,16
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	c90080e7          	jalr	-880(ra) # 80001a60 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001dd8:	00953023          	sd	s1,0(a0)
    80001ddc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001de0:	00004797          	auipc	a5,0x4
    80001de4:	bd07b783          	ld	a5,-1072(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001de8:	02078263          	beqz	a5,80001e0c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001dec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001df0:	00004797          	auipc	a5,0x4
    80001df4:	bca7b023          	sd	a0,-1088(a5) # 800059b0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001df8:	01813083          	ld	ra,24(sp)
    80001dfc:	01013403          	ld	s0,16(sp)
    80001e00:	00813483          	ld	s1,8(sp)
    80001e04:	02010113          	addi	sp,sp,32
    80001e08:	00008067          	ret
            head = tail = elem;
    80001e0c:	00004797          	auipc	a5,0x4
    80001e10:	b9c78793          	addi	a5,a5,-1124 # 800059a8 <_ZN9Scheduler16readyThreadQueueE>
    80001e14:	00a7b423          	sd	a0,8(a5)
    80001e18:	00a7b023          	sd	a0,0(a5)
    80001e1c:	fddff06f          	j	80001df8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001e20 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    80001e30:	000105b7          	lui	a1,0x10
    80001e34:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001e38:	00100513          	li	a0,1
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	ed0080e7          	jalr	-304(ra) # 80001d0c <_Z41__static_initialization_and_destruction_0ii>
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret

0000000080001e54 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001e54:	fd010113          	addi	sp,sp,-48
    80001e58:	02113423          	sd	ra,40(sp)
    80001e5c:	02813023          	sd	s0,32(sp)
    80001e60:	00913c23          	sd	s1,24(sp)
    80001e64:	01213823          	sd	s2,16(sp)
    80001e68:	03010413          	addi	s0,sp,48
    80001e6c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e70:	100027f3          	csrr	a5,sstatus
    80001e74:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001e78:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e7c:	00200793          	li	a5,2
    80001e80:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001e84:	0004c503          	lbu	a0,0(s1)
    80001e88:	00050a63          	beqz	a0,80001e9c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001e8c:	00002097          	auipc	ra,0x2
    80001e90:	3d4080e7          	jalr	980(ra) # 80004260 <__putc>
        string++;
    80001e94:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e98:	fedff06f          	j	80001e84 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001e9c:	0009091b          	sext.w	s2,s2
    80001ea0:	00297913          	andi	s2,s2,2
    80001ea4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ea8:	10092073          	csrs	sstatus,s2
}
    80001eac:	02813083          	ld	ra,40(sp)
    80001eb0:	02013403          	ld	s0,32(sp)
    80001eb4:	01813483          	ld	s1,24(sp)
    80001eb8:	01013903          	ld	s2,16(sp)
    80001ebc:	03010113          	addi	sp,sp,48
    80001ec0:	00008067          	ret

0000000080001ec4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001ec4:	fc010113          	addi	sp,sp,-64
    80001ec8:	02113c23          	sd	ra,56(sp)
    80001ecc:	02813823          	sd	s0,48(sp)
    80001ed0:	02913423          	sd	s1,40(sp)
    80001ed4:	03213023          	sd	s2,32(sp)
    80001ed8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001edc:	100027f3          	csrr	a5,sstatus
    80001ee0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001ee4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ee8:	00200793          	li	a5,2
    80001eec:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001ef0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001ef4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001ef8:	00a00613          	li	a2,10
    80001efc:	02c5773b          	remuw	a4,a0,a2
    80001f00:	02071693          	slli	a3,a4,0x20
    80001f04:	0206d693          	srli	a3,a3,0x20
    80001f08:	00003717          	auipc	a4,0x3
    80001f0c:	2f070713          	addi	a4,a4,752 # 800051f8 <_ZZ12printIntegermE6digits>
    80001f10:	00d70733          	add	a4,a4,a3
    80001f14:	00074703          	lbu	a4,0(a4)
    80001f18:	fe040693          	addi	a3,s0,-32
    80001f1c:	009687b3          	add	a5,a3,s1
    80001f20:	0014849b          	addiw	s1,s1,1
    80001f24:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001f28:	0005071b          	sext.w	a4,a0
    80001f2c:	02c5553b          	divuw	a0,a0,a2
    80001f30:	00900793          	li	a5,9
    80001f34:	fce7e2e3          	bltu	a5,a4,80001ef8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001f38:	fff4849b          	addiw	s1,s1,-1
    80001f3c:	0004ce63          	bltz	s1,80001f58 <_Z12printIntegerm+0x94>
    80001f40:	fe040793          	addi	a5,s0,-32
    80001f44:	009787b3          	add	a5,a5,s1
    80001f48:	ff07c503          	lbu	a0,-16(a5)
    80001f4c:	00002097          	auipc	ra,0x2
    80001f50:	314080e7          	jalr	788(ra) # 80004260 <__putc>
    80001f54:	fe5ff06f          	j	80001f38 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001f58:	0009091b          	sext.w	s2,s2
    80001f5c:	00297913          	andi	s2,s2,2
    80001f60:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f64:	10092073          	csrs	sstatus,s2
    80001f68:	03813083          	ld	ra,56(sp)
    80001f6c:	03013403          	ld	s0,48(sp)
    80001f70:	02813483          	ld	s1,40(sp)
    80001f74:	02013903          	ld	s2,32(sp)
    80001f78:	04010113          	addi	sp,sp,64
    80001f7c:	00008067          	ret

0000000080001f80 <start>:
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00813423          	sd	s0,8(sp)
    80001f88:	01010413          	addi	s0,sp,16
    80001f8c:	300027f3          	csrr	a5,mstatus
    80001f90:	ffffe737          	lui	a4,0xffffe
    80001f94:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7bcf>
    80001f98:	00e7f7b3          	and	a5,a5,a4
    80001f9c:	00001737          	lui	a4,0x1
    80001fa0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001fa4:	00e7e7b3          	or	a5,a5,a4
    80001fa8:	30079073          	csrw	mstatus,a5
    80001fac:	00000797          	auipc	a5,0x0
    80001fb0:	16078793          	addi	a5,a5,352 # 8000210c <system_main>
    80001fb4:	34179073          	csrw	mepc,a5
    80001fb8:	00000793          	li	a5,0
    80001fbc:	18079073          	csrw	satp,a5
    80001fc0:	000107b7          	lui	a5,0x10
    80001fc4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001fc8:	30279073          	csrw	medeleg,a5
    80001fcc:	30379073          	csrw	mideleg,a5
    80001fd0:	104027f3          	csrr	a5,sie
    80001fd4:	2227e793          	ori	a5,a5,546
    80001fd8:	10479073          	csrw	sie,a5
    80001fdc:	fff00793          	li	a5,-1
    80001fe0:	00a7d793          	srli	a5,a5,0xa
    80001fe4:	3b079073          	csrw	pmpaddr0,a5
    80001fe8:	00f00793          	li	a5,15
    80001fec:	3a079073          	csrw	pmpcfg0,a5
    80001ff0:	f14027f3          	csrr	a5,mhartid
    80001ff4:	0200c737          	lui	a4,0x200c
    80001ff8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ffc:	0007869b          	sext.w	a3,a5
    80002000:	00269713          	slli	a4,a3,0x2
    80002004:	000f4637          	lui	a2,0xf4
    80002008:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000200c:	00d70733          	add	a4,a4,a3
    80002010:	0037979b          	slliw	a5,a5,0x3
    80002014:	020046b7          	lui	a3,0x2004
    80002018:	00d787b3          	add	a5,a5,a3
    8000201c:	00c585b3          	add	a1,a1,a2
    80002020:	00371693          	slli	a3,a4,0x3
    80002024:	00004717          	auipc	a4,0x4
    80002028:	99c70713          	addi	a4,a4,-1636 # 800059c0 <timer_scratch>
    8000202c:	00b7b023          	sd	a1,0(a5)
    80002030:	00d70733          	add	a4,a4,a3
    80002034:	00f73c23          	sd	a5,24(a4)
    80002038:	02c73023          	sd	a2,32(a4)
    8000203c:	34071073          	csrw	mscratch,a4
    80002040:	00000797          	auipc	a5,0x0
    80002044:	6e078793          	addi	a5,a5,1760 # 80002720 <timervec>
    80002048:	30579073          	csrw	mtvec,a5
    8000204c:	300027f3          	csrr	a5,mstatus
    80002050:	0087e793          	ori	a5,a5,8
    80002054:	30079073          	csrw	mstatus,a5
    80002058:	304027f3          	csrr	a5,mie
    8000205c:	0807e793          	ori	a5,a5,128
    80002060:	30479073          	csrw	mie,a5
    80002064:	f14027f3          	csrr	a5,mhartid
    80002068:	0007879b          	sext.w	a5,a5
    8000206c:	00078213          	mv	tp,a5
    80002070:	30200073          	mret
    80002074:	00813403          	ld	s0,8(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <timerinit>:
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
    8000208c:	f14027f3          	csrr	a5,mhartid
    80002090:	0200c737          	lui	a4,0x200c
    80002094:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002098:	0007869b          	sext.w	a3,a5
    8000209c:	00269713          	slli	a4,a3,0x2
    800020a0:	000f4637          	lui	a2,0xf4
    800020a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020a8:	00d70733          	add	a4,a4,a3
    800020ac:	0037979b          	slliw	a5,a5,0x3
    800020b0:	020046b7          	lui	a3,0x2004
    800020b4:	00d787b3          	add	a5,a5,a3
    800020b8:	00c585b3          	add	a1,a1,a2
    800020bc:	00371693          	slli	a3,a4,0x3
    800020c0:	00004717          	auipc	a4,0x4
    800020c4:	90070713          	addi	a4,a4,-1792 # 800059c0 <timer_scratch>
    800020c8:	00b7b023          	sd	a1,0(a5)
    800020cc:	00d70733          	add	a4,a4,a3
    800020d0:	00f73c23          	sd	a5,24(a4)
    800020d4:	02c73023          	sd	a2,32(a4)
    800020d8:	34071073          	csrw	mscratch,a4
    800020dc:	00000797          	auipc	a5,0x0
    800020e0:	64478793          	addi	a5,a5,1604 # 80002720 <timervec>
    800020e4:	30579073          	csrw	mtvec,a5
    800020e8:	300027f3          	csrr	a5,mstatus
    800020ec:	0087e793          	ori	a5,a5,8
    800020f0:	30079073          	csrw	mstatus,a5
    800020f4:	304027f3          	csrr	a5,mie
    800020f8:	0807e793          	ori	a5,a5,128
    800020fc:	30479073          	csrw	mie,a5
    80002100:	00813403          	ld	s0,8(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <system_main>:
    8000210c:	fe010113          	addi	sp,sp,-32
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	00113c23          	sd	ra,24(sp)
    8000211c:	02010413          	addi	s0,sp,32
    80002120:	00000097          	auipc	ra,0x0
    80002124:	0c4080e7          	jalr	196(ra) # 800021e4 <cpuid>
    80002128:	00004497          	auipc	s1,0x4
    8000212c:	83848493          	addi	s1,s1,-1992 # 80005960 <started>
    80002130:	02050263          	beqz	a0,80002154 <system_main+0x48>
    80002134:	0004a783          	lw	a5,0(s1)
    80002138:	0007879b          	sext.w	a5,a5
    8000213c:	fe078ce3          	beqz	a5,80002134 <system_main+0x28>
    80002140:	0ff0000f          	fence
    80002144:	00003517          	auipc	a0,0x3
    80002148:	0f450513          	addi	a0,a0,244 # 80005238 <_ZZ12printIntegermE6digits+0x40>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	a70080e7          	jalr	-1424(ra) # 80002bbc <panic>
    80002154:	00001097          	auipc	ra,0x1
    80002158:	9c4080e7          	jalr	-1596(ra) # 80002b18 <consoleinit>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	150080e7          	jalr	336(ra) # 800032ac <printfinit>
    80002164:	00003517          	auipc	a0,0x3
    80002168:	05c50513          	addi	a0,a0,92 # 800051c0 <kvmincrease+0xe40>
    8000216c:	00001097          	auipc	ra,0x1
    80002170:	aac080e7          	jalr	-1364(ra) # 80002c18 <__printf>
    80002174:	00003517          	auipc	a0,0x3
    80002178:	09450513          	addi	a0,a0,148 # 80005208 <_ZZ12printIntegermE6digits+0x10>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	a9c080e7          	jalr	-1380(ra) # 80002c18 <__printf>
    80002184:	00003517          	auipc	a0,0x3
    80002188:	03c50513          	addi	a0,a0,60 # 800051c0 <kvmincrease+0xe40>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	a8c080e7          	jalr	-1396(ra) # 80002c18 <__printf>
    80002194:	00001097          	auipc	ra,0x1
    80002198:	4a4080e7          	jalr	1188(ra) # 80003638 <kinit>
    8000219c:	00000097          	auipc	ra,0x0
    800021a0:	148080e7          	jalr	328(ra) # 800022e4 <trapinit>
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	16c080e7          	jalr	364(ra) # 80002310 <trapinithart>
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	5b4080e7          	jalr	1460(ra) # 80002760 <plicinit>
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	5d4080e7          	jalr	1492(ra) # 80002788 <plicinithart>
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	078080e7          	jalr	120(ra) # 80002234 <userinit>
    800021c4:	0ff0000f          	fence
    800021c8:	00100793          	li	a5,1
    800021cc:	00003517          	auipc	a0,0x3
    800021d0:	05450513          	addi	a0,a0,84 # 80005220 <_ZZ12printIntegermE6digits+0x28>
    800021d4:	00f4a023          	sw	a5,0(s1)
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	a40080e7          	jalr	-1472(ra) # 80002c18 <__printf>
    800021e0:	0000006f          	j	800021e0 <system_main+0xd4>

00000000800021e4 <cpuid>:
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16
    800021f0:	00020513          	mv	a0,tp
    800021f4:	00813403          	ld	s0,8(sp)
    800021f8:	0005051b          	sext.w	a0,a0
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <mycpu>:
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    80002210:	00020793          	mv	a5,tp
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	0007879b          	sext.w	a5,a5
    8000221c:	00779793          	slli	a5,a5,0x7
    80002220:	00004517          	auipc	a0,0x4
    80002224:	7d050513          	addi	a0,a0,2000 # 800069f0 <cpus>
    80002228:	00f50533          	add	a0,a0,a5
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <userinit>:
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00813403          	ld	s0,8(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	fffff317          	auipc	t1,0xfffff
    8000224c:	38830067          	jr	904(t1) # 800015d0 <main>

0000000080002250 <either_copyout>:
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	01010413          	addi	s0,sp,16
    80002260:	02051663          	bnez	a0,8000228c <either_copyout+0x3c>
    80002264:	00058513          	mv	a0,a1
    80002268:	00060593          	mv	a1,a2
    8000226c:	0006861b          	sext.w	a2,a3
    80002270:	00002097          	auipc	ra,0x2
    80002274:	c54080e7          	jalr	-940(ra) # 80003ec4 <__memmove>
    80002278:	00813083          	ld	ra,8(sp)
    8000227c:	00013403          	ld	s0,0(sp)
    80002280:	00000513          	li	a0,0
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret
    8000228c:	00003517          	auipc	a0,0x3
    80002290:	fd450513          	addi	a0,a0,-44 # 80005260 <_ZZ12printIntegermE6digits+0x68>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	928080e7          	jalr	-1752(ra) # 80002bbc <panic>

000000008000229c <either_copyin>:
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813023          	sd	s0,0(sp)
    800022a4:	00113423          	sd	ra,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	02059463          	bnez	a1,800022d4 <either_copyin+0x38>
    800022b0:	00060593          	mv	a1,a2
    800022b4:	0006861b          	sext.w	a2,a3
    800022b8:	00002097          	auipc	ra,0x2
    800022bc:	c0c080e7          	jalr	-1012(ra) # 80003ec4 <__memmove>
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	00000513          	li	a0,0
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret
    800022d4:	00003517          	auipc	a0,0x3
    800022d8:	fb450513          	addi	a0,a0,-76 # 80005288 <_ZZ12printIntegermE6digits+0x90>
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	8e0080e7          	jalr	-1824(ra) # 80002bbc <panic>

00000000800022e4 <trapinit>:
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	00003597          	auipc	a1,0x3
    800022f8:	fbc58593          	addi	a1,a1,-68 # 800052b0 <_ZZ12printIntegermE6digits+0xb8>
    800022fc:	00004517          	auipc	a0,0x4
    80002300:	77450513          	addi	a0,a0,1908 # 80006a70 <tickslock>
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00001317          	auipc	t1,0x1
    8000230c:	5c030067          	jr	1472(t1) # 800038c8 <initlock>

0000000080002310 <trapinithart>:
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00813423          	sd	s0,8(sp)
    80002318:	01010413          	addi	s0,sp,16
    8000231c:	00000797          	auipc	a5,0x0
    80002320:	2f478793          	addi	a5,a5,756 # 80002610 <kernelvec>
    80002324:	10579073          	csrw	stvec,a5
    80002328:	00813403          	ld	s0,8(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <usertrap>:
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
    80002340:	00813403          	ld	s0,8(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <usertrapret>:
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00813423          	sd	s0,8(sp)
    80002354:	01010413          	addi	s0,sp,16
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <kerneltrap>:
    80002364:	fe010113          	addi	sp,sp,-32
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00113c23          	sd	ra,24(sp)
    80002370:	00913423          	sd	s1,8(sp)
    80002374:	02010413          	addi	s0,sp,32
    80002378:	142025f3          	csrr	a1,scause
    8000237c:	100027f3          	csrr	a5,sstatus
    80002380:	0027f793          	andi	a5,a5,2
    80002384:	10079c63          	bnez	a5,8000249c <kerneltrap+0x138>
    80002388:	142027f3          	csrr	a5,scause
    8000238c:	0207ce63          	bltz	a5,800023c8 <kerneltrap+0x64>
    80002390:	00003517          	auipc	a0,0x3
    80002394:	f6850513          	addi	a0,a0,-152 # 800052f8 <_ZZ12printIntegermE6digits+0x100>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	880080e7          	jalr	-1920(ra) # 80002c18 <__printf>
    800023a0:	141025f3          	csrr	a1,sepc
    800023a4:	14302673          	csrr	a2,stval
    800023a8:	00003517          	auipc	a0,0x3
    800023ac:	f6050513          	addi	a0,a0,-160 # 80005308 <_ZZ12printIntegermE6digits+0x110>
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	868080e7          	jalr	-1944(ra) # 80002c18 <__printf>
    800023b8:	00003517          	auipc	a0,0x3
    800023bc:	f6850513          	addi	a0,a0,-152 # 80005320 <_ZZ12printIntegermE6digits+0x128>
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	7fc080e7          	jalr	2044(ra) # 80002bbc <panic>
    800023c8:	0ff7f713          	andi	a4,a5,255
    800023cc:	00900693          	li	a3,9
    800023d0:	04d70063          	beq	a4,a3,80002410 <kerneltrap+0xac>
    800023d4:	fff00713          	li	a4,-1
    800023d8:	03f71713          	slli	a4,a4,0x3f
    800023dc:	00170713          	addi	a4,a4,1
    800023e0:	fae798e3          	bne	a5,a4,80002390 <kerneltrap+0x2c>
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	e00080e7          	jalr	-512(ra) # 800021e4 <cpuid>
    800023ec:	06050663          	beqz	a0,80002458 <kerneltrap+0xf4>
    800023f0:	144027f3          	csrr	a5,sip
    800023f4:	ffd7f793          	andi	a5,a5,-3
    800023f8:	14479073          	csrw	sip,a5
    800023fc:	01813083          	ld	ra,24(sp)
    80002400:	01013403          	ld	s0,16(sp)
    80002404:	00813483          	ld	s1,8(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret
    80002410:	00000097          	auipc	ra,0x0
    80002414:	3c4080e7          	jalr	964(ra) # 800027d4 <plic_claim>
    80002418:	00a00793          	li	a5,10
    8000241c:	00050493          	mv	s1,a0
    80002420:	06f50863          	beq	a0,a5,80002490 <kerneltrap+0x12c>
    80002424:	fc050ce3          	beqz	a0,800023fc <kerneltrap+0x98>
    80002428:	00050593          	mv	a1,a0
    8000242c:	00003517          	auipc	a0,0x3
    80002430:	eac50513          	addi	a0,a0,-340 # 800052d8 <_ZZ12printIntegermE6digits+0xe0>
    80002434:	00000097          	auipc	ra,0x0
    80002438:	7e4080e7          	jalr	2020(ra) # 80002c18 <__printf>
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	01813083          	ld	ra,24(sp)
    80002444:	00048513          	mv	a0,s1
    80002448:	00813483          	ld	s1,8(sp)
    8000244c:	02010113          	addi	sp,sp,32
    80002450:	00000317          	auipc	t1,0x0
    80002454:	3bc30067          	jr	956(t1) # 8000280c <plic_complete>
    80002458:	00004517          	auipc	a0,0x4
    8000245c:	61850513          	addi	a0,a0,1560 # 80006a70 <tickslock>
    80002460:	00001097          	auipc	ra,0x1
    80002464:	48c080e7          	jalr	1164(ra) # 800038ec <acquire>
    80002468:	00003717          	auipc	a4,0x3
    8000246c:	4fc70713          	addi	a4,a4,1276 # 80005964 <ticks>
    80002470:	00072783          	lw	a5,0(a4)
    80002474:	00004517          	auipc	a0,0x4
    80002478:	5fc50513          	addi	a0,a0,1532 # 80006a70 <tickslock>
    8000247c:	0017879b          	addiw	a5,a5,1
    80002480:	00f72023          	sw	a5,0(a4)
    80002484:	00001097          	auipc	ra,0x1
    80002488:	534080e7          	jalr	1332(ra) # 800039b8 <release>
    8000248c:	f65ff06f          	j	800023f0 <kerneltrap+0x8c>
    80002490:	00001097          	auipc	ra,0x1
    80002494:	090080e7          	jalr	144(ra) # 80003520 <uartintr>
    80002498:	fa5ff06f          	j	8000243c <kerneltrap+0xd8>
    8000249c:	00003517          	auipc	a0,0x3
    800024a0:	e1c50513          	addi	a0,a0,-484 # 800052b8 <_ZZ12printIntegermE6digits+0xc0>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	718080e7          	jalr	1816(ra) # 80002bbc <panic>

00000000800024ac <clockintr>:
    800024ac:	fe010113          	addi	sp,sp,-32
    800024b0:	00813823          	sd	s0,16(sp)
    800024b4:	00913423          	sd	s1,8(sp)
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	02010413          	addi	s0,sp,32
    800024c0:	00004497          	auipc	s1,0x4
    800024c4:	5b048493          	addi	s1,s1,1456 # 80006a70 <tickslock>
    800024c8:	00048513          	mv	a0,s1
    800024cc:	00001097          	auipc	ra,0x1
    800024d0:	420080e7          	jalr	1056(ra) # 800038ec <acquire>
    800024d4:	00003717          	auipc	a4,0x3
    800024d8:	49070713          	addi	a4,a4,1168 # 80005964 <ticks>
    800024dc:	00072783          	lw	a5,0(a4)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	01813083          	ld	ra,24(sp)
    800024e8:	00048513          	mv	a0,s1
    800024ec:	0017879b          	addiw	a5,a5,1
    800024f0:	00813483          	ld	s1,8(sp)
    800024f4:	00f72023          	sw	a5,0(a4)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00001317          	auipc	t1,0x1
    80002500:	4bc30067          	jr	1212(t1) # 800039b8 <release>

0000000080002504 <devintr>:
    80002504:	142027f3          	csrr	a5,scause
    80002508:	00000513          	li	a0,0
    8000250c:	0007c463          	bltz	a5,80002514 <devintr+0x10>
    80002510:	00008067          	ret
    80002514:	fe010113          	addi	sp,sp,-32
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00113c23          	sd	ra,24(sp)
    80002520:	00913423          	sd	s1,8(sp)
    80002524:	02010413          	addi	s0,sp,32
    80002528:	0ff7f713          	andi	a4,a5,255
    8000252c:	00900693          	li	a3,9
    80002530:	04d70c63          	beq	a4,a3,80002588 <devintr+0x84>
    80002534:	fff00713          	li	a4,-1
    80002538:	03f71713          	slli	a4,a4,0x3f
    8000253c:	00170713          	addi	a4,a4,1
    80002540:	00e78c63          	beq	a5,a4,80002558 <devintr+0x54>
    80002544:	01813083          	ld	ra,24(sp)
    80002548:	01013403          	ld	s0,16(sp)
    8000254c:	00813483          	ld	s1,8(sp)
    80002550:	02010113          	addi	sp,sp,32
    80002554:	00008067          	ret
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	c8c080e7          	jalr	-884(ra) # 800021e4 <cpuid>
    80002560:	06050663          	beqz	a0,800025cc <devintr+0xc8>
    80002564:	144027f3          	csrr	a5,sip
    80002568:	ffd7f793          	andi	a5,a5,-3
    8000256c:	14479073          	csrw	sip,a5
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	01013403          	ld	s0,16(sp)
    80002578:	00813483          	ld	s1,8(sp)
    8000257c:	00200513          	li	a0,2
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	24c080e7          	jalr	588(ra) # 800027d4 <plic_claim>
    80002590:	00a00793          	li	a5,10
    80002594:	00050493          	mv	s1,a0
    80002598:	06f50663          	beq	a0,a5,80002604 <devintr+0x100>
    8000259c:	00100513          	li	a0,1
    800025a0:	fa0482e3          	beqz	s1,80002544 <devintr+0x40>
    800025a4:	00048593          	mv	a1,s1
    800025a8:	00003517          	auipc	a0,0x3
    800025ac:	d3050513          	addi	a0,a0,-720 # 800052d8 <_ZZ12printIntegermE6digits+0xe0>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	668080e7          	jalr	1640(ra) # 80002c18 <__printf>
    800025b8:	00048513          	mv	a0,s1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	250080e7          	jalr	592(ra) # 8000280c <plic_complete>
    800025c4:	00100513          	li	a0,1
    800025c8:	f7dff06f          	j	80002544 <devintr+0x40>
    800025cc:	00004517          	auipc	a0,0x4
    800025d0:	4a450513          	addi	a0,a0,1188 # 80006a70 <tickslock>
    800025d4:	00001097          	auipc	ra,0x1
    800025d8:	318080e7          	jalr	792(ra) # 800038ec <acquire>
    800025dc:	00003717          	auipc	a4,0x3
    800025e0:	38870713          	addi	a4,a4,904 # 80005964 <ticks>
    800025e4:	00072783          	lw	a5,0(a4)
    800025e8:	00004517          	auipc	a0,0x4
    800025ec:	48850513          	addi	a0,a0,1160 # 80006a70 <tickslock>
    800025f0:	0017879b          	addiw	a5,a5,1
    800025f4:	00f72023          	sw	a5,0(a4)
    800025f8:	00001097          	auipc	ra,0x1
    800025fc:	3c0080e7          	jalr	960(ra) # 800039b8 <release>
    80002600:	f65ff06f          	j	80002564 <devintr+0x60>
    80002604:	00001097          	auipc	ra,0x1
    80002608:	f1c080e7          	jalr	-228(ra) # 80003520 <uartintr>
    8000260c:	fadff06f          	j	800025b8 <devintr+0xb4>

0000000080002610 <kernelvec>:
    80002610:	f0010113          	addi	sp,sp,-256
    80002614:	00113023          	sd	ra,0(sp)
    80002618:	00213423          	sd	sp,8(sp)
    8000261c:	00313823          	sd	gp,16(sp)
    80002620:	00413c23          	sd	tp,24(sp)
    80002624:	02513023          	sd	t0,32(sp)
    80002628:	02613423          	sd	t1,40(sp)
    8000262c:	02713823          	sd	t2,48(sp)
    80002630:	02813c23          	sd	s0,56(sp)
    80002634:	04913023          	sd	s1,64(sp)
    80002638:	04a13423          	sd	a0,72(sp)
    8000263c:	04b13823          	sd	a1,80(sp)
    80002640:	04c13c23          	sd	a2,88(sp)
    80002644:	06d13023          	sd	a3,96(sp)
    80002648:	06e13423          	sd	a4,104(sp)
    8000264c:	06f13823          	sd	a5,112(sp)
    80002650:	07013c23          	sd	a6,120(sp)
    80002654:	09113023          	sd	a7,128(sp)
    80002658:	09213423          	sd	s2,136(sp)
    8000265c:	09313823          	sd	s3,144(sp)
    80002660:	09413c23          	sd	s4,152(sp)
    80002664:	0b513023          	sd	s5,160(sp)
    80002668:	0b613423          	sd	s6,168(sp)
    8000266c:	0b713823          	sd	s7,176(sp)
    80002670:	0b813c23          	sd	s8,184(sp)
    80002674:	0d913023          	sd	s9,192(sp)
    80002678:	0da13423          	sd	s10,200(sp)
    8000267c:	0db13823          	sd	s11,208(sp)
    80002680:	0dc13c23          	sd	t3,216(sp)
    80002684:	0fd13023          	sd	t4,224(sp)
    80002688:	0fe13423          	sd	t5,232(sp)
    8000268c:	0ff13823          	sd	t6,240(sp)
    80002690:	cd5ff0ef          	jal	ra,80002364 <kerneltrap>
    80002694:	00013083          	ld	ra,0(sp)
    80002698:	00813103          	ld	sp,8(sp)
    8000269c:	01013183          	ld	gp,16(sp)
    800026a0:	02013283          	ld	t0,32(sp)
    800026a4:	02813303          	ld	t1,40(sp)
    800026a8:	03013383          	ld	t2,48(sp)
    800026ac:	03813403          	ld	s0,56(sp)
    800026b0:	04013483          	ld	s1,64(sp)
    800026b4:	04813503          	ld	a0,72(sp)
    800026b8:	05013583          	ld	a1,80(sp)
    800026bc:	05813603          	ld	a2,88(sp)
    800026c0:	06013683          	ld	a3,96(sp)
    800026c4:	06813703          	ld	a4,104(sp)
    800026c8:	07013783          	ld	a5,112(sp)
    800026cc:	07813803          	ld	a6,120(sp)
    800026d0:	08013883          	ld	a7,128(sp)
    800026d4:	08813903          	ld	s2,136(sp)
    800026d8:	09013983          	ld	s3,144(sp)
    800026dc:	09813a03          	ld	s4,152(sp)
    800026e0:	0a013a83          	ld	s5,160(sp)
    800026e4:	0a813b03          	ld	s6,168(sp)
    800026e8:	0b013b83          	ld	s7,176(sp)
    800026ec:	0b813c03          	ld	s8,184(sp)
    800026f0:	0c013c83          	ld	s9,192(sp)
    800026f4:	0c813d03          	ld	s10,200(sp)
    800026f8:	0d013d83          	ld	s11,208(sp)
    800026fc:	0d813e03          	ld	t3,216(sp)
    80002700:	0e013e83          	ld	t4,224(sp)
    80002704:	0e813f03          	ld	t5,232(sp)
    80002708:	0f013f83          	ld	t6,240(sp)
    8000270c:	10010113          	addi	sp,sp,256
    80002710:	10200073          	sret
    80002714:	00000013          	nop
    80002718:	00000013          	nop
    8000271c:	00000013          	nop

0000000080002720 <timervec>:
    80002720:	34051573          	csrrw	a0,mscratch,a0
    80002724:	00b53023          	sd	a1,0(a0)
    80002728:	00c53423          	sd	a2,8(a0)
    8000272c:	00d53823          	sd	a3,16(a0)
    80002730:	01853583          	ld	a1,24(a0)
    80002734:	02053603          	ld	a2,32(a0)
    80002738:	0005b683          	ld	a3,0(a1)
    8000273c:	00c686b3          	add	a3,a3,a2
    80002740:	00d5b023          	sd	a3,0(a1)
    80002744:	00200593          	li	a1,2
    80002748:	14459073          	csrw	sip,a1
    8000274c:	01053683          	ld	a3,16(a0)
    80002750:	00853603          	ld	a2,8(a0)
    80002754:	00053583          	ld	a1,0(a0)
    80002758:	34051573          	csrrw	a0,mscratch,a0
    8000275c:	30200073          	mret

0000000080002760 <plicinit>:
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00813423          	sd	s0,8(sp)
    80002768:	01010413          	addi	s0,sp,16
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	0c0007b7          	lui	a5,0xc000
    80002774:	00100713          	li	a4,1
    80002778:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000277c:	00e7a223          	sw	a4,4(a5)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <plicinithart>:
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	a4c080e7          	jalr	-1460(ra) # 800021e4 <cpuid>
    800027a0:	0085171b          	slliw	a4,a0,0x8
    800027a4:	0c0027b7          	lui	a5,0xc002
    800027a8:	00e787b3          	add	a5,a5,a4
    800027ac:	40200713          	li	a4,1026
    800027b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800027b4:	00813083          	ld	ra,8(sp)
    800027b8:	00013403          	ld	s0,0(sp)
    800027bc:	00d5151b          	slliw	a0,a0,0xd
    800027c0:	0c2017b7          	lui	a5,0xc201
    800027c4:	00a78533          	add	a0,a5,a0
    800027c8:	00052023          	sw	zero,0(a0)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret

00000000800027d4 <plic_claim>:
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00813023          	sd	s0,0(sp)
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	01010413          	addi	s0,sp,16
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	a00080e7          	jalr	-1536(ra) # 800021e4 <cpuid>
    800027ec:	00813083          	ld	ra,8(sp)
    800027f0:	00013403          	ld	s0,0(sp)
    800027f4:	00d5151b          	slliw	a0,a0,0xd
    800027f8:	0c2017b7          	lui	a5,0xc201
    800027fc:	00a78533          	add	a0,a5,a0
    80002800:	00452503          	lw	a0,4(a0)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <plic_complete>:
    8000280c:	fe010113          	addi	sp,sp,-32
    80002810:	00813823          	sd	s0,16(sp)
    80002814:	00913423          	sd	s1,8(sp)
    80002818:	00113c23          	sd	ra,24(sp)
    8000281c:	02010413          	addi	s0,sp,32
    80002820:	00050493          	mv	s1,a0
    80002824:	00000097          	auipc	ra,0x0
    80002828:	9c0080e7          	jalr	-1600(ra) # 800021e4 <cpuid>
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00d5179b          	slliw	a5,a0,0xd
    80002838:	0c201737          	lui	a4,0xc201
    8000283c:	00f707b3          	add	a5,a4,a5
    80002840:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002844:	00813483          	ld	s1,8(sp)
    80002848:	02010113          	addi	sp,sp,32
    8000284c:	00008067          	ret

0000000080002850 <consolewrite>:
    80002850:	fb010113          	addi	sp,sp,-80
    80002854:	04813023          	sd	s0,64(sp)
    80002858:	04113423          	sd	ra,72(sp)
    8000285c:	02913c23          	sd	s1,56(sp)
    80002860:	03213823          	sd	s2,48(sp)
    80002864:	03313423          	sd	s3,40(sp)
    80002868:	03413023          	sd	s4,32(sp)
    8000286c:	01513c23          	sd	s5,24(sp)
    80002870:	05010413          	addi	s0,sp,80
    80002874:	06c05c63          	blez	a2,800028ec <consolewrite+0x9c>
    80002878:	00060993          	mv	s3,a2
    8000287c:	00050a13          	mv	s4,a0
    80002880:	00058493          	mv	s1,a1
    80002884:	00000913          	li	s2,0
    80002888:	fff00a93          	li	s5,-1
    8000288c:	01c0006f          	j	800028a8 <consolewrite+0x58>
    80002890:	fbf44503          	lbu	a0,-65(s0)
    80002894:	0019091b          	addiw	s2,s2,1
    80002898:	00148493          	addi	s1,s1,1
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	a9c080e7          	jalr	-1380(ra) # 80003338 <uartputc>
    800028a4:	03298063          	beq	s3,s2,800028c4 <consolewrite+0x74>
    800028a8:	00048613          	mv	a2,s1
    800028ac:	00100693          	li	a3,1
    800028b0:	000a0593          	mv	a1,s4
    800028b4:	fbf40513          	addi	a0,s0,-65
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	9e4080e7          	jalr	-1564(ra) # 8000229c <either_copyin>
    800028c0:	fd5518e3          	bne	a0,s5,80002890 <consolewrite+0x40>
    800028c4:	04813083          	ld	ra,72(sp)
    800028c8:	04013403          	ld	s0,64(sp)
    800028cc:	03813483          	ld	s1,56(sp)
    800028d0:	02813983          	ld	s3,40(sp)
    800028d4:	02013a03          	ld	s4,32(sp)
    800028d8:	01813a83          	ld	s5,24(sp)
    800028dc:	00090513          	mv	a0,s2
    800028e0:	03013903          	ld	s2,48(sp)
    800028e4:	05010113          	addi	sp,sp,80
    800028e8:	00008067          	ret
    800028ec:	00000913          	li	s2,0
    800028f0:	fd5ff06f          	j	800028c4 <consolewrite+0x74>

00000000800028f4 <consoleread>:
    800028f4:	f9010113          	addi	sp,sp,-112
    800028f8:	06813023          	sd	s0,96(sp)
    800028fc:	04913c23          	sd	s1,88(sp)
    80002900:	05213823          	sd	s2,80(sp)
    80002904:	05313423          	sd	s3,72(sp)
    80002908:	05413023          	sd	s4,64(sp)
    8000290c:	03513c23          	sd	s5,56(sp)
    80002910:	03613823          	sd	s6,48(sp)
    80002914:	03713423          	sd	s7,40(sp)
    80002918:	03813023          	sd	s8,32(sp)
    8000291c:	06113423          	sd	ra,104(sp)
    80002920:	01913c23          	sd	s9,24(sp)
    80002924:	07010413          	addi	s0,sp,112
    80002928:	00060b93          	mv	s7,a2
    8000292c:	00050913          	mv	s2,a0
    80002930:	00058c13          	mv	s8,a1
    80002934:	00060b1b          	sext.w	s6,a2
    80002938:	00004497          	auipc	s1,0x4
    8000293c:	16048493          	addi	s1,s1,352 # 80006a98 <cons>
    80002940:	00400993          	li	s3,4
    80002944:	fff00a13          	li	s4,-1
    80002948:	00a00a93          	li	s5,10
    8000294c:	05705e63          	blez	s7,800029a8 <consoleread+0xb4>
    80002950:	09c4a703          	lw	a4,156(s1)
    80002954:	0984a783          	lw	a5,152(s1)
    80002958:	0007071b          	sext.w	a4,a4
    8000295c:	08e78463          	beq	a5,a4,800029e4 <consoleread+0xf0>
    80002960:	07f7f713          	andi	a4,a5,127
    80002964:	00e48733          	add	a4,s1,a4
    80002968:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000296c:	0017869b          	addiw	a3,a5,1
    80002970:	08d4ac23          	sw	a3,152(s1)
    80002974:	00070c9b          	sext.w	s9,a4
    80002978:	0b370663          	beq	a4,s3,80002a24 <consoleread+0x130>
    8000297c:	00100693          	li	a3,1
    80002980:	f9f40613          	addi	a2,s0,-97
    80002984:	000c0593          	mv	a1,s8
    80002988:	00090513          	mv	a0,s2
    8000298c:	f8e40fa3          	sb	a4,-97(s0)
    80002990:	00000097          	auipc	ra,0x0
    80002994:	8c0080e7          	jalr	-1856(ra) # 80002250 <either_copyout>
    80002998:	01450863          	beq	a0,s4,800029a8 <consoleread+0xb4>
    8000299c:	001c0c13          	addi	s8,s8,1
    800029a0:	fffb8b9b          	addiw	s7,s7,-1
    800029a4:	fb5c94e3          	bne	s9,s5,8000294c <consoleread+0x58>
    800029a8:	000b851b          	sext.w	a0,s7
    800029ac:	06813083          	ld	ra,104(sp)
    800029b0:	06013403          	ld	s0,96(sp)
    800029b4:	05813483          	ld	s1,88(sp)
    800029b8:	05013903          	ld	s2,80(sp)
    800029bc:	04813983          	ld	s3,72(sp)
    800029c0:	04013a03          	ld	s4,64(sp)
    800029c4:	03813a83          	ld	s5,56(sp)
    800029c8:	02813b83          	ld	s7,40(sp)
    800029cc:	02013c03          	ld	s8,32(sp)
    800029d0:	01813c83          	ld	s9,24(sp)
    800029d4:	40ab053b          	subw	a0,s6,a0
    800029d8:	03013b03          	ld	s6,48(sp)
    800029dc:	07010113          	addi	sp,sp,112
    800029e0:	00008067          	ret
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	1d8080e7          	jalr	472(ra) # 80003bbc <push_on>
    800029ec:	0984a703          	lw	a4,152(s1)
    800029f0:	09c4a783          	lw	a5,156(s1)
    800029f4:	0007879b          	sext.w	a5,a5
    800029f8:	fef70ce3          	beq	a4,a5,800029f0 <consoleread+0xfc>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	234080e7          	jalr	564(ra) # 80003c30 <pop_on>
    80002a04:	0984a783          	lw	a5,152(s1)
    80002a08:	07f7f713          	andi	a4,a5,127
    80002a0c:	00e48733          	add	a4,s1,a4
    80002a10:	01874703          	lbu	a4,24(a4)
    80002a14:	0017869b          	addiw	a3,a5,1
    80002a18:	08d4ac23          	sw	a3,152(s1)
    80002a1c:	00070c9b          	sext.w	s9,a4
    80002a20:	f5371ee3          	bne	a4,s3,8000297c <consoleread+0x88>
    80002a24:	000b851b          	sext.w	a0,s7
    80002a28:	f96bf2e3          	bgeu	s7,s6,800029ac <consoleread+0xb8>
    80002a2c:	08f4ac23          	sw	a5,152(s1)
    80002a30:	f7dff06f          	j	800029ac <consoleread+0xb8>

0000000080002a34 <consputc>:
    80002a34:	10000793          	li	a5,256
    80002a38:	00f50663          	beq	a0,a5,80002a44 <consputc+0x10>
    80002a3c:	00001317          	auipc	t1,0x1
    80002a40:	9f430067          	jr	-1548(t1) # 80003430 <uartputc_sync>
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00113423          	sd	ra,8(sp)
    80002a4c:	00813023          	sd	s0,0(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00800513          	li	a0,8
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	9d8080e7          	jalr	-1576(ra) # 80003430 <uartputc_sync>
    80002a60:	02000513          	li	a0,32
    80002a64:	00001097          	auipc	ra,0x1
    80002a68:	9cc080e7          	jalr	-1588(ra) # 80003430 <uartputc_sync>
    80002a6c:	00013403          	ld	s0,0(sp)
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00800513          	li	a0,8
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00001317          	auipc	t1,0x1
    80002a80:	9b430067          	jr	-1612(t1) # 80003430 <uartputc_sync>

0000000080002a84 <consoleintr>:
    80002a84:	fe010113          	addi	sp,sp,-32
    80002a88:	00813823          	sd	s0,16(sp)
    80002a8c:	00913423          	sd	s1,8(sp)
    80002a90:	01213023          	sd	s2,0(sp)
    80002a94:	00113c23          	sd	ra,24(sp)
    80002a98:	02010413          	addi	s0,sp,32
    80002a9c:	00004917          	auipc	s2,0x4
    80002aa0:	ffc90913          	addi	s2,s2,-4 # 80006a98 <cons>
    80002aa4:	00050493          	mv	s1,a0
    80002aa8:	00090513          	mv	a0,s2
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	e40080e7          	jalr	-448(ra) # 800038ec <acquire>
    80002ab4:	02048c63          	beqz	s1,80002aec <consoleintr+0x68>
    80002ab8:	0a092783          	lw	a5,160(s2)
    80002abc:	09892703          	lw	a4,152(s2)
    80002ac0:	07f00693          	li	a3,127
    80002ac4:	40e7873b          	subw	a4,a5,a4
    80002ac8:	02e6e263          	bltu	a3,a4,80002aec <consoleintr+0x68>
    80002acc:	00d00713          	li	a4,13
    80002ad0:	04e48063          	beq	s1,a4,80002b10 <consoleintr+0x8c>
    80002ad4:	07f7f713          	andi	a4,a5,127
    80002ad8:	00e90733          	add	a4,s2,a4
    80002adc:	0017879b          	addiw	a5,a5,1
    80002ae0:	0af92023          	sw	a5,160(s2)
    80002ae4:	00970c23          	sb	s1,24(a4)
    80002ae8:	08f92e23          	sw	a5,156(s2)
    80002aec:	01013403          	ld	s0,16(sp)
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	00813483          	ld	s1,8(sp)
    80002af8:	00013903          	ld	s2,0(sp)
    80002afc:	00004517          	auipc	a0,0x4
    80002b00:	f9c50513          	addi	a0,a0,-100 # 80006a98 <cons>
    80002b04:	02010113          	addi	sp,sp,32
    80002b08:	00001317          	auipc	t1,0x1
    80002b0c:	eb030067          	jr	-336(t1) # 800039b8 <release>
    80002b10:	00a00493          	li	s1,10
    80002b14:	fc1ff06f          	j	80002ad4 <consoleintr+0x50>

0000000080002b18 <consoleinit>:
    80002b18:	fe010113          	addi	sp,sp,-32
    80002b1c:	00113c23          	sd	ra,24(sp)
    80002b20:	00813823          	sd	s0,16(sp)
    80002b24:	00913423          	sd	s1,8(sp)
    80002b28:	02010413          	addi	s0,sp,32
    80002b2c:	00004497          	auipc	s1,0x4
    80002b30:	f6c48493          	addi	s1,s1,-148 # 80006a98 <cons>
    80002b34:	00048513          	mv	a0,s1
    80002b38:	00002597          	auipc	a1,0x2
    80002b3c:	7f858593          	addi	a1,a1,2040 # 80005330 <_ZZ12printIntegermE6digits+0x138>
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	d88080e7          	jalr	-632(ra) # 800038c8 <initlock>
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	7ac080e7          	jalr	1964(ra) # 800032f4 <uartinit>
    80002b50:	01813083          	ld	ra,24(sp)
    80002b54:	01013403          	ld	s0,16(sp)
    80002b58:	00000797          	auipc	a5,0x0
    80002b5c:	d9c78793          	addi	a5,a5,-612 # 800028f4 <consoleread>
    80002b60:	0af4bc23          	sd	a5,184(s1)
    80002b64:	00000797          	auipc	a5,0x0
    80002b68:	cec78793          	addi	a5,a5,-788 # 80002850 <consolewrite>
    80002b6c:	0cf4b023          	sd	a5,192(s1)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	02010113          	addi	sp,sp,32
    80002b78:	00008067          	ret

0000000080002b7c <console_read>:
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00813423          	sd	s0,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
    80002b88:	00813403          	ld	s0,8(sp)
    80002b8c:	00004317          	auipc	t1,0x4
    80002b90:	fc433303          	ld	t1,-60(t1) # 80006b50 <devsw+0x10>
    80002b94:	01010113          	addi	sp,sp,16
    80002b98:	00030067          	jr	t1

0000000080002b9c <console_write>:
    80002b9c:	ff010113          	addi	sp,sp,-16
    80002ba0:	00813423          	sd	s0,8(sp)
    80002ba4:	01010413          	addi	s0,sp,16
    80002ba8:	00813403          	ld	s0,8(sp)
    80002bac:	00004317          	auipc	t1,0x4
    80002bb0:	fac33303          	ld	t1,-84(t1) # 80006b58 <devsw+0x18>
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00030067          	jr	t1

0000000080002bbc <panic>:
    80002bbc:	fe010113          	addi	sp,sp,-32
    80002bc0:	00113c23          	sd	ra,24(sp)
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	02010413          	addi	s0,sp,32
    80002bd0:	00050493          	mv	s1,a0
    80002bd4:	00002517          	auipc	a0,0x2
    80002bd8:	76450513          	addi	a0,a0,1892 # 80005338 <_ZZ12printIntegermE6digits+0x140>
    80002bdc:	00004797          	auipc	a5,0x4
    80002be0:	0007ae23          	sw	zero,28(a5) # 80006bf8 <pr+0x18>
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	034080e7          	jalr	52(ra) # 80002c18 <__printf>
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	028080e7          	jalr	40(ra) # 80002c18 <__printf>
    80002bf8:	00002517          	auipc	a0,0x2
    80002bfc:	5c850513          	addi	a0,a0,1480 # 800051c0 <kvmincrease+0xe40>
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	018080e7          	jalr	24(ra) # 80002c18 <__printf>
    80002c08:	00100793          	li	a5,1
    80002c0c:	00003717          	auipc	a4,0x3
    80002c10:	d4f72e23          	sw	a5,-676(a4) # 80005968 <panicked>
    80002c14:	0000006f          	j	80002c14 <panic+0x58>

0000000080002c18 <__printf>:
    80002c18:	f3010113          	addi	sp,sp,-208
    80002c1c:	08813023          	sd	s0,128(sp)
    80002c20:	07313423          	sd	s3,104(sp)
    80002c24:	09010413          	addi	s0,sp,144
    80002c28:	05813023          	sd	s8,64(sp)
    80002c2c:	08113423          	sd	ra,136(sp)
    80002c30:	06913c23          	sd	s1,120(sp)
    80002c34:	07213823          	sd	s2,112(sp)
    80002c38:	07413023          	sd	s4,96(sp)
    80002c3c:	05513c23          	sd	s5,88(sp)
    80002c40:	05613823          	sd	s6,80(sp)
    80002c44:	05713423          	sd	s7,72(sp)
    80002c48:	03913c23          	sd	s9,56(sp)
    80002c4c:	03a13823          	sd	s10,48(sp)
    80002c50:	03b13423          	sd	s11,40(sp)
    80002c54:	00004317          	auipc	t1,0x4
    80002c58:	f8c30313          	addi	t1,t1,-116 # 80006be0 <pr>
    80002c5c:	01832c03          	lw	s8,24(t1)
    80002c60:	00b43423          	sd	a1,8(s0)
    80002c64:	00c43823          	sd	a2,16(s0)
    80002c68:	00d43c23          	sd	a3,24(s0)
    80002c6c:	02e43023          	sd	a4,32(s0)
    80002c70:	02f43423          	sd	a5,40(s0)
    80002c74:	03043823          	sd	a6,48(s0)
    80002c78:	03143c23          	sd	a7,56(s0)
    80002c7c:	00050993          	mv	s3,a0
    80002c80:	4a0c1663          	bnez	s8,8000312c <__printf+0x514>
    80002c84:	60098c63          	beqz	s3,8000329c <__printf+0x684>
    80002c88:	0009c503          	lbu	a0,0(s3)
    80002c8c:	00840793          	addi	a5,s0,8
    80002c90:	f6f43c23          	sd	a5,-136(s0)
    80002c94:	00000493          	li	s1,0
    80002c98:	22050063          	beqz	a0,80002eb8 <__printf+0x2a0>
    80002c9c:	00002a37          	lui	s4,0x2
    80002ca0:	00018ab7          	lui	s5,0x18
    80002ca4:	000f4b37          	lui	s6,0xf4
    80002ca8:	00989bb7          	lui	s7,0x989
    80002cac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002cb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002cb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002cb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002cbc:	00148c9b          	addiw	s9,s1,1
    80002cc0:	02500793          	li	a5,37
    80002cc4:	01998933          	add	s2,s3,s9
    80002cc8:	38f51263          	bne	a0,a5,8000304c <__printf+0x434>
    80002ccc:	00094783          	lbu	a5,0(s2)
    80002cd0:	00078c9b          	sext.w	s9,a5
    80002cd4:	1e078263          	beqz	a5,80002eb8 <__printf+0x2a0>
    80002cd8:	0024849b          	addiw	s1,s1,2
    80002cdc:	07000713          	li	a4,112
    80002ce0:	00998933          	add	s2,s3,s1
    80002ce4:	38e78a63          	beq	a5,a4,80003078 <__printf+0x460>
    80002ce8:	20f76863          	bltu	a4,a5,80002ef8 <__printf+0x2e0>
    80002cec:	42a78863          	beq	a5,a0,8000311c <__printf+0x504>
    80002cf0:	06400713          	li	a4,100
    80002cf4:	40e79663          	bne	a5,a4,80003100 <__printf+0x4e8>
    80002cf8:	f7843783          	ld	a5,-136(s0)
    80002cfc:	0007a603          	lw	a2,0(a5)
    80002d00:	00878793          	addi	a5,a5,8
    80002d04:	f6f43c23          	sd	a5,-136(s0)
    80002d08:	42064a63          	bltz	a2,8000313c <__printf+0x524>
    80002d0c:	00a00713          	li	a4,10
    80002d10:	02e677bb          	remuw	a5,a2,a4
    80002d14:	00002d97          	auipc	s11,0x2
    80002d18:	64cd8d93          	addi	s11,s11,1612 # 80005360 <digits>
    80002d1c:	00900593          	li	a1,9
    80002d20:	0006051b          	sext.w	a0,a2
    80002d24:	00000c93          	li	s9,0
    80002d28:	02079793          	slli	a5,a5,0x20
    80002d2c:	0207d793          	srli	a5,a5,0x20
    80002d30:	00fd87b3          	add	a5,s11,a5
    80002d34:	0007c783          	lbu	a5,0(a5)
    80002d38:	02e656bb          	divuw	a3,a2,a4
    80002d3c:	f8f40023          	sb	a5,-128(s0)
    80002d40:	14c5d863          	bge	a1,a2,80002e90 <__printf+0x278>
    80002d44:	06300593          	li	a1,99
    80002d48:	00100c93          	li	s9,1
    80002d4c:	02e6f7bb          	remuw	a5,a3,a4
    80002d50:	02079793          	slli	a5,a5,0x20
    80002d54:	0207d793          	srli	a5,a5,0x20
    80002d58:	00fd87b3          	add	a5,s11,a5
    80002d5c:	0007c783          	lbu	a5,0(a5)
    80002d60:	02e6d73b          	divuw	a4,a3,a4
    80002d64:	f8f400a3          	sb	a5,-127(s0)
    80002d68:	12a5f463          	bgeu	a1,a0,80002e90 <__printf+0x278>
    80002d6c:	00a00693          	li	a3,10
    80002d70:	00900593          	li	a1,9
    80002d74:	02d777bb          	remuw	a5,a4,a3
    80002d78:	02079793          	slli	a5,a5,0x20
    80002d7c:	0207d793          	srli	a5,a5,0x20
    80002d80:	00fd87b3          	add	a5,s11,a5
    80002d84:	0007c503          	lbu	a0,0(a5)
    80002d88:	02d757bb          	divuw	a5,a4,a3
    80002d8c:	f8a40123          	sb	a0,-126(s0)
    80002d90:	48e5f263          	bgeu	a1,a4,80003214 <__printf+0x5fc>
    80002d94:	06300513          	li	a0,99
    80002d98:	02d7f5bb          	remuw	a1,a5,a3
    80002d9c:	02059593          	slli	a1,a1,0x20
    80002da0:	0205d593          	srli	a1,a1,0x20
    80002da4:	00bd85b3          	add	a1,s11,a1
    80002da8:	0005c583          	lbu	a1,0(a1)
    80002dac:	02d7d7bb          	divuw	a5,a5,a3
    80002db0:	f8b401a3          	sb	a1,-125(s0)
    80002db4:	48e57263          	bgeu	a0,a4,80003238 <__printf+0x620>
    80002db8:	3e700513          	li	a0,999
    80002dbc:	02d7f5bb          	remuw	a1,a5,a3
    80002dc0:	02059593          	slli	a1,a1,0x20
    80002dc4:	0205d593          	srli	a1,a1,0x20
    80002dc8:	00bd85b3          	add	a1,s11,a1
    80002dcc:	0005c583          	lbu	a1,0(a1)
    80002dd0:	02d7d7bb          	divuw	a5,a5,a3
    80002dd4:	f8b40223          	sb	a1,-124(s0)
    80002dd8:	46e57663          	bgeu	a0,a4,80003244 <__printf+0x62c>
    80002ddc:	02d7f5bb          	remuw	a1,a5,a3
    80002de0:	02059593          	slli	a1,a1,0x20
    80002de4:	0205d593          	srli	a1,a1,0x20
    80002de8:	00bd85b3          	add	a1,s11,a1
    80002dec:	0005c583          	lbu	a1,0(a1)
    80002df0:	02d7d7bb          	divuw	a5,a5,a3
    80002df4:	f8b402a3          	sb	a1,-123(s0)
    80002df8:	46ea7863          	bgeu	s4,a4,80003268 <__printf+0x650>
    80002dfc:	02d7f5bb          	remuw	a1,a5,a3
    80002e00:	02059593          	slli	a1,a1,0x20
    80002e04:	0205d593          	srli	a1,a1,0x20
    80002e08:	00bd85b3          	add	a1,s11,a1
    80002e0c:	0005c583          	lbu	a1,0(a1)
    80002e10:	02d7d7bb          	divuw	a5,a5,a3
    80002e14:	f8b40323          	sb	a1,-122(s0)
    80002e18:	3eeaf863          	bgeu	s5,a4,80003208 <__printf+0x5f0>
    80002e1c:	02d7f5bb          	remuw	a1,a5,a3
    80002e20:	02059593          	slli	a1,a1,0x20
    80002e24:	0205d593          	srli	a1,a1,0x20
    80002e28:	00bd85b3          	add	a1,s11,a1
    80002e2c:	0005c583          	lbu	a1,0(a1)
    80002e30:	02d7d7bb          	divuw	a5,a5,a3
    80002e34:	f8b403a3          	sb	a1,-121(s0)
    80002e38:	42eb7e63          	bgeu	s6,a4,80003274 <__printf+0x65c>
    80002e3c:	02d7f5bb          	remuw	a1,a5,a3
    80002e40:	02059593          	slli	a1,a1,0x20
    80002e44:	0205d593          	srli	a1,a1,0x20
    80002e48:	00bd85b3          	add	a1,s11,a1
    80002e4c:	0005c583          	lbu	a1,0(a1)
    80002e50:	02d7d7bb          	divuw	a5,a5,a3
    80002e54:	f8b40423          	sb	a1,-120(s0)
    80002e58:	42ebfc63          	bgeu	s7,a4,80003290 <__printf+0x678>
    80002e5c:	02079793          	slli	a5,a5,0x20
    80002e60:	0207d793          	srli	a5,a5,0x20
    80002e64:	00fd8db3          	add	s11,s11,a5
    80002e68:	000dc703          	lbu	a4,0(s11)
    80002e6c:	00a00793          	li	a5,10
    80002e70:	00900c93          	li	s9,9
    80002e74:	f8e404a3          	sb	a4,-119(s0)
    80002e78:	00065c63          	bgez	a2,80002e90 <__printf+0x278>
    80002e7c:	f9040713          	addi	a4,s0,-112
    80002e80:	00f70733          	add	a4,a4,a5
    80002e84:	02d00693          	li	a3,45
    80002e88:	fed70823          	sb	a3,-16(a4)
    80002e8c:	00078c93          	mv	s9,a5
    80002e90:	f8040793          	addi	a5,s0,-128
    80002e94:	01978cb3          	add	s9,a5,s9
    80002e98:	f7f40d13          	addi	s10,s0,-129
    80002e9c:	000cc503          	lbu	a0,0(s9)
    80002ea0:	fffc8c93          	addi	s9,s9,-1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	b90080e7          	jalr	-1136(ra) # 80002a34 <consputc>
    80002eac:	ffac98e3          	bne	s9,s10,80002e9c <__printf+0x284>
    80002eb0:	00094503          	lbu	a0,0(s2)
    80002eb4:	e00514e3          	bnez	a0,80002cbc <__printf+0xa4>
    80002eb8:	1a0c1663          	bnez	s8,80003064 <__printf+0x44c>
    80002ebc:	08813083          	ld	ra,136(sp)
    80002ec0:	08013403          	ld	s0,128(sp)
    80002ec4:	07813483          	ld	s1,120(sp)
    80002ec8:	07013903          	ld	s2,112(sp)
    80002ecc:	06813983          	ld	s3,104(sp)
    80002ed0:	06013a03          	ld	s4,96(sp)
    80002ed4:	05813a83          	ld	s5,88(sp)
    80002ed8:	05013b03          	ld	s6,80(sp)
    80002edc:	04813b83          	ld	s7,72(sp)
    80002ee0:	04013c03          	ld	s8,64(sp)
    80002ee4:	03813c83          	ld	s9,56(sp)
    80002ee8:	03013d03          	ld	s10,48(sp)
    80002eec:	02813d83          	ld	s11,40(sp)
    80002ef0:	0d010113          	addi	sp,sp,208
    80002ef4:	00008067          	ret
    80002ef8:	07300713          	li	a4,115
    80002efc:	1ce78a63          	beq	a5,a4,800030d0 <__printf+0x4b8>
    80002f00:	07800713          	li	a4,120
    80002f04:	1ee79e63          	bne	a5,a4,80003100 <__printf+0x4e8>
    80002f08:	f7843783          	ld	a5,-136(s0)
    80002f0c:	0007a703          	lw	a4,0(a5)
    80002f10:	00878793          	addi	a5,a5,8
    80002f14:	f6f43c23          	sd	a5,-136(s0)
    80002f18:	28074263          	bltz	a4,8000319c <__printf+0x584>
    80002f1c:	00002d97          	auipc	s11,0x2
    80002f20:	444d8d93          	addi	s11,s11,1092 # 80005360 <digits>
    80002f24:	00f77793          	andi	a5,a4,15
    80002f28:	00fd87b3          	add	a5,s11,a5
    80002f2c:	0007c683          	lbu	a3,0(a5)
    80002f30:	00f00613          	li	a2,15
    80002f34:	0007079b          	sext.w	a5,a4
    80002f38:	f8d40023          	sb	a3,-128(s0)
    80002f3c:	0047559b          	srliw	a1,a4,0x4
    80002f40:	0047569b          	srliw	a3,a4,0x4
    80002f44:	00000c93          	li	s9,0
    80002f48:	0ee65063          	bge	a2,a4,80003028 <__printf+0x410>
    80002f4c:	00f6f693          	andi	a3,a3,15
    80002f50:	00dd86b3          	add	a3,s11,a3
    80002f54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002f58:	0087d79b          	srliw	a5,a5,0x8
    80002f5c:	00100c93          	li	s9,1
    80002f60:	f8d400a3          	sb	a3,-127(s0)
    80002f64:	0cb67263          	bgeu	a2,a1,80003028 <__printf+0x410>
    80002f68:	00f7f693          	andi	a3,a5,15
    80002f6c:	00dd86b3          	add	a3,s11,a3
    80002f70:	0006c583          	lbu	a1,0(a3)
    80002f74:	00f00613          	li	a2,15
    80002f78:	0047d69b          	srliw	a3,a5,0x4
    80002f7c:	f8b40123          	sb	a1,-126(s0)
    80002f80:	0047d593          	srli	a1,a5,0x4
    80002f84:	28f67e63          	bgeu	a2,a5,80003220 <__printf+0x608>
    80002f88:	00f6f693          	andi	a3,a3,15
    80002f8c:	00dd86b3          	add	a3,s11,a3
    80002f90:	0006c503          	lbu	a0,0(a3)
    80002f94:	0087d813          	srli	a6,a5,0x8
    80002f98:	0087d69b          	srliw	a3,a5,0x8
    80002f9c:	f8a401a3          	sb	a0,-125(s0)
    80002fa0:	28b67663          	bgeu	a2,a1,8000322c <__printf+0x614>
    80002fa4:	00f6f693          	andi	a3,a3,15
    80002fa8:	00dd86b3          	add	a3,s11,a3
    80002fac:	0006c583          	lbu	a1,0(a3)
    80002fb0:	00c7d513          	srli	a0,a5,0xc
    80002fb4:	00c7d69b          	srliw	a3,a5,0xc
    80002fb8:	f8b40223          	sb	a1,-124(s0)
    80002fbc:	29067a63          	bgeu	a2,a6,80003250 <__printf+0x638>
    80002fc0:	00f6f693          	andi	a3,a3,15
    80002fc4:	00dd86b3          	add	a3,s11,a3
    80002fc8:	0006c583          	lbu	a1,0(a3)
    80002fcc:	0107d813          	srli	a6,a5,0x10
    80002fd0:	0107d69b          	srliw	a3,a5,0x10
    80002fd4:	f8b402a3          	sb	a1,-123(s0)
    80002fd8:	28a67263          	bgeu	a2,a0,8000325c <__printf+0x644>
    80002fdc:	00f6f693          	andi	a3,a3,15
    80002fe0:	00dd86b3          	add	a3,s11,a3
    80002fe4:	0006c683          	lbu	a3,0(a3)
    80002fe8:	0147d79b          	srliw	a5,a5,0x14
    80002fec:	f8d40323          	sb	a3,-122(s0)
    80002ff0:	21067663          	bgeu	a2,a6,800031fc <__printf+0x5e4>
    80002ff4:	02079793          	slli	a5,a5,0x20
    80002ff8:	0207d793          	srli	a5,a5,0x20
    80002ffc:	00fd8db3          	add	s11,s11,a5
    80003000:	000dc683          	lbu	a3,0(s11)
    80003004:	00800793          	li	a5,8
    80003008:	00700c93          	li	s9,7
    8000300c:	f8d403a3          	sb	a3,-121(s0)
    80003010:	00075c63          	bgez	a4,80003028 <__printf+0x410>
    80003014:	f9040713          	addi	a4,s0,-112
    80003018:	00f70733          	add	a4,a4,a5
    8000301c:	02d00693          	li	a3,45
    80003020:	fed70823          	sb	a3,-16(a4)
    80003024:	00078c93          	mv	s9,a5
    80003028:	f8040793          	addi	a5,s0,-128
    8000302c:	01978cb3          	add	s9,a5,s9
    80003030:	f7f40d13          	addi	s10,s0,-129
    80003034:	000cc503          	lbu	a0,0(s9)
    80003038:	fffc8c93          	addi	s9,s9,-1
    8000303c:	00000097          	auipc	ra,0x0
    80003040:	9f8080e7          	jalr	-1544(ra) # 80002a34 <consputc>
    80003044:	ff9d18e3          	bne	s10,s9,80003034 <__printf+0x41c>
    80003048:	0100006f          	j	80003058 <__printf+0x440>
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	9e8080e7          	jalr	-1560(ra) # 80002a34 <consputc>
    80003054:	000c8493          	mv	s1,s9
    80003058:	00094503          	lbu	a0,0(s2)
    8000305c:	c60510e3          	bnez	a0,80002cbc <__printf+0xa4>
    80003060:	e40c0ee3          	beqz	s8,80002ebc <__printf+0x2a4>
    80003064:	00004517          	auipc	a0,0x4
    80003068:	b7c50513          	addi	a0,a0,-1156 # 80006be0 <pr>
    8000306c:	00001097          	auipc	ra,0x1
    80003070:	94c080e7          	jalr	-1716(ra) # 800039b8 <release>
    80003074:	e49ff06f          	j	80002ebc <__printf+0x2a4>
    80003078:	f7843783          	ld	a5,-136(s0)
    8000307c:	03000513          	li	a0,48
    80003080:	01000d13          	li	s10,16
    80003084:	00878713          	addi	a4,a5,8
    80003088:	0007bc83          	ld	s9,0(a5)
    8000308c:	f6e43c23          	sd	a4,-136(s0)
    80003090:	00000097          	auipc	ra,0x0
    80003094:	9a4080e7          	jalr	-1628(ra) # 80002a34 <consputc>
    80003098:	07800513          	li	a0,120
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	998080e7          	jalr	-1640(ra) # 80002a34 <consputc>
    800030a4:	00002d97          	auipc	s11,0x2
    800030a8:	2bcd8d93          	addi	s11,s11,700 # 80005360 <digits>
    800030ac:	03ccd793          	srli	a5,s9,0x3c
    800030b0:	00fd87b3          	add	a5,s11,a5
    800030b4:	0007c503          	lbu	a0,0(a5)
    800030b8:	fffd0d1b          	addiw	s10,s10,-1
    800030bc:	004c9c93          	slli	s9,s9,0x4
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	974080e7          	jalr	-1676(ra) # 80002a34 <consputc>
    800030c8:	fe0d12e3          	bnez	s10,800030ac <__printf+0x494>
    800030cc:	f8dff06f          	j	80003058 <__printf+0x440>
    800030d0:	f7843783          	ld	a5,-136(s0)
    800030d4:	0007bc83          	ld	s9,0(a5)
    800030d8:	00878793          	addi	a5,a5,8
    800030dc:	f6f43c23          	sd	a5,-136(s0)
    800030e0:	000c9a63          	bnez	s9,800030f4 <__printf+0x4dc>
    800030e4:	1080006f          	j	800031ec <__printf+0x5d4>
    800030e8:	001c8c93          	addi	s9,s9,1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	948080e7          	jalr	-1720(ra) # 80002a34 <consputc>
    800030f4:	000cc503          	lbu	a0,0(s9)
    800030f8:	fe0518e3          	bnez	a0,800030e8 <__printf+0x4d0>
    800030fc:	f5dff06f          	j	80003058 <__printf+0x440>
    80003100:	02500513          	li	a0,37
    80003104:	00000097          	auipc	ra,0x0
    80003108:	930080e7          	jalr	-1744(ra) # 80002a34 <consputc>
    8000310c:	000c8513          	mv	a0,s9
    80003110:	00000097          	auipc	ra,0x0
    80003114:	924080e7          	jalr	-1756(ra) # 80002a34 <consputc>
    80003118:	f41ff06f          	j	80003058 <__printf+0x440>
    8000311c:	02500513          	li	a0,37
    80003120:	00000097          	auipc	ra,0x0
    80003124:	914080e7          	jalr	-1772(ra) # 80002a34 <consputc>
    80003128:	f31ff06f          	j	80003058 <__printf+0x440>
    8000312c:	00030513          	mv	a0,t1
    80003130:	00000097          	auipc	ra,0x0
    80003134:	7bc080e7          	jalr	1980(ra) # 800038ec <acquire>
    80003138:	b4dff06f          	j	80002c84 <__printf+0x6c>
    8000313c:	40c0053b          	negw	a0,a2
    80003140:	00a00713          	li	a4,10
    80003144:	02e576bb          	remuw	a3,a0,a4
    80003148:	00002d97          	auipc	s11,0x2
    8000314c:	218d8d93          	addi	s11,s11,536 # 80005360 <digits>
    80003150:	ff700593          	li	a1,-9
    80003154:	02069693          	slli	a3,a3,0x20
    80003158:	0206d693          	srli	a3,a3,0x20
    8000315c:	00dd86b3          	add	a3,s11,a3
    80003160:	0006c683          	lbu	a3,0(a3)
    80003164:	02e557bb          	divuw	a5,a0,a4
    80003168:	f8d40023          	sb	a3,-128(s0)
    8000316c:	10b65e63          	bge	a2,a1,80003288 <__printf+0x670>
    80003170:	06300593          	li	a1,99
    80003174:	02e7f6bb          	remuw	a3,a5,a4
    80003178:	02069693          	slli	a3,a3,0x20
    8000317c:	0206d693          	srli	a3,a3,0x20
    80003180:	00dd86b3          	add	a3,s11,a3
    80003184:	0006c683          	lbu	a3,0(a3)
    80003188:	02e7d73b          	divuw	a4,a5,a4
    8000318c:	00200793          	li	a5,2
    80003190:	f8d400a3          	sb	a3,-127(s0)
    80003194:	bca5ece3          	bltu	a1,a0,80002d6c <__printf+0x154>
    80003198:	ce5ff06f          	j	80002e7c <__printf+0x264>
    8000319c:	40e007bb          	negw	a5,a4
    800031a0:	00002d97          	auipc	s11,0x2
    800031a4:	1c0d8d93          	addi	s11,s11,448 # 80005360 <digits>
    800031a8:	00f7f693          	andi	a3,a5,15
    800031ac:	00dd86b3          	add	a3,s11,a3
    800031b0:	0006c583          	lbu	a1,0(a3)
    800031b4:	ff100613          	li	a2,-15
    800031b8:	0047d69b          	srliw	a3,a5,0x4
    800031bc:	f8b40023          	sb	a1,-128(s0)
    800031c0:	0047d59b          	srliw	a1,a5,0x4
    800031c4:	0ac75e63          	bge	a4,a2,80003280 <__printf+0x668>
    800031c8:	00f6f693          	andi	a3,a3,15
    800031cc:	00dd86b3          	add	a3,s11,a3
    800031d0:	0006c603          	lbu	a2,0(a3)
    800031d4:	00f00693          	li	a3,15
    800031d8:	0087d79b          	srliw	a5,a5,0x8
    800031dc:	f8c400a3          	sb	a2,-127(s0)
    800031e0:	d8b6e4e3          	bltu	a3,a1,80002f68 <__printf+0x350>
    800031e4:	00200793          	li	a5,2
    800031e8:	e2dff06f          	j	80003014 <__printf+0x3fc>
    800031ec:	00002c97          	auipc	s9,0x2
    800031f0:	154c8c93          	addi	s9,s9,340 # 80005340 <_ZZ12printIntegermE6digits+0x148>
    800031f4:	02800513          	li	a0,40
    800031f8:	ef1ff06f          	j	800030e8 <__printf+0x4d0>
    800031fc:	00700793          	li	a5,7
    80003200:	00600c93          	li	s9,6
    80003204:	e0dff06f          	j	80003010 <__printf+0x3f8>
    80003208:	00700793          	li	a5,7
    8000320c:	00600c93          	li	s9,6
    80003210:	c69ff06f          	j	80002e78 <__printf+0x260>
    80003214:	00300793          	li	a5,3
    80003218:	00200c93          	li	s9,2
    8000321c:	c5dff06f          	j	80002e78 <__printf+0x260>
    80003220:	00300793          	li	a5,3
    80003224:	00200c93          	li	s9,2
    80003228:	de9ff06f          	j	80003010 <__printf+0x3f8>
    8000322c:	00400793          	li	a5,4
    80003230:	00300c93          	li	s9,3
    80003234:	dddff06f          	j	80003010 <__printf+0x3f8>
    80003238:	00400793          	li	a5,4
    8000323c:	00300c93          	li	s9,3
    80003240:	c39ff06f          	j	80002e78 <__printf+0x260>
    80003244:	00500793          	li	a5,5
    80003248:	00400c93          	li	s9,4
    8000324c:	c2dff06f          	j	80002e78 <__printf+0x260>
    80003250:	00500793          	li	a5,5
    80003254:	00400c93          	li	s9,4
    80003258:	db9ff06f          	j	80003010 <__printf+0x3f8>
    8000325c:	00600793          	li	a5,6
    80003260:	00500c93          	li	s9,5
    80003264:	dadff06f          	j	80003010 <__printf+0x3f8>
    80003268:	00600793          	li	a5,6
    8000326c:	00500c93          	li	s9,5
    80003270:	c09ff06f          	j	80002e78 <__printf+0x260>
    80003274:	00800793          	li	a5,8
    80003278:	00700c93          	li	s9,7
    8000327c:	bfdff06f          	j	80002e78 <__printf+0x260>
    80003280:	00100793          	li	a5,1
    80003284:	d91ff06f          	j	80003014 <__printf+0x3fc>
    80003288:	00100793          	li	a5,1
    8000328c:	bf1ff06f          	j	80002e7c <__printf+0x264>
    80003290:	00900793          	li	a5,9
    80003294:	00800c93          	li	s9,8
    80003298:	be1ff06f          	j	80002e78 <__printf+0x260>
    8000329c:	00002517          	auipc	a0,0x2
    800032a0:	0ac50513          	addi	a0,a0,172 # 80005348 <_ZZ12printIntegermE6digits+0x150>
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	918080e7          	jalr	-1768(ra) # 80002bbc <panic>

00000000800032ac <printfinit>:
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	00113c23          	sd	ra,24(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	00004497          	auipc	s1,0x4
    800032c4:	92048493          	addi	s1,s1,-1760 # 80006be0 <pr>
    800032c8:	00048513          	mv	a0,s1
    800032cc:	00002597          	auipc	a1,0x2
    800032d0:	08c58593          	addi	a1,a1,140 # 80005358 <_ZZ12printIntegermE6digits+0x160>
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	5f4080e7          	jalr	1524(ra) # 800038c8 <initlock>
    800032dc:	01813083          	ld	ra,24(sp)
    800032e0:	01013403          	ld	s0,16(sp)
    800032e4:	0004ac23          	sw	zero,24(s1)
    800032e8:	00813483          	ld	s1,8(sp)
    800032ec:	02010113          	addi	sp,sp,32
    800032f0:	00008067          	ret

00000000800032f4 <uartinit>:
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00813423          	sd	s0,8(sp)
    800032fc:	01010413          	addi	s0,sp,16
    80003300:	100007b7          	lui	a5,0x10000
    80003304:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003308:	f8000713          	li	a4,-128
    8000330c:	00e781a3          	sb	a4,3(a5)
    80003310:	00300713          	li	a4,3
    80003314:	00e78023          	sb	a4,0(a5)
    80003318:	000780a3          	sb	zero,1(a5)
    8000331c:	00e781a3          	sb	a4,3(a5)
    80003320:	00700693          	li	a3,7
    80003324:	00d78123          	sb	a3,2(a5)
    80003328:	00e780a3          	sb	a4,1(a5)
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret

0000000080003338 <uartputc>:
    80003338:	00002797          	auipc	a5,0x2
    8000333c:	6307a783          	lw	a5,1584(a5) # 80005968 <panicked>
    80003340:	00078463          	beqz	a5,80003348 <uartputc+0x10>
    80003344:	0000006f          	j	80003344 <uartputc+0xc>
    80003348:	fd010113          	addi	sp,sp,-48
    8000334c:	02813023          	sd	s0,32(sp)
    80003350:	00913c23          	sd	s1,24(sp)
    80003354:	01213823          	sd	s2,16(sp)
    80003358:	01313423          	sd	s3,8(sp)
    8000335c:	02113423          	sd	ra,40(sp)
    80003360:	03010413          	addi	s0,sp,48
    80003364:	00002917          	auipc	s2,0x2
    80003368:	60c90913          	addi	s2,s2,1548 # 80005970 <uart_tx_r>
    8000336c:	00093783          	ld	a5,0(s2)
    80003370:	00002497          	auipc	s1,0x2
    80003374:	60848493          	addi	s1,s1,1544 # 80005978 <uart_tx_w>
    80003378:	0004b703          	ld	a4,0(s1)
    8000337c:	02078693          	addi	a3,a5,32
    80003380:	00050993          	mv	s3,a0
    80003384:	02e69c63          	bne	a3,a4,800033bc <uartputc+0x84>
    80003388:	00001097          	auipc	ra,0x1
    8000338c:	834080e7          	jalr	-1996(ra) # 80003bbc <push_on>
    80003390:	00093783          	ld	a5,0(s2)
    80003394:	0004b703          	ld	a4,0(s1)
    80003398:	02078793          	addi	a5,a5,32
    8000339c:	00e79463          	bne	a5,a4,800033a4 <uartputc+0x6c>
    800033a0:	0000006f          	j	800033a0 <uartputc+0x68>
    800033a4:	00001097          	auipc	ra,0x1
    800033a8:	88c080e7          	jalr	-1908(ra) # 80003c30 <pop_on>
    800033ac:	00093783          	ld	a5,0(s2)
    800033b0:	0004b703          	ld	a4,0(s1)
    800033b4:	02078693          	addi	a3,a5,32
    800033b8:	fce688e3          	beq	a3,a4,80003388 <uartputc+0x50>
    800033bc:	01f77693          	andi	a3,a4,31
    800033c0:	00004597          	auipc	a1,0x4
    800033c4:	84058593          	addi	a1,a1,-1984 # 80006c00 <uart_tx_buf>
    800033c8:	00d586b3          	add	a3,a1,a3
    800033cc:	00170713          	addi	a4,a4,1
    800033d0:	01368023          	sb	s3,0(a3)
    800033d4:	00e4b023          	sd	a4,0(s1)
    800033d8:	10000637          	lui	a2,0x10000
    800033dc:	02f71063          	bne	a4,a5,800033fc <uartputc+0xc4>
    800033e0:	0340006f          	j	80003414 <uartputc+0xdc>
    800033e4:	00074703          	lbu	a4,0(a4)
    800033e8:	00f93023          	sd	a5,0(s2)
    800033ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800033f0:	00093783          	ld	a5,0(s2)
    800033f4:	0004b703          	ld	a4,0(s1)
    800033f8:	00f70e63          	beq	a4,a5,80003414 <uartputc+0xdc>
    800033fc:	00564683          	lbu	a3,5(a2)
    80003400:	01f7f713          	andi	a4,a5,31
    80003404:	00e58733          	add	a4,a1,a4
    80003408:	0206f693          	andi	a3,a3,32
    8000340c:	00178793          	addi	a5,a5,1
    80003410:	fc069ae3          	bnez	a3,800033e4 <uartputc+0xac>
    80003414:	02813083          	ld	ra,40(sp)
    80003418:	02013403          	ld	s0,32(sp)
    8000341c:	01813483          	ld	s1,24(sp)
    80003420:	01013903          	ld	s2,16(sp)
    80003424:	00813983          	ld	s3,8(sp)
    80003428:	03010113          	addi	sp,sp,48
    8000342c:	00008067          	ret

0000000080003430 <uartputc_sync>:
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00813423          	sd	s0,8(sp)
    80003438:	01010413          	addi	s0,sp,16
    8000343c:	00002717          	auipc	a4,0x2
    80003440:	52c72703          	lw	a4,1324(a4) # 80005968 <panicked>
    80003444:	02071663          	bnez	a4,80003470 <uartputc_sync+0x40>
    80003448:	00050793          	mv	a5,a0
    8000344c:	100006b7          	lui	a3,0x10000
    80003450:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003454:	02077713          	andi	a4,a4,32
    80003458:	fe070ce3          	beqz	a4,80003450 <uartputc_sync+0x20>
    8000345c:	0ff7f793          	andi	a5,a5,255
    80003460:	00f68023          	sb	a5,0(a3)
    80003464:	00813403          	ld	s0,8(sp)
    80003468:	01010113          	addi	sp,sp,16
    8000346c:	00008067          	ret
    80003470:	0000006f          	j	80003470 <uartputc_sync+0x40>

0000000080003474 <uartstart>:
    80003474:	ff010113          	addi	sp,sp,-16
    80003478:	00813423          	sd	s0,8(sp)
    8000347c:	01010413          	addi	s0,sp,16
    80003480:	00002617          	auipc	a2,0x2
    80003484:	4f060613          	addi	a2,a2,1264 # 80005970 <uart_tx_r>
    80003488:	00002517          	auipc	a0,0x2
    8000348c:	4f050513          	addi	a0,a0,1264 # 80005978 <uart_tx_w>
    80003490:	00063783          	ld	a5,0(a2)
    80003494:	00053703          	ld	a4,0(a0)
    80003498:	04f70263          	beq	a4,a5,800034dc <uartstart+0x68>
    8000349c:	100005b7          	lui	a1,0x10000
    800034a0:	00003817          	auipc	a6,0x3
    800034a4:	76080813          	addi	a6,a6,1888 # 80006c00 <uart_tx_buf>
    800034a8:	01c0006f          	j	800034c4 <uartstart+0x50>
    800034ac:	0006c703          	lbu	a4,0(a3)
    800034b0:	00f63023          	sd	a5,0(a2)
    800034b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034b8:	00063783          	ld	a5,0(a2)
    800034bc:	00053703          	ld	a4,0(a0)
    800034c0:	00f70e63          	beq	a4,a5,800034dc <uartstart+0x68>
    800034c4:	01f7f713          	andi	a4,a5,31
    800034c8:	00e806b3          	add	a3,a6,a4
    800034cc:	0055c703          	lbu	a4,5(a1)
    800034d0:	00178793          	addi	a5,a5,1
    800034d4:	02077713          	andi	a4,a4,32
    800034d8:	fc071ae3          	bnez	a4,800034ac <uartstart+0x38>
    800034dc:	00813403          	ld	s0,8(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <uartgetc>:
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00813423          	sd	s0,8(sp)
    800034f0:	01010413          	addi	s0,sp,16
    800034f4:	10000737          	lui	a4,0x10000
    800034f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800034fc:	0017f793          	andi	a5,a5,1
    80003500:	00078c63          	beqz	a5,80003518 <uartgetc+0x30>
    80003504:	00074503          	lbu	a0,0(a4)
    80003508:	0ff57513          	andi	a0,a0,255
    8000350c:	00813403          	ld	s0,8(sp)
    80003510:	01010113          	addi	sp,sp,16
    80003514:	00008067          	ret
    80003518:	fff00513          	li	a0,-1
    8000351c:	ff1ff06f          	j	8000350c <uartgetc+0x24>

0000000080003520 <uartintr>:
    80003520:	100007b7          	lui	a5,0x10000
    80003524:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003528:	0017f793          	andi	a5,a5,1
    8000352c:	0a078463          	beqz	a5,800035d4 <uartintr+0xb4>
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	100004b7          	lui	s1,0x10000
    80003548:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000354c:	0ff57513          	andi	a0,a0,255
    80003550:	fffff097          	auipc	ra,0xfffff
    80003554:	534080e7          	jalr	1332(ra) # 80002a84 <consoleintr>
    80003558:	0054c783          	lbu	a5,5(s1)
    8000355c:	0017f793          	andi	a5,a5,1
    80003560:	fe0794e3          	bnez	a5,80003548 <uartintr+0x28>
    80003564:	00002617          	auipc	a2,0x2
    80003568:	40c60613          	addi	a2,a2,1036 # 80005970 <uart_tx_r>
    8000356c:	00002517          	auipc	a0,0x2
    80003570:	40c50513          	addi	a0,a0,1036 # 80005978 <uart_tx_w>
    80003574:	00063783          	ld	a5,0(a2)
    80003578:	00053703          	ld	a4,0(a0)
    8000357c:	04f70263          	beq	a4,a5,800035c0 <uartintr+0xa0>
    80003580:	100005b7          	lui	a1,0x10000
    80003584:	00003817          	auipc	a6,0x3
    80003588:	67c80813          	addi	a6,a6,1660 # 80006c00 <uart_tx_buf>
    8000358c:	01c0006f          	j	800035a8 <uartintr+0x88>
    80003590:	0006c703          	lbu	a4,0(a3)
    80003594:	00f63023          	sd	a5,0(a2)
    80003598:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000359c:	00063783          	ld	a5,0(a2)
    800035a0:	00053703          	ld	a4,0(a0)
    800035a4:	00f70e63          	beq	a4,a5,800035c0 <uartintr+0xa0>
    800035a8:	01f7f713          	andi	a4,a5,31
    800035ac:	00e806b3          	add	a3,a6,a4
    800035b0:	0055c703          	lbu	a4,5(a1)
    800035b4:	00178793          	addi	a5,a5,1
    800035b8:	02077713          	andi	a4,a4,32
    800035bc:	fc071ae3          	bnez	a4,80003590 <uartintr+0x70>
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	02010113          	addi	sp,sp,32
    800035d0:	00008067          	ret
    800035d4:	00002617          	auipc	a2,0x2
    800035d8:	39c60613          	addi	a2,a2,924 # 80005970 <uart_tx_r>
    800035dc:	00002517          	auipc	a0,0x2
    800035e0:	39c50513          	addi	a0,a0,924 # 80005978 <uart_tx_w>
    800035e4:	00063783          	ld	a5,0(a2)
    800035e8:	00053703          	ld	a4,0(a0)
    800035ec:	04f70263          	beq	a4,a5,80003630 <uartintr+0x110>
    800035f0:	100005b7          	lui	a1,0x10000
    800035f4:	00003817          	auipc	a6,0x3
    800035f8:	60c80813          	addi	a6,a6,1548 # 80006c00 <uart_tx_buf>
    800035fc:	01c0006f          	j	80003618 <uartintr+0xf8>
    80003600:	0006c703          	lbu	a4,0(a3)
    80003604:	00f63023          	sd	a5,0(a2)
    80003608:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000360c:	00063783          	ld	a5,0(a2)
    80003610:	00053703          	ld	a4,0(a0)
    80003614:	02f70063          	beq	a4,a5,80003634 <uartintr+0x114>
    80003618:	01f7f713          	andi	a4,a5,31
    8000361c:	00e806b3          	add	a3,a6,a4
    80003620:	0055c703          	lbu	a4,5(a1)
    80003624:	00178793          	addi	a5,a5,1
    80003628:	02077713          	andi	a4,a4,32
    8000362c:	fc071ae3          	bnez	a4,80003600 <uartintr+0xe0>
    80003630:	00008067          	ret
    80003634:	00008067          	ret

0000000080003638 <kinit>:
    80003638:	fc010113          	addi	sp,sp,-64
    8000363c:	02913423          	sd	s1,40(sp)
    80003640:	fffff7b7          	lui	a5,0xfffff
    80003644:	00004497          	auipc	s1,0x4
    80003648:	5eb48493          	addi	s1,s1,1515 # 80007c2f <end+0xfff>
    8000364c:	02813823          	sd	s0,48(sp)
    80003650:	01313c23          	sd	s3,24(sp)
    80003654:	00f4f4b3          	and	s1,s1,a5
    80003658:	02113c23          	sd	ra,56(sp)
    8000365c:	03213023          	sd	s2,32(sp)
    80003660:	01413823          	sd	s4,16(sp)
    80003664:	01513423          	sd	s5,8(sp)
    80003668:	04010413          	addi	s0,sp,64
    8000366c:	000017b7          	lui	a5,0x1
    80003670:	01100993          	li	s3,17
    80003674:	00f487b3          	add	a5,s1,a5
    80003678:	01b99993          	slli	s3,s3,0x1b
    8000367c:	06f9e063          	bltu	s3,a5,800036dc <kinit+0xa4>
    80003680:	00003a97          	auipc	s5,0x3
    80003684:	5b0a8a93          	addi	s5,s5,1456 # 80006c30 <end>
    80003688:	0754ec63          	bltu	s1,s5,80003700 <kinit+0xc8>
    8000368c:	0734fa63          	bgeu	s1,s3,80003700 <kinit+0xc8>
    80003690:	00088a37          	lui	s4,0x88
    80003694:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003698:	00002917          	auipc	s2,0x2
    8000369c:	2e890913          	addi	s2,s2,744 # 80005980 <kmem>
    800036a0:	00ca1a13          	slli	s4,s4,0xc
    800036a4:	0140006f          	j	800036b8 <kinit+0x80>
    800036a8:	000017b7          	lui	a5,0x1
    800036ac:	00f484b3          	add	s1,s1,a5
    800036b0:	0554e863          	bltu	s1,s5,80003700 <kinit+0xc8>
    800036b4:	0534f663          	bgeu	s1,s3,80003700 <kinit+0xc8>
    800036b8:	00001637          	lui	a2,0x1
    800036bc:	00100593          	li	a1,1
    800036c0:	00048513          	mv	a0,s1
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	5e4080e7          	jalr	1508(ra) # 80003ca8 <__memset>
    800036cc:	00093783          	ld	a5,0(s2)
    800036d0:	00f4b023          	sd	a5,0(s1)
    800036d4:	00993023          	sd	s1,0(s2)
    800036d8:	fd4498e3          	bne	s1,s4,800036a8 <kinit+0x70>
    800036dc:	03813083          	ld	ra,56(sp)
    800036e0:	03013403          	ld	s0,48(sp)
    800036e4:	02813483          	ld	s1,40(sp)
    800036e8:	02013903          	ld	s2,32(sp)
    800036ec:	01813983          	ld	s3,24(sp)
    800036f0:	01013a03          	ld	s4,16(sp)
    800036f4:	00813a83          	ld	s5,8(sp)
    800036f8:	04010113          	addi	sp,sp,64
    800036fc:	00008067          	ret
    80003700:	00002517          	auipc	a0,0x2
    80003704:	c7850513          	addi	a0,a0,-904 # 80005378 <digits+0x18>
    80003708:	fffff097          	auipc	ra,0xfffff
    8000370c:	4b4080e7          	jalr	1204(ra) # 80002bbc <panic>

0000000080003710 <freerange>:
    80003710:	fc010113          	addi	sp,sp,-64
    80003714:	000017b7          	lui	a5,0x1
    80003718:	02913423          	sd	s1,40(sp)
    8000371c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003720:	009504b3          	add	s1,a0,s1
    80003724:	fffff537          	lui	a0,0xfffff
    80003728:	02813823          	sd	s0,48(sp)
    8000372c:	02113c23          	sd	ra,56(sp)
    80003730:	03213023          	sd	s2,32(sp)
    80003734:	01313c23          	sd	s3,24(sp)
    80003738:	01413823          	sd	s4,16(sp)
    8000373c:	01513423          	sd	s5,8(sp)
    80003740:	01613023          	sd	s6,0(sp)
    80003744:	04010413          	addi	s0,sp,64
    80003748:	00a4f4b3          	and	s1,s1,a0
    8000374c:	00f487b3          	add	a5,s1,a5
    80003750:	06f5e463          	bltu	a1,a5,800037b8 <freerange+0xa8>
    80003754:	00003a97          	auipc	s5,0x3
    80003758:	4dca8a93          	addi	s5,s5,1244 # 80006c30 <end>
    8000375c:	0954e263          	bltu	s1,s5,800037e0 <freerange+0xd0>
    80003760:	01100993          	li	s3,17
    80003764:	01b99993          	slli	s3,s3,0x1b
    80003768:	0734fc63          	bgeu	s1,s3,800037e0 <freerange+0xd0>
    8000376c:	00058a13          	mv	s4,a1
    80003770:	00002917          	auipc	s2,0x2
    80003774:	21090913          	addi	s2,s2,528 # 80005980 <kmem>
    80003778:	00002b37          	lui	s6,0x2
    8000377c:	0140006f          	j	80003790 <freerange+0x80>
    80003780:	000017b7          	lui	a5,0x1
    80003784:	00f484b3          	add	s1,s1,a5
    80003788:	0554ec63          	bltu	s1,s5,800037e0 <freerange+0xd0>
    8000378c:	0534fa63          	bgeu	s1,s3,800037e0 <freerange+0xd0>
    80003790:	00001637          	lui	a2,0x1
    80003794:	00100593          	li	a1,1
    80003798:	00048513          	mv	a0,s1
    8000379c:	00000097          	auipc	ra,0x0
    800037a0:	50c080e7          	jalr	1292(ra) # 80003ca8 <__memset>
    800037a4:	00093703          	ld	a4,0(s2)
    800037a8:	016487b3          	add	a5,s1,s6
    800037ac:	00e4b023          	sd	a4,0(s1)
    800037b0:	00993023          	sd	s1,0(s2)
    800037b4:	fcfa76e3          	bgeu	s4,a5,80003780 <freerange+0x70>
    800037b8:	03813083          	ld	ra,56(sp)
    800037bc:	03013403          	ld	s0,48(sp)
    800037c0:	02813483          	ld	s1,40(sp)
    800037c4:	02013903          	ld	s2,32(sp)
    800037c8:	01813983          	ld	s3,24(sp)
    800037cc:	01013a03          	ld	s4,16(sp)
    800037d0:	00813a83          	ld	s5,8(sp)
    800037d4:	00013b03          	ld	s6,0(sp)
    800037d8:	04010113          	addi	sp,sp,64
    800037dc:	00008067          	ret
    800037e0:	00002517          	auipc	a0,0x2
    800037e4:	b9850513          	addi	a0,a0,-1128 # 80005378 <digits+0x18>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	3d4080e7          	jalr	980(ra) # 80002bbc <panic>

00000000800037f0 <kfree>:
    800037f0:	fe010113          	addi	sp,sp,-32
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00113c23          	sd	ra,24(sp)
    800037fc:	00913423          	sd	s1,8(sp)
    80003800:	02010413          	addi	s0,sp,32
    80003804:	03451793          	slli	a5,a0,0x34
    80003808:	04079c63          	bnez	a5,80003860 <kfree+0x70>
    8000380c:	00003797          	auipc	a5,0x3
    80003810:	42478793          	addi	a5,a5,1060 # 80006c30 <end>
    80003814:	00050493          	mv	s1,a0
    80003818:	04f56463          	bltu	a0,a5,80003860 <kfree+0x70>
    8000381c:	01100793          	li	a5,17
    80003820:	01b79793          	slli	a5,a5,0x1b
    80003824:	02f57e63          	bgeu	a0,a5,80003860 <kfree+0x70>
    80003828:	00001637          	lui	a2,0x1
    8000382c:	00100593          	li	a1,1
    80003830:	00000097          	auipc	ra,0x0
    80003834:	478080e7          	jalr	1144(ra) # 80003ca8 <__memset>
    80003838:	00002797          	auipc	a5,0x2
    8000383c:	14878793          	addi	a5,a5,328 # 80005980 <kmem>
    80003840:	0007b703          	ld	a4,0(a5)
    80003844:	01813083          	ld	ra,24(sp)
    80003848:	01013403          	ld	s0,16(sp)
    8000384c:	00e4b023          	sd	a4,0(s1)
    80003850:	0097b023          	sd	s1,0(a5)
    80003854:	00813483          	ld	s1,8(sp)
    80003858:	02010113          	addi	sp,sp,32
    8000385c:	00008067          	ret
    80003860:	00002517          	auipc	a0,0x2
    80003864:	b1850513          	addi	a0,a0,-1256 # 80005378 <digits+0x18>
    80003868:	fffff097          	auipc	ra,0xfffff
    8000386c:	354080e7          	jalr	852(ra) # 80002bbc <panic>

0000000080003870 <kalloc>:
    80003870:	fe010113          	addi	sp,sp,-32
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	00113c23          	sd	ra,24(sp)
    80003880:	02010413          	addi	s0,sp,32
    80003884:	00002797          	auipc	a5,0x2
    80003888:	0fc78793          	addi	a5,a5,252 # 80005980 <kmem>
    8000388c:	0007b483          	ld	s1,0(a5)
    80003890:	02048063          	beqz	s1,800038b0 <kalloc+0x40>
    80003894:	0004b703          	ld	a4,0(s1)
    80003898:	00001637          	lui	a2,0x1
    8000389c:	00500593          	li	a1,5
    800038a0:	00048513          	mv	a0,s1
    800038a4:	00e7b023          	sd	a4,0(a5)
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	400080e7          	jalr	1024(ra) # 80003ca8 <__memset>
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00048513          	mv	a0,s1
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	02010113          	addi	sp,sp,32
    800038c4:	00008067          	ret

00000000800038c8 <initlock>:
    800038c8:	ff010113          	addi	sp,sp,-16
    800038cc:	00813423          	sd	s0,8(sp)
    800038d0:	01010413          	addi	s0,sp,16
    800038d4:	00813403          	ld	s0,8(sp)
    800038d8:	00b53423          	sd	a1,8(a0)
    800038dc:	00052023          	sw	zero,0(a0)
    800038e0:	00053823          	sd	zero,16(a0)
    800038e4:	01010113          	addi	sp,sp,16
    800038e8:	00008067          	ret

00000000800038ec <acquire>:
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00813823          	sd	s0,16(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	01213023          	sd	s2,0(sp)
    80003900:	02010413          	addi	s0,sp,32
    80003904:	00050493          	mv	s1,a0
    80003908:	10002973          	csrr	s2,sstatus
    8000390c:	100027f3          	csrr	a5,sstatus
    80003910:	ffd7f793          	andi	a5,a5,-3
    80003914:	10079073          	csrw	sstatus,a5
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	8ec080e7          	jalr	-1812(ra) # 80002204 <mycpu>
    80003920:	07852783          	lw	a5,120(a0)
    80003924:	06078e63          	beqz	a5,800039a0 <acquire+0xb4>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	8dc080e7          	jalr	-1828(ra) # 80002204 <mycpu>
    80003930:	07852783          	lw	a5,120(a0)
    80003934:	0004a703          	lw	a4,0(s1)
    80003938:	0017879b          	addiw	a5,a5,1
    8000393c:	06f52c23          	sw	a5,120(a0)
    80003940:	04071063          	bnez	a4,80003980 <acquire+0x94>
    80003944:	00100713          	li	a4,1
    80003948:	00070793          	mv	a5,a4
    8000394c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003950:	0007879b          	sext.w	a5,a5
    80003954:	fe079ae3          	bnez	a5,80003948 <acquire+0x5c>
    80003958:	0ff0000f          	fence
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	8a8080e7          	jalr	-1880(ra) # 80002204 <mycpu>
    80003964:	01813083          	ld	ra,24(sp)
    80003968:	01013403          	ld	s0,16(sp)
    8000396c:	00a4b823          	sd	a0,16(s1)
    80003970:	00013903          	ld	s2,0(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	00008067          	ret
    80003980:	0104b903          	ld	s2,16(s1)
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	880080e7          	jalr	-1920(ra) # 80002204 <mycpu>
    8000398c:	faa91ce3          	bne	s2,a0,80003944 <acquire+0x58>
    80003990:	00002517          	auipc	a0,0x2
    80003994:	9f050513          	addi	a0,a0,-1552 # 80005380 <digits+0x20>
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	224080e7          	jalr	548(ra) # 80002bbc <panic>
    800039a0:	00195913          	srli	s2,s2,0x1
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	860080e7          	jalr	-1952(ra) # 80002204 <mycpu>
    800039ac:	00197913          	andi	s2,s2,1
    800039b0:	07252e23          	sw	s2,124(a0)
    800039b4:	f75ff06f          	j	80003928 <acquire+0x3c>

00000000800039b8 <release>:
    800039b8:	fe010113          	addi	sp,sp,-32
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	01213023          	sd	s2,0(sp)
    800039cc:	02010413          	addi	s0,sp,32
    800039d0:	00052783          	lw	a5,0(a0)
    800039d4:	00079a63          	bnez	a5,800039e8 <release+0x30>
    800039d8:	00002517          	auipc	a0,0x2
    800039dc:	9b050513          	addi	a0,a0,-1616 # 80005388 <digits+0x28>
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	1dc080e7          	jalr	476(ra) # 80002bbc <panic>
    800039e8:	01053903          	ld	s2,16(a0)
    800039ec:	00050493          	mv	s1,a0
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	814080e7          	jalr	-2028(ra) # 80002204 <mycpu>
    800039f8:	fea910e3          	bne	s2,a0,800039d8 <release+0x20>
    800039fc:	0004b823          	sd	zero,16(s1)
    80003a00:	0ff0000f          	fence
    80003a04:	0f50000f          	fence	iorw,ow
    80003a08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	7f8080e7          	jalr	2040(ra) # 80002204 <mycpu>
    80003a14:	100027f3          	csrr	a5,sstatus
    80003a18:	0027f793          	andi	a5,a5,2
    80003a1c:	04079a63          	bnez	a5,80003a70 <release+0xb8>
    80003a20:	07852783          	lw	a5,120(a0)
    80003a24:	02f05e63          	blez	a5,80003a60 <release+0xa8>
    80003a28:	fff7871b          	addiw	a4,a5,-1
    80003a2c:	06e52c23          	sw	a4,120(a0)
    80003a30:	00071c63          	bnez	a4,80003a48 <release+0x90>
    80003a34:	07c52783          	lw	a5,124(a0)
    80003a38:	00078863          	beqz	a5,80003a48 <release+0x90>
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	0027e793          	ori	a5,a5,2
    80003a44:	10079073          	csrw	sstatus,a5
    80003a48:	01813083          	ld	ra,24(sp)
    80003a4c:	01013403          	ld	s0,16(sp)
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	00013903          	ld	s2,0(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	94850513          	addi	a0,a0,-1720 # 800053a8 <digits+0x48>
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	154080e7          	jalr	340(ra) # 80002bbc <panic>
    80003a70:	00002517          	auipc	a0,0x2
    80003a74:	92050513          	addi	a0,a0,-1760 # 80005390 <digits+0x30>
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	144080e7          	jalr	324(ra) # 80002bbc <panic>

0000000080003a80 <holding>:
    80003a80:	00052783          	lw	a5,0(a0)
    80003a84:	00079663          	bnez	a5,80003a90 <holding+0x10>
    80003a88:	00000513          	li	a0,0
    80003a8c:	00008067          	ret
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	01053483          	ld	s1,16(a0)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	75c080e7          	jalr	1884(ra) # 80002204 <mycpu>
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	40a48533          	sub	a0,s1,a0
    80003abc:	00153513          	seqz	a0,a0
    80003ac0:	00813483          	ld	s1,8(sp)
    80003ac4:	02010113          	addi	sp,sp,32
    80003ac8:	00008067          	ret

0000000080003acc <push_off>:
    80003acc:	fe010113          	addi	sp,sp,-32
    80003ad0:	00813823          	sd	s0,16(sp)
    80003ad4:	00113c23          	sd	ra,24(sp)
    80003ad8:	00913423          	sd	s1,8(sp)
    80003adc:	02010413          	addi	s0,sp,32
    80003ae0:	100024f3          	csrr	s1,sstatus
    80003ae4:	100027f3          	csrr	a5,sstatus
    80003ae8:	ffd7f793          	andi	a5,a5,-3
    80003aec:	10079073          	csrw	sstatus,a5
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	714080e7          	jalr	1812(ra) # 80002204 <mycpu>
    80003af8:	07852783          	lw	a5,120(a0)
    80003afc:	02078663          	beqz	a5,80003b28 <push_off+0x5c>
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	704080e7          	jalr	1796(ra) # 80002204 <mycpu>
    80003b08:	07852783          	lw	a5,120(a0)
    80003b0c:	01813083          	ld	ra,24(sp)
    80003b10:	01013403          	ld	s0,16(sp)
    80003b14:	0017879b          	addiw	a5,a5,1
    80003b18:	06f52c23          	sw	a5,120(a0)
    80003b1c:	00813483          	ld	s1,8(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret
    80003b28:	0014d493          	srli	s1,s1,0x1
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	6d8080e7          	jalr	1752(ra) # 80002204 <mycpu>
    80003b34:	0014f493          	andi	s1,s1,1
    80003b38:	06952e23          	sw	s1,124(a0)
    80003b3c:	fc5ff06f          	j	80003b00 <push_off+0x34>

0000000080003b40 <pop_off>:
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00813023          	sd	s0,0(sp)
    80003b48:	00113423          	sd	ra,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	6b4080e7          	jalr	1716(ra) # 80002204 <mycpu>
    80003b58:	100027f3          	csrr	a5,sstatus
    80003b5c:	0027f793          	andi	a5,a5,2
    80003b60:	04079663          	bnez	a5,80003bac <pop_off+0x6c>
    80003b64:	07852783          	lw	a5,120(a0)
    80003b68:	02f05a63          	blez	a5,80003b9c <pop_off+0x5c>
    80003b6c:	fff7871b          	addiw	a4,a5,-1
    80003b70:	06e52c23          	sw	a4,120(a0)
    80003b74:	00071c63          	bnez	a4,80003b8c <pop_off+0x4c>
    80003b78:	07c52783          	lw	a5,124(a0)
    80003b7c:	00078863          	beqz	a5,80003b8c <pop_off+0x4c>
    80003b80:	100027f3          	csrr	a5,sstatus
    80003b84:	0027e793          	ori	a5,a5,2
    80003b88:	10079073          	csrw	sstatus,a5
    80003b8c:	00813083          	ld	ra,8(sp)
    80003b90:	00013403          	ld	s0,0(sp)
    80003b94:	01010113          	addi	sp,sp,16
    80003b98:	00008067          	ret
    80003b9c:	00002517          	auipc	a0,0x2
    80003ba0:	80c50513          	addi	a0,a0,-2036 # 800053a8 <digits+0x48>
    80003ba4:	fffff097          	auipc	ra,0xfffff
    80003ba8:	018080e7          	jalr	24(ra) # 80002bbc <panic>
    80003bac:	00001517          	auipc	a0,0x1
    80003bb0:	7e450513          	addi	a0,a0,2020 # 80005390 <digits+0x30>
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	008080e7          	jalr	8(ra) # 80002bbc <panic>

0000000080003bbc <push_on>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	100024f3          	csrr	s1,sstatus
    80003bd4:	100027f3          	csrr	a5,sstatus
    80003bd8:	0027e793          	ori	a5,a5,2
    80003bdc:	10079073          	csrw	sstatus,a5
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	624080e7          	jalr	1572(ra) # 80002204 <mycpu>
    80003be8:	07852783          	lw	a5,120(a0)
    80003bec:	02078663          	beqz	a5,80003c18 <push_on+0x5c>
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	614080e7          	jalr	1556(ra) # 80002204 <mycpu>
    80003bf8:	07852783          	lw	a5,120(a0)
    80003bfc:	01813083          	ld	ra,24(sp)
    80003c00:	01013403          	ld	s0,16(sp)
    80003c04:	0017879b          	addiw	a5,a5,1
    80003c08:	06f52c23          	sw	a5,120(a0)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret
    80003c18:	0014d493          	srli	s1,s1,0x1
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	5e8080e7          	jalr	1512(ra) # 80002204 <mycpu>
    80003c24:	0014f493          	andi	s1,s1,1
    80003c28:	06952e23          	sw	s1,124(a0)
    80003c2c:	fc5ff06f          	j	80003bf0 <push_on+0x34>

0000000080003c30 <pop_on>:
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00813023          	sd	s0,0(sp)
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	5c4080e7          	jalr	1476(ra) # 80002204 <mycpu>
    80003c48:	100027f3          	csrr	a5,sstatus
    80003c4c:	0027f793          	andi	a5,a5,2
    80003c50:	04078463          	beqz	a5,80003c98 <pop_on+0x68>
    80003c54:	07852783          	lw	a5,120(a0)
    80003c58:	02f05863          	blez	a5,80003c88 <pop_on+0x58>
    80003c5c:	fff7879b          	addiw	a5,a5,-1
    80003c60:	06f52c23          	sw	a5,120(a0)
    80003c64:	07853783          	ld	a5,120(a0)
    80003c68:	00079863          	bnez	a5,80003c78 <pop_on+0x48>
    80003c6c:	100027f3          	csrr	a5,sstatus
    80003c70:	ffd7f793          	andi	a5,a5,-3
    80003c74:	10079073          	csrw	sstatus,a5
    80003c78:	00813083          	ld	ra,8(sp)
    80003c7c:	00013403          	ld	s0,0(sp)
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret
    80003c88:	00001517          	auipc	a0,0x1
    80003c8c:	74850513          	addi	a0,a0,1864 # 800053d0 <digits+0x70>
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	f2c080e7          	jalr	-212(ra) # 80002bbc <panic>
    80003c98:	00001517          	auipc	a0,0x1
    80003c9c:	71850513          	addi	a0,a0,1816 # 800053b0 <digits+0x50>
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	f1c080e7          	jalr	-228(ra) # 80002bbc <panic>

0000000080003ca8 <__memset>:
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00813423          	sd	s0,8(sp)
    80003cb0:	01010413          	addi	s0,sp,16
    80003cb4:	1a060e63          	beqz	a2,80003e70 <__memset+0x1c8>
    80003cb8:	40a007b3          	neg	a5,a0
    80003cbc:	0077f793          	andi	a5,a5,7
    80003cc0:	00778693          	addi	a3,a5,7
    80003cc4:	00b00813          	li	a6,11
    80003cc8:	0ff5f593          	andi	a1,a1,255
    80003ccc:	fff6071b          	addiw	a4,a2,-1
    80003cd0:	1b06e663          	bltu	a3,a6,80003e7c <__memset+0x1d4>
    80003cd4:	1cd76463          	bltu	a4,a3,80003e9c <__memset+0x1f4>
    80003cd8:	1a078e63          	beqz	a5,80003e94 <__memset+0x1ec>
    80003cdc:	00b50023          	sb	a1,0(a0)
    80003ce0:	00100713          	li	a4,1
    80003ce4:	1ae78463          	beq	a5,a4,80003e8c <__memset+0x1e4>
    80003ce8:	00b500a3          	sb	a1,1(a0)
    80003cec:	00200713          	li	a4,2
    80003cf0:	1ae78a63          	beq	a5,a4,80003ea4 <__memset+0x1fc>
    80003cf4:	00b50123          	sb	a1,2(a0)
    80003cf8:	00300713          	li	a4,3
    80003cfc:	18e78463          	beq	a5,a4,80003e84 <__memset+0x1dc>
    80003d00:	00b501a3          	sb	a1,3(a0)
    80003d04:	00400713          	li	a4,4
    80003d08:	1ae78263          	beq	a5,a4,80003eac <__memset+0x204>
    80003d0c:	00b50223          	sb	a1,4(a0)
    80003d10:	00500713          	li	a4,5
    80003d14:	1ae78063          	beq	a5,a4,80003eb4 <__memset+0x20c>
    80003d18:	00b502a3          	sb	a1,5(a0)
    80003d1c:	00700713          	li	a4,7
    80003d20:	18e79e63          	bne	a5,a4,80003ebc <__memset+0x214>
    80003d24:	00b50323          	sb	a1,6(a0)
    80003d28:	00700e93          	li	t4,7
    80003d2c:	00859713          	slli	a4,a1,0x8
    80003d30:	00e5e733          	or	a4,a1,a4
    80003d34:	01059e13          	slli	t3,a1,0x10
    80003d38:	01c76e33          	or	t3,a4,t3
    80003d3c:	01859313          	slli	t1,a1,0x18
    80003d40:	006e6333          	or	t1,t3,t1
    80003d44:	02059893          	slli	a7,a1,0x20
    80003d48:	40f60e3b          	subw	t3,a2,a5
    80003d4c:	011368b3          	or	a7,t1,a7
    80003d50:	02859813          	slli	a6,a1,0x28
    80003d54:	0108e833          	or	a6,a7,a6
    80003d58:	03059693          	slli	a3,a1,0x30
    80003d5c:	003e589b          	srliw	a7,t3,0x3
    80003d60:	00d866b3          	or	a3,a6,a3
    80003d64:	03859713          	slli	a4,a1,0x38
    80003d68:	00389813          	slli	a6,a7,0x3
    80003d6c:	00f507b3          	add	a5,a0,a5
    80003d70:	00e6e733          	or	a4,a3,a4
    80003d74:	000e089b          	sext.w	a7,t3
    80003d78:	00f806b3          	add	a3,a6,a5
    80003d7c:	00e7b023          	sd	a4,0(a5)
    80003d80:	00878793          	addi	a5,a5,8
    80003d84:	fed79ce3          	bne	a5,a3,80003d7c <__memset+0xd4>
    80003d88:	ff8e7793          	andi	a5,t3,-8
    80003d8c:	0007871b          	sext.w	a4,a5
    80003d90:	01d787bb          	addw	a5,a5,t4
    80003d94:	0ce88e63          	beq	a7,a4,80003e70 <__memset+0x1c8>
    80003d98:	00f50733          	add	a4,a0,a5
    80003d9c:	00b70023          	sb	a1,0(a4)
    80003da0:	0017871b          	addiw	a4,a5,1
    80003da4:	0cc77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003da8:	00e50733          	add	a4,a0,a4
    80003dac:	00b70023          	sb	a1,0(a4)
    80003db0:	0027871b          	addiw	a4,a5,2
    80003db4:	0ac77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003db8:	00e50733          	add	a4,a0,a4
    80003dbc:	00b70023          	sb	a1,0(a4)
    80003dc0:	0037871b          	addiw	a4,a5,3
    80003dc4:	0ac77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003dc8:	00e50733          	add	a4,a0,a4
    80003dcc:	00b70023          	sb	a1,0(a4)
    80003dd0:	0047871b          	addiw	a4,a5,4
    80003dd4:	08c77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003dd8:	00e50733          	add	a4,a0,a4
    80003ddc:	00b70023          	sb	a1,0(a4)
    80003de0:	0057871b          	addiw	a4,a5,5
    80003de4:	08c77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003de8:	00e50733          	add	a4,a0,a4
    80003dec:	00b70023          	sb	a1,0(a4)
    80003df0:	0067871b          	addiw	a4,a5,6
    80003df4:	06c77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003df8:	00e50733          	add	a4,a0,a4
    80003dfc:	00b70023          	sb	a1,0(a4)
    80003e00:	0077871b          	addiw	a4,a5,7
    80003e04:	06c77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00b70023          	sb	a1,0(a4)
    80003e10:	0087871b          	addiw	a4,a5,8
    80003e14:	04c77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00b70023          	sb	a1,0(a4)
    80003e20:	0097871b          	addiw	a4,a5,9
    80003e24:	04c77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e28:	00e50733          	add	a4,a0,a4
    80003e2c:	00b70023          	sb	a1,0(a4)
    80003e30:	00a7871b          	addiw	a4,a5,10
    80003e34:	02c77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e38:	00e50733          	add	a4,a0,a4
    80003e3c:	00b70023          	sb	a1,0(a4)
    80003e40:	00b7871b          	addiw	a4,a5,11
    80003e44:	02c77663          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e48:	00e50733          	add	a4,a0,a4
    80003e4c:	00b70023          	sb	a1,0(a4)
    80003e50:	00c7871b          	addiw	a4,a5,12
    80003e54:	00c77e63          	bgeu	a4,a2,80003e70 <__memset+0x1c8>
    80003e58:	00e50733          	add	a4,a0,a4
    80003e5c:	00b70023          	sb	a1,0(a4)
    80003e60:	00d7879b          	addiw	a5,a5,13
    80003e64:	00c7f663          	bgeu	a5,a2,80003e70 <__memset+0x1c8>
    80003e68:	00f507b3          	add	a5,a0,a5
    80003e6c:	00b78023          	sb	a1,0(a5)
    80003e70:	00813403          	ld	s0,8(sp)
    80003e74:	01010113          	addi	sp,sp,16
    80003e78:	00008067          	ret
    80003e7c:	00b00693          	li	a3,11
    80003e80:	e55ff06f          	j	80003cd4 <__memset+0x2c>
    80003e84:	00300e93          	li	t4,3
    80003e88:	ea5ff06f          	j	80003d2c <__memset+0x84>
    80003e8c:	00100e93          	li	t4,1
    80003e90:	e9dff06f          	j	80003d2c <__memset+0x84>
    80003e94:	00000e93          	li	t4,0
    80003e98:	e95ff06f          	j	80003d2c <__memset+0x84>
    80003e9c:	00000793          	li	a5,0
    80003ea0:	ef9ff06f          	j	80003d98 <__memset+0xf0>
    80003ea4:	00200e93          	li	t4,2
    80003ea8:	e85ff06f          	j	80003d2c <__memset+0x84>
    80003eac:	00400e93          	li	t4,4
    80003eb0:	e7dff06f          	j	80003d2c <__memset+0x84>
    80003eb4:	00500e93          	li	t4,5
    80003eb8:	e75ff06f          	j	80003d2c <__memset+0x84>
    80003ebc:	00600e93          	li	t4,6
    80003ec0:	e6dff06f          	j	80003d2c <__memset+0x84>

0000000080003ec4 <__memmove>:
    80003ec4:	ff010113          	addi	sp,sp,-16
    80003ec8:	00813423          	sd	s0,8(sp)
    80003ecc:	01010413          	addi	s0,sp,16
    80003ed0:	0e060863          	beqz	a2,80003fc0 <__memmove+0xfc>
    80003ed4:	fff6069b          	addiw	a3,a2,-1
    80003ed8:	0006881b          	sext.w	a6,a3
    80003edc:	0ea5e863          	bltu	a1,a0,80003fcc <__memmove+0x108>
    80003ee0:	00758713          	addi	a4,a1,7
    80003ee4:	00a5e7b3          	or	a5,a1,a0
    80003ee8:	40a70733          	sub	a4,a4,a0
    80003eec:	0077f793          	andi	a5,a5,7
    80003ef0:	00f73713          	sltiu	a4,a4,15
    80003ef4:	00174713          	xori	a4,a4,1
    80003ef8:	0017b793          	seqz	a5,a5
    80003efc:	00e7f7b3          	and	a5,a5,a4
    80003f00:	10078863          	beqz	a5,80004010 <__memmove+0x14c>
    80003f04:	00900793          	li	a5,9
    80003f08:	1107f463          	bgeu	a5,a6,80004010 <__memmove+0x14c>
    80003f0c:	0036581b          	srliw	a6,a2,0x3
    80003f10:	fff8081b          	addiw	a6,a6,-1
    80003f14:	02081813          	slli	a6,a6,0x20
    80003f18:	01d85893          	srli	a7,a6,0x1d
    80003f1c:	00858813          	addi	a6,a1,8
    80003f20:	00058793          	mv	a5,a1
    80003f24:	00050713          	mv	a4,a0
    80003f28:	01088833          	add	a6,a7,a6
    80003f2c:	0007b883          	ld	a7,0(a5)
    80003f30:	00878793          	addi	a5,a5,8
    80003f34:	00870713          	addi	a4,a4,8
    80003f38:	ff173c23          	sd	a7,-8(a4)
    80003f3c:	ff0798e3          	bne	a5,a6,80003f2c <__memmove+0x68>
    80003f40:	ff867713          	andi	a4,a2,-8
    80003f44:	02071793          	slli	a5,a4,0x20
    80003f48:	0207d793          	srli	a5,a5,0x20
    80003f4c:	00f585b3          	add	a1,a1,a5
    80003f50:	40e686bb          	subw	a3,a3,a4
    80003f54:	00f507b3          	add	a5,a0,a5
    80003f58:	06e60463          	beq	a2,a4,80003fc0 <__memmove+0xfc>
    80003f5c:	0005c703          	lbu	a4,0(a1)
    80003f60:	00e78023          	sb	a4,0(a5)
    80003f64:	04068e63          	beqz	a3,80003fc0 <__memmove+0xfc>
    80003f68:	0015c603          	lbu	a2,1(a1)
    80003f6c:	00100713          	li	a4,1
    80003f70:	00c780a3          	sb	a2,1(a5)
    80003f74:	04e68663          	beq	a3,a4,80003fc0 <__memmove+0xfc>
    80003f78:	0025c603          	lbu	a2,2(a1)
    80003f7c:	00200713          	li	a4,2
    80003f80:	00c78123          	sb	a2,2(a5)
    80003f84:	02e68e63          	beq	a3,a4,80003fc0 <__memmove+0xfc>
    80003f88:	0035c603          	lbu	a2,3(a1)
    80003f8c:	00300713          	li	a4,3
    80003f90:	00c781a3          	sb	a2,3(a5)
    80003f94:	02e68663          	beq	a3,a4,80003fc0 <__memmove+0xfc>
    80003f98:	0045c603          	lbu	a2,4(a1)
    80003f9c:	00400713          	li	a4,4
    80003fa0:	00c78223          	sb	a2,4(a5)
    80003fa4:	00e68e63          	beq	a3,a4,80003fc0 <__memmove+0xfc>
    80003fa8:	0055c603          	lbu	a2,5(a1)
    80003fac:	00500713          	li	a4,5
    80003fb0:	00c782a3          	sb	a2,5(a5)
    80003fb4:	00e68663          	beq	a3,a4,80003fc0 <__memmove+0xfc>
    80003fb8:	0065c703          	lbu	a4,6(a1)
    80003fbc:	00e78323          	sb	a4,6(a5)
    80003fc0:	00813403          	ld	s0,8(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret
    80003fcc:	02061713          	slli	a4,a2,0x20
    80003fd0:	02075713          	srli	a4,a4,0x20
    80003fd4:	00e587b3          	add	a5,a1,a4
    80003fd8:	f0f574e3          	bgeu	a0,a5,80003ee0 <__memmove+0x1c>
    80003fdc:	02069613          	slli	a2,a3,0x20
    80003fe0:	02065613          	srli	a2,a2,0x20
    80003fe4:	fff64613          	not	a2,a2
    80003fe8:	00e50733          	add	a4,a0,a4
    80003fec:	00c78633          	add	a2,a5,a2
    80003ff0:	fff7c683          	lbu	a3,-1(a5)
    80003ff4:	fff78793          	addi	a5,a5,-1
    80003ff8:	fff70713          	addi	a4,a4,-1
    80003ffc:	00d70023          	sb	a3,0(a4)
    80004000:	fec798e3          	bne	a5,a2,80003ff0 <__memmove+0x12c>
    80004004:	00813403          	ld	s0,8(sp)
    80004008:	01010113          	addi	sp,sp,16
    8000400c:	00008067          	ret
    80004010:	02069713          	slli	a4,a3,0x20
    80004014:	02075713          	srli	a4,a4,0x20
    80004018:	00170713          	addi	a4,a4,1
    8000401c:	00e50733          	add	a4,a0,a4
    80004020:	00050793          	mv	a5,a0
    80004024:	0005c683          	lbu	a3,0(a1)
    80004028:	00178793          	addi	a5,a5,1
    8000402c:	00158593          	addi	a1,a1,1
    80004030:	fed78fa3          	sb	a3,-1(a5)
    80004034:	fee798e3          	bne	a5,a4,80004024 <__memmove+0x160>
    80004038:	f89ff06f          	j	80003fc0 <__memmove+0xfc>

000000008000403c <__mem_free>:
    8000403c:	ff010113          	addi	sp,sp,-16
    80004040:	00813423          	sd	s0,8(sp)
    80004044:	01010413          	addi	s0,sp,16
    80004048:	00002597          	auipc	a1,0x2
    8000404c:	94058593          	addi	a1,a1,-1728 # 80005988 <freep>
    80004050:	0005b783          	ld	a5,0(a1)
    80004054:	ff050693          	addi	a3,a0,-16
    80004058:	0007b703          	ld	a4,0(a5)
    8000405c:	00d7fc63          	bgeu	a5,a3,80004074 <__mem_free+0x38>
    80004060:	00e6ee63          	bltu	a3,a4,8000407c <__mem_free+0x40>
    80004064:	00e7fc63          	bgeu	a5,a4,8000407c <__mem_free+0x40>
    80004068:	00070793          	mv	a5,a4
    8000406c:	0007b703          	ld	a4,0(a5)
    80004070:	fed7e8e3          	bltu	a5,a3,80004060 <__mem_free+0x24>
    80004074:	fee7eae3          	bltu	a5,a4,80004068 <__mem_free+0x2c>
    80004078:	fee6f8e3          	bgeu	a3,a4,80004068 <__mem_free+0x2c>
    8000407c:	ff852803          	lw	a6,-8(a0)
    80004080:	02081613          	slli	a2,a6,0x20
    80004084:	01c65613          	srli	a2,a2,0x1c
    80004088:	00c68633          	add	a2,a3,a2
    8000408c:	02c70a63          	beq	a4,a2,800040c0 <__mem_free+0x84>
    80004090:	fee53823          	sd	a4,-16(a0)
    80004094:	0087a503          	lw	a0,8(a5)
    80004098:	02051613          	slli	a2,a0,0x20
    8000409c:	01c65613          	srli	a2,a2,0x1c
    800040a0:	00c78633          	add	a2,a5,a2
    800040a4:	04c68263          	beq	a3,a2,800040e8 <__mem_free+0xac>
    800040a8:	00813403          	ld	s0,8(sp)
    800040ac:	00d7b023          	sd	a3,0(a5)
    800040b0:	00f5b023          	sd	a5,0(a1)
    800040b4:	00000513          	li	a0,0
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret
    800040c0:	00872603          	lw	a2,8(a4)
    800040c4:	00073703          	ld	a4,0(a4)
    800040c8:	0106083b          	addw	a6,a2,a6
    800040cc:	ff052c23          	sw	a6,-8(a0)
    800040d0:	fee53823          	sd	a4,-16(a0)
    800040d4:	0087a503          	lw	a0,8(a5)
    800040d8:	02051613          	slli	a2,a0,0x20
    800040dc:	01c65613          	srli	a2,a2,0x1c
    800040e0:	00c78633          	add	a2,a5,a2
    800040e4:	fcc692e3          	bne	a3,a2,800040a8 <__mem_free+0x6c>
    800040e8:	00813403          	ld	s0,8(sp)
    800040ec:	0105053b          	addw	a0,a0,a6
    800040f0:	00a7a423          	sw	a0,8(a5)
    800040f4:	00e7b023          	sd	a4,0(a5)
    800040f8:	00f5b023          	sd	a5,0(a1)
    800040fc:	00000513          	li	a0,0
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret

0000000080004108 <__mem_alloc>:
    80004108:	fc010113          	addi	sp,sp,-64
    8000410c:	02813823          	sd	s0,48(sp)
    80004110:	02913423          	sd	s1,40(sp)
    80004114:	03213023          	sd	s2,32(sp)
    80004118:	01513423          	sd	s5,8(sp)
    8000411c:	02113c23          	sd	ra,56(sp)
    80004120:	01313c23          	sd	s3,24(sp)
    80004124:	01413823          	sd	s4,16(sp)
    80004128:	01613023          	sd	s6,0(sp)
    8000412c:	04010413          	addi	s0,sp,64
    80004130:	00002a97          	auipc	s5,0x2
    80004134:	858a8a93          	addi	s5,s5,-1960 # 80005988 <freep>
    80004138:	00f50913          	addi	s2,a0,15
    8000413c:	000ab683          	ld	a3,0(s5)
    80004140:	00495913          	srli	s2,s2,0x4
    80004144:	0019049b          	addiw	s1,s2,1
    80004148:	00048913          	mv	s2,s1
    8000414c:	0c068c63          	beqz	a3,80004224 <__mem_alloc+0x11c>
    80004150:	0006b503          	ld	a0,0(a3)
    80004154:	00852703          	lw	a4,8(a0)
    80004158:	10977063          	bgeu	a4,s1,80004258 <__mem_alloc+0x150>
    8000415c:	000017b7          	lui	a5,0x1
    80004160:	0009099b          	sext.w	s3,s2
    80004164:	0af4e863          	bltu	s1,a5,80004214 <__mem_alloc+0x10c>
    80004168:	02099a13          	slli	s4,s3,0x20
    8000416c:	01ca5a13          	srli	s4,s4,0x1c
    80004170:	fff00b13          	li	s6,-1
    80004174:	0100006f          	j	80004184 <__mem_alloc+0x7c>
    80004178:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000417c:	00852703          	lw	a4,8(a0)
    80004180:	04977463          	bgeu	a4,s1,800041c8 <__mem_alloc+0xc0>
    80004184:	00050793          	mv	a5,a0
    80004188:	fea698e3          	bne	a3,a0,80004178 <__mem_alloc+0x70>
    8000418c:	000a0513          	mv	a0,s4
    80004190:	00000097          	auipc	ra,0x0
    80004194:	1f0080e7          	jalr	496(ra) # 80004380 <kvmincrease>
    80004198:	00050793          	mv	a5,a0
    8000419c:	01050513          	addi	a0,a0,16
    800041a0:	07678e63          	beq	a5,s6,8000421c <__mem_alloc+0x114>
    800041a4:	0137a423          	sw	s3,8(a5)
    800041a8:	00000097          	auipc	ra,0x0
    800041ac:	e94080e7          	jalr	-364(ra) # 8000403c <__mem_free>
    800041b0:	000ab783          	ld	a5,0(s5)
    800041b4:	06078463          	beqz	a5,8000421c <__mem_alloc+0x114>
    800041b8:	0007b503          	ld	a0,0(a5)
    800041bc:	00078693          	mv	a3,a5
    800041c0:	00852703          	lw	a4,8(a0)
    800041c4:	fc9760e3          	bltu	a4,s1,80004184 <__mem_alloc+0x7c>
    800041c8:	08e48263          	beq	s1,a4,8000424c <__mem_alloc+0x144>
    800041cc:	4127073b          	subw	a4,a4,s2
    800041d0:	02071693          	slli	a3,a4,0x20
    800041d4:	01c6d693          	srli	a3,a3,0x1c
    800041d8:	00e52423          	sw	a4,8(a0)
    800041dc:	00d50533          	add	a0,a0,a3
    800041e0:	01252423          	sw	s2,8(a0)
    800041e4:	00fab023          	sd	a5,0(s5)
    800041e8:	01050513          	addi	a0,a0,16
    800041ec:	03813083          	ld	ra,56(sp)
    800041f0:	03013403          	ld	s0,48(sp)
    800041f4:	02813483          	ld	s1,40(sp)
    800041f8:	02013903          	ld	s2,32(sp)
    800041fc:	01813983          	ld	s3,24(sp)
    80004200:	01013a03          	ld	s4,16(sp)
    80004204:	00813a83          	ld	s5,8(sp)
    80004208:	00013b03          	ld	s6,0(sp)
    8000420c:	04010113          	addi	sp,sp,64
    80004210:	00008067          	ret
    80004214:	000019b7          	lui	s3,0x1
    80004218:	f51ff06f          	j	80004168 <__mem_alloc+0x60>
    8000421c:	00000513          	li	a0,0
    80004220:	fcdff06f          	j	800041ec <__mem_alloc+0xe4>
    80004224:	00003797          	auipc	a5,0x3
    80004228:	9fc78793          	addi	a5,a5,-1540 # 80006c20 <base>
    8000422c:	00078513          	mv	a0,a5
    80004230:	00fab023          	sd	a5,0(s5)
    80004234:	00f7b023          	sd	a5,0(a5)
    80004238:	00000713          	li	a4,0
    8000423c:	00003797          	auipc	a5,0x3
    80004240:	9e07a623          	sw	zero,-1556(a5) # 80006c28 <base+0x8>
    80004244:	00050693          	mv	a3,a0
    80004248:	f11ff06f          	j	80004158 <__mem_alloc+0x50>
    8000424c:	00053703          	ld	a4,0(a0)
    80004250:	00e7b023          	sd	a4,0(a5)
    80004254:	f91ff06f          	j	800041e4 <__mem_alloc+0xdc>
    80004258:	00068793          	mv	a5,a3
    8000425c:	f6dff06f          	j	800041c8 <__mem_alloc+0xc0>

0000000080004260 <__putc>:
    80004260:	fe010113          	addi	sp,sp,-32
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00113c23          	sd	ra,24(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00050793          	mv	a5,a0
    80004274:	fef40593          	addi	a1,s0,-17
    80004278:	00100613          	li	a2,1
    8000427c:	00000513          	li	a0,0
    80004280:	fef407a3          	sb	a5,-17(s0)
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	918080e7          	jalr	-1768(ra) # 80002b9c <console_write>
    8000428c:	01813083          	ld	ra,24(sp)
    80004290:	01013403          	ld	s0,16(sp)
    80004294:	02010113          	addi	sp,sp,32
    80004298:	00008067          	ret

000000008000429c <__getc>:
    8000429c:	fe010113          	addi	sp,sp,-32
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00113c23          	sd	ra,24(sp)
    800042a8:	02010413          	addi	s0,sp,32
    800042ac:	fe840593          	addi	a1,s0,-24
    800042b0:	00100613          	li	a2,1
    800042b4:	00000513          	li	a0,0
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	8c4080e7          	jalr	-1852(ra) # 80002b7c <console_read>
    800042c0:	fe844503          	lbu	a0,-24(s0)
    800042c4:	01813083          	ld	ra,24(sp)
    800042c8:	01013403          	ld	s0,16(sp)
    800042cc:	02010113          	addi	sp,sp,32
    800042d0:	00008067          	ret

00000000800042d4 <console_handler>:
    800042d4:	fe010113          	addi	sp,sp,-32
    800042d8:	00813823          	sd	s0,16(sp)
    800042dc:	00113c23          	sd	ra,24(sp)
    800042e0:	00913423          	sd	s1,8(sp)
    800042e4:	02010413          	addi	s0,sp,32
    800042e8:	14202773          	csrr	a4,scause
    800042ec:	100027f3          	csrr	a5,sstatus
    800042f0:	0027f793          	andi	a5,a5,2
    800042f4:	06079e63          	bnez	a5,80004370 <console_handler+0x9c>
    800042f8:	00074c63          	bltz	a4,80004310 <console_handler+0x3c>
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	02010113          	addi	sp,sp,32
    8000430c:	00008067          	ret
    80004310:	0ff77713          	andi	a4,a4,255
    80004314:	00900793          	li	a5,9
    80004318:	fef712e3          	bne	a4,a5,800042fc <console_handler+0x28>
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	4b8080e7          	jalr	1208(ra) # 800027d4 <plic_claim>
    80004324:	00a00793          	li	a5,10
    80004328:	00050493          	mv	s1,a0
    8000432c:	02f50c63          	beq	a0,a5,80004364 <console_handler+0x90>
    80004330:	fc0506e3          	beqz	a0,800042fc <console_handler+0x28>
    80004334:	00050593          	mv	a1,a0
    80004338:	00001517          	auipc	a0,0x1
    8000433c:	fa050513          	addi	a0,a0,-96 # 800052d8 <_ZZ12printIntegermE6digits+0xe0>
    80004340:	fffff097          	auipc	ra,0xfffff
    80004344:	8d8080e7          	jalr	-1832(ra) # 80002c18 <__printf>
    80004348:	01013403          	ld	s0,16(sp)
    8000434c:	01813083          	ld	ra,24(sp)
    80004350:	00048513          	mv	a0,s1
    80004354:	00813483          	ld	s1,8(sp)
    80004358:	02010113          	addi	sp,sp,32
    8000435c:	ffffe317          	auipc	t1,0xffffe
    80004360:	4b030067          	jr	1200(t1) # 8000280c <plic_complete>
    80004364:	fffff097          	auipc	ra,0xfffff
    80004368:	1bc080e7          	jalr	444(ra) # 80003520 <uartintr>
    8000436c:	fddff06f          	j	80004348 <console_handler+0x74>
    80004370:	00001517          	auipc	a0,0x1
    80004374:	06850513          	addi	a0,a0,104 # 800053d8 <digits+0x78>
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	844080e7          	jalr	-1980(ra) # 80002bbc <panic>

0000000080004380 <kvmincrease>:
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	01213023          	sd	s2,0(sp)
    80004388:	00001937          	lui	s2,0x1
    8000438c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00113c23          	sd	ra,24(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	01250933          	add	s2,a0,s2
    800043a4:	00c95913          	srli	s2,s2,0xc
    800043a8:	02090863          	beqz	s2,800043d8 <kvmincrease+0x58>
    800043ac:	00000493          	li	s1,0
    800043b0:	00148493          	addi	s1,s1,1
    800043b4:	fffff097          	auipc	ra,0xfffff
    800043b8:	4bc080e7          	jalr	1212(ra) # 80003870 <kalloc>
    800043bc:	fe991ae3          	bne	s2,s1,800043b0 <kvmincrease+0x30>
    800043c0:	01813083          	ld	ra,24(sp)
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	00813483          	ld	s1,8(sp)
    800043cc:	00013903          	ld	s2,0(sp)
    800043d0:	02010113          	addi	sp,sp,32
    800043d4:	00008067          	ret
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	00013903          	ld	s2,0(sp)
    800043e8:	00000513          	li	a0,0
    800043ec:	02010113          	addi	sp,sp,32
    800043f0:	00008067          	ret
	...
