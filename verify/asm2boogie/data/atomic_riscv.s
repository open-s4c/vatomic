	.file	"atomic.h"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	verification_ignore, @function
verification_ignore:
.LFB0:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE0:
	.size	verification_ignore, .-verification_ignore
	.align	1
	.type	verification_assume, @function
verification_assume:
.LFB1:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE1:
	.size	verification_assume, .-verification_assume
	.align	1
	.type	verification_rand, @function
verification_rand:
.LFB2:
	.cfi_startproc
	li	a0,0
	ret
	.cfi_endproc
.LFE2:
	.size	verification_rand, .-verification_rand
	.align	1
	.type	verification_loop_begin, @function
verification_loop_begin:
.LFB750:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE750:
	.size	verification_loop_begin, .-verification_loop_begin
	.align	1
	.type	verification_spin_start, @function
verification_spin_start:
.LFB752:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE752:
	.size	verification_spin_start, .-verification_spin_start
	.align	1
	.type	verification_spin_end, @function
verification_spin_end:
.LFB5:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE5:
	.size	verification_spin_end, .-verification_spin_end
	.align	1
	.type	vatomic_fence, @function
vatomic_fence:
.LFB6:
	.cfi_startproc
	fence	rw,rw
	ret
	.cfi_endproc
.LFE6:
	.size	vatomic_fence, .-vatomic_fence
	.align	1
	.type	vatomic_fence_acq, @function
vatomic_fence_acq:
.LFB7:
	.cfi_startproc
	fence	r,rw
	ret
	.cfi_endproc
.LFE7:
	.size	vatomic_fence_acq, .-vatomic_fence_acq
	.align	1
	.type	vatomic_fence_rel, @function
vatomic_fence_rel:
.LFB8:
	.cfi_startproc
	fence	rw,w
	ret
	.cfi_endproc
.LFE8:
	.size	vatomic_fence_rel, .-vatomic_fence_rel
	.align	1
	.type	vatomic_fence_rlx, @function
vatomic_fence_rlx:
.LFB9:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE9:
	.size	vatomic_fence_rlx, .-vatomic_fence_rlx
	.align	1
	.type	vatomic8_read, @function
vatomic8_read:
.LFB10:
	.cfi_startproc
	fence	rw,rw
	lbu	a0,0(a0)
	fence	rw,rw
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE10:
	.size	vatomic8_read, .-vatomic8_read
	.align	1
	.type	vatomic8_read_acq, @function
vatomic8_read_acq:
.LFB11:
	.cfi_startproc
	lbu	a0,0(a0)
	fence	r,rw
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE11:
	.size	vatomic8_read_acq, .-vatomic8_read_acq
	.align	1
	.type	vatomic8_read_rlx, @function
vatomic8_read_rlx:
.LFB12:
	.cfi_startproc
	lbu	a0,0(a0)
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE12:
	.size	vatomic8_read_rlx, .-vatomic8_read_rlx
	.align	1
	.type	vatomic16_read, @function
vatomic16_read:
.LFB13:
	.cfi_startproc
	fence	rw,rw
	lhu	a0,0(a0)
	fence	rw,rw
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE13:
	.size	vatomic16_read, .-vatomic16_read
	.align	1
	.type	vatomic16_read_acq, @function
vatomic16_read_acq:
.LFB14:
	.cfi_startproc
	lhu	a0,0(a0)
	fence	r,rw
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE14:
	.size	vatomic16_read_acq, .-vatomic16_read_acq
	.align	1
	.type	vatomic16_read_rlx, @function
vatomic16_read_rlx:
.LFB15:
	.cfi_startproc
	lhu	a0,0(a0)
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE15:
	.size	vatomic16_read_rlx, .-vatomic16_read_rlx
	.align	1
	.type	vatomic32_read, @function
vatomic32_read:
.LFB16:
	.cfi_startproc
	fence	rw,rw
	lw	a0,0(a0)
	fence	r,rw
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE16:
	.size	vatomic32_read, .-vatomic32_read
	.align	1
	.type	vatomic32_read_acq, @function
vatomic32_read_acq:
.LFB17:
	.cfi_startproc
	lw	a0,0(a0)
	fence	r,rw
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE17:
	.size	vatomic32_read_acq, .-vatomic32_read_acq
	.align	1
	.type	vatomic32_read_rlx, @function
vatomic32_read_rlx:
.LFB18:
	.cfi_startproc
	lw	a0,0(a0)
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE18:
	.size	vatomic32_read_rlx, .-vatomic32_read_rlx
	.align	1
	.type	vatomic64_read, @function
vatomic64_read:
.LFB19:
	.cfi_startproc
	fence	rw,rw
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE19:
	.size	vatomic64_read, .-vatomic64_read
	.align	1
	.type	vatomic64_read_acq, @function
vatomic64_read_acq:
.LFB20:
	.cfi_startproc
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE20:
	.size	vatomic64_read_acq, .-vatomic64_read_acq
	.align	1
	.type	vatomic64_read_rlx, @function
vatomic64_read_rlx:
.LFB21:
	.cfi_startproc
	ld	a0,0(a0)
	ret
	.cfi_endproc
.LFE21:
	.size	vatomic64_read_rlx, .-vatomic64_read_rlx
	.align	1
	.type	vatomicsz_read, @function
vatomicsz_read:
.LFB776:
	.cfi_startproc
	fence	rw,rw
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE776:
	.size	vatomicsz_read, .-vatomicsz_read
	.align	1
	.type	vatomicsz_read_acq, @function
vatomicsz_read_acq:
.LFB778:
	.cfi_startproc
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE778:
	.size	vatomicsz_read_acq, .-vatomicsz_read_acq
	.align	1
	.type	vatomicsz_read_rlx, @function
vatomicsz_read_rlx:
.LFB780:
	.cfi_startproc
	ld	a0,0(a0)
	ret
	.cfi_endproc
.LFE780:
	.size	vatomicsz_read_rlx, .-vatomicsz_read_rlx
	.align	1
	.type	vatomicptr_read, @function
vatomicptr_read:
.LFB25:
	.cfi_startproc
	fence	rw,rw
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE25:
	.size	vatomicptr_read, .-vatomicptr_read
	.align	1
	.type	vatomicptr_read_acq, @function
vatomicptr_read_acq:
.LFB26:
	.cfi_startproc
	ld	a0,0(a0)
	fence	r,rw
	ret
	.cfi_endproc
.LFE26:
	.size	vatomicptr_read_acq, .-vatomicptr_read_acq
	.align	1
	.type	vatomicptr_read_rlx, @function
vatomicptr_read_rlx:
.LFB27:
	.cfi_startproc
	ld	a0,0(a0)
	ret
	.cfi_endproc
.LFE27:
	.size	vatomicptr_read_rlx, .-vatomicptr_read_rlx
	.align	1
	.type	vatomic8_write, @function
vatomic8_write:
.LFB754:
	.cfi_startproc
	fence	rw,rw
	sb	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE754:
	.size	vatomic8_write, .-vatomic8_write
	.align	1
	.type	vatomic8_write_rel, @function
vatomic8_write_rel:
.LFB29:
	.cfi_startproc
	fence	rw,w
	sb	a1,0(a0)
	ret
	.cfi_endproc
.LFE29:
	.size	vatomic8_write_rel, .-vatomic8_write_rel
	.align	1
	.type	vatomic8_write_rlx, @function
vatomic8_write_rlx:
.LFB30:
	.cfi_startproc
	sb	a1,0(a0)
	ret
	.cfi_endproc
.LFE30:
	.size	vatomic8_write_rlx, .-vatomic8_write_rlx
	.align	1
	.type	vatomic16_write, @function
vatomic16_write:
.LFB756:
	.cfi_startproc
	fence	rw,rw
	sh	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE756:
	.size	vatomic16_write, .-vatomic16_write
	.align	1
	.type	vatomic16_write_rel, @function
vatomic16_write_rel:
.LFB32:
	.cfi_startproc
	fence	rw,w
	sh	a1,0(a0)
	ret
	.cfi_endproc
.LFE32:
	.size	vatomic16_write_rel, .-vatomic16_write_rel
	.align	1
	.type	vatomic16_write_rlx, @function
vatomic16_write_rlx:
.LFB33:
	.cfi_startproc
	sh	a1,0(a0)
	ret
	.cfi_endproc
.LFE33:
	.size	vatomic16_write_rlx, .-vatomic16_write_rlx
	.align	1
	.type	vatomic32_write, @function
vatomic32_write:
.LFB758:
	.cfi_startproc
	fence	rw,w
	sw	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE758:
	.size	vatomic32_write, .-vatomic32_write
	.align	1
	.type	vatomic32_write_rel, @function
vatomic32_write_rel:
.LFB35:
	.cfi_startproc
	fence	rw,w
	sw	a1,0(a0)
	ret
	.cfi_endproc
.LFE35:
	.size	vatomic32_write_rel, .-vatomic32_write_rel
	.align	1
	.type	vatomic32_write_rlx, @function
vatomic32_write_rlx:
.LFB36:
	.cfi_startproc
	sw	a1,0(a0)
	ret
	.cfi_endproc
.LFE36:
	.size	vatomic32_write_rlx, .-vatomic32_write_rlx
	.align	1
	.type	vatomic64_write, @function
vatomic64_write:
.LFB760:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE760:
	.size	vatomic64_write, .-vatomic64_write
	.align	1
	.type	vatomic64_write_rel, @function
vatomic64_write_rel:
.LFB38:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE38:
	.size	vatomic64_write_rel, .-vatomic64_write_rel
	.align	1
	.type	vatomic64_write_rlx, @function
vatomic64_write_rlx:
.LFB39:
	.cfi_startproc
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE39:
	.size	vatomic64_write_rlx, .-vatomic64_write_rlx
	.align	1
	.type	vatomicsz_write, @function
vatomicsz_write:
.LFB764:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE764:
	.size	vatomicsz_write, .-vatomicsz_write
	.align	1
	.type	vatomicsz_write_rel, @function
vatomicsz_write_rel:
.LFB782:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE782:
	.size	vatomicsz_write_rel, .-vatomicsz_write_rel
	.align	1
	.type	vatomicsz_write_rlx, @function
vatomicsz_write_rlx:
.LFB794:
	.cfi_startproc
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE794:
	.size	vatomicsz_write_rlx, .-vatomicsz_write_rlx
	.align	1
	.type	vatomicptr_write, @function
vatomicptr_write:
.LFB968:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE968:
	.size	vatomicptr_write, .-vatomicptr_write
	.align	1
	.type	vatomicptr_write_rel, @function
vatomicptr_write_rel:
.LFB44:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE44:
	.size	vatomicptr_write_rel, .-vatomicptr_write_rel
	.align	1
	.type	vatomicptr_write_rlx, @function
vatomicptr_write_rlx:
.LFB45:
	.cfi_startproc
	sd	a1,0(a0)
	ret
	.cfi_endproc
.LFE45:
	.size	vatomicptr_write_rlx, .-vatomicptr_write_rlx
	.align	1
	.type	vatomic8_xchg, @function
vatomic8_xchg:
.LFB46:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	and	a2, a5, a3
	or	a2, a2, a1
	sc.w.rl	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE46:
	.size	vatomic8_xchg, .-vatomic8_xchg
	.align	1
	.type	vatomic8_xchg_acq, @function
vatomic8_xchg_acq:
.LFB47:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	and	a2, a5, a3
	or	a2, a2, a1
	sc.w	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE47:
	.size	vatomic8_xchg_acq, .-vatomic8_xchg_acq
	.align	1
	.type	vatomic8_xchg_rel, @function
vatomic8_xchg_rel:
.LFB48:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	and	a2, a5, a3
	or	a2, a2, a1
	sc.w.rl	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE48:
	.size	vatomic8_xchg_rel, .-vatomic8_xchg_rel
	.align	1
	.type	vatomic8_xchg_rlx, @function
vatomic8_xchg_rlx:
.LFB49:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	and	a2, a5, a3
	or	a2, a2, a1
	sc.w	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE49:
	.size	vatomic8_xchg_rlx, .-vatomic8_xchg_rlx
	.align	1
	.type	vatomic16_xchg, @function
vatomic16_xchg:
.LFB50:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a5,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	and	a2, a4, a5
	or	a2, a2, a1
	sc.w.rl	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE50:
	.size	vatomic16_xchg, .-vatomic16_xchg
	.align	1
	.type	vatomic16_xchg_acq, @function
vatomic16_xchg_acq:
.LFB51:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a5,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	and	a2, a4, a5
	or	a2, a2, a1
	sc.w	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE51:
	.size	vatomic16_xchg_acq, .-vatomic16_xchg_acq
	.align	1
	.type	vatomic16_xchg_rel, @function
vatomic16_xchg_rel:
.LFB52:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a5,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a5
	or	a2, a2, a1
	sc.w.rl	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE52:
	.size	vatomic16_xchg_rel, .-vatomic16_xchg_rel
	.align	1
	.type	vatomic16_xchg_rlx, @function
vatomic16_xchg_rlx:
.LFB53:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a5,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a5
	or	a2, a2, a1
	sc.w	a2, a2, 0(a0)
	bnez	a2, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE53:
	.size	vatomic16_xchg_rlx, .-vatomic16_xchg_rlx
	.align	1
	.type	vatomic32_xchg, @function
vatomic32_xchg:
.LFB54:
	.cfi_startproc
	amoswap.w.aqrl	a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE54:
	.size	vatomic32_xchg, .-vatomic32_xchg
	.align	1
	.type	vatomic32_xchg_acq, @function
vatomic32_xchg_acq:
.LFB55:
	.cfi_startproc
	amoswap.w.aq	a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE55:
	.size	vatomic32_xchg_acq, .-vatomic32_xchg_acq
	.align	1
	.type	vatomic32_xchg_rel, @function
vatomic32_xchg_rel:
.LFB56:
	.cfi_startproc
	amoswap.w.rl	a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE56:
	.size	vatomic32_xchg_rel, .-vatomic32_xchg_rel
	.align	1
	.type	vatomic32_xchg_rlx, @function
vatomic32_xchg_rlx:
.LFB57:
	.cfi_startproc
	amoswap.w	a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE57:
	.size	vatomic32_xchg_rlx, .-vatomic32_xchg_rlx
	.align	1
	.type	vatomic64_xchg, @function
vatomic64_xchg:
.LFB58:
	.cfi_startproc
	amoswap.d.aqrl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE58:
	.size	vatomic64_xchg, .-vatomic64_xchg
	.align	1
	.type	vatomic64_xchg_acq, @function
vatomic64_xchg_acq:
.LFB59:
	.cfi_startproc
	amoswap.d.aq	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE59:
	.size	vatomic64_xchg_acq, .-vatomic64_xchg_acq
	.align	1
	.type	vatomic64_xchg_rel, @function
vatomic64_xchg_rel:
.LFB60:
	.cfi_startproc
	amoswap.d.rl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE60:
	.size	vatomic64_xchg_rel, .-vatomic64_xchg_rel
	.align	1
	.type	vatomic64_xchg_rlx, @function
vatomic64_xchg_rlx:
.LFB61:
	.cfi_startproc
	amoswap.d	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE61:
	.size	vatomic64_xchg_rlx, .-vatomic64_xchg_rlx
	.align	1
	.type	vatomicsz_xchg, @function
vatomicsz_xchg:
.LFB806:
	.cfi_startproc
	amoswap.d.aqrl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE806:
	.size	vatomicsz_xchg, .-vatomicsz_xchg
	.align	1
	.type	vatomicsz_xchg_acq, @function
vatomicsz_xchg_acq:
.LFB828:
	.cfi_startproc
	amoswap.d.aq	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE828:
	.size	vatomicsz_xchg_acq, .-vatomicsz_xchg_acq
	.align	1
	.type	vatomicsz_xchg_rel, @function
vatomicsz_xchg_rel:
.LFB850:
	.cfi_startproc
	amoswap.d.rl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE850:
	.size	vatomicsz_xchg_rel, .-vatomicsz_xchg_rel
	.align	1
	.type	vatomicsz_xchg_rlx, @function
vatomicsz_xchg_rlx:
.LFB872:
	.cfi_startproc
	amoswap.d	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE872:
	.size	vatomicsz_xchg_rlx, .-vatomicsz_xchg_rlx
	.align	1
	.type	vatomicptr_xchg, @function
vatomicptr_xchg:
.LFB66:
	.cfi_startproc
	amoswap.d.aqrl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE66:
	.size	vatomicptr_xchg, .-vatomicptr_xchg
	.align	1
	.type	vatomicptr_xchg_acq, @function
vatomicptr_xchg_acq:
.LFB67:
	.cfi_startproc
	amoswap.d.aq	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE67:
	.size	vatomicptr_xchg_acq, .-vatomicptr_xchg_acq
	.align	1
	.type	vatomicptr_xchg_rel, @function
vatomicptr_xchg_rel:
.LFB68:
	.cfi_startproc
	amoswap.d.rl	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE68:
	.size	vatomicptr_xchg_rel, .-vatomicptr_xchg_rel
	.align	1
	.type	vatomicptr_xchg_rlx, @function
vatomicptr_xchg_rlx:
.LFB69:
	.cfi_startproc
	amoswap.d	a1,a1,0(a0)
	mv	a0,a1
	ret
	.cfi_endproc
.LFE69:
	.size	vatomicptr_xchg_rlx, .-vatomicptr_xchg_rlx
	.align	1
	.type	vatomic8_cmpxchg, @function
vatomic8_cmpxchg:
.LFB70:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a1,a1,a5
	sllw	a2,a2,a5
	andi	a0,a0,-4
	not	a6,a4
	and	a1,a1,a4
	and	a2,a2,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	and	a7, a3, a4
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w.rl	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a5
	andi	a0,a3,0xff
	ret
	.cfi_endproc
.LFE70:
	.size	vatomic8_cmpxchg, .-vatomic8_cmpxchg
	.align	1
	.type	vatomic8_cmpxchg_acq, @function
vatomic8_cmpxchg_acq:
.LFB71:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a1,a1,a5
	sllw	a2,a2,a5
	andi	a0,a0,-4
	not	a6,a4
	and	a1,a1,a4
	and	a2,a2,a4
	1:
	lr.w.aq	a3, 0(a0)
	and	a7, a3, a4
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a5
	andi	a0,a3,0xff
	ret
	.cfi_endproc
.LFE71:
	.size	vatomic8_cmpxchg_acq, .-vatomic8_cmpxchg_acq
	.align	1
	.type	vatomic8_cmpxchg_rel, @function
vatomic8_cmpxchg_rel:
.LFB72:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a1,a1,a5
	sllw	a2,a2,a5
	andi	a0,a0,-4
	not	a6,a4
	and	a1,a1,a4
	and	a2,a2,a4
	1:
	lr.w	a3, 0(a0)
	and	a7, a3, a4
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w.rl	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a5
	andi	a0,a3,0xff
	ret
	.cfi_endproc
.LFE72:
	.size	vatomic8_cmpxchg_rel, .-vatomic8_cmpxchg_rel
	.align	1
	.type	vatomic8_cmpxchg_rlx, @function
vatomic8_cmpxchg_rlx:
.LFB73:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a1,a1,a5
	sllw	a2,a2,a5
	andi	a0,a0,-4
	not	a6,a4
	and	a1,a1,a4
	and	a2,a2,a4
	1:
	lr.w	a3, 0(a0)
	and	a7, a3, a4
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a5
	andi	a0,a3,0xff
	ret
	.cfi_endproc
.LFE73:
	.size	vatomic8_cmpxchg_rlx, .-vatomic8_cmpxchg_rlx
	.align	1
	.type	vatomic16_cmpxchg, @function
vatomic16_cmpxchg:
.LFB74:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	sllw	a1,a1,a4
	sllw	a2,a2,a4
	andi	a0,a0,-4
	not	a6,a5
	and	a1,a1,a5
	and	a2,a2,a5
	1:
	lr.w.aqrl	a3, 0(a0)
	and	a7, a3, a5
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w.rl	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a4
	slli	a0,a3,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE74:
	.size	vatomic16_cmpxchg, .-vatomic16_cmpxchg
	.align	1
	.type	vatomic16_cmpxchg_acq, @function
vatomic16_cmpxchg_acq:
.LFB75:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	sllw	a1,a1,a4
	sllw	a2,a2,a4
	andi	a0,a0,-4
	not	a6,a5
	and	a1,a1,a5
	and	a2,a2,a5
	1:
	lr.w.aq	a3, 0(a0)
	and	a7, a3, a5
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a4
	slli	a0,a3,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE75:
	.size	vatomic16_cmpxchg_acq, .-vatomic16_cmpxchg_acq
	.align	1
	.type	vatomic16_cmpxchg_rel, @function
vatomic16_cmpxchg_rel:
.LFB76:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	sllw	a1,a1,a4
	sllw	a2,a2,a4
	andi	a0,a0,-4
	not	a6,a5
	and	a1,a1,a5
	and	a2,a2,a5
	1:
	lr.w	a3, 0(a0)
	and	a7, a3, a5
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w.rl	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a4
	slli	a0,a3,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE76:
	.size	vatomic16_cmpxchg_rel, .-vatomic16_cmpxchg_rel
	.align	1
	.type	vatomic16_cmpxchg_rlx, @function
vatomic16_cmpxchg_rlx:
.LFB77:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	sllw	a1,a1,a4
	sllw	a2,a2,a4
	andi	a0,a0,-4
	not	a6,a5
	and	a1,a1,a5
	and	a2,a2,a5
	1:
	lr.w	a3, 0(a0)
	and	a7, a3, a5
	bne	a7, a1, 1f
	and	a7, a3, a6
	or	a7, a7, a2
	sc.w	a7, a7, 0(a0)
	bnez	a7, 1b
	1:
	sraw	a3,a3,a4
	slli	a0,a3,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE77:
	.size	vatomic16_cmpxchg_rlx, .-vatomic16_cmpxchg_rlx
	.align	1
	.type	vatomic32_cmpxchg, @function
vatomic32_cmpxchg:
.LFB78:
	.cfi_startproc
	1:
	lr.w.aqrl	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a4,a2,0(a0)
	bnez	a4,1b
	1:
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE78:
	.size	vatomic32_cmpxchg, .-vatomic32_cmpxchg
	.align	1
	.type	vatomic32_cmpxchg_acq, @function
vatomic32_cmpxchg_acq:
.LFB79:
	.cfi_startproc
	1:
	lr.w.aq	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a4,a2,0(a0)
	bnez	a4,1b
	1:
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE79:
	.size	vatomic32_cmpxchg_acq, .-vatomic32_cmpxchg_acq
	.align	1
	.type	vatomic32_cmpxchg_rel, @function
vatomic32_cmpxchg_rel:
.LFB80:
	.cfi_startproc
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a4,a2,0(a0)
	bnez	a4,1b
	1:
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE80:
	.size	vatomic32_cmpxchg_rel, .-vatomic32_cmpxchg_rel
	.align	1
	.type	vatomic32_cmpxchg_rlx, @function
vatomic32_cmpxchg_rlx:
.LFB81:
	.cfi_startproc
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a4,a2,0(a0)
	bnez	a4,1b
	1:
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE81:
	.size	vatomic32_cmpxchg_rlx, .-vatomic32_cmpxchg_rlx
	.align	1
	.type	vatomic64_cmpxchg, @function
vatomic64_cmpxchg:
.LFB82:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aqrl	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE82:
	.size	vatomic64_cmpxchg, .-vatomic64_cmpxchg
	.align	1
	.type	vatomic64_cmpxchg_acq, @function
vatomic64_cmpxchg_acq:
.LFB83:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aq	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE83:
	.size	vatomic64_cmpxchg_acq, .-vatomic64_cmpxchg_acq
	.align	1
	.type	vatomic64_cmpxchg_rel, @function
vatomic64_cmpxchg_rel:
.LFB84:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE84:
	.size	vatomic64_cmpxchg_rel, .-vatomic64_cmpxchg_rel
	.align	1
	.type	vatomic64_cmpxchg_rlx, @function
vatomic64_cmpxchg_rlx:
.LFB85:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE85:
	.size	vatomic64_cmpxchg_rlx, .-vatomic64_cmpxchg_rlx
	.align	1
	.type	vatomicsz_cmpxchg, @function
vatomicsz_cmpxchg:
.LFB952:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aqrl	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE952:
	.size	vatomicsz_cmpxchg, .-vatomicsz_cmpxchg
	.align	1
	.type	vatomicsz_cmpxchg_acq, @function
vatomicsz_cmpxchg_acq:
.LFB954:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aq	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE954:
	.size	vatomicsz_cmpxchg_acq, .-vatomicsz_cmpxchg_acq
	.align	1
	.type	vatomicsz_cmpxchg_rel, @function
vatomicsz_cmpxchg_rel:
.LFB956:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE956:
	.size	vatomicsz_cmpxchg_rel, .-vatomicsz_cmpxchg_rel
	.align	1
	.type	vatomicsz_cmpxchg_rlx, @function
vatomicsz_cmpxchg_rlx:
.LFB958:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE958:
	.size	vatomicsz_cmpxchg_rlx, .-vatomicsz_cmpxchg_rlx
	.align	1
	.type	vatomicptr_cmpxchg, @function
vatomicptr_cmpxchg:
.LFB90:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aqrl	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE90:
	.size	vatomicptr_cmpxchg, .-vatomicptr_cmpxchg
	.align	1
	.type	vatomicptr_cmpxchg_acq, @function
vatomicptr_cmpxchg_acq:
.LFB91:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d.aq	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE91:
	.size	vatomicptr_cmpxchg_acq, .-vatomicptr_cmpxchg_acq
	.align	1
	.type	vatomicptr_cmpxchg_rel, @function
vatomicptr_cmpxchg_rel:
.LFB92:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d.rl	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE92:
	.size	vatomicptr_cmpxchg_rel, .-vatomicptr_cmpxchg_rel
	.align	1
	.type	vatomicptr_cmpxchg_rlx, @function
vatomicptr_cmpxchg_rlx:
.LFB93:
	.cfi_startproc
	mv	a5,a0
	1:
	lr.d	a0,0(a5)
	bne	a0,a1,1f
	sc.d	a4,a2,0(a5)
	bnez	a4,1b
	1:
	ret
	.cfi_endproc
.LFE93:
	.size	vatomicptr_cmpxchg_rlx, .-vatomicptr_cmpxchg_rlx
	.align	1
	.type	vatomic8_get_and, @function
vatomic8_get_and:
.LFB94:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	and	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE94:
	.size	vatomic8_get_and, .-vatomic8_get_and
	.align	1
	.type	vatomic8_get_and_acq, @function
vatomic8_get_and_acq:
.LFB95:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	and	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE95:
	.size	vatomic8_get_and_acq, .-vatomic8_get_and_acq
	.align	1
	.type	vatomic8_get_and_rel, @function
vatomic8_get_and_rel:
.LFB96:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	and	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE96:
	.size	vatomic8_get_and_rel, .-vatomic8_get_and_rel
	.align	1
	.type	vatomic8_get_and_rlx, @function
vatomic8_get_and_rlx:
.LFB97:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	and	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE97:
	.size	vatomic8_get_and_rlx, .-vatomic8_get_and_rlx
	.align	1
	.type	vatomic16_get_and, @function
vatomic16_get_and:
.LFB98:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	and	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE98:
	.size	vatomic16_get_and, .-vatomic16_get_and
	.align	1
	.type	vatomic16_get_and_acq, @function
vatomic16_get_and_acq:
.LFB99:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	and	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE99:
	.size	vatomic16_get_and_acq, .-vatomic16_get_and_acq
	.align	1
	.type	vatomic16_get_and_rel, @function
vatomic16_get_and_rel:
.LFB100:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	and	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE100:
	.size	vatomic16_get_and_rel, .-vatomic16_get_and_rel
	.align	1
	.type	vatomic16_get_and_rlx, @function
vatomic16_get_and_rlx:
.LFB101:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	and	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE101:
	.size	vatomic16_get_and_rlx, .-vatomic16_get_and_rlx
	.align	1
	.type	vatomic32_get_and, @function
vatomic32_get_and:
.LFB102:
	.cfi_startproc
	amoand.w.aqrl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE102:
	.size	vatomic32_get_and, .-vatomic32_get_and
	.align	1
	.type	vatomic32_get_and_acq, @function
vatomic32_get_and_acq:
.LFB103:
	.cfi_startproc
	amoand.w.aq	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE103:
	.size	vatomic32_get_and_acq, .-vatomic32_get_and_acq
	.align	1
	.type	vatomic32_get_and_rel, @function
vatomic32_get_and_rel:
.LFB104:
	.cfi_startproc
	amoand.w.rl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE104:
	.size	vatomic32_get_and_rel, .-vatomic32_get_and_rel
	.align	1
	.type	vatomic32_get_and_rlx, @function
vatomic32_get_and_rlx:
.LFB105:
	.cfi_startproc
	amoand.w	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE105:
	.size	vatomic32_get_and_rlx, .-vatomic32_get_and_rlx
	.align	1
	.type	vatomic64_get_and, @function
vatomic64_get_and:
.LFB106:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE106:
	.size	vatomic64_get_and, .-vatomic64_get_and
	.align	1
	.type	vatomic64_get_and_acq, @function
vatomic64_get_and_acq:
.LFB107:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE107:
	.size	vatomic64_get_and_acq, .-vatomic64_get_and_acq
	.align	1
	.type	vatomic64_get_and_rel, @function
vatomic64_get_and_rel:
.LFB108:
	.cfi_startproc
	mv	a5,a0
	amoand.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE108:
	.size	vatomic64_get_and_rel, .-vatomic64_get_and_rel
	.align	1
	.type	vatomic64_get_and_rlx, @function
vatomic64_get_and_rlx:
.LFB109:
	.cfi_startproc
	mv	a5,a0
	amoand.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE109:
	.size	vatomic64_get_and_rlx, .-vatomic64_get_and_rlx
	.align	1
	.type	vatomicsz_get_and, @function
vatomicsz_get_and:
.LFB808:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE808:
	.size	vatomicsz_get_and, .-vatomicsz_get_and
	.align	1
	.type	vatomicsz_get_and_acq, @function
vatomicsz_get_and_acq:
.LFB830:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE830:
	.size	vatomicsz_get_and_acq, .-vatomicsz_get_and_acq
	.align	1
	.type	vatomicsz_get_and_rel, @function
vatomicsz_get_and_rel:
.LFB852:
	.cfi_startproc
	mv	a5,a0
	amoand.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE852:
	.size	vatomicsz_get_and_rel, .-vatomicsz_get_and_rel
	.align	1
	.type	vatomicsz_get_and_rlx, @function
vatomicsz_get_and_rlx:
.LFB874:
	.cfi_startproc
	mv	a5,a0
	amoand.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE874:
	.size	vatomicsz_get_and_rlx, .-vatomicsz_get_and_rlx
	.align	1
	.type	vatomic8_get_or, @function
vatomic8_get_or:
.LFB114:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	or	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE114:
	.size	vatomic8_get_or, .-vatomic8_get_or
	.align	1
	.type	vatomic8_get_or_acq, @function
vatomic8_get_or_acq:
.LFB115:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	or	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE115:
	.size	vatomic8_get_or_acq, .-vatomic8_get_or_acq
	.align	1
	.type	vatomic8_get_or_rel, @function
vatomic8_get_or_rel:
.LFB116:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	or	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE116:
	.size	vatomic8_get_or_rel, .-vatomic8_get_or_rel
	.align	1
	.type	vatomic8_get_or_rlx, @function
vatomic8_get_or_rlx:
.LFB117:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	or	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE117:
	.size	vatomic8_get_or_rlx, .-vatomic8_get_or_rlx
	.align	1
	.type	vatomic16_get_or, @function
vatomic16_get_or:
.LFB118:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	or	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE118:
	.size	vatomic16_get_or, .-vatomic16_get_or
	.align	1
	.type	vatomic16_get_or_acq, @function
vatomic16_get_or_acq:
.LFB119:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	or	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE119:
	.size	vatomic16_get_or_acq, .-vatomic16_get_or_acq
	.align	1
	.type	vatomic16_get_or_rel, @function
vatomic16_get_or_rel:
.LFB120:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	or	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE120:
	.size	vatomic16_get_or_rel, .-vatomic16_get_or_rel
	.align	1
	.type	vatomic16_get_or_rlx, @function
vatomic16_get_or_rlx:
.LFB121:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	or	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE121:
	.size	vatomic16_get_or_rlx, .-vatomic16_get_or_rlx
	.align	1
	.type	vatomic32_get_or, @function
vatomic32_get_or:
.LFB122:
	.cfi_startproc
	amoor.w.aqrl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE122:
	.size	vatomic32_get_or, .-vatomic32_get_or
	.align	1
	.type	vatomic32_get_or_acq, @function
vatomic32_get_or_acq:
.LFB123:
	.cfi_startproc
	amoor.w.aq	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE123:
	.size	vatomic32_get_or_acq, .-vatomic32_get_or_acq
	.align	1
	.type	vatomic32_get_or_rel, @function
vatomic32_get_or_rel:
.LFB124:
	.cfi_startproc
	amoor.w.rl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE124:
	.size	vatomic32_get_or_rel, .-vatomic32_get_or_rel
	.align	1
	.type	vatomic32_get_or_rlx, @function
vatomic32_get_or_rlx:
.LFB125:
	.cfi_startproc
	amoor.w	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE125:
	.size	vatomic32_get_or_rlx, .-vatomic32_get_or_rlx
	.align	1
	.type	vatomic64_get_or, @function
vatomic64_get_or:
.LFB126:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE126:
	.size	vatomic64_get_or, .-vatomic64_get_or
	.align	1
	.type	vatomic64_get_or_acq, @function
vatomic64_get_or_acq:
.LFB127:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE127:
	.size	vatomic64_get_or_acq, .-vatomic64_get_or_acq
	.align	1
	.type	vatomic64_get_or_rel, @function
vatomic64_get_or_rel:
.LFB128:
	.cfi_startproc
	mv	a5,a0
	amoor.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE128:
	.size	vatomic64_get_or_rel, .-vatomic64_get_or_rel
	.align	1
	.type	vatomic64_get_or_rlx, @function
vatomic64_get_or_rlx:
.LFB129:
	.cfi_startproc
	mv	a5,a0
	amoor.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE129:
	.size	vatomic64_get_or_rlx, .-vatomic64_get_or_rlx
	.align	1
	.type	vatomicsz_get_or, @function
vatomicsz_get_or:
.LFB812:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE812:
	.size	vatomicsz_get_or, .-vatomicsz_get_or
	.align	1
	.type	vatomicsz_get_or_acq, @function
vatomicsz_get_or_acq:
.LFB834:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE834:
	.size	vatomicsz_get_or_acq, .-vatomicsz_get_or_acq
	.align	1
	.type	vatomicsz_get_or_rel, @function
vatomicsz_get_or_rel:
.LFB856:
	.cfi_startproc
	mv	a5,a0
	amoor.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE856:
	.size	vatomicsz_get_or_rel, .-vatomicsz_get_or_rel
	.align	1
	.type	vatomicsz_get_or_rlx, @function
vatomicsz_get_or_rlx:
.LFB878:
	.cfi_startproc
	mv	a5,a0
	amoor.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE878:
	.size	vatomicsz_get_or_rlx, .-vatomicsz_get_or_rlx
	.align	1
	.type	vatomic8_get_xor, @function
vatomic8_get_xor:
.LFB134:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	xor	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE134:
	.size	vatomic8_get_xor, .-vatomic8_get_xor
	.align	1
	.type	vatomic8_get_xor_acq, @function
vatomic8_get_xor_acq:
.LFB135:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	xor	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE135:
	.size	vatomic8_get_xor_acq, .-vatomic8_get_xor_acq
	.align	1
	.type	vatomic8_get_xor_rel, @function
vatomic8_get_xor_rel:
.LFB136:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	xor	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE136:
	.size	vatomic8_get_xor_rel, .-vatomic8_get_xor_rel
	.align	1
	.type	vatomic8_get_xor_rlx, @function
vatomic8_get_xor_rlx:
.LFB137:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	xor	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE137:
	.size	vatomic8_get_xor_rlx, .-vatomic8_get_xor_rlx
	.align	1
	.type	vatomic16_get_xor, @function
vatomic16_get_xor:
.LFB138:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	xor	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE138:
	.size	vatomic16_get_xor, .-vatomic16_get_xor
	.align	1
	.type	vatomic16_get_xor_acq, @function
vatomic16_get_xor_acq:
.LFB139:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	xor	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE139:
	.size	vatomic16_get_xor_acq, .-vatomic16_get_xor_acq
	.align	1
	.type	vatomic16_get_xor_rel, @function
vatomic16_get_xor_rel:
.LFB140:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	xor	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE140:
	.size	vatomic16_get_xor_rel, .-vatomic16_get_xor_rel
	.align	1
	.type	vatomic16_get_xor_rlx, @function
vatomic16_get_xor_rlx:
.LFB141:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	xor	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE141:
	.size	vatomic16_get_xor_rlx, .-vatomic16_get_xor_rlx
	.align	1
	.type	vatomic32_get_xor, @function
vatomic32_get_xor:
.LFB142:
	.cfi_startproc
	amoxor.w.aqrl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE142:
	.size	vatomic32_get_xor, .-vatomic32_get_xor
	.align	1
	.type	vatomic32_get_xor_acq, @function
vatomic32_get_xor_acq:
.LFB143:
	.cfi_startproc
	amoxor.w.aq	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE143:
	.size	vatomic32_get_xor_acq, .-vatomic32_get_xor_acq
	.align	1
	.type	vatomic32_get_xor_rel, @function
vatomic32_get_xor_rel:
.LFB144:
	.cfi_startproc
	amoxor.w.rl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE144:
	.size	vatomic32_get_xor_rel, .-vatomic32_get_xor_rel
	.align	1
	.type	vatomic32_get_xor_rlx, @function
vatomic32_get_xor_rlx:
.LFB145:
	.cfi_startproc
	amoxor.w	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE145:
	.size	vatomic32_get_xor_rlx, .-vatomic32_get_xor_rlx
	.align	1
	.type	vatomic64_get_xor, @function
vatomic64_get_xor:
.LFB146:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE146:
	.size	vatomic64_get_xor, .-vatomic64_get_xor
	.align	1
	.type	vatomic64_get_xor_acq, @function
vatomic64_get_xor_acq:
.LFB147:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE147:
	.size	vatomic64_get_xor_acq, .-vatomic64_get_xor_acq
	.align	1
	.type	vatomic64_get_xor_rel, @function
vatomic64_get_xor_rel:
.LFB148:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE148:
	.size	vatomic64_get_xor_rel, .-vatomic64_get_xor_rel
	.align	1
	.type	vatomic64_get_xor_rlx, @function
vatomic64_get_xor_rlx:
.LFB149:
	.cfi_startproc
	mv	a5,a0
	amoxor.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE149:
	.size	vatomic64_get_xor_rlx, .-vatomic64_get_xor_rlx
	.align	1
	.type	vatomicsz_get_xor, @function
vatomicsz_get_xor:
.LFB816:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE816:
	.size	vatomicsz_get_xor, .-vatomicsz_get_xor
	.align	1
	.type	vatomicsz_get_xor_acq, @function
vatomicsz_get_xor_acq:
.LFB838:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE838:
	.size	vatomicsz_get_xor_acq, .-vatomicsz_get_xor_acq
	.align	1
	.type	vatomicsz_get_xor_rel, @function
vatomicsz_get_xor_rel:
.LFB860:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE860:
	.size	vatomicsz_get_xor_rel, .-vatomicsz_get_xor_rel
	.align	1
	.type	vatomicsz_get_xor_rlx, @function
vatomicsz_get_xor_rlx:
.LFB882:
	.cfi_startproc
	mv	a5,a0
	amoxor.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE882:
	.size	vatomicsz_get_xor_rlx, .-vatomicsz_get_xor_rlx
	.align	1
	.type	vatomic8_get_add, @function
vatomic8_get_add:
.LFB154:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE154:
	.size	vatomic8_get_add, .-vatomic8_get_add
	.align	1
	.type	vatomic8_get_add_acq, @function
vatomic8_get_add_acq:
.LFB155:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE155:
	.size	vatomic8_get_add_acq, .-vatomic8_get_add_acq
	.align	1
	.type	vatomic8_get_add_rel, @function
vatomic8_get_add_rel:
.LFB156:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE156:
	.size	vatomic8_get_add_rel, .-vatomic8_get_add_rel
	.align	1
	.type	vatomic8_get_add_rlx, @function
vatomic8_get_add_rlx:
.LFB157:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE157:
	.size	vatomic8_get_add_rlx, .-vatomic8_get_add_rlx
	.align	1
	.type	vatomic16_get_add, @function
vatomic16_get_add:
.LFB158:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE158:
	.size	vatomic16_get_add, .-vatomic16_get_add
	.align	1
	.type	vatomic16_get_add_acq, @function
vatomic16_get_add_acq:
.LFB159:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE159:
	.size	vatomic16_get_add_acq, .-vatomic16_get_add_acq
	.align	1
	.type	vatomic16_get_add_rel, @function
vatomic16_get_add_rel:
.LFB160:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE160:
	.size	vatomic16_get_add_rel, .-vatomic16_get_add_rel
	.align	1
	.type	vatomic16_get_add_rlx, @function
vatomic16_get_add_rlx:
.LFB161:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE161:
	.size	vatomic16_get_add_rlx, .-vatomic16_get_add_rlx
	.align	1
	.type	vatomic32_get_add, @function
vatomic32_get_add:
.LFB162:
	.cfi_startproc
	amoadd.w.aqrl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE162:
	.size	vatomic32_get_add, .-vatomic32_get_add
	.align	1
	.type	vatomic32_get_add_acq, @function
vatomic32_get_add_acq:
.LFB163:
	.cfi_startproc
	amoadd.w.aq	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE163:
	.size	vatomic32_get_add_acq, .-vatomic32_get_add_acq
	.align	1
	.type	vatomic32_get_add_rel, @function
vatomic32_get_add_rel:
.LFB164:
	.cfi_startproc
	amoadd.w.rl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE164:
	.size	vatomic32_get_add_rel, .-vatomic32_get_add_rel
	.align	1
	.type	vatomic32_get_add_rlx, @function
vatomic32_get_add_rlx:
.LFB165:
	.cfi_startproc
	amoadd.w	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE165:
	.size	vatomic32_get_add_rlx, .-vatomic32_get_add_rlx
	.align	1
	.type	vatomic64_get_add, @function
vatomic64_get_add:
.LFB166:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE166:
	.size	vatomic64_get_add, .-vatomic64_get_add
	.align	1
	.type	vatomic64_get_add_acq, @function
vatomic64_get_add_acq:
.LFB167:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE167:
	.size	vatomic64_get_add_acq, .-vatomic64_get_add_acq
	.align	1
	.type	vatomic64_get_add_rel, @function
vatomic64_get_add_rel:
.LFB168:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE168:
	.size	vatomic64_get_add_rel, .-vatomic64_get_add_rel
	.align	1
	.type	vatomic64_get_add_rlx, @function
vatomic64_get_add_rlx:
.LFB169:
	.cfi_startproc
	mv	a5,a0
	amoadd.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE169:
	.size	vatomic64_get_add_rlx, .-vatomic64_get_add_rlx
	.align	1
	.type	vatomicsz_get_add, @function
vatomicsz_get_add:
.LFB820:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE820:
	.size	vatomicsz_get_add, .-vatomicsz_get_add
	.align	1
	.type	vatomicsz_get_add_acq, @function
vatomicsz_get_add_acq:
.LFB842:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE842:
	.size	vatomicsz_get_add_acq, .-vatomicsz_get_add_acq
	.align	1
	.type	vatomicsz_get_add_rel, @function
vatomicsz_get_add_rel:
.LFB864:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE864:
	.size	vatomicsz_get_add_rel, .-vatomicsz_get_add_rel
	.align	1
	.type	vatomicsz_get_add_rlx, @function
vatomicsz_get_add_rlx:
.LFB886:
	.cfi_startproc
	mv	a5,a0
	amoadd.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE886:
	.size	vatomicsz_get_add_rlx, .-vatomicsz_get_add_rlx
	.align	1
	.type	vatomic8_get_sub, @function
vatomic8_get_sub:
.LFB174:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE174:
	.size	vatomic8_get_sub, .-vatomic8_get_sub
	.align	1
	.type	vatomic8_get_sub_acq, @function
vatomic8_get_sub_acq:
.LFB175:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE175:
	.size	vatomic8_get_sub_acq, .-vatomic8_get_sub_acq
	.align	1
	.type	vatomic8_get_sub_rel, @function
vatomic8_get_sub_rel:
.LFB176:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE176:
	.size	vatomic8_get_sub_rel, .-vatomic8_get_sub_rel
	.align	1
	.type	vatomic8_get_sub_rlx, @function
vatomic8_get_sub_rlx:
.LFB177:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a3
	sllw	a1,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a1
	and	a6, a6, a3
	and	a7, a5, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE177:
	.size	vatomic8_get_sub_rlx, .-vatomic8_get_sub_rlx
	.align	1
	.type	vatomic16_get_sub, @function
vatomic16_get_sub:
.LFB178:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE178:
	.size	vatomic16_get_sub, .-vatomic16_get_sub
	.align	1
	.type	vatomic16_get_sub_acq, @function
vatomic16_get_sub_acq:
.LFB179:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w.aq	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE179:
	.size	vatomic16_get_sub_acq, .-vatomic16_get_sub_acq
	.align	1
	.type	vatomic16_get_sub_rel, @function
vatomic16_get_sub_rel:
.LFB180:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE180:
	.size	vatomic16_get_sub_rel, .-vatomic16_get_sub_rel
	.align	1
	.type	vatomic16_get_sub_rlx, @function
vatomic16_get_sub_rlx:
.LFB181:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	negw	a1,a1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a1,a1,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a1
	and	a6, a6, a5
	and	a7, a4, a2
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE181:
	.size	vatomic16_get_sub_rlx, .-vatomic16_get_sub_rlx
	.align	1
	.type	vatomic32_get_sub, @function
vatomic32_get_sub:
.LFB182:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aqrl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE182:
	.size	vatomic32_get_sub, .-vatomic32_get_sub
	.align	1
	.type	vatomic32_get_sub_acq, @function
vatomic32_get_sub_acq:
.LFB183:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aq	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE183:
	.size	vatomic32_get_sub_acq, .-vatomic32_get_sub_acq
	.align	1
	.type	vatomic32_get_sub_rel, @function
vatomic32_get_sub_rel:
.LFB184:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.rl	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE184:
	.size	vatomic32_get_sub_rel, .-vatomic32_get_sub_rel
	.align	1
	.type	vatomic32_get_sub_rlx, @function
vatomic32_get_sub_rlx:
.LFB185:
	.cfi_startproc
	negw	a1,a1
	amoadd.w	a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE185:
	.size	vatomic32_get_sub_rlx, .-vatomic32_get_sub_rlx
	.align	1
	.type	vatomic64_get_sub, @function
vatomic64_get_sub:
.LFB186:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE186:
	.size	vatomic64_get_sub, .-vatomic64_get_sub
	.align	1
	.type	vatomic64_get_sub_acq, @function
vatomic64_get_sub_acq:
.LFB187:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE187:
	.size	vatomic64_get_sub_acq, .-vatomic64_get_sub_acq
	.align	1
	.type	vatomic64_get_sub_rel, @function
vatomic64_get_sub_rel:
.LFB188:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE188:
	.size	vatomic64_get_sub_rel, .-vatomic64_get_sub_rel
	.align	1
	.type	vatomic64_get_sub_rlx, @function
vatomic64_get_sub_rlx:
.LFB189:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE189:
	.size	vatomic64_get_sub_rlx, .-vatomic64_get_sub_rlx
	.align	1
	.type	vatomicsz_get_sub, @function
vatomicsz_get_sub:
.LFB824:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aqrl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE824:
	.size	vatomicsz_get_sub, .-vatomicsz_get_sub
	.align	1
	.type	vatomicsz_get_sub_acq, @function
vatomicsz_get_sub_acq:
.LFB846:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE846:
	.size	vatomicsz_get_sub_acq, .-vatomicsz_get_sub_acq
	.align	1
	.type	vatomicsz_get_sub_rel, @function
vatomicsz_get_sub_rel:
.LFB868:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.rl	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE868:
	.size	vatomicsz_get_sub_rel, .-vatomicsz_get_sub_rel
	.align	1
	.type	vatomicsz_get_sub_rlx, @function
vatomicsz_get_sub_rlx:
.LFB890:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d	a0,a1,0(a5)
	ret
	.cfi_endproc
.LFE890:
	.size	vatomicsz_get_sub_rlx, .-vatomicsz_get_sub_rlx
	.align	1
	.type	vatomic8_get_max, @function
vatomic8_get_max:
.LFB194:
	.cfi_startproc
	mv	t3,a0
	fence	rw,rw
	lbu	a5,0(a0)
	fence	rw,rw
	andi	a0,a5,0xff
	andi	a7,t3,-4
	bgeu	a0,a1,.L197
.L200:
	andi	a5,t3,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t1,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aqrl	a3, 0(a7)
	and	t4, a3, a4
	bne	t4, a2, 1f
	and	t4, a3, t1
	or	t4, t4, a6
	sc.w.rl	t4, t4, 0(a7)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a0,a3,.L197
	mv	a0,a3
	bltu	a0,a1,.L200
.L197:
	ret
	.cfi_endproc
.LFE194:
	.size	vatomic8_get_max, .-vatomic8_get_max
	.align	1
	.type	vatomic8_get_max_acq, @function
vatomic8_get_max_acq:
.LFB195:
	.cfi_startproc
	mv	t3,a0
	lbu	a5,0(a0)
	fence	r,rw
	andi	a0,a5,0xff
	andi	a7,t3,-4
	bgeu	a0,a1,.L202
.L205:
	andi	a5,t3,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t1,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aq	a3, 0(a7)
	and	t4, a3, a4
	bne	t4, a2, 1f
	and	t4, a3, t1
	or	t4, t4, a6
	sc.w	t4, t4, 0(a7)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a0,a3,.L202
	mv	a0,a3
	bltu	a0,a1,.L205
.L202:
	ret
	.cfi_endproc
.LFE195:
	.size	vatomic8_get_max_acq, .-vatomic8_get_max_acq
	.align	1
	.type	vatomic8_get_max_rel, @function
vatomic8_get_max_rel:
.LFB196:
	.cfi_startproc
	mv	t3,a0
	lbu	a5,0(a0)
	andi	a0,a5,0xff
	andi	a7,t3,-4
	bgeu	a0,a1,.L207
.L210:
	andi	a5,t3,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t1,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(a7)
	and	t4, a3, a4
	bne	t4, a2, 1f
	and	t4, a3, t1
	or	t4, t4, a6
	sc.w.rl	t4, t4, 0(a7)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a0,a3,.L207
	mv	a0,a3
	bltu	a0,a1,.L210
.L207:
	ret
	.cfi_endproc
.LFE196:
	.size	vatomic8_get_max_rel, .-vatomic8_get_max_rel
	.align	1
	.type	vatomic8_get_max_rlx, @function
vatomic8_get_max_rlx:
.LFB197:
	.cfi_startproc
	mv	t3,a0
	lbu	a5,0(a0)
	andi	a0,a5,0xff
	andi	a7,t3,-4
	bgeu	a0,a1,.L212
.L215:
	andi	a5,t3,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t1,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(a7)
	and	t4, a3, a4
	bne	t4, a2, 1f
	and	t4, a3, t1
	or	t4, t4, a6
	sc.w	t4, t4, 0(a7)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a0,a3,.L212
	mv	a0,a3
	bltu	a0,a1,.L215
.L212:
	ret
	.cfi_endproc
.LFE197:
	.size	vatomic8_get_max_rlx, .-vatomic8_get_max_rlx
	.align	1
	.type	vatomic16_get_max, @function
vatomic16_get_max:
.LFB198:
	.cfi_startproc
	mv	t4,a0
	fence	rw,rw
	lhu	a5,0(a0)
	fence	rw,rw
	slli	a0,a5,48
	srli	a0,a0,48
	li	t6,65536
	sext.w	t5,a1
	andi	t1,t4,-4
	j	.L218
.L220:
	andi	a5,t4,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t3,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aqrl	a3, 0(t1)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t3
	or	t0, t0, a6
	sc.w.rl	t0, t0, 0(t1)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	a7,a3,.L217
	mv	a0,a3
.L218:
	sext.w	a7,a0
	bltu	a7,t5,.L220
.L217:
	ret
	.cfi_endproc
.LFE198:
	.size	vatomic16_get_max, .-vatomic16_get_max
	.align	1
	.type	vatomic16_get_max_acq, @function
vatomic16_get_max_acq:
.LFB199:
	.cfi_startproc
	mv	t4,a0
	lhu	a5,0(a0)
	fence	r,rw
	slli	a0,a5,48
	srli	a0,a0,48
	li	t6,65536
	sext.w	t5,a1
	andi	t1,t4,-4
	j	.L223
.L225:
	andi	a5,t4,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t3,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aq	a3, 0(t1)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t3
	or	t0, t0, a6
	sc.w	t0, t0, 0(t1)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	a7,a3,.L222
	mv	a0,a3
.L223:
	sext.w	a7,a0
	bltu	a7,t5,.L225
.L222:
	ret
	.cfi_endproc
.LFE199:
	.size	vatomic16_get_max_acq, .-vatomic16_get_max_acq
	.align	1
	.type	vatomic16_get_max_rel, @function
vatomic16_get_max_rel:
.LFB200:
	.cfi_startproc
	mv	t4,a0
	lhu	a5,0(a0)
	slli	a0,a5,48
	srli	a0,a0,48
	li	t6,65536
	sext.w	t5,a1
	andi	t1,t4,-4
	j	.L228
.L230:
	andi	a5,t4,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t3,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(t1)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t3
	or	t0, t0, a6
	sc.w.rl	t0, t0, 0(t1)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	a7,a3,.L227
	mv	a0,a3
.L228:
	sext.w	a7,a0
	bltu	a7,t5,.L230
.L227:
	ret
	.cfi_endproc
.LFE200:
	.size	vatomic16_get_max_rel, .-vatomic16_get_max_rel
	.align	1
	.type	vatomic16_get_max_rlx, @function
vatomic16_get_max_rlx:
.LFB201:
	.cfi_startproc
	mv	t4,a0
	lhu	a5,0(a0)
	slli	a0,a5,48
	srli	a0,a0,48
	li	t6,65536
	sext.w	t5,a1
	andi	t1,t4,-4
	j	.L233
.L235:
	andi	a5,t4,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a0,a5
	sllw	a6,a1,a5
	not	t3,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(t1)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t3
	or	t0, t0, a6
	sc.w	t0, t0, 0(t1)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	a7,a3,.L232
	mv	a0,a3
.L233:
	sext.w	a7,a0
	bltu	a7,t5,.L235
.L232:
	ret
	.cfi_endproc
.LFE201:
	.size	vatomic16_get_max_rlx, .-vatomic16_get_max_rlx
	.align	1
	.type	vatomic32_get_max, @function
vatomic32_get_max:
.LFB202:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a0,a5
	bgeu	a0,a1,.L237
.L240:
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L237
	mv	a0,a5
	bltu	a0,a1,.L240
.L237:
	ret
	.cfi_endproc
.LFE202:
	.size	vatomic32_get_max, .-vatomic32_get_max
	.align	1
	.type	vatomic32_get_max_acq, @function
vatomic32_get_max_acq:
.LFB203:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a0,a5
	bgeu	a0,a1,.L242
.L245:
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a3,a1,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L242
	mv	a0,a5
	bltu	a0,a1,.L245
.L242:
	ret
	.cfi_endproc
.LFE203:
	.size	vatomic32_get_max_acq, .-vatomic32_get_max_acq
	.align	1
	.type	vatomic32_get_max_rel, @function
vatomic32_get_max_rel:
.LFB204:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a0,a5
	bgeu	a0,a1,.L247
.L250:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L247
	mv	a0,a5
	bltu	a0,a1,.L250
.L247:
	ret
	.cfi_endproc
.LFE204:
	.size	vatomic32_get_max_rel, .-vatomic32_get_max_rel
	.align	1
	.type	vatomic32_get_max_rlx, @function
vatomic32_get_max_rlx:
.LFB205:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a0,a5
	bgeu	a0,a1,.L252
.L255:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a3,a1,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L252
	mv	a0,a5
	bltu	a0,a1,.L255
.L252:
	ret
	.cfi_endproc
.LFE205:
	.size	vatomic32_get_max_rlx, .-vatomic32_get_max_rlx
	.align	1
	.type	vatomic64_get_max, @function
vatomic64_get_max:
.LFB206:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a0,0(a0)
	fence	r,rw
	bgeu	a0,a1,.L256
.L260:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L256
	mv	a0,a5
	bltu	a0,a1,.L260
.L256:
	ret
	.cfi_endproc
.LFE206:
	.size	vatomic64_get_max, .-vatomic64_get_max
	.align	1
	.type	vatomic64_get_max_acq, @function
vatomic64_get_max_acq:
.LFB207:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	fence	r,rw
	bgeu	a0,a1,.L261
.L265:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L261
	mv	a0,a5
	bltu	a0,a1,.L265
.L261:
	ret
	.cfi_endproc
.LFE207:
	.size	vatomic64_get_max_acq, .-vatomic64_get_max_acq
	.align	1
	.type	vatomic64_get_max_rel, @function
vatomic64_get_max_rel:
.LFB208:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	bgeu	a0,a1,.L266
.L270:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L266
	mv	a0,a5
	bltu	a0,a1,.L270
.L266:
	ret
	.cfi_endproc
.LFE208:
	.size	vatomic64_get_max_rel, .-vatomic64_get_max_rel
	.align	1
	.type	vatomic64_get_max_rlx, @function
vatomic64_get_max_rlx:
.LFB209:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	bgeu	a0,a1,.L271
.L275:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L271
	mv	a0,a5
	bltu	a0,a1,.L275
.L271:
	ret
	.cfi_endproc
.LFE209:
	.size	vatomic64_get_max_rlx, .-vatomic64_get_max_rlx
	.align	1
	.type	vatomicsz_get_max, @function
vatomicsz_get_max:
.LFB960:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a0,0(a0)
	fence	r,rw
	bleu	a1,a0,.L276
.L280:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L276
	mv	a0,a5
	bgtu	a1,a0,.L280
.L276:
	ret
	.cfi_endproc
.LFE960:
	.size	vatomicsz_get_max, .-vatomicsz_get_max
	.align	1
	.type	vatomicsz_get_max_acq, @function
vatomicsz_get_max_acq:
.LFB962:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	fence	r,rw
	bleu	a1,a0,.L281
.L285:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L281
	mv	a0,a5
	bgtu	a1,a0,.L285
.L281:
	ret
	.cfi_endproc
.LFE962:
	.size	vatomicsz_get_max_acq, .-vatomicsz_get_max_acq
	.align	1
	.type	vatomicsz_get_max_rel, @function
vatomicsz_get_max_rel:
.LFB964:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	bleu	a1,a0,.L286
.L290:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L286
	mv	a0,a5
	bgtu	a1,a0,.L290
.L286:
	ret
	.cfi_endproc
.LFE964:
	.size	vatomicsz_get_max_rel, .-vatomicsz_get_max_rel
	.align	1
	.type	vatomicsz_get_max_rlx, @function
vatomicsz_get_max_rlx:
.LFB966:
	.cfi_startproc
	mv	a4,a0
	ld	a0,0(a0)
	bleu	a1,a0,.L291
.L295:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a1,0(a4)
	bnez	a3,1b
	1:
	beq	a0,a5,.L291
	mv	a0,a5
	bgtu	a1,a0,.L295
.L291:
	ret
	.cfi_endproc
.LFE966:
	.size	vatomicsz_get_max_rlx, .-vatomicsz_get_max_rlx
	.align	1
	.type	vatomic8_max_get, @function
vatomic8_max_get:
.LFB214:
	.cfi_startproc
	fence	rw,rw
	lbu	a2,0(a0)
	fence	rw,rw
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L297
.L301:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w.aqrl	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w.rl	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L297
	mv	a2,a3
	bgtu	a1,a2,.L301
.L297:
	andi	a0,a1,0xff
	bgeu	a1,a2,.L299
	andi	a0,a2,0xff
.L299:
	ret
	.cfi_endproc
.LFE214:
	.size	vatomic8_max_get, .-vatomic8_max_get
	.align	1
	.type	vatomic8_max_get_acq, @function
vatomic8_max_get_acq:
.LFB215:
	.cfi_startproc
	lbu	a2,0(a0)
	fence	r,rw
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L303
.L307:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w.aq	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L303
	mv	a2,a3
	bgtu	a1,a2,.L307
.L303:
	andi	a0,a1,0xff
	bgeu	a1,a2,.L305
	andi	a0,a2,0xff
.L305:
	ret
	.cfi_endproc
.LFE215:
	.size	vatomic8_max_get_acq, .-vatomic8_max_get_acq
	.align	1
	.type	vatomic8_max_get_rel, @function
vatomic8_max_get_rel:
.LFB216:
	.cfi_startproc
	lbu	a2,0(a0)
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L309
.L313:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w.rl	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L309
	mv	a2,a3
	bgtu	a1,a2,.L313
.L309:
	andi	a0,a1,0xff
	bgeu	a1,a2,.L311
	andi	a0,a2,0xff
.L311:
	ret
	.cfi_endproc
.LFE216:
	.size	vatomic8_max_get_rel, .-vatomic8_max_get_rel
	.align	1
	.type	vatomic8_max_get_rlx, @function
vatomic8_max_get_rlx:
.LFB217:
	.cfi_startproc
	lbu	a2,0(a0)
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L315
.L319:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L315
	mv	a2,a3
	bgtu	a1,a2,.L319
.L315:
	andi	a0,a1,0xff
	bgeu	a1,a2,.L317
	andi	a0,a2,0xff
.L317:
	ret
	.cfi_endproc
.LFE217:
	.size	vatomic8_max_get_rlx, .-vatomic8_max_get_rlx
	.align	1
	.type	vatomic16_max_get, @function
vatomic16_max_get:
.LFB218:
	.cfi_startproc
	fence	rw,rw
	lhu	a7,0(a0)
	fence	rw,rw
	slli	a7,a7,48
	srli	a7,a7,48
	li	t6,65536
	sext.w	t5,a1
	andi	t3,a0,-4
	j	.L322
.L325:
	andi	a5,a0,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a7,a5
	sllw	a6,a1,a5
	not	t4,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aqrl	a3, 0(t3)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t4
	or	t0, t0, a6
	sc.w.rl	t0, t0, 0(t3)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	t1,a3,.L321
	mv	a7,a3
.L322:
	sext.w	t1,a7
	bgtu	t5,t1,.L325
.L321:
	bgeu	t5,t1,.L323
	mv	a1,a7
.L323:
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE218:
	.size	vatomic16_max_get, .-vatomic16_max_get
	.align	1
	.type	vatomic16_max_get_acq, @function
vatomic16_max_get_acq:
.LFB219:
	.cfi_startproc
	lhu	a7,0(a0)
	fence	r,rw
	slli	a7,a7,48
	srli	a7,a7,48
	li	t6,65536
	sext.w	t5,a1
	andi	t3,a0,-4
	j	.L328
.L331:
	andi	a5,a0,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a7,a5
	sllw	a6,a1,a5
	not	t4,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w.aq	a3, 0(t3)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t4
	or	t0, t0, a6
	sc.w	t0, t0, 0(t3)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	t1,a3,.L327
	mv	a7,a3
.L328:
	sext.w	t1,a7
	bgtu	t5,t1,.L331
.L327:
	bgeu	t5,t1,.L329
	mv	a1,a7
.L329:
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE219:
	.size	vatomic16_max_get_acq, .-vatomic16_max_get_acq
	.align	1
	.type	vatomic16_max_get_rel, @function
vatomic16_max_get_rel:
.LFB220:
	.cfi_startproc
	lhu	a7,0(a0)
	slli	a7,a7,48
	srli	a7,a7,48
	li	t6,65536
	sext.w	t5,a1
	andi	t3,a0,-4
	j	.L334
.L337:
	andi	a5,a0,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a7,a5
	sllw	a6,a1,a5
	not	t4,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(t3)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t4
	or	t0, t0, a6
	sc.w.rl	t0, t0, 0(t3)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	t1,a3,.L333
	mv	a7,a3
.L334:
	sext.w	t1,a7
	bgtu	t5,t1,.L337
.L333:
	bgeu	t5,t1,.L335
	mv	a1,a7
.L335:
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE220:
	.size	vatomic16_max_get_rel, .-vatomic16_max_get_rel
	.align	1
	.type	vatomic16_max_get_rlx, @function
vatomic16_max_get_rlx:
.LFB221:
	.cfi_startproc
	lhu	a7,0(a0)
	slli	a7,a7,48
	srli	a7,a7,48
	li	t6,65536
	sext.w	t5,a1
	andi	t3,a0,-4
	j	.L340
.L343:
	andi	a5,a0,3
	slliw	a5,a5,3
	addiw	a4,t6,-1
	sllw	a4,a4,a5
	sllw	a2,a7,a5
	sllw	a6,a1,a5
	not	t4,a4
	and	a2,a2,a4
	and	a6,a6,a4
	1:
	lr.w	a3, 0(t3)
	and	t0, a3, a4
	bne	t0, a2, 1f
	and	t0, a3, t4
	or	t0, t0, a6
	sc.w	t0, t0, 0(t3)
	bnez	t0, 1b
	1:
	sraw	a3,a3,a5
	slli	a3,a3,48
	srli	a3,a3,48
	beq	t1,a3,.L339
	mv	a7,a3
.L340:
	sext.w	t1,a7
	bgtu	t5,t1,.L343
.L339:
	bgeu	t5,t1,.L341
	mv	a1,a7
.L341:
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE221:
	.size	vatomic16_max_get_rlx, .-vatomic16_max_get_rlx
	.align	1
	.type	vatomic32_max_get, @function
vatomic32_max_get:
.LFB222:
	.cfi_startproc
	fence	rw,rw
	lw	a4,0(a0)
	fence	r,rw
	sext.w	a4,a4
	bleu	a1,a4,.L345
.L349:
	1:
	lr.w.aqrl	a5,0(a0)
	bne	a5,a4,1f
	sc.w.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L345
	mv	a4,a5
	bgtu	a1,a4,.L349
.L345:
	sext.w	a0,a1
	bgeu	a1,a4,.L347
	sext.w	a0,a4
.L347:
	ret
	.cfi_endproc
.LFE222:
	.size	vatomic32_max_get, .-vatomic32_max_get
	.align	1
	.type	vatomic32_max_get_acq, @function
vatomic32_max_get_acq:
.LFB223:
	.cfi_startproc
	lw	a4,0(a0)
	fence	r,rw
	sext.w	a4,a4
	bleu	a1,a4,.L351
.L355:
	1:
	lr.w.aq	a5,0(a0)
	bne	a5,a4,1f
	sc.w	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L351
	mv	a4,a5
	bgtu	a1,a4,.L355
.L351:
	sext.w	a0,a1
	bgeu	a1,a4,.L353
	sext.w	a0,a4
.L353:
	ret
	.cfi_endproc
.LFE223:
	.size	vatomic32_max_get_acq, .-vatomic32_max_get_acq
	.align	1
	.type	vatomic32_max_get_rel, @function
vatomic32_max_get_rel:
.LFB224:
	.cfi_startproc
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L357
.L361:
	1:
	lr.w	a5,0(a0)
	bne	a5,a4,1f
	sc.w.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L357
	mv	a4,a5
	bgtu	a1,a4,.L361
.L357:
	sext.w	a0,a1
	bgeu	a1,a4,.L359
	sext.w	a0,a4
.L359:
	ret
	.cfi_endproc
.LFE224:
	.size	vatomic32_max_get_rel, .-vatomic32_max_get_rel
	.align	1
	.type	vatomic32_max_get_rlx, @function
vatomic32_max_get_rlx:
.LFB225:
	.cfi_startproc
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L363
.L367:
	1:
	lr.w	a5,0(a0)
	bne	a5,a4,1f
	sc.w	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L363
	mv	a4,a5
	bgtu	a1,a4,.L367
.L363:
	sext.w	a0,a1
	bgeu	a1,a4,.L365
	sext.w	a0,a4
.L365:
	ret
	.cfi_endproc
.LFE225:
	.size	vatomic32_max_get_rlx, .-vatomic32_max_get_rlx
	.align	1
	.type	vatomic64_max_get, @function
vatomic64_max_get:
.LFB226:
	.cfi_startproc
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L369
.L373:
	1:
	lr.d.aqrl	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L369
	mv	a5,a4
	bgtu	a1,a5,.L373
.L369:
	mv	a0,a1
	bgeu	a1,a5,.L371
	mv	a0,a5
.L371:
	ret
	.cfi_endproc
.LFE226:
	.size	vatomic64_max_get, .-vatomic64_max_get
	.align	1
	.type	vatomic64_max_get_acq, @function
vatomic64_max_get_acq:
.LFB227:
	.cfi_startproc
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L375
.L379:
	1:
	lr.d.aq	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L375
	mv	a5,a4
	bgtu	a1,a5,.L379
.L375:
	mv	a0,a1
	bgeu	a1,a5,.L377
	mv	a0,a5
.L377:
	ret
	.cfi_endproc
.LFE227:
	.size	vatomic64_max_get_acq, .-vatomic64_max_get_acq
	.align	1
	.type	vatomic64_max_get_rel, @function
vatomic64_max_get_rel:
.LFB228:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L381
.L385:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L381
	mv	a5,a4
	bgtu	a1,a5,.L385
.L381:
	mv	a0,a1
	bgeu	a1,a5,.L383
	mv	a0,a5
.L383:
	ret
	.cfi_endproc
.LFE228:
	.size	vatomic64_max_get_rel, .-vatomic64_max_get_rel
	.align	1
	.type	vatomic64_max_get_rlx, @function
vatomic64_max_get_rlx:
.LFB229:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L387
.L391:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L387
	mv	a5,a4
	bgtu	a1,a5,.L391
.L387:
	mv	a0,a1
	bgeu	a1,a5,.L389
	mv	a0,a5
.L389:
	ret
	.cfi_endproc
.LFE229:
	.size	vatomic64_max_get_rlx, .-vatomic64_max_get_rlx
	.align	1
	.type	vatomicsz_max_get, @function
vatomicsz_max_get:
.LFB894:
	.cfi_startproc
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L393
.L397:
	1:
	lr.d.aqrl	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L393
	mv	a5,a4
	bgtu	a1,a5,.L397
.L393:
	mv	a0,a1
	bgeu	a1,a5,.L395
	mv	a0,a5
.L395:
	ret
	.cfi_endproc
.LFE894:
	.size	vatomicsz_max_get, .-vatomicsz_max_get
	.align	1
	.type	vatomicsz_max_get_acq, @function
vatomicsz_max_get_acq:
.LFB896:
	.cfi_startproc
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L399
.L403:
	1:
	lr.d.aq	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L399
	mv	a5,a4
	bgtu	a1,a5,.L403
.L399:
	mv	a0,a1
	bgeu	a1,a5,.L401
	mv	a0,a5
.L401:
	ret
	.cfi_endproc
.LFE896:
	.size	vatomicsz_max_get_acq, .-vatomicsz_max_get_acq
	.align	1
	.type	vatomicsz_max_get_rel, @function
vatomicsz_max_get_rel:
.LFB898:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L405
.L409:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L405
	mv	a5,a4
	bgtu	a1,a5,.L409
.L405:
	mv	a0,a1
	bgeu	a1,a5,.L407
	mv	a0,a5
.L407:
	ret
	.cfi_endproc
.LFE898:
	.size	vatomicsz_max_get_rel, .-vatomicsz_max_get_rel
	.align	1
	.type	vatomicsz_max_get_rlx, @function
vatomicsz_max_get_rlx:
.LFB900:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L411
.L415:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L411
	mv	a5,a4
	bgtu	a1,a5,.L415
.L411:
	mv	a0,a1
	bgeu	a1,a5,.L413
	mv	a0,a5
.L413:
	ret
	.cfi_endproc
.LFE900:
	.size	vatomicsz_max_get_rlx, .-vatomicsz_max_get_rlx
	.align	1
	.type	vatomic8_max, @function
vatomic8_max:
.LFB234:
	.cfi_startproc
	fence	rw,rw
	lbu	a2,0(a0)
	fence	rw,rw
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L416
.L420:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w.aqrl	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w.rl	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L416
	mv	a2,a3
	bgtu	a1,a2,.L420
.L416:
	ret
	.cfi_endproc
.LFE234:
	.size	vatomic8_max, .-vatomic8_max
	.align	1
	.type	vatomic8_max_rel, @function
vatomic8_max_rel:
.LFB235:
	.cfi_startproc
	lbu	a2,0(a0)
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L421
.L425:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w.rl	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L421
	mv	a2,a3
	bgtu	a1,a2,.L425
.L421:
	ret
	.cfi_endproc
.LFE235:
	.size	vatomic8_max_rel, .-vatomic8_max_rel
	.align	1
	.type	vatomic8_max_rlx, @function
vatomic8_max_rlx:
.LFB236:
	.cfi_startproc
	lbu	a2,0(a0)
	andi	a2,a2,0xff
	andi	t1,a0,-4
	bleu	a1,a2,.L426
.L430:
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	sllw	a6,a2,a5
	sllw	a7,a1,a5
	not	t3,a4
	and	a6,a6,a4
	and	a7,a7,a4
	1:
	lr.w	a3, 0(t1)
	and	t4, a3, a4
	bne	t4, a6, 1f
	and	t4, a3, t3
	or	t4, t4, a7
	sc.w	t4, t4, 0(t1)
	bnez	t4, 1b
	1:
	sraw	a3,a3,a5
	andi	a3,a3,0xff
	beq	a2,a3,.L426
	mv	a2,a3
	bgtu	a1,a2,.L430
.L426:
	ret
	.cfi_endproc
.LFE236:
	.size	vatomic8_max_rlx, .-vatomic8_max_rlx
	.align	1
	.type	vatomic16_max, @function
vatomic16_max:
.LFB237:
	.cfi_startproc
	fence	rw,rw
	lhu	a5,0(a0)
	fence	rw,rw
	slli	a5,a5,48
	srli	a5,a5,48
	li	t5,65536
	sext.w	t4,a1
	andi	t1,a0,-4
	j	.L433
.L435:
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a3,t5,-1
	sllw	a3,a3,a4
	sllw	a5,a5,a4
	sllw	a6,a1,a4
	not	t3,a3
	and	a5,a5,a3
	and	a6,a6,a3
	1:
	lr.w.aqrl	a2, 0(t1)
	and	t6, a2, a3
	bne	t6, a5, 1f
	and	t6, a2, t3
	or	t6, t6, a6
	sc.w.rl	t6, t6, 0(t1)
	bnez	t6, 1b
	1:
	sraw	a2,a2,a4
	slli	a5,a2,48
	srli	a5,a5,48
	beq	a7,a5,.L431
.L433:
	sext.w	a7,a5
	bgtu	t4,a7,.L435
.L431:
	ret
	.cfi_endproc
.LFE237:
	.size	vatomic16_max, .-vatomic16_max
	.align	1
	.type	vatomic16_max_rel, @function
vatomic16_max_rel:
.LFB238:
	.cfi_startproc
	lhu	a5,0(a0)
	slli	a5,a5,48
	srli	a5,a5,48
	li	t5,65536
	sext.w	t4,a1
	andi	t1,a0,-4
	j	.L438
.L440:
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a3,t5,-1
	sllw	a3,a3,a4
	sllw	a5,a5,a4
	sllw	a6,a1,a4
	not	t3,a3
	and	a5,a5,a3
	and	a6,a6,a3
	1:
	lr.w	a2, 0(t1)
	and	t6, a2, a3
	bne	t6, a5, 1f
	and	t6, a2, t3
	or	t6, t6, a6
	sc.w.rl	t6, t6, 0(t1)
	bnez	t6, 1b
	1:
	sraw	a2,a2,a4
	slli	a5,a2,48
	srli	a5,a5,48
	beq	a7,a5,.L436
.L438:
	sext.w	a7,a5
	bgtu	t4,a7,.L440
.L436:
	ret
	.cfi_endproc
.LFE238:
	.size	vatomic16_max_rel, .-vatomic16_max_rel
	.align	1
	.type	vatomic16_max_rlx, @function
vatomic16_max_rlx:
.LFB239:
	.cfi_startproc
	lhu	a5,0(a0)
	slli	a5,a5,48
	srli	a5,a5,48
	li	t5,65536
	sext.w	t4,a1
	andi	t1,a0,-4
	j	.L443
.L445:
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a3,t5,-1
	sllw	a3,a3,a4
	sllw	a5,a5,a4
	sllw	a6,a1,a4
	not	t3,a3
	and	a5,a5,a3
	and	a6,a6,a3
	1:
	lr.w	a2, 0(t1)
	and	t6, a2, a3
	bne	t6, a5, 1f
	and	t6, a2, t3
	or	t6, t6, a6
	sc.w	t6, t6, 0(t1)
	bnez	t6, 1b
	1:
	sraw	a2,a2,a4
	slli	a5,a2,48
	srli	a5,a5,48
	beq	a7,a5,.L441
.L443:
	sext.w	a7,a5
	bgtu	t4,a7,.L445
.L441:
	ret
	.cfi_endproc
.LFE239:
	.size	vatomic16_max_rlx, .-vatomic16_max_rlx
	.align	1
	.type	vatomic32_max, @function
vatomic32_max:
.LFB240:
	.cfi_startproc
	fence	rw,rw
	lw	a4,0(a0)
	fence	r,rw
	sext.w	a4,a4
	bleu	a1,a4,.L446
.L450:
	1:
	lr.w.aqrl	a5,0(a0)
	bne	a5,a4,1f
	sc.w.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L446
	mv	a4,a5
	bgtu	a1,a4,.L450
.L446:
	ret
	.cfi_endproc
.LFE240:
	.size	vatomic32_max, .-vatomic32_max
	.align	1
	.type	vatomic32_max_rel, @function
vatomic32_max_rel:
.LFB241:
	.cfi_startproc
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L451
.L455:
	1:
	lr.w	a5,0(a0)
	bne	a5,a4,1f
	sc.w.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L451
	mv	a4,a5
	bgtu	a1,a4,.L455
.L451:
	ret
	.cfi_endproc
.LFE241:
	.size	vatomic32_max_rel, .-vatomic32_max_rel
	.align	1
	.type	vatomic32_max_rlx, @function
vatomic32_max_rlx:
.LFB242:
	.cfi_startproc
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L456
.L460:
	1:
	lr.w	a5,0(a0)
	bne	a5,a4,1f
	sc.w	a3,a1,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L456
	mv	a4,a5
	bgtu	a1,a4,.L460
.L456:
	ret
	.cfi_endproc
.LFE242:
	.size	vatomic32_max_rlx, .-vatomic32_max_rlx
	.align	1
	.type	vatomic64_max, @function
vatomic64_max:
.LFB243:
	.cfi_startproc
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L461
.L465:
	1:
	lr.d.aqrl	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L461
	mv	a5,a4
	bgtu	a1,a5,.L465
.L461:
	ret
	.cfi_endproc
.LFE243:
	.size	vatomic64_max, .-vatomic64_max
	.align	1
	.type	vatomic64_max_rel, @function
vatomic64_max_rel:
.LFB244:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L466
.L470:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L466
	mv	a5,a4
	bgtu	a1,a5,.L470
.L466:
	ret
	.cfi_endproc
.LFE244:
	.size	vatomic64_max_rel, .-vatomic64_max_rel
	.align	1
	.type	vatomic64_max_rlx, @function
vatomic64_max_rlx:
.LFB245:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L471
.L475:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L471
	mv	a5,a4
	bgtu	a1,a5,.L475
.L471:
	ret
	.cfi_endproc
.LFE245:
	.size	vatomic64_max_rlx, .-vatomic64_max_rlx
	.align	1
	.type	vatomicsz_max, @function
vatomicsz_max:
.LFB902:
	.cfi_startproc
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L476
.L480:
	1:
	lr.d.aqrl	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L476
	mv	a5,a4
	bgtu	a1,a5,.L480
.L476:
	ret
	.cfi_endproc
.LFE902:
	.size	vatomicsz_max, .-vatomicsz_max
	.align	1
	.type	vatomicsz_max_rel, @function
vatomicsz_max_rel:
.LFB904:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L481
.L485:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d.rl	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L481
	mv	a5,a4
	bgtu	a1,a5,.L485
.L481:
	ret
	.cfi_endproc
.LFE904:
	.size	vatomicsz_max_rel, .-vatomicsz_max_rel
	.align	1
	.type	vatomicsz_max_rlx, @function
vatomicsz_max_rlx:
.LFB906:
	.cfi_startproc
	ld	a5,0(a0)
	bleu	a1,a5,.L486
.L490:
	1:
	lr.d	a4,0(a0)
	bne	a4,a5,1f
	sc.d	a3,a1,0(a0)
	bnez	a3,1b
	1:
	beq	a5,a4,.L486
	mv	a5,a4
	bgtu	a1,a5,.L490
.L486:
	ret
	.cfi_endproc
.LFE906:
	.size	vatomicsz_max_rlx, .-vatomicsz_max_rlx
	.align	1
	.type	vatomic8_and_get, @function
vatomic8_and_get:
.LFB249:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a5,a0,-4
	not	a6,a3
	sllw	a0,a1,a4
	1:
	lr.w.aqrl	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a3
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a4
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE249:
	.size	vatomic8_and_get, .-vatomic8_and_get
	.align	1
	.type	vatomic8_and_get_acq, @function
vatomic8_and_get_acq:
.LFB250:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a5,a0,-4
	not	a6,a3
	sllw	a0,a1,a4
	1:
	lr.w.aq	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a3
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a4
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE250:
	.size	vatomic8_and_get_acq, .-vatomic8_and_get_acq
	.align	1
	.type	vatomic8_and_get_rel, @function
vatomic8_and_get_rel:
.LFB251:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a5,a0,-4
	not	a6,a3
	sllw	a0,a1,a4
	1:
	lr.w	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a3
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a4
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE251:
	.size	vatomic8_and_get_rel, .-vatomic8_and_get_rel
	.align	1
	.type	vatomic8_and_get_rlx, @function
vatomic8_and_get_rlx:
.LFB252:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a5,a0,-4
	not	a6,a3
	sllw	a0,a1,a4
	1:
	lr.w	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a3
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a4
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE252:
	.size	vatomic8_and_get_rlx, .-vatomic8_and_get_rlx
	.align	1
	.type	vatomic16_and_get, @function
vatomic16_and_get:
.LFB253:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a5,a0,-4
	not	a6,a4
	sllw	a0,a1,a3
	1:
	lr.w.aqrl	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a4
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a3
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE253:
	.size	vatomic16_and_get, .-vatomic16_and_get
	.align	1
	.type	vatomic16_and_get_acq, @function
vatomic16_and_get_acq:
.LFB254:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a5,a0,-4
	not	a6,a4
	sllw	a0,a1,a3
	1:
	lr.w.aq	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a4
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a3
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE254:
	.size	vatomic16_and_get_acq, .-vatomic16_and_get_acq
	.align	1
	.type	vatomic16_and_get_rel, @function
vatomic16_and_get_rel:
.LFB255:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a5,a0,-4
	not	a6,a4
	sllw	a0,a1,a3
	1:
	lr.w	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a4
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a3
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE255:
	.size	vatomic16_and_get_rel, .-vatomic16_and_get_rel
	.align	1
	.type	vatomic16_and_get_rlx, @function
vatomic16_and_get_rlx:
.LFB256:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a5,a0,-4
	not	a6,a4
	sllw	a0,a1,a3
	1:
	lr.w	a2, 0(a5)
	and	a7, a2, a0
	and	a7, a7, a4
	and	t1, a2, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a5)
	bnez	a7, 1b
	sraw	a2,a2,a3
	and	a0,a1,a2
	ret
	.cfi_endproc
.LFE256:
	.size	vatomic16_and_get_rlx, .-vatomic16_and_get_rlx
	.align	1
	.type	vatomic32_and_get, @function
vatomic32_and_get:
.LFB257:
	.cfi_startproc
	amoand.w.aqrl	a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE257:
	.size	vatomic32_and_get, .-vatomic32_and_get
	.align	1
	.type	vatomic32_and_get_acq, @function
vatomic32_and_get_acq:
.LFB258:
	.cfi_startproc
	amoand.w.aq	a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE258:
	.size	vatomic32_and_get_acq, .-vatomic32_and_get_acq
	.align	1
	.type	vatomic32_and_get_rel, @function
vatomic32_and_get_rel:
.LFB259:
	.cfi_startproc
	amoand.w.rl	a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE259:
	.size	vatomic32_and_get_rel, .-vatomic32_and_get_rel
	.align	1
	.type	vatomic32_and_get_rlx, @function
vatomic32_and_get_rlx:
.LFB260:
	.cfi_startproc
	amoand.w	a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE260:
	.size	vatomic32_and_get_rlx, .-vatomic32_and_get_rlx
	.align	1
	.type	vatomic64_and_get, @function
vatomic64_and_get:
.LFB261:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aqrl	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE261:
	.size	vatomic64_and_get, .-vatomic64_and_get
	.align	1
	.type	vatomic64_and_get_acq, @function
vatomic64_and_get_acq:
.LFB262:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aq	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE262:
	.size	vatomic64_and_get_acq, .-vatomic64_and_get_acq
	.align	1
	.type	vatomic64_and_get_rel, @function
vatomic64_and_get_rel:
.LFB263:
	.cfi_startproc
	mv	a5,a0
	amoand.d.rl	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE263:
	.size	vatomic64_and_get_rel, .-vatomic64_and_get_rel
	.align	1
	.type	vatomic64_and_get_rlx, @function
vatomic64_and_get_rlx:
.LFB264:
	.cfi_startproc
	mv	a5,a0
	amoand.d	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE264:
	.size	vatomic64_and_get_rlx, .-vatomic64_and_get_rlx
	.align	1
	.type	vatomicsz_and_get, @function
vatomicsz_and_get:
.LFB810:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aqrl	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE810:
	.size	vatomicsz_and_get, .-vatomicsz_and_get
	.align	1
	.type	vatomicsz_and_get_acq, @function
vatomicsz_and_get_acq:
.LFB832:
	.cfi_startproc
	mv	a5,a0
	amoand.d.aq	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE832:
	.size	vatomicsz_and_get_acq, .-vatomicsz_and_get_acq
	.align	1
	.type	vatomicsz_and_get_rel, @function
vatomicsz_and_get_rel:
.LFB854:
	.cfi_startproc
	mv	a5,a0
	amoand.d.rl	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE854:
	.size	vatomicsz_and_get_rel, .-vatomicsz_and_get_rel
	.align	1
	.type	vatomicsz_and_get_rlx, @function
vatomicsz_and_get_rlx:
.LFB876:
	.cfi_startproc
	mv	a5,a0
	amoand.d	a0,a1,0(a5)
	and	a0,a0,a1
	ret
	.cfi_endproc
.LFE876:
	.size	vatomicsz_and_get_rlx, .-vatomicsz_and_get_rlx
	.align	1
	.type	vatomic8_and, @function
vatomic8_and:
.LFB269:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE269:
	.size	vatomic8_and, .-vatomic8_and
	.align	1
	.type	vatomic8_and_rel, @function
vatomic8_and_rel:
.LFB270:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE270:
	.size	vatomic8_and_rel, .-vatomic8_and_rel
	.align	1
	.type	vatomic8_and_rlx, @function
vatomic8_and_rlx:
.LFB271:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE271:
	.size	vatomic8_and_rlx, .-vatomic8_and_rlx
	.align	1
	.type	vatomic16_and, @function
vatomic16_and:
.LFB272:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE272:
	.size	vatomic16_and, .-vatomic16_and
	.align	1
	.type	vatomic16_and_rel, @function
vatomic16_and_rel:
.LFB273:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE273:
	.size	vatomic16_and_rel, .-vatomic16_and_rel
	.align	1
	.type	vatomic16_and_rlx, @function
vatomic16_and_rlx:
.LFB274:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	and	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE274:
	.size	vatomic16_and_rlx, .-vatomic16_and_rlx
	.align	1
	.type	vatomic32_and, @function
vatomic32_and:
.LFB275:
	.cfi_startproc
	amoand.w.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE275:
	.size	vatomic32_and, .-vatomic32_and
	.align	1
	.type	vatomic32_and_rel, @function
vatomic32_and_rel:
.LFB276:
	.cfi_startproc
	amoand.w.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE276:
	.size	vatomic32_and_rel, .-vatomic32_and_rel
	.align	1
	.type	vatomic32_and_rlx, @function
vatomic32_and_rlx:
.LFB277:
	.cfi_startproc
	amoand.w	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE277:
	.size	vatomic32_and_rlx, .-vatomic32_and_rlx
	.align	1
	.type	vatomic64_and, @function
vatomic64_and:
.LFB278:
	.cfi_startproc
	amoand.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE278:
	.size	vatomic64_and, .-vatomic64_and
	.align	1
	.type	vatomic64_and_rel, @function
vatomic64_and_rel:
.LFB279:
	.cfi_startproc
	amoand.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE279:
	.size	vatomic64_and_rel, .-vatomic64_and_rel
	.align	1
	.type	vatomic64_and_rlx, @function
vatomic64_and_rlx:
.LFB280:
	.cfi_startproc
	amoand.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE280:
	.size	vatomic64_and_rlx, .-vatomic64_and_rlx
	.align	1
	.type	vatomicsz_and, @function
vatomicsz_and:
.LFB766:
	.cfi_startproc
	amoand.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE766:
	.size	vatomicsz_and, .-vatomicsz_and
	.align	1
	.type	vatomicsz_and_rel, @function
vatomicsz_and_rel:
.LFB784:
	.cfi_startproc
	amoand.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE784:
	.size	vatomicsz_and_rel, .-vatomicsz_and_rel
	.align	1
	.type	vatomicsz_and_rlx, @function
vatomicsz_and_rlx:
.LFB796:
	.cfi_startproc
	amoand.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE796:
	.size	vatomicsz_and_rlx, .-vatomicsz_and_rlx
	.align	1
	.type	vatomic8_or_get, @function
vatomic8_or_get:
.LFB284:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w.aqrl	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	or	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE284:
	.size	vatomic8_or_get, .-vatomic8_or_get
	.align	1
	.type	vatomic8_or_get_acq, @function
vatomic8_or_get_acq:
.LFB285:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w.aq	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	or	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE285:
	.size	vatomic8_or_get_acq, .-vatomic8_or_get_acq
	.align	1
	.type	vatomic8_or_get_rel, @function
vatomic8_or_get_rel:
.LFB286:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	or	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE286:
	.size	vatomic8_or_get_rel, .-vatomic8_or_get_rel
	.align	1
	.type	vatomic8_or_get_rlx, @function
vatomic8_or_get_rlx:
.LFB287:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	or	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE287:
	.size	vatomic8_or_get_rlx, .-vatomic8_or_get_rlx
	.align	1
	.type	vatomic16_or_get, @function
vatomic16_or_get:
.LFB288:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	or	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE288:
	.size	vatomic16_or_get, .-vatomic16_or_get
	.align	1
	.type	vatomic16_or_get_acq, @function
vatomic16_or_get_acq:
.LFB289:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w.aq	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	or	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE289:
	.size	vatomic16_or_get_acq, .-vatomic16_or_get_acq
	.align	1
	.type	vatomic16_or_get_rel, @function
vatomic16_or_get_rel:
.LFB290:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	or	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE290:
	.size	vatomic16_or_get_rel, .-vatomic16_or_get_rel
	.align	1
	.type	vatomic16_or_get_rlx, @function
vatomic16_or_get_rlx:
.LFB291:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w	a3, 0(a0)
	or	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	or	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE291:
	.size	vatomic16_or_get_rlx, .-vatomic16_or_get_rlx
	.align	1
	.type	vatomic32_or_get, @function
vatomic32_or_get:
.LFB292:
	.cfi_startproc
	amoor.w.aqrl	a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE292:
	.size	vatomic32_or_get, .-vatomic32_or_get
	.align	1
	.type	vatomic32_or_get_acq, @function
vatomic32_or_get_acq:
.LFB293:
	.cfi_startproc
	amoor.w.aq	a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE293:
	.size	vatomic32_or_get_acq, .-vatomic32_or_get_acq
	.align	1
	.type	vatomic32_or_get_rel, @function
vatomic32_or_get_rel:
.LFB294:
	.cfi_startproc
	amoor.w.rl	a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE294:
	.size	vatomic32_or_get_rel, .-vatomic32_or_get_rel
	.align	1
	.type	vatomic32_or_get_rlx, @function
vatomic32_or_get_rlx:
.LFB295:
	.cfi_startproc
	amoor.w	a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE295:
	.size	vatomic32_or_get_rlx, .-vatomic32_or_get_rlx
	.align	1
	.type	vatomic64_or_get, @function
vatomic64_or_get:
.LFB296:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aqrl	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE296:
	.size	vatomic64_or_get, .-vatomic64_or_get
	.align	1
	.type	vatomic64_or_get_acq, @function
vatomic64_or_get_acq:
.LFB297:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aq	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE297:
	.size	vatomic64_or_get_acq, .-vatomic64_or_get_acq
	.align	1
	.type	vatomic64_or_get_rel, @function
vatomic64_or_get_rel:
.LFB298:
	.cfi_startproc
	mv	a5,a0
	amoor.d.rl	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE298:
	.size	vatomic64_or_get_rel, .-vatomic64_or_get_rel
	.align	1
	.type	vatomic64_or_get_rlx, @function
vatomic64_or_get_rlx:
.LFB299:
	.cfi_startproc
	mv	a5,a0
	amoor.d	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE299:
	.size	vatomic64_or_get_rlx, .-vatomic64_or_get_rlx
	.align	1
	.type	vatomicsz_or_get, @function
vatomicsz_or_get:
.LFB814:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aqrl	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE814:
	.size	vatomicsz_or_get, .-vatomicsz_or_get
	.align	1
	.type	vatomicsz_or_get_acq, @function
vatomicsz_or_get_acq:
.LFB836:
	.cfi_startproc
	mv	a5,a0
	amoor.d.aq	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE836:
	.size	vatomicsz_or_get_acq, .-vatomicsz_or_get_acq
	.align	1
	.type	vatomicsz_or_get_rel, @function
vatomicsz_or_get_rel:
.LFB858:
	.cfi_startproc
	mv	a5,a0
	amoor.d.rl	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE858:
	.size	vatomicsz_or_get_rel, .-vatomicsz_or_get_rel
	.align	1
	.type	vatomicsz_or_get_rlx, @function
vatomicsz_or_get_rlx:
.LFB880:
	.cfi_startproc
	mv	a5,a0
	amoor.d	a0,a1,0(a5)
	or	a0,a0,a1
	ret
	.cfi_endproc
.LFE880:
	.size	vatomicsz_or_get_rlx, .-vatomicsz_or_get_rlx
	.align	1
	.type	vatomic8_or, @function
vatomic8_or:
.LFB304:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE304:
	.size	vatomic8_or, .-vatomic8_or
	.align	1
	.type	vatomic8_or_rel, @function
vatomic8_or_rel:
.LFB305:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE305:
	.size	vatomic8_or_rel, .-vatomic8_or_rel
	.align	1
	.type	vatomic8_or_rlx, @function
vatomic8_or_rlx:
.LFB306:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE306:
	.size	vatomic8_or_rlx, .-vatomic8_or_rlx
	.align	1
	.type	vatomic16_or, @function
vatomic16_or:
.LFB307:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE307:
	.size	vatomic16_or, .-vatomic16_or
	.align	1
	.type	vatomic16_or_rel, @function
vatomic16_or_rel:
.LFB308:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE308:
	.size	vatomic16_or_rel, .-vatomic16_or_rel
	.align	1
	.type	vatomic16_or_rlx, @function
vatomic16_or_rlx:
.LFB309:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	or	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE309:
	.size	vatomic16_or_rlx, .-vatomic16_or_rlx
	.align	1
	.type	vatomic32_or, @function
vatomic32_or:
.LFB310:
	.cfi_startproc
	amoor.w.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE310:
	.size	vatomic32_or, .-vatomic32_or
	.align	1
	.type	vatomic32_or_rel, @function
vatomic32_or_rel:
.LFB311:
	.cfi_startproc
	amoor.w.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE311:
	.size	vatomic32_or_rel, .-vatomic32_or_rel
	.align	1
	.type	vatomic32_or_rlx, @function
vatomic32_or_rlx:
.LFB312:
	.cfi_startproc
	amoor.w	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE312:
	.size	vatomic32_or_rlx, .-vatomic32_or_rlx
	.align	1
	.type	vatomic64_or, @function
vatomic64_or:
.LFB313:
	.cfi_startproc
	amoor.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE313:
	.size	vatomic64_or, .-vatomic64_or
	.align	1
	.type	vatomic64_or_rel, @function
vatomic64_or_rel:
.LFB314:
	.cfi_startproc
	amoor.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE314:
	.size	vatomic64_or_rel, .-vatomic64_or_rel
	.align	1
	.type	vatomic64_or_rlx, @function
vatomic64_or_rlx:
.LFB315:
	.cfi_startproc
	amoor.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE315:
	.size	vatomic64_or_rlx, .-vatomic64_or_rlx
	.align	1
	.type	vatomicsz_or, @function
vatomicsz_or:
.LFB768:
	.cfi_startproc
	amoor.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE768:
	.size	vatomicsz_or, .-vatomicsz_or
	.align	1
	.type	vatomicsz_or_rel, @function
vatomicsz_or_rel:
.LFB786:
	.cfi_startproc
	amoor.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE786:
	.size	vatomicsz_or_rel, .-vatomicsz_or_rel
	.align	1
	.type	vatomicsz_or_rlx, @function
vatomicsz_or_rlx:
.LFB798:
	.cfi_startproc
	amoor.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE798:
	.size	vatomicsz_or_rlx, .-vatomicsz_or_rlx
	.align	1
	.type	vatomic8_xor_get, @function
vatomic8_xor_get:
.LFB319:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w.aqrl	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	xor	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE319:
	.size	vatomic8_xor_get, .-vatomic8_xor_get
	.align	1
	.type	vatomic8_xor_get_acq, @function
vatomic8_xor_get_acq:
.LFB320:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w.aq	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	xor	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE320:
	.size	vatomic8_xor_get_acq, .-vatomic8_xor_get_acq
	.align	1
	.type	vatomic8_xor_get_rel, @function
vatomic8_xor_get_rel:
.LFB321:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	xor	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE321:
	.size	vatomic8_xor_get_rel, .-vatomic8_xor_get_rel
	.align	1
	.type	vatomic8_xor_get_rlx, @function
vatomic8_xor_get_rlx:
.LFB322:
	.cfi_startproc
	andi	a5,a0,3
	slliw	a5,a5,3
	li	a4,255
	sllw	a4,a4,a5
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a5
	1:
	lr.w	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a4
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a5
	xor	a1,a1,a3
	andi	a0,a1,0xff
	ret
	.cfi_endproc
.LFE322:
	.size	vatomic8_xor_get_rlx, .-vatomic8_xor_get_rlx
	.align	1
	.type	vatomic16_xor_get, @function
vatomic16_xor_get:
.LFB323:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	xor	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE323:
	.size	vatomic16_xor_get, .-vatomic16_xor_get
	.align	1
	.type	vatomic16_xor_get_acq, @function
vatomic16_xor_get_acq:
.LFB324:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w.aq	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	xor	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE324:
	.size	vatomic16_xor_get_acq, .-vatomic16_xor_get_acq
	.align	1
	.type	vatomic16_xor_get_rel, @function
vatomic16_xor_get_rel:
.LFB325:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	xor	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE325:
	.size	vatomic16_xor_get_rel, .-vatomic16_xor_get_rel
	.align	1
	.type	vatomic16_xor_get_rlx, @function
vatomic16_xor_get_rlx:
.LFB326:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a6,a5
	sllw	a2,a1,a4
	1:
	lr.w	a3, 0(a0)
	xor	a7, a3, a2
	and	a7, a7, a5
	and	t1, a3, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a3,a3,a4
	xor	a1,a1,a3
	slli	a0,a1,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE326:
	.size	vatomic16_xor_get_rlx, .-vatomic16_xor_get_rlx
	.align	1
	.type	vatomic32_xor_get, @function
vatomic32_xor_get:
.LFB327:
	.cfi_startproc
	amoxor.w.aqrl	a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE327:
	.size	vatomic32_xor_get, .-vatomic32_xor_get
	.align	1
	.type	vatomic32_xor_get_acq, @function
vatomic32_xor_get_acq:
.LFB328:
	.cfi_startproc
	amoxor.w.aq	a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE328:
	.size	vatomic32_xor_get_acq, .-vatomic32_xor_get_acq
	.align	1
	.type	vatomic32_xor_get_rel, @function
vatomic32_xor_get_rel:
.LFB329:
	.cfi_startproc
	amoxor.w.rl	a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE329:
	.size	vatomic32_xor_get_rel, .-vatomic32_xor_get_rel
	.align	1
	.type	vatomic32_xor_get_rlx, @function
vatomic32_xor_get_rlx:
.LFB330:
	.cfi_startproc
	amoxor.w	a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.cfi_endproc
.LFE330:
	.size	vatomic32_xor_get_rlx, .-vatomic32_xor_get_rlx
	.align	1
	.type	vatomic64_xor_get, @function
vatomic64_xor_get:
.LFB331:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aqrl	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE331:
	.size	vatomic64_xor_get, .-vatomic64_xor_get
	.align	1
	.type	vatomic64_xor_get_acq, @function
vatomic64_xor_get_acq:
.LFB332:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aq	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE332:
	.size	vatomic64_xor_get_acq, .-vatomic64_xor_get_acq
	.align	1
	.type	vatomic64_xor_get_rel, @function
vatomic64_xor_get_rel:
.LFB333:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.rl	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE333:
	.size	vatomic64_xor_get_rel, .-vatomic64_xor_get_rel
	.align	1
	.type	vatomic64_xor_get_rlx, @function
vatomic64_xor_get_rlx:
.LFB334:
	.cfi_startproc
	mv	a5,a0
	amoxor.d	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE334:
	.size	vatomic64_xor_get_rlx, .-vatomic64_xor_get_rlx
	.align	1
	.type	vatomicsz_xor_get, @function
vatomicsz_xor_get:
.LFB818:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aqrl	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE818:
	.size	vatomicsz_xor_get, .-vatomicsz_xor_get
	.align	1
	.type	vatomicsz_xor_get_acq, @function
vatomicsz_xor_get_acq:
.LFB840:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.aq	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE840:
	.size	vatomicsz_xor_get_acq, .-vatomicsz_xor_get_acq
	.align	1
	.type	vatomicsz_xor_get_rel, @function
vatomicsz_xor_get_rel:
.LFB862:
	.cfi_startproc
	mv	a5,a0
	amoxor.d.rl	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE862:
	.size	vatomicsz_xor_get_rel, .-vatomicsz_xor_get_rel
	.align	1
	.type	vatomicsz_xor_get_rlx, @function
vatomicsz_xor_get_rlx:
.LFB884:
	.cfi_startproc
	mv	a5,a0
	amoxor.d	a0,a1,0(a5)
	xor	a0,a0,a1
	ret
	.cfi_endproc
.LFE884:
	.size	vatomicsz_xor_get_rlx, .-vatomicsz_xor_get_rlx
	.align	1
	.type	vatomic8_xor, @function
vatomic8_xor:
.LFB339:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE339:
	.size	vatomic8_xor, .-vatomic8_xor
	.align	1
	.type	vatomic8_xor_rel, @function
vatomic8_xor_rel:
.LFB340:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE340:
	.size	vatomic8_xor_rel, .-vatomic8_xor_rel
	.align	1
	.type	vatomic8_xor_rlx, @function
vatomic8_xor_rlx:
.LFB341:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE341:
	.size	vatomic8_xor_rlx, .-vatomic8_xor_rlx
	.align	1
	.type	vatomic16_xor, @function
vatomic16_xor:
.LFB342:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE342:
	.size	vatomic16_xor, .-vatomic16_xor
	.align	1
	.type	vatomic16_xor_rel, @function
vatomic16_xor_rel:
.LFB343:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE343:
	.size	vatomic16_xor_rel, .-vatomic16_xor_rel
	.align	1
	.type	vatomic16_xor_rlx, @function
vatomic16_xor_rlx:
.LFB344:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	xor	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE344:
	.size	vatomic16_xor_rlx, .-vatomic16_xor_rlx
	.align	1
	.type	vatomic32_xor, @function
vatomic32_xor:
.LFB345:
	.cfi_startproc
	amoxor.w.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE345:
	.size	vatomic32_xor, .-vatomic32_xor
	.align	1
	.type	vatomic32_xor_rel, @function
vatomic32_xor_rel:
.LFB346:
	.cfi_startproc
	amoxor.w.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE346:
	.size	vatomic32_xor_rel, .-vatomic32_xor_rel
	.align	1
	.type	vatomic32_xor_rlx, @function
vatomic32_xor_rlx:
.LFB347:
	.cfi_startproc
	amoxor.w	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE347:
	.size	vatomic32_xor_rlx, .-vatomic32_xor_rlx
	.align	1
	.type	vatomic64_xor, @function
vatomic64_xor:
.LFB348:
	.cfi_startproc
	amoxor.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE348:
	.size	vatomic64_xor, .-vatomic64_xor
	.align	1
	.type	vatomic64_xor_rel, @function
vatomic64_xor_rel:
.LFB349:
	.cfi_startproc
	amoxor.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE349:
	.size	vatomic64_xor_rel, .-vatomic64_xor_rel
	.align	1
	.type	vatomic64_xor_rlx, @function
vatomic64_xor_rlx:
.LFB350:
	.cfi_startproc
	amoxor.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE350:
	.size	vatomic64_xor_rlx, .-vatomic64_xor_rlx
	.align	1
	.type	vatomicsz_xor, @function
vatomicsz_xor:
.LFB770:
	.cfi_startproc
	amoxor.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE770:
	.size	vatomicsz_xor, .-vatomicsz_xor
	.align	1
	.type	vatomicsz_xor_rel, @function
vatomicsz_xor_rel:
.LFB788:
	.cfi_startproc
	amoxor.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE788:
	.size	vatomicsz_xor_rel, .-vatomicsz_xor_rel
	.align	1
	.type	vatomicsz_xor_rlx, @function
vatomicsz_xor_rlx:
.LFB800:
	.cfi_startproc
	amoxor.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE800:
	.size	vatomicsz_xor_rlx, .-vatomicsz_xor_rlx
	.align	1
	.type	vatomic8_add_get, @function
vatomic8_add_get:
.LFB354:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE354:
	.size	vatomic8_add_get, .-vatomic8_add_get
	.align	1
	.type	vatomic8_add_get_acq, @function
vatomic8_add_get_acq:
.LFB355:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE355:
	.size	vatomic8_add_get_acq, .-vatomic8_add_get_acq
	.align	1
	.type	vatomic8_add_get_rel, @function
vatomic8_add_get_rel:
.LFB356:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE356:
	.size	vatomic8_add_get_rel, .-vatomic8_add_get_rel
	.align	1
	.type	vatomic8_add_get_rlx, @function
vatomic8_add_get_rlx:
.LFB357:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE357:
	.size	vatomic8_add_get_rlx, .-vatomic8_add_get_rlx
	.align	1
	.type	vatomic16_add_get, @function
vatomic16_add_get:
.LFB358:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE358:
	.size	vatomic16_add_get, .-vatomic16_add_get
	.align	1
	.type	vatomic16_add_get_acq, @function
vatomic16_add_get_acq:
.LFB359:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w.aq	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE359:
	.size	vatomic16_add_get_acq, .-vatomic16_add_get_acq
	.align	1
	.type	vatomic16_add_get_rel, @function
vatomic16_add_get_rel:
.LFB360:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE360:
	.size	vatomic16_add_get_rel, .-vatomic16_add_get_rel
	.align	1
	.type	vatomic16_add_get_rlx, @function
vatomic16_add_get_rlx:
.LFB361:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE361:
	.size	vatomic16_add_get_rlx, .-vatomic16_add_get_rlx
	.align	1
	.type	vatomic32_add_get, @function
vatomic32_add_get:
.LFB362:
	.cfi_startproc
	amoadd.w.aqrl	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE362:
	.size	vatomic32_add_get, .-vatomic32_add_get
	.align	1
	.type	vatomic32_add_get_acq, @function
vatomic32_add_get_acq:
.LFB363:
	.cfi_startproc
	amoadd.w.aq	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE363:
	.size	vatomic32_add_get_acq, .-vatomic32_add_get_acq
	.align	1
	.type	vatomic32_add_get_rel, @function
vatomic32_add_get_rel:
.LFB364:
	.cfi_startproc
	amoadd.w.rl	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE364:
	.size	vatomic32_add_get_rel, .-vatomic32_add_get_rel
	.align	1
	.type	vatomic32_add_get_rlx, @function
vatomic32_add_get_rlx:
.LFB365:
	.cfi_startproc
	amoadd.w	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE365:
	.size	vatomic32_add_get_rlx, .-vatomic32_add_get_rlx
	.align	1
	.type	vatomic64_add_get, @function
vatomic64_add_get:
.LFB366:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aqrl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE366:
	.size	vatomic64_add_get, .-vatomic64_add_get
	.align	1
	.type	vatomic64_add_get_acq, @function
vatomic64_add_get_acq:
.LFB367:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aq	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE367:
	.size	vatomic64_add_get_acq, .-vatomic64_add_get_acq
	.align	1
	.type	vatomic64_add_get_rel, @function
vatomic64_add_get_rel:
.LFB368:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.rl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE368:
	.size	vatomic64_add_get_rel, .-vatomic64_add_get_rel
	.align	1
	.type	vatomic64_add_get_rlx, @function
vatomic64_add_get_rlx:
.LFB369:
	.cfi_startproc
	mv	a5,a0
	amoadd.d	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE369:
	.size	vatomic64_add_get_rlx, .-vatomic64_add_get_rlx
	.align	1
	.type	vatomicsz_add_get, @function
vatomicsz_add_get:
.LFB822:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aqrl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE822:
	.size	vatomicsz_add_get, .-vatomicsz_add_get
	.align	1
	.type	vatomicsz_add_get_acq, @function
vatomicsz_add_get_acq:
.LFB844:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.aq	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE844:
	.size	vatomicsz_add_get_acq, .-vatomicsz_add_get_acq
	.align	1
	.type	vatomicsz_add_get_rel, @function
vatomicsz_add_get_rel:
.LFB866:
	.cfi_startproc
	mv	a5,a0
	amoadd.d.rl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE866:
	.size	vatomicsz_add_get_rel, .-vatomicsz_add_get_rel
	.align	1
	.type	vatomicsz_add_get_rlx, @function
vatomicsz_add_get_rlx:
.LFB888:
	.cfi_startproc
	mv	a5,a0
	amoadd.d	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE888:
	.size	vatomicsz_add_get_rlx, .-vatomicsz_add_get_rlx
	.align	1
	.type	vatomic8_add, @function
vatomic8_add:
.LFB374:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE374:
	.size	vatomic8_add, .-vatomic8_add
	.align	1
	.type	vatomic8_add_rel, @function
vatomic8_add_rel:
.LFB375:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE375:
	.size	vatomic8_add_rel, .-vatomic8_add_rel
	.align	1
	.type	vatomic8_add_rlx, @function
vatomic8_add_rlx:
.LFB376:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE376:
	.size	vatomic8_add_rlx, .-vatomic8_add_rlx
	.align	1
	.type	vatomic16_add, @function
vatomic16_add:
.LFB377:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE377:
	.size	vatomic16_add, .-vatomic16_add
	.align	1
	.type	vatomic16_add_rel, @function
vatomic16_add_rel:
.LFB378:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE378:
	.size	vatomic16_add_rel, .-vatomic16_add_rel
	.align	1
	.type	vatomic16_add_rlx, @function
vatomic16_add_rlx:
.LFB379:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE379:
	.size	vatomic16_add_rlx, .-vatomic16_add_rlx
	.align	1
	.type	vatomic32_add, @function
vatomic32_add:
.LFB380:
	.cfi_startproc
	amoadd.w.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE380:
	.size	vatomic32_add, .-vatomic32_add
	.align	1
	.type	vatomic32_add_rel, @function
vatomic32_add_rel:
.LFB381:
	.cfi_startproc
	amoadd.w.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE381:
	.size	vatomic32_add_rel, .-vatomic32_add_rel
	.align	1
	.type	vatomic32_add_rlx, @function
vatomic32_add_rlx:
.LFB382:
	.cfi_startproc
	amoadd.w	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE382:
	.size	vatomic32_add_rlx, .-vatomic32_add_rlx
	.align	1
	.type	vatomic64_add, @function
vatomic64_add:
.LFB383:
	.cfi_startproc
	amoadd.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE383:
	.size	vatomic64_add, .-vatomic64_add
	.align	1
	.type	vatomic64_add_rel, @function
vatomic64_add_rel:
.LFB384:
	.cfi_startproc
	amoadd.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE384:
	.size	vatomic64_add_rel, .-vatomic64_add_rel
	.align	1
	.type	vatomic64_add_rlx, @function
vatomic64_add_rlx:
.LFB385:
	.cfi_startproc
	amoadd.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE385:
	.size	vatomic64_add_rlx, .-vatomic64_add_rlx
	.align	1
	.type	vatomicsz_add, @function
vatomicsz_add:
.LFB772:
	.cfi_startproc
	amoadd.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE772:
	.size	vatomicsz_add, .-vatomicsz_add
	.align	1
	.type	vatomicsz_add_rel, @function
vatomicsz_add_rel:
.LFB790:
	.cfi_startproc
	amoadd.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE790:
	.size	vatomicsz_add_rel, .-vatomicsz_add_rel
	.align	1
	.type	vatomicsz_add_rlx, @function
vatomicsz_add_rlx:
.LFB802:
	.cfi_startproc
	amoadd.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE802:
	.size	vatomicsz_add_rlx, .-vatomicsz_add_rlx
	.align	1
	.type	vatomic8_get_inc, @function
vatomic8_get_inc:
.LFB389:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE389:
	.size	vatomic8_get_inc, .-vatomic8_get_inc
	.align	1
	.type	vatomic8_get_inc_acq, @function
vatomic8_get_inc_acq:
.LFB390:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE390:
	.size	vatomic8_get_inc_acq, .-vatomic8_get_inc_acq
	.align	1
	.type	vatomic8_get_inc_rel, @function
vatomic8_get_inc_rel:
.LFB391:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE391:
	.size	vatomic8_get_inc_rel, .-vatomic8_get_inc_rel
	.align	1
	.type	vatomic8_get_inc_rlx, @function
vatomic8_get_inc_rlx:
.LFB392:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE392:
	.size	vatomic8_get_inc_rlx, .-vatomic8_get_inc_rlx
	.align	1
	.type	vatomic16_get_inc, @function
vatomic16_get_inc:
.LFB393:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE393:
	.size	vatomic16_get_inc, .-vatomic16_get_inc
	.align	1
	.type	vatomic16_get_inc_acq, @function
vatomic16_get_inc_acq:
.LFB394:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w.aq	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE394:
	.size	vatomic16_get_inc_acq, .-vatomic16_get_inc_acq
	.align	1
	.type	vatomic16_get_inc_rel, @function
vatomic16_get_inc_rel:
.LFB395:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE395:
	.size	vatomic16_get_inc_rel, .-vatomic16_get_inc_rel
	.align	1
	.type	vatomic16_get_inc_rlx, @function
vatomic16_get_inc_rlx:
.LFB396:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE396:
	.size	vatomic16_get_inc_rlx, .-vatomic16_get_inc_rlx
	.align	1
	.type	vatomic32_get_inc, @function
vatomic32_get_inc:
.LFB397:
	.cfi_startproc
	li	a4,1
	amoadd.w.aqrl	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE397:
	.size	vatomic32_get_inc, .-vatomic32_get_inc
	.align	1
	.type	vatomic32_get_inc_acq, @function
vatomic32_get_inc_acq:
.LFB398:
	.cfi_startproc
	li	a4,1
	amoadd.w.aq	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE398:
	.size	vatomic32_get_inc_acq, .-vatomic32_get_inc_acq
	.align	1
	.type	vatomic32_get_inc_rel, @function
vatomic32_get_inc_rel:
.LFB399:
	.cfi_startproc
	li	a4,1
	amoadd.w.rl	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE399:
	.size	vatomic32_get_inc_rel, .-vatomic32_get_inc_rel
	.align	1
	.type	vatomic32_get_inc_rlx, @function
vatomic32_get_inc_rlx:
.LFB400:
	.cfi_startproc
	li	a4,1
	amoadd.w	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE400:
	.size	vatomic32_get_inc_rlx, .-vatomic32_get_inc_rlx
	.align	1
	.type	vatomic64_get_inc, @function
vatomic64_get_inc:
.LFB401:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aqrl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE401:
	.size	vatomic64_get_inc, .-vatomic64_get_inc
	.align	1
	.type	vatomic64_get_inc_acq, @function
vatomic64_get_inc_acq:
.LFB402:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aq	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE402:
	.size	vatomic64_get_inc_acq, .-vatomic64_get_inc_acq
	.align	1
	.type	vatomic64_get_inc_rel, @function
vatomic64_get_inc_rel:
.LFB403:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.rl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE403:
	.size	vatomic64_get_inc_rel, .-vatomic64_get_inc_rel
	.align	1
	.type	vatomic64_get_inc_rlx, @function
vatomic64_get_inc_rlx:
.LFB404:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE404:
	.size	vatomic64_get_inc_rlx, .-vatomic64_get_inc_rlx
	.align	1
	.type	vatomicsz_get_inc, @function
vatomicsz_get_inc:
.LFB908:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aqrl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE908:
	.size	vatomicsz_get_inc, .-vatomicsz_get_inc
	.align	1
	.type	vatomicsz_get_inc_acq, @function
vatomicsz_get_inc_acq:
.LFB916:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aq	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE916:
	.size	vatomicsz_get_inc_acq, .-vatomicsz_get_inc_acq
	.align	1
	.type	vatomicsz_get_inc_rel, @function
vatomicsz_get_inc_rel:
.LFB924:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.rl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE924:
	.size	vatomicsz_get_inc_rel, .-vatomicsz_get_inc_rel
	.align	1
	.type	vatomicsz_get_inc_rlx, @function
vatomicsz_get_inc_rlx:
.LFB932:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE932:
	.size	vatomicsz_get_inc_rlx, .-vatomicsz_get_inc_rlx
	.align	1
	.type	vatomic8_inc_get, @function
vatomic8_inc_get:
.LFB409:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE409:
	.size	vatomic8_inc_get, .-vatomic8_inc_get
	.align	1
	.type	vatomic8_inc_get_acq, @function
vatomic8_inc_get_acq:
.LFB410:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE410:
	.size	vatomic8_inc_get_acq, .-vatomic8_inc_get_acq
	.align	1
	.type	vatomic8_inc_get_rel, @function
vatomic8_inc_get_rel:
.LFB411:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE411:
	.size	vatomic8_inc_get_rel, .-vatomic8_inc_get_rel
	.align	1
	.type	vatomic8_inc_get_rlx, @function
vatomic8_inc_get_rlx:
.LFB412:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE412:
	.size	vatomic8_inc_get_rlx, .-vatomic8_inc_get_rlx
	.align	1
	.type	vatomic16_inc_get, @function
vatomic16_inc_get:
.LFB413:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE413:
	.size	vatomic16_inc_get, .-vatomic16_inc_get
	.align	1
	.type	vatomic16_inc_get_acq, @function
vatomic16_inc_get_acq:
.LFB414:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE414:
	.size	vatomic16_inc_get_acq, .-vatomic16_inc_get_acq
	.align	1
	.type	vatomic16_inc_get_rel, @function
vatomic16_inc_get_rel:
.LFB415:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE415:
	.size	vatomic16_inc_get_rel, .-vatomic16_inc_get_rel
	.align	1
	.type	vatomic16_inc_get_rlx, @function
vatomic16_inc_get_rlx:
.LFB416:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE416:
	.size	vatomic16_inc_get_rlx, .-vatomic16_inc_get_rlx
	.align	1
	.type	vatomic32_inc_get, @function
vatomic32_inc_get:
.LFB417:
	.cfi_startproc
	li	a4,1
	amoadd.w.aqrl	a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.cfi_endproc
.LFE417:
	.size	vatomic32_inc_get, .-vatomic32_inc_get
	.align	1
	.type	vatomic32_inc_get_acq, @function
vatomic32_inc_get_acq:
.LFB418:
	.cfi_startproc
	li	a4,1
	amoadd.w.aq	a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.cfi_endproc
.LFE418:
	.size	vatomic32_inc_get_acq, .-vatomic32_inc_get_acq
	.align	1
	.type	vatomic32_inc_get_rel, @function
vatomic32_inc_get_rel:
.LFB419:
	.cfi_startproc
	li	a4,1
	amoadd.w.rl	a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.cfi_endproc
.LFE419:
	.size	vatomic32_inc_get_rel, .-vatomic32_inc_get_rel
	.align	1
	.type	vatomic32_inc_get_rlx, @function
vatomic32_inc_get_rlx:
.LFB420:
	.cfi_startproc
	li	a4,1
	amoadd.w	a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.cfi_endproc
.LFE420:
	.size	vatomic32_inc_get_rlx, .-vatomic32_inc_get_rlx
	.align	1
	.type	vatomic64_inc_get, @function
vatomic64_inc_get:
.LFB421:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aqrl	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE421:
	.size	vatomic64_inc_get, .-vatomic64_inc_get
	.align	1
	.type	vatomic64_inc_get_acq, @function
vatomic64_inc_get_acq:
.LFB422:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aq	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE422:
	.size	vatomic64_inc_get_acq, .-vatomic64_inc_get_acq
	.align	1
	.type	vatomic64_inc_get_rel, @function
vatomic64_inc_get_rel:
.LFB423:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.rl	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE423:
	.size	vatomic64_inc_get_rel, .-vatomic64_inc_get_rel
	.align	1
	.type	vatomic64_inc_get_rlx, @function
vatomic64_inc_get_rlx:
.LFB424:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE424:
	.size	vatomic64_inc_get_rlx, .-vatomic64_inc_get_rlx
	.align	1
	.type	vatomicsz_inc_get, @function
vatomicsz_inc_get:
.LFB910:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aqrl	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE910:
	.size	vatomicsz_inc_get, .-vatomicsz_inc_get
	.align	1
	.type	vatomicsz_inc_get_acq, @function
vatomicsz_inc_get_acq:
.LFB918:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.aq	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE918:
	.size	vatomicsz_inc_get_acq, .-vatomicsz_inc_get_acq
	.align	1
	.type	vatomicsz_inc_get_rel, @function
vatomicsz_inc_get_rel:
.LFB926:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d.rl	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE926:
	.size	vatomicsz_inc_get_rel, .-vatomicsz_inc_get_rel
	.align	1
	.type	vatomicsz_inc_get_rlx, @function
vatomicsz_inc_get_rlx:
.LFB934:
	.cfi_startproc
	mv	a5,a0
	li	a4,1
	amoadd.d	a0,a4,0(a5)
	addi	a0,a0,1
	ret
	.cfi_endproc
.LFE934:
	.size	vatomicsz_inc_get_rlx, .-vatomicsz_inc_get_rlx
	.align	1
	.type	vatomic8_inc, @function
vatomic8_inc:
.LFB429:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE429:
	.size	vatomic8_inc, .-vatomic8_inc
	.align	1
	.type	vatomic8_inc_acq, @function
vatomic8_inc_acq:
.LFB430:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aq	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE430:
	.size	vatomic8_inc_acq, .-vatomic8_inc_acq
	.align	1
	.type	vatomic8_inc_rel, @function
vatomic8_inc_rel:
.LFB431:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE431:
	.size	vatomic8_inc_rel, .-vatomic8_inc_rel
	.align	1
	.type	vatomic8_inc_rlx, @function
vatomic8_inc_rlx:
.LFB432:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE432:
	.size	vatomic8_inc_rlx, .-vatomic8_inc_rlx
	.align	1
	.type	vatomic16_inc, @function
vatomic16_inc:
.LFB433:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE433:
	.size	vatomic16_inc, .-vatomic16_inc
	.align	1
	.type	vatomic16_inc_acq, @function
vatomic16_inc_acq:
.LFB434:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aq	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE434:
	.size	vatomic16_inc_acq, .-vatomic16_inc_acq
	.align	1
	.type	vatomic16_inc_rel, @function
vatomic16_inc_rel:
.LFB435:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE435:
	.size	vatomic16_inc_rel, .-vatomic16_inc_rel
	.align	1
	.type	vatomic16_inc_rlx, @function
vatomic16_inc_rlx:
.LFB436:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE436:
	.size	vatomic16_inc_rlx, .-vatomic16_inc_rlx
	.align	1
	.type	vatomic32_inc, @function
vatomic32_inc:
.LFB437:
	.cfi_startproc
	li	a5,1
	amoadd.w.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE437:
	.size	vatomic32_inc, .-vatomic32_inc
	.align	1
	.type	vatomic32_inc_acq, @function
vatomic32_inc_acq:
.LFB438:
	.cfi_startproc
	li	a5,1
	amoadd.w.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE438:
	.size	vatomic32_inc_acq, .-vatomic32_inc_acq
	.align	1
	.type	vatomic32_inc_rel, @function
vatomic32_inc_rel:
.LFB439:
	.cfi_startproc
	li	a5,1
	amoadd.w.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE439:
	.size	vatomic32_inc_rel, .-vatomic32_inc_rel
	.align	1
	.type	vatomic32_inc_rlx, @function
vatomic32_inc_rlx:
.LFB440:
	.cfi_startproc
	li	a5,1
	amoadd.w	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE440:
	.size	vatomic32_inc_rlx, .-vatomic32_inc_rlx
	.align	1
	.type	vatomic64_inc, @function
vatomic64_inc:
.LFB441:
	.cfi_startproc
	li	a5,1
	amoadd.d.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE441:
	.size	vatomic64_inc, .-vatomic64_inc
	.align	1
	.type	vatomic64_inc_acq, @function
vatomic64_inc_acq:
.LFB442:
	.cfi_startproc
	li	a5,1
	amoadd.d.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE442:
	.size	vatomic64_inc_acq, .-vatomic64_inc_acq
	.align	1
	.type	vatomic64_inc_rel, @function
vatomic64_inc_rel:
.LFB443:
	.cfi_startproc
	li	a5,1
	amoadd.d.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE443:
	.size	vatomic64_inc_rel, .-vatomic64_inc_rel
	.align	1
	.type	vatomic64_inc_rlx, @function
vatomic64_inc_rlx:
.LFB444:
	.cfi_startproc
	li	a5,1
	amoadd.d	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE444:
	.size	vatomic64_inc_rlx, .-vatomic64_inc_rlx
	.align	1
	.type	vatomicsz_inc, @function
vatomicsz_inc:
.LFB940:
	.cfi_startproc
	li	a5,1
	amoadd.d.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE940:
	.size	vatomicsz_inc, .-vatomicsz_inc
	.align	1
	.type	vatomicsz_inc_acq, @function
vatomicsz_inc_acq:
.LFB970:
	.cfi_startproc
	li	a5,1
	amoadd.d.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE970:
	.size	vatomicsz_inc_acq, .-vatomicsz_inc_acq
	.align	1
	.type	vatomicsz_inc_rel, @function
vatomicsz_inc_rel:
.LFB944:
	.cfi_startproc
	li	a5,1
	amoadd.d.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE944:
	.size	vatomicsz_inc_rel, .-vatomicsz_inc_rel
	.align	1
	.type	vatomicsz_inc_rlx, @function
vatomicsz_inc_rlx:
.LFB948:
	.cfi_startproc
	li	a5,1
	amoadd.d	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE948:
	.size	vatomicsz_inc_rlx, .-vatomicsz_inc_rlx
	.align	1
	.type	vatomic8_sub_get, @function
vatomic8_sub_get:
.LFB449:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	negw	a1,a1
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE449:
	.size	vatomic8_sub_get, .-vatomic8_sub_get
	.align	1
	.type	vatomic8_sub_get_acq, @function
vatomic8_sub_get_acq:
.LFB450:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	negw	a1,a1
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE450:
	.size	vatomic8_sub_get_acq, .-vatomic8_sub_get_acq
	.align	1
	.type	vatomic8_sub_get_rel, @function
vatomic8_sub_get_rel:
.LFB451:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	negw	a1,a1
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE451:
	.size	vatomic8_sub_get_rel, .-vatomic8_sub_get_rel
	.align	1
	.type	vatomic8_sub_get_rlx, @function
vatomic8_sub_get_rlx:
.LFB452:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	negw	a1,a1
	sllw	a3,a3,a4
	andi	a0,a0,-4
	not	a6,a3
	sllw	a2,a1,a4
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a3
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a4
	addw	a0,a5,a1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE452:
	.size	vatomic8_sub_get_rlx, .-vatomic8_sub_get_rlx
	.align	1
	.type	vatomic16_sub_get, @function
vatomic16_sub_get:
.LFB453:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	negw	a1,a1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE453:
	.size	vatomic16_sub_get, .-vatomic16_sub_get
	.align	1
	.type	vatomic16_sub_get_acq, @function
vatomic16_sub_get_acq:
.LFB454:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	negw	a1,a1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w.aq	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE454:
	.size	vatomic16_sub_get_acq, .-vatomic16_sub_get_acq
	.align	1
	.type	vatomic16_sub_get_rel, @function
vatomic16_sub_get_rel:
.LFB455:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	negw	a1,a1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w.rl	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE455:
	.size	vatomic16_sub_get_rel, .-vatomic16_sub_get_rel
	.align	1
	.type	vatomic16_sub_get_rlx, @function
vatomic16_sub_get_rlx:
.LFB456:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	negw	a1,a1
	sllw	a4,a4,a3
	andi	a0,a0,-4
	not	a6,a4
	sllw	a2,a1,a3
	1:
	lr.w	a5, 0(a0)
	add	a7, a5, a2
	and	a7, a7, a4
	and	t1, a5, a6
	or	t1, t1, a7
	sc.w	a7, t1, 0(a0)
	bnez	a7, 1b
	sraw	a5,a5,a3
	addw	a0,a5,a1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE456:
	.size	vatomic16_sub_get_rlx, .-vatomic16_sub_get_rlx
	.align	1
	.type	vatomic32_sub_get, @function
vatomic32_sub_get:
.LFB457:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aqrl	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE457:
	.size	vatomic32_sub_get, .-vatomic32_sub_get
	.align	1
	.type	vatomic32_sub_get_acq, @function
vatomic32_sub_get_acq:
.LFB458:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aq	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE458:
	.size	vatomic32_sub_get_acq, .-vatomic32_sub_get_acq
	.align	1
	.type	vatomic32_sub_get_rel, @function
vatomic32_sub_get_rel:
.LFB459:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.rl	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE459:
	.size	vatomic32_sub_get_rel, .-vatomic32_sub_get_rel
	.align	1
	.type	vatomic32_sub_get_rlx, @function
vatomic32_sub_get_rlx:
.LFB460:
	.cfi_startproc
	negw	a1,a1
	amoadd.w	a5,a1,0(a0)
	addw	a0,a5,a1
	ret
	.cfi_endproc
.LFE460:
	.size	vatomic32_sub_get_rlx, .-vatomic32_sub_get_rlx
	.align	1
	.type	vatomic64_sub_get, @function
vatomic64_sub_get:
.LFB461:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aqrl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE461:
	.size	vatomic64_sub_get, .-vatomic64_sub_get
	.align	1
	.type	vatomic64_sub_get_acq, @function
vatomic64_sub_get_acq:
.LFB462:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE462:
	.size	vatomic64_sub_get_acq, .-vatomic64_sub_get_acq
	.align	1
	.type	vatomic64_sub_get_rel, @function
vatomic64_sub_get_rel:
.LFB463:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.rl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE463:
	.size	vatomic64_sub_get_rel, .-vatomic64_sub_get_rel
	.align	1
	.type	vatomic64_sub_get_rlx, @function
vatomic64_sub_get_rlx:
.LFB464:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE464:
	.size	vatomic64_sub_get_rlx, .-vatomic64_sub_get_rlx
	.align	1
	.type	vatomicsz_sub_get, @function
vatomicsz_sub_get:
.LFB826:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aqrl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE826:
	.size	vatomicsz_sub_get, .-vatomicsz_sub_get
	.align	1
	.type	vatomicsz_sub_get_acq, @function
vatomicsz_sub_get_acq:
.LFB848:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE848:
	.size	vatomicsz_sub_get_acq, .-vatomicsz_sub_get_acq
	.align	1
	.type	vatomicsz_sub_get_rel, @function
vatomicsz_sub_get_rel:
.LFB870:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d.rl	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE870:
	.size	vatomicsz_sub_get_rel, .-vatomicsz_sub_get_rel
	.align	1
	.type	vatomicsz_sub_get_rlx, @function
vatomicsz_sub_get_rlx:
.LFB892:
	.cfi_startproc
	mv	a5,a0
	neg	a1,a1
	amoadd.d	a0,a1,0(a5)
	add	a0,a0,a1
	ret
	.cfi_endproc
.LFE892:
	.size	vatomicsz_sub_get_rlx, .-vatomicsz_sub_get_rlx
	.align	1
	.type	vatomic8_sub, @function
vatomic8_sub:
.LFB469:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE469:
	.size	vatomic8_sub, .-vatomic8_sub
	.align	1
	.type	vatomic8_sub_acq, @function
vatomic8_sub_acq:
.LFB470:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aq	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE470:
	.size	vatomic8_sub_acq, .-vatomic8_sub_acq
	.align	1
	.type	vatomic8_sub_rel, @function
vatomic8_sub_rel:
.LFB471:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE471:
	.size	vatomic8_sub_rel, .-vatomic8_sub_rel
	.align	1
	.type	vatomic8_sub_rlx, @function
vatomic8_sub_rlx:
.LFB472:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE472:
	.size	vatomic8_sub_rlx, .-vatomic8_sub_rlx
	.align	1
	.type	vatomic16_sub, @function
vatomic16_sub:
.LFB473:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE473:
	.size	vatomic16_sub, .-vatomic16_sub
	.align	1
	.type	vatomic16_sub_acq, @function
vatomic16_sub_acq:
.LFB474:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w.aq	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE474:
	.size	vatomic16_sub_acq, .-vatomic16_sub_acq
	.align	1
	.type	vatomic16_sub_rel, @function
vatomic16_sub_rel:
.LFB475:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w.rl	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE475:
	.size	vatomic16_sub_rel, .-vatomic16_sub_rel
	.align	1
	.type	vatomic16_sub_rlx, @function
vatomic16_sub_rlx:
.LFB476:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	negw	a1,a1
	andi	a0,a0,-4
	not	a3,a5
	sllw	a1,a1,a4
	1:
	lr.w	a4, 0(a0)
	add	a2, a4, a1
	and	a2, a2, a5
	and	a6, a4, a3
	or	a6, a6, a2
	sc.w	a2, a6, 0(a0)
	bnez	a2, 1b
	ret
	.cfi_endproc
.LFE476:
	.size	vatomic16_sub_rlx, .-vatomic16_sub_rlx
	.align	1
	.type	vatomic32_sub, @function
vatomic32_sub:
.LFB477:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE477:
	.size	vatomic32_sub, .-vatomic32_sub
	.align	1
	.type	vatomic32_sub_acq, @function
vatomic32_sub_acq:
.LFB478:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.aq	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE478:
	.size	vatomic32_sub_acq, .-vatomic32_sub_acq
	.align	1
	.type	vatomic32_sub_rel, @function
vatomic32_sub_rel:
.LFB479:
	.cfi_startproc
	negw	a1,a1
	amoadd.w.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE479:
	.size	vatomic32_sub_rel, .-vatomic32_sub_rel
	.align	1
	.type	vatomic32_sub_rlx, @function
vatomic32_sub_rlx:
.LFB480:
	.cfi_startproc
	negw	a1,a1
	amoadd.w	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE480:
	.size	vatomic32_sub_rlx, .-vatomic32_sub_rlx
	.align	1
	.type	vatomic64_sub, @function
vatomic64_sub:
.LFB481:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE481:
	.size	vatomic64_sub, .-vatomic64_sub
	.align	1
	.type	vatomic64_sub_acq, @function
vatomic64_sub_acq:
.LFB482:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.aq	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE482:
	.size	vatomic64_sub_acq, .-vatomic64_sub_acq
	.align	1
	.type	vatomic64_sub_rel, @function
vatomic64_sub_rel:
.LFB483:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE483:
	.size	vatomic64_sub_rel, .-vatomic64_sub_rel
	.align	1
	.type	vatomic64_sub_rlx, @function
vatomic64_sub_rlx:
.LFB484:
	.cfi_startproc
	neg	a1,a1
	amoadd.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE484:
	.size	vatomic64_sub_rlx, .-vatomic64_sub_rlx
	.align	1
	.type	vatomicsz_sub, @function
vatomicsz_sub:
.LFB774:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.aqrl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE774:
	.size	vatomicsz_sub, .-vatomicsz_sub
	.align	1
	.type	vatomicsz_sub_acq, @function
vatomicsz_sub_acq:
.LFB974:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.aq	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE974:
	.size	vatomicsz_sub_acq, .-vatomicsz_sub_acq
	.align	1
	.type	vatomicsz_sub_rel, @function
vatomicsz_sub_rel:
.LFB792:
	.cfi_startproc
	neg	a1,a1
	amoadd.d.rl	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE792:
	.size	vatomicsz_sub_rel, .-vatomicsz_sub_rel
	.align	1
	.type	vatomicsz_sub_rlx, @function
vatomicsz_sub_rlx:
.LFB804:
	.cfi_startproc
	neg	a1,a1
	amoadd.d	zero,a1,0(a0)
	ret
	.cfi_endproc
.LFE804:
	.size	vatomicsz_sub_rlx, .-vatomicsz_sub_rlx
	.align	1
	.type	vatomic8_get_dec, @function
vatomic8_get_dec:
.LFB489:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE489:
	.size	vatomic8_get_dec, .-vatomic8_get_dec
	.align	1
	.type	vatomic8_get_dec_acq, @function
vatomic8_get_dec_acq:
.LFB490:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE490:
	.size	vatomic8_get_dec_acq, .-vatomic8_get_dec_acq
	.align	1
	.type	vatomic8_get_dec_rel, @function
vatomic8_get_dec_rel:
.LFB491:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE491:
	.size	vatomic8_get_dec_rel, .-vatomic8_get_dec_rel
	.align	1
	.type	vatomic8_get_dec_rlx, @function
vatomic8_get_dec_rlx:
.LFB492:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	andi	a0,a5,0xff
	ret
	.cfi_endproc
.LFE492:
	.size	vatomic8_get_dec_rlx, .-vatomic8_get_dec_rlx
	.align	1
	.type	vatomic16_get_dec, @function
vatomic16_get_dec:
.LFB493:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w.aqrl	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE493:
	.size	vatomic16_get_dec, .-vatomic16_get_dec
	.align	1
	.type	vatomic16_get_dec_acq, @function
vatomic16_get_dec_acq:
.LFB494:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w.aq	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE494:
	.size	vatomic16_get_dec_acq, .-vatomic16_get_dec_acq
	.align	1
	.type	vatomic16_get_dec_rel, @function
vatomic16_get_dec_rel:
.LFB495:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE495:
	.size	vatomic16_get_dec_rel, .-vatomic16_get_dec_rel
	.align	1
	.type	vatomic16_get_dec_rlx, @function
vatomic16_get_dec_rlx:
.LFB496:
	.cfi_startproc
	li	a5,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a5,a5,-1
	sllw	a5,a5,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a5
	sllw	a2,a2,a3
	1:
	lr.w	a4, 0(a0)
	add	a6, a4, a2
	and	a6, a6, a5
	and	a7, a4, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a4,a4,a3
	slli	a0,a4,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE496:
	.size	vatomic16_get_dec_rlx, .-vatomic16_get_dec_rlx
	.align	1
	.type	vatomic32_get_dec, @function
vatomic32_get_dec:
.LFB497:
	.cfi_startproc
	li	a4,-1
	amoadd.w.aqrl	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE497:
	.size	vatomic32_get_dec, .-vatomic32_get_dec
	.align	1
	.type	vatomic32_get_dec_acq, @function
vatomic32_get_dec_acq:
.LFB498:
	.cfi_startproc
	li	a4,-1
	amoadd.w.aq	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE498:
	.size	vatomic32_get_dec_acq, .-vatomic32_get_dec_acq
	.align	1
	.type	vatomic32_get_dec_rel, @function
vatomic32_get_dec_rel:
.LFB499:
	.cfi_startproc
	li	a4,-1
	amoadd.w.rl	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE499:
	.size	vatomic32_get_dec_rel, .-vatomic32_get_dec_rel
	.align	1
	.type	vatomic32_get_dec_rlx, @function
vatomic32_get_dec_rlx:
.LFB500:
	.cfi_startproc
	li	a4,-1
	amoadd.w	a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.cfi_endproc
.LFE500:
	.size	vatomic32_get_dec_rlx, .-vatomic32_get_dec_rlx
	.align	1
	.type	vatomic64_get_dec, @function
vatomic64_get_dec:
.LFB501:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aqrl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE501:
	.size	vatomic64_get_dec, .-vatomic64_get_dec
	.align	1
	.type	vatomic64_get_dec_acq, @function
vatomic64_get_dec_acq:
.LFB502:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE502:
	.size	vatomic64_get_dec_acq, .-vatomic64_get_dec_acq
	.align	1
	.type	vatomic64_get_dec_rel, @function
vatomic64_get_dec_rel:
.LFB503:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.rl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE503:
	.size	vatomic64_get_dec_rel, .-vatomic64_get_dec_rel
	.align	1
	.type	vatomic64_get_dec_rlx, @function
vatomic64_get_dec_rlx:
.LFB504:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE504:
	.size	vatomic64_get_dec_rlx, .-vatomic64_get_dec_rlx
	.align	1
	.type	vatomicsz_get_dec, @function
vatomicsz_get_dec:
.LFB912:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aqrl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE912:
	.size	vatomicsz_get_dec, .-vatomicsz_get_dec
	.align	1
	.type	vatomicsz_get_dec_acq, @function
vatomicsz_get_dec_acq:
.LFB920:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE920:
	.size	vatomicsz_get_dec_acq, .-vatomicsz_get_dec_acq
	.align	1
	.type	vatomicsz_get_dec_rel, @function
vatomicsz_get_dec_rel:
.LFB928:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.rl	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE928:
	.size	vatomicsz_get_dec_rel, .-vatomicsz_get_dec_rel
	.align	1
	.type	vatomicsz_get_dec_rlx, @function
vatomicsz_get_dec_rlx:
.LFB936:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d	a0,a4,0(a5)
	ret
	.cfi_endproc
.LFE936:
	.size	vatomicsz_get_dec_rlx, .-vatomicsz_get_dec_rlx
	.align	1
	.type	vatomic8_dec_get, @function
vatomic8_dec_get:
.LFB509:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,-1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE509:
	.size	vatomic8_dec_get, .-vatomic8_dec_get
	.align	1
	.type	vatomic8_dec_get_acq, @function
vatomic8_dec_get_acq:
.LFB510:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,-1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE510:
	.size	vatomic8_dec_get_acq, .-vatomic8_dec_get_acq
	.align	1
	.type	vatomic8_dec_get_rel, @function
vatomic8_dec_get_rel:
.LFB511:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,-1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE511:
	.size	vatomic8_dec_get_rel, .-vatomic8_dec_get_rel
	.align	1
	.type	vatomic8_dec_get_rlx, @function
vatomic8_dec_get_rlx:
.LFB512:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a3,255
	sllw	a3,a3,a4
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a3
	sllw	a2,a2,a4
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a3
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a4
	addiw	a0,a5,-1
	andi	a0,a0,0xff
	ret
	.cfi_endproc
.LFE512:
	.size	vatomic8_dec_get_rlx, .-vatomic8_dec_get_rlx
	.align	1
	.type	vatomic16_dec_get, @function
vatomic16_dec_get:
.LFB513:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w.aqrl	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,-1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE513:
	.size	vatomic16_dec_get, .-vatomic16_dec_get
	.align	1
	.type	vatomic16_dec_get_acq, @function
vatomic16_dec_get_acq:
.LFB514:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w.aq	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,-1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE514:
	.size	vatomic16_dec_get_acq, .-vatomic16_dec_get_acq
	.align	1
	.type	vatomic16_dec_get_rel, @function
vatomic16_dec_get_rel:
.LFB515:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w.rl	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,-1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE515:
	.size	vatomic16_dec_get_rel, .-vatomic16_dec_get_rel
	.align	1
	.type	vatomic16_dec_get_rlx, @function
vatomic16_dec_get_rlx:
.LFB516:
	.cfi_startproc
	li	a4,65536
	andi	a3,a0,3
	slliw	a3,a3,3
	addiw	a4,a4,-1
	sllw	a4,a4,a3
	li	a2,-1
	andi	a0,a0,-4
	not	a1,a4
	sllw	a2,a2,a3
	1:
	lr.w	a5, 0(a0)
	add	a6, a5, a2
	and	a6, a6, a4
	and	a7, a5, a1
	or	a7, a7, a6
	sc.w	a6, a7, 0(a0)
	bnez	a6, 1b
	sraw	a5,a5,a3
	addiw	a0,a5,-1
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.cfi_endproc
.LFE516:
	.size	vatomic16_dec_get_rlx, .-vatomic16_dec_get_rlx
	.align	1
	.type	vatomic32_dec_get, @function
vatomic32_dec_get:
.LFB517:
	.cfi_startproc
	li	a4,-1
	amoadd.w.aqrl	a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.cfi_endproc
.LFE517:
	.size	vatomic32_dec_get, .-vatomic32_dec_get
	.align	1
	.type	vatomic32_dec_get_acq, @function
vatomic32_dec_get_acq:
.LFB518:
	.cfi_startproc
	li	a4,-1
	amoadd.w.aq	a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.cfi_endproc
.LFE518:
	.size	vatomic32_dec_get_acq, .-vatomic32_dec_get_acq
	.align	1
	.type	vatomic32_dec_get_rel, @function
vatomic32_dec_get_rel:
.LFB519:
	.cfi_startproc
	li	a4,-1
	amoadd.w.rl	a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.cfi_endproc
.LFE519:
	.size	vatomic32_dec_get_rel, .-vatomic32_dec_get_rel
	.align	1
	.type	vatomic32_dec_get_rlx, @function
vatomic32_dec_get_rlx:
.LFB520:
	.cfi_startproc
	li	a4,-1
	amoadd.w	a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.cfi_endproc
.LFE520:
	.size	vatomic32_dec_get_rlx, .-vatomic32_dec_get_rlx
	.align	1
	.type	vatomic64_dec_get, @function
vatomic64_dec_get:
.LFB521:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aqrl	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE521:
	.size	vatomic64_dec_get, .-vatomic64_dec_get
	.align	1
	.type	vatomic64_dec_get_acq, @function
vatomic64_dec_get_acq:
.LFB522:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE522:
	.size	vatomic64_dec_get_acq, .-vatomic64_dec_get_acq
	.align	1
	.type	vatomic64_dec_get_rel, @function
vatomic64_dec_get_rel:
.LFB523:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.rl	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE523:
	.size	vatomic64_dec_get_rel, .-vatomic64_dec_get_rel
	.align	1
	.type	vatomic64_dec_get_rlx, @function
vatomic64_dec_get_rlx:
.LFB524:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE524:
	.size	vatomic64_dec_get_rlx, .-vatomic64_dec_get_rlx
	.align	1
	.type	vatomicsz_dec_get, @function
vatomicsz_dec_get:
.LFB914:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aqrl	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE914:
	.size	vatomicsz_dec_get, .-vatomicsz_dec_get
	.align	1
	.type	vatomicsz_dec_get_acq, @function
vatomicsz_dec_get_acq:
.LFB922:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE922:
	.size	vatomicsz_dec_get_acq, .-vatomicsz_dec_get_acq
	.align	1
	.type	vatomicsz_dec_get_rel, @function
vatomicsz_dec_get_rel:
.LFB930:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d.rl	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE930:
	.size	vatomicsz_dec_get_rel, .-vatomicsz_dec_get_rel
	.align	1
	.type	vatomicsz_dec_get_rlx, @function
vatomicsz_dec_get_rlx:
.LFB938:
	.cfi_startproc
	mv	a5,a0
	li	a4,-1
	amoadd.d	a0,a4,0(a5)
	addi	a0,a0,-1
	ret
	.cfi_endproc
.LFE938:
	.size	vatomicsz_dec_get_rlx, .-vatomicsz_dec_get_rlx
	.align	1
	.type	vatomic8_dec, @function
vatomic8_dec:
.LFB529:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE529:
	.size	vatomic8_dec, .-vatomic8_dec
	.align	1
	.type	vatomic8_dec_acq, @function
vatomic8_dec_acq:
.LFB530:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aq	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE530:
	.size	vatomic8_dec_acq, .-vatomic8_dec_acq
	.align	1
	.type	vatomic8_dec_rel, @function
vatomic8_dec_rel:
.LFB531:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE531:
	.size	vatomic8_dec_rel, .-vatomic8_dec_rel
	.align	1
	.type	vatomic8_dec_rlx, @function
vatomic8_dec_rlx:
.LFB532:
	.cfi_startproc
	andi	a4,a0,3
	slliw	a4,a4,3
	li	a5,255
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE532:
	.size	vatomic8_dec_rlx, .-vatomic8_dec_rlx
	.align	1
	.type	vatomic16_dec, @function
vatomic16_dec:
.LFB533:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aqrl	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE533:
	.size	vatomic16_dec, .-vatomic16_dec
	.align	1
	.type	vatomic16_dec_acq, @function
vatomic16_dec_acq:
.LFB534:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w.aq	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE534:
	.size	vatomic16_dec_acq, .-vatomic16_dec_acq
	.align	1
	.type	vatomic16_dec_rel, @function
vatomic16_dec_rel:
.LFB535:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w.rl	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE535:
	.size	vatomic16_dec_rel, .-vatomic16_dec_rel
	.align	1
	.type	vatomic16_dec_rlx, @function
vatomic16_dec_rlx:
.LFB536:
	.cfi_startproc
	li	a5,65536
	andi	a4,a0,3
	slliw	a4,a4,3
	addiw	a5,a5,-1
	sllw	a5,a5,a4
	li	a3,-1
	andi	a0,a0,-4
	not	a2,a5
	sllw	a4,a3,a4
	1:
	lr.w	a3, 0(a0)
	add	a1, a3, a4
	and	a1, a1, a5
	and	a6, a3, a2
	or	a6, a6, a1
	sc.w	a1, a6, 0(a0)
	bnez	a1, 1b
	ret
	.cfi_endproc
.LFE536:
	.size	vatomic16_dec_rlx, .-vatomic16_dec_rlx
	.align	1
	.type	vatomic32_dec, @function
vatomic32_dec:
.LFB537:
	.cfi_startproc
	li	a5,-1
	amoadd.w.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE537:
	.size	vatomic32_dec, .-vatomic32_dec
	.align	1
	.type	vatomic32_dec_acq, @function
vatomic32_dec_acq:
.LFB538:
	.cfi_startproc
	li	a5,-1
	amoadd.w.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE538:
	.size	vatomic32_dec_acq, .-vatomic32_dec_acq
	.align	1
	.type	vatomic32_dec_rel, @function
vatomic32_dec_rel:
.LFB539:
	.cfi_startproc
	li	a5,-1
	amoadd.w.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE539:
	.size	vatomic32_dec_rel, .-vatomic32_dec_rel
	.align	1
	.type	vatomic32_dec_rlx, @function
vatomic32_dec_rlx:
.LFB540:
	.cfi_startproc
	li	a5,-1
	amoadd.w	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE540:
	.size	vatomic32_dec_rlx, .-vatomic32_dec_rlx
	.align	1
	.type	vatomic64_dec, @function
vatomic64_dec:
.LFB541:
	.cfi_startproc
	li	a5,-1
	amoadd.d.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE541:
	.size	vatomic64_dec, .-vatomic64_dec
	.align	1
	.type	vatomic64_dec_acq, @function
vatomic64_dec_acq:
.LFB542:
	.cfi_startproc
	li	a5,-1
	amoadd.d.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE542:
	.size	vatomic64_dec_acq, .-vatomic64_dec_acq
	.align	1
	.type	vatomic64_dec_rel, @function
vatomic64_dec_rel:
.LFB543:
	.cfi_startproc
	li	a5,-1
	amoadd.d.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE543:
	.size	vatomic64_dec_rel, .-vatomic64_dec_rel
	.align	1
	.type	vatomic64_dec_rlx, @function
vatomic64_dec_rlx:
.LFB544:
	.cfi_startproc
	li	a5,-1
	amoadd.d	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE544:
	.size	vatomic64_dec_rlx, .-vatomic64_dec_rlx
	.align	1
	.type	vatomicsz_dec, @function
vatomicsz_dec:
.LFB942:
	.cfi_startproc
	li	a5,-1
	amoadd.d.aqrl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE942:
	.size	vatomicsz_dec, .-vatomicsz_dec
	.align	1
	.type	vatomicsz_dec_acq, @function
vatomicsz_dec_acq:
.LFB972:
	.cfi_startproc
	li	a5,-1
	amoadd.d.aq	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE972:
	.size	vatomicsz_dec_acq, .-vatomicsz_dec_acq
	.align	1
	.type	vatomicsz_dec_rel, @function
vatomicsz_dec_rel:
.LFB946:
	.cfi_startproc
	li	a5,-1
	amoadd.d.rl	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE946:
	.size	vatomicsz_dec_rel, .-vatomicsz_dec_rel
	.align	1
	.type	vatomicsz_dec_rlx, @function
vatomicsz_dec_rlx:
.LFB950:
	.cfi_startproc
	li	a5,-1
	amoadd.d	zero,a5,0(a0)
	ret
	.cfi_endproc
.LFE950:
	.size	vatomicsz_dec_rlx, .-vatomicsz_dec_rlx
	.align	1
	.type	vatomic8_init, @function
vatomic8_init:
.LFB549:
	.cfi_startproc
	fence	rw,rw
	sb	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE549:
	.size	vatomic8_init, .-vatomic8_init
	.align	1
	.type	vatomic16_init, @function
vatomic16_init:
.LFB550:
	.cfi_startproc
	fence	rw,rw
	sh	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE550:
	.size	vatomic16_init, .-vatomic16_init
	.align	1
	.type	vatomic32_init, @function
vatomic32_init:
.LFB551:
	.cfi_startproc
	fence	rw,w
	sw	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE551:
	.size	vatomic32_init, .-vatomic32_init
	.align	1
	.type	vatomic64_init, @function
vatomic64_init:
.LFB552:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE552:
	.size	vatomic64_init, .-vatomic64_init
	.align	1
	.type	vatomicsz_init, @function
vatomicsz_init:
.LFB762:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE762:
	.size	vatomicsz_init, .-vatomicsz_init
	.align	1
	.type	vatomicptr_init, @function
vatomicptr_init:
.LFB554:
	.cfi_startproc
	fence	rw,w
	sd	a1,0(a0)
	fence	rw,rw
	ret
	.cfi_endproc
.LFE554:
	.size	vatomicptr_init, .-vatomicptr_init
	.align	1
	.type	vatomic32_await_neq, @function
vatomic32_await_neq:
.LFB555:
	.cfi_startproc
	mv	a5,a0
.L798:
	fence	rw,rw
	lw	a0,0(a5)
	fence	r,rw
	sext.w	a0,a0
	beq	a1,a0,.L798
	ret
	.cfi_endproc
.LFE555:
	.size	vatomic32_await_neq, .-vatomic32_await_neq
	.align	1
	.type	vatomic32_await_neq_acq, @function
vatomic32_await_neq_acq:
.LFB556:
	.cfi_startproc
	mv	a5,a0
.L801:
	lw	a0,0(a5)
	fence	r,rw
	sext.w	a0,a0
	beq	a1,a0,.L801
	ret
	.cfi_endproc
.LFE556:
	.size	vatomic32_await_neq_acq, .-vatomic32_await_neq_acq
	.align	1
	.type	vatomic32_await_neq_rlx, @function
vatomic32_await_neq_rlx:
.LFB557:
	.cfi_startproc
	mv	a5,a0
.L804:
	lw	a0,0(a5)
	sext.w	a0,a0
	beq	a1,a0,.L804
	ret
	.cfi_endproc
.LFE557:
	.size	vatomic32_await_neq_rlx, .-vatomic32_await_neq_rlx
	.align	1
	.type	vatomic64_await_neq, @function
vatomic64_await_neq:
.LFB558:
	.cfi_startproc
	mv	a5,a0
.L807:
	fence	rw,rw
	ld	a0,0(a5)
	fence	r,rw
	beq	a1,a0,.L807
	ret
	.cfi_endproc
.LFE558:
	.size	vatomic64_await_neq, .-vatomic64_await_neq
	.align	1
	.type	vatomic64_await_neq_acq, @function
vatomic64_await_neq_acq:
.LFB559:
	.cfi_startproc
	mv	a5,a0
.L810:
	ld	a0,0(a5)
	fence	r,rw
	beq	a1,a0,.L810
	ret
	.cfi_endproc
.LFE559:
	.size	vatomic64_await_neq_acq, .-vatomic64_await_neq_acq
	.align	1
	.type	vatomic64_await_neq_rlx, @function
vatomic64_await_neq_rlx:
.LFB560:
	.cfi_startproc
	mv	a5,a0
.L813:
	ld	a0,0(a5)
	beq	a1,a0,.L813
	ret
	.cfi_endproc
.LFE560:
	.size	vatomic64_await_neq_rlx, .-vatomic64_await_neq_rlx
	.align	1
	.type	vatomicptr_await_neq, @function
vatomicptr_await_neq:
.LFB561:
	.cfi_startproc
	mv	a5,a0
.L816:
	fence	rw,rw
	ld	a0,0(a5)
	fence	r,rw
	beq	a1,a0,.L816
	ret
	.cfi_endproc
.LFE561:
	.size	vatomicptr_await_neq, .-vatomicptr_await_neq
	.align	1
	.type	vatomicptr_await_neq_acq, @function
vatomicptr_await_neq_acq:
.LFB562:
	.cfi_startproc
	mv	a5,a0
.L819:
	ld	a0,0(a5)
	fence	r,rw
	beq	a1,a0,.L819
	ret
	.cfi_endproc
.LFE562:
	.size	vatomicptr_await_neq_acq, .-vatomicptr_await_neq_acq
	.align	1
	.type	vatomicptr_await_neq_rlx, @function
vatomicptr_await_neq_rlx:
.LFB563:
	.cfi_startproc
	mv	a5,a0
.L822:
	ld	a0,0(a5)
	beq	a1,a0,.L822
	ret
	.cfi_endproc
.LFE563:
	.size	vatomicptr_await_neq_rlx, .-vatomicptr_await_neq_rlx
	.align	1
	.type	vatomic32_await_eq, @function
vatomic32_await_eq:
.LFB564:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L825:
	sext.w	a0,a5
	fence	rw,rw
	lw	a5,0(a4)
	fence	r,rw
	sext.w	a5,a5
	bne	a1,a5,.L825
	ret
	.cfi_endproc
.LFE564:
	.size	vatomic32_await_eq, .-vatomic32_await_eq
	.align	1
	.type	vatomic32_await_eq_acq, @function
vatomic32_await_eq_acq:
.LFB565:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L828:
	sext.w	a0,a5
	lw	a5,0(a4)
	fence	r,rw
	sext.w	a5,a5
	bne	a1,a5,.L828
	ret
	.cfi_endproc
.LFE565:
	.size	vatomic32_await_eq_acq, .-vatomic32_await_eq_acq
	.align	1
	.type	vatomic32_await_eq_rlx, @function
vatomic32_await_eq_rlx:
.LFB566:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L831:
	sext.w	a0,a5
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a1,a5,.L831
	ret
	.cfi_endproc
.LFE566:
	.size	vatomic32_await_eq_rlx, .-vatomic32_await_eq_rlx
	.align	1
	.type	vatomic64_await_eq, @function
vatomic64_await_eq:
.LFB567:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L834:
	mv	a0,a5
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	bne	a1,a5,.L834
	ret
	.cfi_endproc
.LFE567:
	.size	vatomic64_await_eq, .-vatomic64_await_eq
	.align	1
	.type	vatomic64_await_eq_acq, @function
vatomic64_await_eq_acq:
.LFB568:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L837:
	mv	a0,a5
	ld	a5,0(a4)
	fence	r,rw
	bne	a1,a5,.L837
	ret
	.cfi_endproc
.LFE568:
	.size	vatomic64_await_eq_acq, .-vatomic64_await_eq_acq
	.align	1
	.type	vatomic64_await_eq_rlx, @function
vatomic64_await_eq_rlx:
.LFB569:
	.cfi_startproc
	mv	a4,a0
	mv	a5,a1
.L840:
	mv	a0,a5
	ld	a5,0(a4)
	bne	a1,a5,.L840
	ret
	.cfi_endproc
.LFE569:
	.size	vatomic64_await_eq_rlx, .-vatomic64_await_eq_rlx
	.align	1
	.type	vatomicptr_await_eq, @function
vatomicptr_await_eq:
.LFB570:
	.cfi_startproc
	mv	a3,a0
	mv	a5,a1
.L843:
	fence	rw,rw
	ld	a4,0(a3)
	fence	r,rw
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L843
	ret
	.cfi_endproc
.LFE570:
	.size	vatomicptr_await_eq, .-vatomicptr_await_eq
	.align	1
	.type	vatomicptr_await_eq_acq, @function
vatomicptr_await_eq_acq:
.LFB571:
	.cfi_startproc
	mv	a3,a0
	mv	a5,a1
.L846:
	ld	a4,0(a3)
	fence	r,rw
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L846
	ret
	.cfi_endproc
.LFE571:
	.size	vatomicptr_await_eq_acq, .-vatomicptr_await_eq_acq
	.align	1
	.type	vatomicptr_await_eq_rlx, @function
vatomicptr_await_eq_rlx:
.LFB572:
	.cfi_startproc
	mv	a3,a0
	mv	a5,a1
.L849:
	ld	a4,0(a3)
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L849
	ret
	.cfi_endproc
.LFE572:
	.size	vatomicptr_await_eq_rlx, .-vatomicptr_await_eq_rlx
	.align	1
	.type	vatomic32_await_le, @function
vatomic32_await_le:
.LFB573:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bgeu	a1,a5,.L858
.L853:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L853
	bgeu	a1,a0,.L859
	mv	a5,a0
	j	.L853
.L859:
	ret
.L858:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE573:
	.size	vatomic32_await_le, .-vatomic32_await_le
	.align	1
	.type	vatomic32_await_le_acq, @function
vatomic32_await_le_acq:
.LFB574:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bgeu	a1,a5,.L867
.L862:
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L862
	bgeu	a1,a0,.L868
	mv	a5,a0
	j	.L862
.L868:
	ret
.L867:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE574:
	.size	vatomic32_await_le_acq, .-vatomic32_await_le_acq
	.align	1
	.type	vatomic32_await_le_rlx, @function
vatomic32_await_le_rlx:
.LFB575:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bgeu	a1,a5,.L876
.L871:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L871
	bgeu	a1,a0,.L877
	mv	a5,a0
	j	.L871
.L877:
	ret
.L876:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE575:
	.size	vatomic32_await_le_rlx, .-vatomic32_await_le_rlx
	.align	1
	.type	vatomic32_await_lt, @function
vatomic32_await_lt:
.LFB576:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bgtu	a1,a5,.L885
.L880:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L880
	bgtu	a1,a0,.L886
	mv	a5,a0
	j	.L880
.L886:
	ret
.L885:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE576:
	.size	vatomic32_await_lt, .-vatomic32_await_lt
	.align	1
	.type	vatomic32_await_lt_acq, @function
vatomic32_await_lt_acq:
.LFB577:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bgtu	a1,a5,.L894
.L889:
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L889
	bgtu	a1,a0,.L895
	mv	a5,a0
	j	.L889
.L895:
	ret
.L894:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE577:
	.size	vatomic32_await_lt_acq, .-vatomic32_await_lt_acq
	.align	1
	.type	vatomic32_await_lt_rlx, @function
vatomic32_await_lt_rlx:
.LFB578:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bgtu	a1,a5,.L903
.L898:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L898
	bgtu	a1,a0,.L904
	mv	a5,a0
	j	.L898
.L904:
	ret
.L903:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE578:
	.size	vatomic32_await_lt_rlx, .-vatomic32_await_lt_rlx
	.align	1
	.type	vatomic32_await_ge, @function
vatomic32_await_ge:
.LFB579:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bleu	a1,a5,.L912
.L907:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L907
	bleu	a1,a0,.L913
	mv	a5,a0
	j	.L907
.L913:
	ret
.L912:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE579:
	.size	vatomic32_await_ge, .-vatomic32_await_ge
	.align	1
	.type	vatomic32_await_ge_acq, @function
vatomic32_await_ge_acq:
.LFB580:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bleu	a1,a5,.L921
.L916:
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L916
	bleu	a1,a0,.L922
	mv	a5,a0
	j	.L916
.L922:
	ret
.L921:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE580:
	.size	vatomic32_await_ge_acq, .-vatomic32_await_ge_acq
	.align	1
	.type	vatomic32_await_ge_rlx, @function
vatomic32_await_ge_rlx:
.LFB581:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bleu	a1,a5,.L930
.L925:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L925
	bleu	a1,a0,.L931
	mv	a5,a0
	j	.L925
.L931:
	ret
.L930:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE581:
	.size	vatomic32_await_ge_rlx, .-vatomic32_await_ge_rlx
	.align	1
	.type	vatomic32_await_gt, @function
vatomic32_await_gt:
.LFB582:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bltu	a1,a5,.L939
.L934:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L934
	bltu	a1,a0,.L940
	mv	a5,a0
	j	.L934
.L940:
	ret
.L939:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE582:
	.size	vatomic32_await_gt, .-vatomic32_await_gt
	.align	1
	.type	vatomic32_await_gt_acq, @function
vatomic32_await_gt_acq:
.LFB583:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bltu	a1,a5,.L948
.L943:
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L943
	bltu	a1,a0,.L949
	mv	a5,a0
	j	.L943
.L949:
	ret
.L948:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE583:
	.size	vatomic32_await_gt_acq, .-vatomic32_await_gt_acq
	.align	1
	.type	vatomic32_await_gt_rlx, @function
vatomic32_await_gt_rlx:
.LFB584:
	.cfi_startproc
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bltu	a1,a5,.L957
.L952:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L952
	bltu	a1,a0,.L958
	mv	a5,a0
	j	.L952
.L958:
	ret
.L957:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE584:
	.size	vatomic32_await_gt_rlx, .-vatomic32_await_gt_rlx
	.align	1
	.type	vatomic64_await_le, @function
vatomic64_await_le:
.LFB585:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bgeu	a1,a5,.L966
.L961:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L961
	bgeu	a1,a0,.L967
	mv	a5,a0
	j	.L961
.L967:
	ret
.L966:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE585:
	.size	vatomic64_await_le, .-vatomic64_await_le
	.align	1
	.type	vatomic64_await_le_acq, @function
vatomic64_await_le_acq:
.LFB586:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	fence	r,rw
	bgeu	a1,a5,.L975
.L970:
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L970
	bgeu	a1,a0,.L976
	mv	a5,a0
	j	.L970
.L976:
	ret
.L975:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE586:
	.size	vatomic64_await_le_acq, .-vatomic64_await_le_acq
	.align	1
	.type	vatomic64_await_le_rlx, @function
vatomic64_await_le_rlx:
.LFB587:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	bgeu	a1,a5,.L984
.L979:
	ld	a0,0(a4)
	beq	a0,a5,.L979
	bgeu	a1,a0,.L985
	mv	a5,a0
	j	.L979
.L985:
	ret
.L984:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE587:
	.size	vatomic64_await_le_rlx, .-vatomic64_await_le_rlx
	.align	1
	.type	vatomic64_await_lt, @function
vatomic64_await_lt:
.LFB588:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bgtu	a1,a5,.L993
.L988:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L988
	bgtu	a1,a0,.L994
	mv	a5,a0
	j	.L988
.L994:
	ret
.L993:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE588:
	.size	vatomic64_await_lt, .-vatomic64_await_lt
	.align	1
	.type	vatomic64_await_lt_acq, @function
vatomic64_await_lt_acq:
.LFB589:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	fence	r,rw
	bgtu	a1,a5,.L1002
.L997:
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L997
	bgtu	a1,a0,.L1003
	mv	a5,a0
	j	.L997
.L1003:
	ret
.L1002:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE589:
	.size	vatomic64_await_lt_acq, .-vatomic64_await_lt_acq
	.align	1
	.type	vatomic64_await_lt_rlx, @function
vatomic64_await_lt_rlx:
.LFB590:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	bgtu	a1,a5,.L1011
.L1006:
	ld	a0,0(a4)
	beq	a0,a5,.L1006
	bgtu	a1,a0,.L1012
	mv	a5,a0
	j	.L1006
.L1012:
	ret
.L1011:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE590:
	.size	vatomic64_await_lt_rlx, .-vatomic64_await_lt_rlx
	.align	1
	.type	vatomic64_await_ge, @function
vatomic64_await_ge:
.LFB591:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L1020
.L1015:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1015
	bleu	a1,a0,.L1021
	mv	a5,a0
	j	.L1015
.L1021:
	ret
.L1020:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE591:
	.size	vatomic64_await_ge, .-vatomic64_await_ge
	.align	1
	.type	vatomic64_await_ge_acq, @function
vatomic64_await_ge_acq:
.LFB592:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	fence	r,rw
	bleu	a1,a5,.L1029
.L1024:
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1024
	bleu	a1,a0,.L1030
	mv	a5,a0
	j	.L1024
.L1030:
	ret
.L1029:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE592:
	.size	vatomic64_await_ge_acq, .-vatomic64_await_ge_acq
	.align	1
	.type	vatomic64_await_ge_rlx, @function
vatomic64_await_ge_rlx:
.LFB593:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	bleu	a1,a5,.L1038
.L1033:
	ld	a0,0(a4)
	beq	a0,a5,.L1033
	bleu	a1,a0,.L1039
	mv	a5,a0
	j	.L1033
.L1039:
	ret
.L1038:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE593:
	.size	vatomic64_await_ge_rlx, .-vatomic64_await_ge_rlx
	.align	1
	.type	vatomic64_await_gt, @function
vatomic64_await_gt:
.LFB594:
	.cfi_startproc
	mv	a4,a0
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bltu	a1,a5,.L1047
.L1042:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1042
	bltu	a1,a0,.L1048
	mv	a5,a0
	j	.L1042
.L1048:
	ret
.L1047:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE594:
	.size	vatomic64_await_gt, .-vatomic64_await_gt
	.align	1
	.type	vatomic64_await_gt_acq, @function
vatomic64_await_gt_acq:
.LFB595:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	fence	r,rw
	bltu	a1,a5,.L1056
.L1051:
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1051
	bltu	a1,a0,.L1057
	mv	a5,a0
	j	.L1051
.L1057:
	ret
.L1056:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE595:
	.size	vatomic64_await_gt_acq, .-vatomic64_await_gt_acq
	.align	1
	.type	vatomic64_await_gt_rlx, @function
vatomic64_await_gt_rlx:
.LFB596:
	.cfi_startproc
	mv	a4,a0
	ld	a5,0(a0)
	bltu	a1,a5,.L1065
.L1060:
	ld	a0,0(a4)
	beq	a0,a5,.L1060
	bltu	a1,a0,.L1066
	mv	a5,a0
	j	.L1060
.L1066:
	ret
.L1065:
	mv	a0,a5
	ret
	.cfi_endproc
.LFE596:
	.size	vatomic64_await_gt_rlx, .-vatomic64_await_gt_rlx
	.align	1
	.type	vatomic32_await_le_add, @function
vatomic32_await_le_add:
.LFB597:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1071:
	bleu	a5,a3,.L1076
.L1069:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1069
	bgeu	a3,a0,.L1068
	mv	a5,a0
	j	.L1069
.L1076:
	mv	a0,a5
.L1068:
	addw	a2,a1,a0
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1071
	ret
	.cfi_endproc
.LFE597:
	.size	vatomic32_await_le_add, .-vatomic32_await_le_add
	.align	1
	.type	vatomic32_await_le_add_acq, @function
vatomic32_await_le_add_acq:
.LFB598:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1081:
	bleu	a5,a3,.L1086
.L1079:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1079
	bgeu	a3,a0,.L1078
	mv	a5,a0
	j	.L1079
.L1086:
	mv	a0,a5
.L1078:
	addw	a2,a1,a0
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1081
	ret
	.cfi_endproc
.LFE598:
	.size	vatomic32_await_le_add_acq, .-vatomic32_await_le_add_acq
	.align	1
	.type	vatomic32_await_le_add_rel, @function
vatomic32_await_le_add_rel:
.LFB599:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1091:
	bleu	a5,a3,.L1096
.L1089:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1089
	bgeu	a3,a0,.L1088
	mv	a5,a0
	j	.L1089
.L1096:
	mv	a0,a5
.L1088:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1091
	ret
	.cfi_endproc
.LFE599:
	.size	vatomic32_await_le_add_rel, .-vatomic32_await_le_add_rel
	.align	1
	.type	vatomic32_await_le_add_rlx, @function
vatomic32_await_le_add_rlx:
.LFB600:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1101:
	bleu	a5,a3,.L1106
.L1099:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1099
	bgeu	a3,a0,.L1098
	mv	a5,a0
	j	.L1099
.L1106:
	mv	a0,a5
.L1098:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1101
	ret
	.cfi_endproc
.LFE600:
	.size	vatomic32_await_le_add_rlx, .-vatomic32_await_le_add_rlx
	.align	1
	.type	vatomic32_await_le_sub, @function
vatomic32_await_le_sub:
.LFB601:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1111:
	bleu	a5,a3,.L1116
.L1109:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1109
	bgeu	a3,a0,.L1108
	mv	a5,a0
	j	.L1109
.L1116:
	mv	a0,a5
.L1108:
	subw	a2,a0,a1
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1111
	ret
	.cfi_endproc
.LFE601:
	.size	vatomic32_await_le_sub, .-vatomic32_await_le_sub
	.align	1
	.type	vatomic32_await_le_sub_acq, @function
vatomic32_await_le_sub_acq:
.LFB602:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1121:
	bleu	a5,a3,.L1126
.L1119:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1119
	bgeu	a3,a0,.L1118
	mv	a5,a0
	j	.L1119
.L1126:
	mv	a0,a5
.L1118:
	subw	a2,a0,a1
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1121
	ret
	.cfi_endproc
.LFE602:
	.size	vatomic32_await_le_sub_acq, .-vatomic32_await_le_sub_acq
	.align	1
	.type	vatomic32_await_le_sub_rel, @function
vatomic32_await_le_sub_rel:
.LFB603:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1131:
	bleu	a5,a3,.L1136
.L1129:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1129
	bgeu	a3,a0,.L1128
	mv	a5,a0
	j	.L1129
.L1136:
	mv	a0,a5
.L1128:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1131
	ret
	.cfi_endproc
.LFE603:
	.size	vatomic32_await_le_sub_rel, .-vatomic32_await_le_sub_rel
	.align	1
	.type	vatomic32_await_le_sub_rlx, @function
vatomic32_await_le_sub_rlx:
.LFB604:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1141:
	bleu	a5,a3,.L1146
.L1139:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1139
	bgeu	a3,a0,.L1138
	mv	a5,a0
	j	.L1139
.L1146:
	mv	a0,a5
.L1138:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1141
	ret
	.cfi_endproc
.LFE604:
	.size	vatomic32_await_le_sub_rlx, .-vatomic32_await_le_sub_rlx
	.align	1
	.type	vatomic32_await_le_set, @function
vatomic32_await_le_set:
.LFB605:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1151:
	bleu	a5,a3,.L1156
.L1149:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1149
	bgeu	a3,a0,.L1148
	mv	a5,a0
	j	.L1149
.L1156:
	mv	a0,a5
.L1148:
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1151
	ret
	.cfi_endproc
.LFE605:
	.size	vatomic32_await_le_set, .-vatomic32_await_le_set
	.align	1
	.type	vatomic32_await_le_set_acq, @function
vatomic32_await_le_set_acq:
.LFB606:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1161:
	bleu	a5,a3,.L1166
.L1159:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1159
	bgeu	a3,a0,.L1158
	mv	a5,a0
	j	.L1159
.L1166:
	mv	a0,a5
.L1158:
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1161
	ret
	.cfi_endproc
.LFE606:
	.size	vatomic32_await_le_set_acq, .-vatomic32_await_le_set_acq
	.align	1
	.type	vatomic32_await_le_set_rel, @function
vatomic32_await_le_set_rel:
.LFB607:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1171:
	bleu	a5,a3,.L1176
.L1169:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1169
	bgeu	a3,a0,.L1168
	mv	a5,a0
	j	.L1169
.L1176:
	mv	a0,a5
.L1168:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1171
	ret
	.cfi_endproc
.LFE607:
	.size	vatomic32_await_le_set_rel, .-vatomic32_await_le_set_rel
	.align	1
	.type	vatomic32_await_le_set_rlx, @function
vatomic32_await_le_set_rlx:
.LFB608:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1181:
	bleu	a5,a3,.L1186
.L1179:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1179
	bgeu	a3,a0,.L1178
	mv	a5,a0
	j	.L1179
.L1186:
	mv	a0,a5
.L1178:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1181
	ret
	.cfi_endproc
.LFE608:
	.size	vatomic32_await_le_set_rlx, .-vatomic32_await_le_set_rlx
	.align	1
	.type	vatomic32_await_lt_add, @function
vatomic32_await_lt_add:
.LFB609:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1191:
	bltu	a5,a3,.L1196
.L1189:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1189
	bgtu	a3,a0,.L1188
	mv	a5,a0
	j	.L1189
.L1196:
	mv	a0,a5
.L1188:
	addw	a2,a1,a0
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1191
	ret
	.cfi_endproc
.LFE609:
	.size	vatomic32_await_lt_add, .-vatomic32_await_lt_add
	.align	1
	.type	vatomic32_await_lt_add_acq, @function
vatomic32_await_lt_add_acq:
.LFB610:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1201:
	bltu	a5,a3,.L1206
.L1199:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1199
	bgtu	a3,a0,.L1198
	mv	a5,a0
	j	.L1199
.L1206:
	mv	a0,a5
.L1198:
	addw	a2,a1,a0
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1201
	ret
	.cfi_endproc
.LFE610:
	.size	vatomic32_await_lt_add_acq, .-vatomic32_await_lt_add_acq
	.align	1
	.type	vatomic32_await_lt_add_rel, @function
vatomic32_await_lt_add_rel:
.LFB611:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1211:
	bltu	a5,a3,.L1216
.L1209:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1209
	bgtu	a3,a0,.L1208
	mv	a5,a0
	j	.L1209
.L1216:
	mv	a0,a5
.L1208:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1211
	ret
	.cfi_endproc
.LFE611:
	.size	vatomic32_await_lt_add_rel, .-vatomic32_await_lt_add_rel
	.align	1
	.type	vatomic32_await_lt_add_rlx, @function
vatomic32_await_lt_add_rlx:
.LFB612:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1221:
	bltu	a5,a3,.L1226
.L1219:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1219
	bgtu	a3,a0,.L1218
	mv	a5,a0
	j	.L1219
.L1226:
	mv	a0,a5
.L1218:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1221
	ret
	.cfi_endproc
.LFE612:
	.size	vatomic32_await_lt_add_rlx, .-vatomic32_await_lt_add_rlx
	.align	1
	.type	vatomic32_await_lt_sub, @function
vatomic32_await_lt_sub:
.LFB613:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1231:
	bltu	a5,a3,.L1236
.L1229:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1229
	bgtu	a3,a0,.L1228
	mv	a5,a0
	j	.L1229
.L1236:
	mv	a0,a5
.L1228:
	subw	a2,a0,a1
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1231
	ret
	.cfi_endproc
.LFE613:
	.size	vatomic32_await_lt_sub, .-vatomic32_await_lt_sub
	.align	1
	.type	vatomic32_await_lt_sub_acq, @function
vatomic32_await_lt_sub_acq:
.LFB614:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1241:
	bltu	a5,a3,.L1246
.L1239:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1239
	bgtu	a3,a0,.L1238
	mv	a5,a0
	j	.L1239
.L1246:
	mv	a0,a5
.L1238:
	subw	a2,a0,a1
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1241
	ret
	.cfi_endproc
.LFE614:
	.size	vatomic32_await_lt_sub_acq, .-vatomic32_await_lt_sub_acq
	.align	1
	.type	vatomic32_await_lt_sub_rel, @function
vatomic32_await_lt_sub_rel:
.LFB615:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1251:
	bltu	a5,a3,.L1256
.L1249:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1249
	bgtu	a3,a0,.L1248
	mv	a5,a0
	j	.L1249
.L1256:
	mv	a0,a5
.L1248:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1251
	ret
	.cfi_endproc
.LFE615:
	.size	vatomic32_await_lt_sub_rel, .-vatomic32_await_lt_sub_rel
	.align	1
	.type	vatomic32_await_lt_sub_rlx, @function
vatomic32_await_lt_sub_rlx:
.LFB616:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1261:
	bltu	a5,a3,.L1266
.L1259:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1259
	bgtu	a3,a0,.L1258
	mv	a5,a0
	j	.L1259
.L1266:
	mv	a0,a5
.L1258:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1261
	ret
	.cfi_endproc
.LFE616:
	.size	vatomic32_await_lt_sub_rlx, .-vatomic32_await_lt_sub_rlx
	.align	1
	.type	vatomic32_await_lt_set, @function
vatomic32_await_lt_set:
.LFB617:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1271:
	bltu	a5,a3,.L1276
.L1269:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1269
	bgtu	a3,a0,.L1268
	mv	a5,a0
	j	.L1269
.L1276:
	mv	a0,a5
.L1268:
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1271
	ret
	.cfi_endproc
.LFE617:
	.size	vatomic32_await_lt_set, .-vatomic32_await_lt_set
	.align	1
	.type	vatomic32_await_lt_set_acq, @function
vatomic32_await_lt_set_acq:
.LFB618:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1281:
	bltu	a5,a3,.L1286
.L1279:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1279
	bgtu	a3,a0,.L1278
	mv	a5,a0
	j	.L1279
.L1286:
	mv	a0,a5
.L1278:
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1281
	ret
	.cfi_endproc
.LFE618:
	.size	vatomic32_await_lt_set_acq, .-vatomic32_await_lt_set_acq
	.align	1
	.type	vatomic32_await_lt_set_rel, @function
vatomic32_await_lt_set_rel:
.LFB619:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1291:
	bltu	a5,a3,.L1296
.L1289:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1289
	bgtu	a3,a0,.L1288
	mv	a5,a0
	j	.L1289
.L1296:
	mv	a0,a5
.L1288:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1291
	ret
	.cfi_endproc
.LFE619:
	.size	vatomic32_await_lt_set_rel, .-vatomic32_await_lt_set_rel
	.align	1
	.type	vatomic32_await_lt_set_rlx, @function
vatomic32_await_lt_set_rlx:
.LFB620:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1301:
	bltu	a5,a3,.L1306
.L1299:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1299
	bgtu	a3,a0,.L1298
	mv	a5,a0
	j	.L1299
.L1306:
	mv	a0,a5
.L1298:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1301
	ret
	.cfi_endproc
.LFE620:
	.size	vatomic32_await_lt_set_rlx, .-vatomic32_await_lt_set_rlx
	.align	1
	.type	vatomic32_await_ge_add, @function
vatomic32_await_ge_add:
.LFB621:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1311:
	bgeu	a5,a3,.L1316
.L1309:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1309
	bleu	a3,a0,.L1308
	mv	a5,a0
	j	.L1309
.L1316:
	mv	a0,a5
.L1308:
	addw	a2,a1,a0
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1311
	ret
	.cfi_endproc
.LFE621:
	.size	vatomic32_await_ge_add, .-vatomic32_await_ge_add
	.align	1
	.type	vatomic32_await_ge_add_acq, @function
vatomic32_await_ge_add_acq:
.LFB622:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1321:
	bgeu	a5,a3,.L1326
.L1319:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1319
	bleu	a3,a0,.L1318
	mv	a5,a0
	j	.L1319
.L1326:
	mv	a0,a5
.L1318:
	addw	a2,a1,a0
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1321
	ret
	.cfi_endproc
.LFE622:
	.size	vatomic32_await_ge_add_acq, .-vatomic32_await_ge_add_acq
	.align	1
	.type	vatomic32_await_ge_add_rel, @function
vatomic32_await_ge_add_rel:
.LFB623:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1331:
	bgeu	a5,a3,.L1336
.L1329:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1329
	bleu	a3,a0,.L1328
	mv	a5,a0
	j	.L1329
.L1336:
	mv	a0,a5
.L1328:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1331
	ret
	.cfi_endproc
.LFE623:
	.size	vatomic32_await_ge_add_rel, .-vatomic32_await_ge_add_rel
	.align	1
	.type	vatomic32_await_ge_add_rlx, @function
vatomic32_await_ge_add_rlx:
.LFB624:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1341:
	bgeu	a5,a3,.L1346
.L1339:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1339
	bleu	a3,a0,.L1338
	mv	a5,a0
	j	.L1339
.L1346:
	mv	a0,a5
.L1338:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1341
	ret
	.cfi_endproc
.LFE624:
	.size	vatomic32_await_ge_add_rlx, .-vatomic32_await_ge_add_rlx
	.align	1
	.type	vatomic32_await_ge_sub, @function
vatomic32_await_ge_sub:
.LFB625:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1351:
	bgeu	a5,a3,.L1356
.L1349:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1349
	bleu	a3,a0,.L1348
	mv	a5,a0
	j	.L1349
.L1356:
	mv	a0,a5
.L1348:
	subw	a2,a0,a1
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1351
	ret
	.cfi_endproc
.LFE625:
	.size	vatomic32_await_ge_sub, .-vatomic32_await_ge_sub
	.align	1
	.type	vatomic32_await_ge_sub_acq, @function
vatomic32_await_ge_sub_acq:
.LFB626:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1361:
	bgeu	a5,a3,.L1366
.L1359:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1359
	bleu	a3,a0,.L1358
	mv	a5,a0
	j	.L1359
.L1366:
	mv	a0,a5
.L1358:
	subw	a2,a0,a1
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1361
	ret
	.cfi_endproc
.LFE626:
	.size	vatomic32_await_ge_sub_acq, .-vatomic32_await_ge_sub_acq
	.align	1
	.type	vatomic32_await_ge_sub_rel, @function
vatomic32_await_ge_sub_rel:
.LFB627:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1371:
	bgeu	a5,a3,.L1376
.L1369:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1369
	bleu	a3,a0,.L1368
	mv	a5,a0
	j	.L1369
.L1376:
	mv	a0,a5
.L1368:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1371
	ret
	.cfi_endproc
.LFE627:
	.size	vatomic32_await_ge_sub_rel, .-vatomic32_await_ge_sub_rel
	.align	1
	.type	vatomic32_await_ge_sub_rlx, @function
vatomic32_await_ge_sub_rlx:
.LFB628:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1381:
	bgeu	a5,a3,.L1386
.L1379:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1379
	bleu	a3,a0,.L1378
	mv	a5,a0
	j	.L1379
.L1386:
	mv	a0,a5
.L1378:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1381
	ret
	.cfi_endproc
.LFE628:
	.size	vatomic32_await_ge_sub_rlx, .-vatomic32_await_ge_sub_rlx
	.align	1
	.type	vatomic32_await_ge_set, @function
vatomic32_await_ge_set:
.LFB629:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1391:
	bgeu	a5,a3,.L1396
.L1389:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1389
	bleu	a3,a0,.L1388
	mv	a5,a0
	j	.L1389
.L1396:
	mv	a0,a5
.L1388:
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1391
	ret
	.cfi_endproc
.LFE629:
	.size	vatomic32_await_ge_set, .-vatomic32_await_ge_set
	.align	1
	.type	vatomic32_await_ge_set_acq, @function
vatomic32_await_ge_set_acq:
.LFB630:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1401:
	bgeu	a5,a3,.L1406
.L1399:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1399
	bleu	a3,a0,.L1398
	mv	a5,a0
	j	.L1399
.L1406:
	mv	a0,a5
.L1398:
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1401
	ret
	.cfi_endproc
.LFE630:
	.size	vatomic32_await_ge_set_acq, .-vatomic32_await_ge_set_acq
	.align	1
	.type	vatomic32_await_ge_set_rel, @function
vatomic32_await_ge_set_rel:
.LFB631:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1411:
	bgeu	a5,a3,.L1416
.L1409:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1409
	bleu	a3,a0,.L1408
	mv	a5,a0
	j	.L1409
.L1416:
	mv	a0,a5
.L1408:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1411
	ret
	.cfi_endproc
.LFE631:
	.size	vatomic32_await_ge_set_rel, .-vatomic32_await_ge_set_rel
	.align	1
	.type	vatomic32_await_ge_set_rlx, @function
vatomic32_await_ge_set_rlx:
.LFB632:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1421:
	bgeu	a5,a3,.L1426
.L1419:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1419
	bleu	a3,a0,.L1418
	mv	a5,a0
	j	.L1419
.L1426:
	mv	a0,a5
.L1418:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1421
	ret
	.cfi_endproc
.LFE632:
	.size	vatomic32_await_ge_set_rlx, .-vatomic32_await_ge_set_rlx
	.align	1
	.type	vatomic32_await_gt_add, @function
vatomic32_await_gt_add:
.LFB633:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1431:
	bgtu	a5,a3,.L1436
.L1429:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1429
	bltu	a3,a0,.L1428
	mv	a5,a0
	j	.L1429
.L1436:
	mv	a0,a5
.L1428:
	addw	a2,a1,a0
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1431
	ret
	.cfi_endproc
.LFE633:
	.size	vatomic32_await_gt_add, .-vatomic32_await_gt_add
	.align	1
	.type	vatomic32_await_gt_add_acq, @function
vatomic32_await_gt_add_acq:
.LFB634:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1441:
	bgtu	a5,a3,.L1446
.L1439:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1439
	bltu	a3,a0,.L1438
	mv	a5,a0
	j	.L1439
.L1446:
	mv	a0,a5
.L1438:
	addw	a2,a1,a0
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1441
	ret
	.cfi_endproc
.LFE634:
	.size	vatomic32_await_gt_add_acq, .-vatomic32_await_gt_add_acq
	.align	1
	.type	vatomic32_await_gt_add_rel, @function
vatomic32_await_gt_add_rel:
.LFB635:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1451:
	bgtu	a5,a3,.L1456
.L1449:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1449
	bltu	a3,a0,.L1448
	mv	a5,a0
	j	.L1449
.L1456:
	mv	a0,a5
.L1448:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1451
	ret
	.cfi_endproc
.LFE635:
	.size	vatomic32_await_gt_add_rel, .-vatomic32_await_gt_add_rel
	.align	1
	.type	vatomic32_await_gt_add_rlx, @function
vatomic32_await_gt_add_rlx:
.LFB636:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1461:
	bgtu	a5,a3,.L1466
.L1459:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1459
	bltu	a3,a0,.L1458
	mv	a5,a0
	j	.L1459
.L1466:
	mv	a0,a5
.L1458:
	addw	a2,a1,a0
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1461
	ret
	.cfi_endproc
.LFE636:
	.size	vatomic32_await_gt_add_rlx, .-vatomic32_await_gt_add_rlx
	.align	1
	.type	vatomic32_await_gt_sub, @function
vatomic32_await_gt_sub:
.LFB637:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1471:
	bgtu	a5,a3,.L1476
.L1469:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1469
	bltu	a3,a0,.L1468
	mv	a5,a0
	j	.L1469
.L1476:
	mv	a0,a5
.L1468:
	subw	a2,a0,a1
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1471
	ret
	.cfi_endproc
.LFE637:
	.size	vatomic32_await_gt_sub, .-vatomic32_await_gt_sub
	.align	1
	.type	vatomic32_await_gt_sub_acq, @function
vatomic32_await_gt_sub_acq:
.LFB638:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1481:
	bgtu	a5,a3,.L1486
.L1479:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1479
	bltu	a3,a0,.L1478
	mv	a5,a0
	j	.L1479
.L1486:
	mv	a0,a5
.L1478:
	subw	a2,a0,a1
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1481
	ret
	.cfi_endproc
.LFE638:
	.size	vatomic32_await_gt_sub_acq, .-vatomic32_await_gt_sub_acq
	.align	1
	.type	vatomic32_await_gt_sub_rel, @function
vatomic32_await_gt_sub_rel:
.LFB639:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1491:
	bgtu	a5,a3,.L1496
.L1489:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1489
	bltu	a3,a0,.L1488
	mv	a5,a0
	j	.L1489
.L1496:
	mv	a0,a5
.L1488:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1491
	ret
	.cfi_endproc
.LFE639:
	.size	vatomic32_await_gt_sub_rel, .-vatomic32_await_gt_sub_rel
	.align	1
	.type	vatomic32_await_gt_sub_rlx, @function
vatomic32_await_gt_sub_rlx:
.LFB640:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1501:
	bgtu	a5,a3,.L1506
.L1499:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1499
	bltu	a3,a0,.L1498
	mv	a5,a0
	j	.L1499
.L1506:
	mv	a0,a5
.L1498:
	subw	a2,a0,a1
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a6,a2,0(a4)
	bnez	a6,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1501
	ret
	.cfi_endproc
.LFE640:
	.size	vatomic32_await_gt_sub_rlx, .-vatomic32_await_gt_sub_rlx
	.align	1
	.type	vatomic32_await_gt_set, @function
vatomic32_await_gt_set:
.LFB641:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
.L1511:
	bgtu	a5,a3,.L1516
.L1509:
	fence	rw,rw
	lw	a0,0(a4)
	fence	r,rw
	sext.w	a0,a0
	beq	a0,a5,.L1509
	bltu	a3,a0,.L1508
	mv	a5,a0
	j	.L1509
.L1516:
	mv	a0,a5
.L1508:
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1511
	ret
	.cfi_endproc
.LFE641:
	.size	vatomic32_await_gt_set, .-vatomic32_await_gt_set
	.align	1
	.type	vatomic32_await_gt_set_acq, @function
vatomic32_await_gt_set_acq:
.LFB642:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1521:
	bgtu	a5,a3,.L1526
.L1519:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1519
	bltu	a3,a0,.L1518
	mv	a5,a0
	j	.L1519
.L1526:
	mv	a0,a5
.L1518:
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1521
	ret
	.cfi_endproc
.LFE642:
	.size	vatomic32_await_gt_set_acq, .-vatomic32_await_gt_set_acq
	.align	1
	.type	vatomic32_await_gt_set_rel, @function
vatomic32_await_gt_set_rel:
.LFB643:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1531:
	bgtu	a5,a3,.L1536
.L1529:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1529
	bltu	a3,a0,.L1528
	mv	a5,a0
	j	.L1529
.L1536:
	mv	a0,a5
.L1528:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1531
	ret
	.cfi_endproc
.LFE643:
	.size	vatomic32_await_gt_set_rel, .-vatomic32_await_gt_set_rel
	.align	1
	.type	vatomic32_await_gt_set_rlx, @function
vatomic32_await_gt_set_rlx:
.LFB644:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1541:
	bgtu	a5,a3,.L1546
.L1539:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1539
	bltu	a3,a0,.L1538
	mv	a5,a0
	j	.L1539
.L1546:
	mv	a0,a5
.L1538:
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a1,a2,0(a4)
	bnez	a1,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L1541
	ret
	.cfi_endproc
.LFE644:
	.size	vatomic32_await_gt_set_rlx, .-vatomic32_await_gt_set_rlx
	.align	1
	.type	vatomic64_await_le_add, @function
vatomic64_await_le_add:
.LFB645:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1551:
	bleu	a5,a3,.L1556
.L1549:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1549
	bgeu	a3,a0,.L1548
	mv	a5,a0
	j	.L1549
.L1556:
	mv	a0,a5
.L1548:
	add	a2,a1,a0
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1551
	ret
	.cfi_endproc
.LFE645:
	.size	vatomic64_await_le_add, .-vatomic64_await_le_add
	.align	1
	.type	vatomic64_await_le_add_acq, @function
vatomic64_await_le_add_acq:
.LFB646:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1561:
	bleu	a5,a3,.L1566
.L1559:
	ld	a0,0(a4)
	beq	a0,a5,.L1559
	bgeu	a3,a0,.L1558
	mv	a5,a0
	j	.L1559
.L1566:
	mv	a0,a5
.L1558:
	add	a2,a1,a0
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1561
	ret
	.cfi_endproc
.LFE646:
	.size	vatomic64_await_le_add_acq, .-vatomic64_await_le_add_acq
	.align	1
	.type	vatomic64_await_le_add_rel, @function
vatomic64_await_le_add_rel:
.LFB647:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1571:
	bleu	a5,a3,.L1576
.L1569:
	ld	a0,0(a4)
	beq	a0,a5,.L1569
	bgeu	a3,a0,.L1568
	mv	a5,a0
	j	.L1569
.L1576:
	mv	a0,a5
.L1568:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1571
	ret
	.cfi_endproc
.LFE647:
	.size	vatomic64_await_le_add_rel, .-vatomic64_await_le_add_rel
	.align	1
	.type	vatomic64_await_le_add_rlx, @function
vatomic64_await_le_add_rlx:
.LFB648:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1581:
	bleu	a5,a3,.L1586
.L1579:
	ld	a0,0(a4)
	beq	a0,a5,.L1579
	bgeu	a3,a0,.L1578
	mv	a5,a0
	j	.L1579
.L1586:
	mv	a0,a5
.L1578:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1581
	ret
	.cfi_endproc
.LFE648:
	.size	vatomic64_await_le_add_rlx, .-vatomic64_await_le_add_rlx
	.align	1
	.type	vatomic64_await_le_sub, @function
vatomic64_await_le_sub:
.LFB649:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1591:
	bleu	a5,a3,.L1596
.L1589:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1589
	bgeu	a3,a0,.L1588
	mv	a5,a0
	j	.L1589
.L1596:
	mv	a0,a5
.L1588:
	sub	a2,a0,a1
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1591
	ret
	.cfi_endproc
.LFE649:
	.size	vatomic64_await_le_sub, .-vatomic64_await_le_sub
	.align	1
	.type	vatomic64_await_le_sub_acq, @function
vatomic64_await_le_sub_acq:
.LFB650:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1601:
	bleu	a5,a3,.L1606
.L1599:
	ld	a0,0(a4)
	beq	a0,a5,.L1599
	bgeu	a3,a0,.L1598
	mv	a5,a0
	j	.L1599
.L1606:
	mv	a0,a5
.L1598:
	sub	a2,a0,a1
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1601
	ret
	.cfi_endproc
.LFE650:
	.size	vatomic64_await_le_sub_acq, .-vatomic64_await_le_sub_acq
	.align	1
	.type	vatomic64_await_le_sub_rel, @function
vatomic64_await_le_sub_rel:
.LFB651:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1611:
	bleu	a5,a3,.L1616
.L1609:
	ld	a0,0(a4)
	beq	a0,a5,.L1609
	bgeu	a3,a0,.L1608
	mv	a5,a0
	j	.L1609
.L1616:
	mv	a0,a5
.L1608:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1611
	ret
	.cfi_endproc
.LFE651:
	.size	vatomic64_await_le_sub_rel, .-vatomic64_await_le_sub_rel
	.align	1
	.type	vatomic64_await_le_sub_rlx, @function
vatomic64_await_le_sub_rlx:
.LFB652:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1621:
	bleu	a5,a3,.L1626
.L1619:
	ld	a0,0(a4)
	beq	a0,a5,.L1619
	bgeu	a3,a0,.L1618
	mv	a5,a0
	j	.L1619
.L1626:
	mv	a0,a5
.L1618:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1621
	ret
	.cfi_endproc
.LFE652:
	.size	vatomic64_await_le_sub_rlx, .-vatomic64_await_le_sub_rlx
	.align	1
	.type	vatomic64_await_le_set, @function
vatomic64_await_le_set:
.LFB653:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1631:
	bleu	a5,a3,.L1636
.L1629:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1629
	bgeu	a3,a0,.L1628
	mv	a5,a0
	j	.L1629
.L1636:
	mv	a0,a5
.L1628:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1631
	ret
	.cfi_endproc
.LFE653:
	.size	vatomic64_await_le_set, .-vatomic64_await_le_set
	.align	1
	.type	vatomic64_await_le_set_acq, @function
vatomic64_await_le_set_acq:
.LFB654:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1641:
	bleu	a5,a3,.L1646
.L1639:
	ld	a0,0(a4)
	beq	a0,a5,.L1639
	bgeu	a3,a0,.L1638
	mv	a5,a0
	j	.L1639
.L1646:
	mv	a0,a5
.L1638:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1641
	ret
	.cfi_endproc
.LFE654:
	.size	vatomic64_await_le_set_acq, .-vatomic64_await_le_set_acq
	.align	1
	.type	vatomic64_await_le_set_rel, @function
vatomic64_await_le_set_rel:
.LFB655:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1651:
	bleu	a5,a3,.L1656
.L1649:
	ld	a0,0(a4)
	beq	a0,a5,.L1649
	bgeu	a3,a0,.L1648
	mv	a5,a0
	j	.L1649
.L1656:
	mv	a0,a5
.L1648:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1651
	ret
	.cfi_endproc
.LFE655:
	.size	vatomic64_await_le_set_rel, .-vatomic64_await_le_set_rel
	.align	1
	.type	vatomic64_await_le_set_rlx, @function
vatomic64_await_le_set_rlx:
.LFB656:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1661:
	bleu	a5,a3,.L1666
.L1659:
	ld	a0,0(a4)
	beq	a0,a5,.L1659
	bgeu	a3,a0,.L1658
	mv	a5,a0
	j	.L1659
.L1666:
	mv	a0,a5
.L1658:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1661
	ret
	.cfi_endproc
.LFE656:
	.size	vatomic64_await_le_set_rlx, .-vatomic64_await_le_set_rlx
	.align	1
	.type	vatomic64_await_lt_add, @function
vatomic64_await_lt_add:
.LFB657:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1671:
	bltu	a5,a3,.L1676
.L1669:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1669
	bgtu	a3,a0,.L1668
	mv	a5,a0
	j	.L1669
.L1676:
	mv	a0,a5
.L1668:
	add	a2,a1,a0
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1671
	ret
	.cfi_endproc
.LFE657:
	.size	vatomic64_await_lt_add, .-vatomic64_await_lt_add
	.align	1
	.type	vatomic64_await_lt_add_acq, @function
vatomic64_await_lt_add_acq:
.LFB658:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1681:
	bltu	a5,a3,.L1686
.L1679:
	ld	a0,0(a4)
	beq	a0,a5,.L1679
	bgtu	a3,a0,.L1678
	mv	a5,a0
	j	.L1679
.L1686:
	mv	a0,a5
.L1678:
	add	a2,a1,a0
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1681
	ret
	.cfi_endproc
.LFE658:
	.size	vatomic64_await_lt_add_acq, .-vatomic64_await_lt_add_acq
	.align	1
	.type	vatomic64_await_lt_add_rel, @function
vatomic64_await_lt_add_rel:
.LFB659:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1691:
	bltu	a5,a3,.L1696
.L1689:
	ld	a0,0(a4)
	beq	a0,a5,.L1689
	bgtu	a3,a0,.L1688
	mv	a5,a0
	j	.L1689
.L1696:
	mv	a0,a5
.L1688:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1691
	ret
	.cfi_endproc
.LFE659:
	.size	vatomic64_await_lt_add_rel, .-vatomic64_await_lt_add_rel
	.align	1
	.type	vatomic64_await_lt_add_rlx, @function
vatomic64_await_lt_add_rlx:
.LFB660:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1701:
	bltu	a5,a3,.L1706
.L1699:
	ld	a0,0(a4)
	beq	a0,a5,.L1699
	bgtu	a3,a0,.L1698
	mv	a5,a0
	j	.L1699
.L1706:
	mv	a0,a5
.L1698:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1701
	ret
	.cfi_endproc
.LFE660:
	.size	vatomic64_await_lt_add_rlx, .-vatomic64_await_lt_add_rlx
	.align	1
	.type	vatomic64_await_lt_sub, @function
vatomic64_await_lt_sub:
.LFB661:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1711:
	bltu	a5,a3,.L1716
.L1709:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1709
	bgtu	a3,a0,.L1708
	mv	a5,a0
	j	.L1709
.L1716:
	mv	a0,a5
.L1708:
	sub	a2,a0,a1
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1711
	ret
	.cfi_endproc
.LFE661:
	.size	vatomic64_await_lt_sub, .-vatomic64_await_lt_sub
	.align	1
	.type	vatomic64_await_lt_sub_acq, @function
vatomic64_await_lt_sub_acq:
.LFB662:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1721:
	bltu	a5,a3,.L1726
.L1719:
	ld	a0,0(a4)
	beq	a0,a5,.L1719
	bgtu	a3,a0,.L1718
	mv	a5,a0
	j	.L1719
.L1726:
	mv	a0,a5
.L1718:
	sub	a2,a0,a1
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1721
	ret
	.cfi_endproc
.LFE662:
	.size	vatomic64_await_lt_sub_acq, .-vatomic64_await_lt_sub_acq
	.align	1
	.type	vatomic64_await_lt_sub_rel, @function
vatomic64_await_lt_sub_rel:
.LFB663:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1731:
	bltu	a5,a3,.L1736
.L1729:
	ld	a0,0(a4)
	beq	a0,a5,.L1729
	bgtu	a3,a0,.L1728
	mv	a5,a0
	j	.L1729
.L1736:
	mv	a0,a5
.L1728:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1731
	ret
	.cfi_endproc
.LFE663:
	.size	vatomic64_await_lt_sub_rel, .-vatomic64_await_lt_sub_rel
	.align	1
	.type	vatomic64_await_lt_sub_rlx, @function
vatomic64_await_lt_sub_rlx:
.LFB664:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1741:
	bltu	a5,a3,.L1746
.L1739:
	ld	a0,0(a4)
	beq	a0,a5,.L1739
	bgtu	a3,a0,.L1738
	mv	a5,a0
	j	.L1739
.L1746:
	mv	a0,a5
.L1738:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1741
	ret
	.cfi_endproc
.LFE664:
	.size	vatomic64_await_lt_sub_rlx, .-vatomic64_await_lt_sub_rlx
	.align	1
	.type	vatomic64_await_lt_set, @function
vatomic64_await_lt_set:
.LFB665:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1751:
	bltu	a5,a3,.L1756
.L1749:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1749
	bgtu	a3,a0,.L1748
	mv	a5,a0
	j	.L1749
.L1756:
	mv	a0,a5
.L1748:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1751
	ret
	.cfi_endproc
.LFE665:
	.size	vatomic64_await_lt_set, .-vatomic64_await_lt_set
	.align	1
	.type	vatomic64_await_lt_set_acq, @function
vatomic64_await_lt_set_acq:
.LFB666:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1761:
	bltu	a5,a3,.L1766
.L1759:
	ld	a0,0(a4)
	beq	a0,a5,.L1759
	bgtu	a3,a0,.L1758
	mv	a5,a0
	j	.L1759
.L1766:
	mv	a0,a5
.L1758:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1761
	ret
	.cfi_endproc
.LFE666:
	.size	vatomic64_await_lt_set_acq, .-vatomic64_await_lt_set_acq
	.align	1
	.type	vatomic64_await_lt_set_rel, @function
vatomic64_await_lt_set_rel:
.LFB667:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1771:
	bltu	a5,a3,.L1776
.L1769:
	ld	a0,0(a4)
	beq	a0,a5,.L1769
	bgtu	a3,a0,.L1768
	mv	a5,a0
	j	.L1769
.L1776:
	mv	a0,a5
.L1768:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1771
	ret
	.cfi_endproc
.LFE667:
	.size	vatomic64_await_lt_set_rel, .-vatomic64_await_lt_set_rel
	.align	1
	.type	vatomic64_await_lt_set_rlx, @function
vatomic64_await_lt_set_rlx:
.LFB668:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1781:
	bltu	a5,a3,.L1786
.L1779:
	ld	a0,0(a4)
	beq	a0,a5,.L1779
	bgtu	a3,a0,.L1778
	mv	a5,a0
	j	.L1779
.L1786:
	mv	a0,a5
.L1778:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1781
	ret
	.cfi_endproc
.LFE668:
	.size	vatomic64_await_lt_set_rlx, .-vatomic64_await_lt_set_rlx
	.align	1
	.type	vatomic64_await_ge_add, @function
vatomic64_await_ge_add:
.LFB669:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1791:
	bgeu	a5,a3,.L1796
.L1789:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1789
	bleu	a3,a0,.L1788
	mv	a5,a0
	j	.L1789
.L1796:
	mv	a0,a5
.L1788:
	add	a2,a1,a0
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1791
	ret
	.cfi_endproc
.LFE669:
	.size	vatomic64_await_ge_add, .-vatomic64_await_ge_add
	.align	1
	.type	vatomic64_await_ge_add_acq, @function
vatomic64_await_ge_add_acq:
.LFB670:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1801:
	bgeu	a5,a3,.L1806
.L1799:
	ld	a0,0(a4)
	beq	a0,a5,.L1799
	bleu	a3,a0,.L1798
	mv	a5,a0
	j	.L1799
.L1806:
	mv	a0,a5
.L1798:
	add	a2,a1,a0
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1801
	ret
	.cfi_endproc
.LFE670:
	.size	vatomic64_await_ge_add_acq, .-vatomic64_await_ge_add_acq
	.align	1
	.type	vatomic64_await_ge_add_rel, @function
vatomic64_await_ge_add_rel:
.LFB671:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1811:
	bgeu	a5,a3,.L1816
.L1809:
	ld	a0,0(a4)
	beq	a0,a5,.L1809
	bleu	a3,a0,.L1808
	mv	a5,a0
	j	.L1809
.L1816:
	mv	a0,a5
.L1808:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1811
	ret
	.cfi_endproc
.LFE671:
	.size	vatomic64_await_ge_add_rel, .-vatomic64_await_ge_add_rel
	.align	1
	.type	vatomic64_await_ge_add_rlx, @function
vatomic64_await_ge_add_rlx:
.LFB672:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1821:
	bgeu	a5,a3,.L1826
.L1819:
	ld	a0,0(a4)
	beq	a0,a5,.L1819
	bleu	a3,a0,.L1818
	mv	a5,a0
	j	.L1819
.L1826:
	mv	a0,a5
.L1818:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1821
	ret
	.cfi_endproc
.LFE672:
	.size	vatomic64_await_ge_add_rlx, .-vatomic64_await_ge_add_rlx
	.align	1
	.type	vatomic64_await_ge_sub, @function
vatomic64_await_ge_sub:
.LFB673:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1831:
	bgeu	a5,a3,.L1836
.L1829:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1829
	bleu	a3,a0,.L1828
	mv	a5,a0
	j	.L1829
.L1836:
	mv	a0,a5
.L1828:
	sub	a2,a0,a1
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1831
	ret
	.cfi_endproc
.LFE673:
	.size	vatomic64_await_ge_sub, .-vatomic64_await_ge_sub
	.align	1
	.type	vatomic64_await_ge_sub_acq, @function
vatomic64_await_ge_sub_acq:
.LFB674:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1841:
	bgeu	a5,a3,.L1846
.L1839:
	ld	a0,0(a4)
	beq	a0,a5,.L1839
	bleu	a3,a0,.L1838
	mv	a5,a0
	j	.L1839
.L1846:
	mv	a0,a5
.L1838:
	sub	a2,a0,a1
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1841
	ret
	.cfi_endproc
.LFE674:
	.size	vatomic64_await_ge_sub_acq, .-vatomic64_await_ge_sub_acq
	.align	1
	.type	vatomic64_await_ge_sub_rel, @function
vatomic64_await_ge_sub_rel:
.LFB675:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1851:
	bgeu	a5,a3,.L1856
.L1849:
	ld	a0,0(a4)
	beq	a0,a5,.L1849
	bleu	a3,a0,.L1848
	mv	a5,a0
	j	.L1849
.L1856:
	mv	a0,a5
.L1848:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1851
	ret
	.cfi_endproc
.LFE675:
	.size	vatomic64_await_ge_sub_rel, .-vatomic64_await_ge_sub_rel
	.align	1
	.type	vatomic64_await_ge_sub_rlx, @function
vatomic64_await_ge_sub_rlx:
.LFB676:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1861:
	bgeu	a5,a3,.L1866
.L1859:
	ld	a0,0(a4)
	beq	a0,a5,.L1859
	bleu	a3,a0,.L1858
	mv	a5,a0
	j	.L1859
.L1866:
	mv	a0,a5
.L1858:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1861
	ret
	.cfi_endproc
.LFE676:
	.size	vatomic64_await_ge_sub_rlx, .-vatomic64_await_ge_sub_rlx
	.align	1
	.type	vatomic64_await_ge_set, @function
vatomic64_await_ge_set:
.LFB677:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1871:
	bgeu	a5,a3,.L1876
.L1869:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1869
	bleu	a3,a0,.L1868
	mv	a5,a0
	j	.L1869
.L1876:
	mv	a0,a5
.L1868:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1871
	ret
	.cfi_endproc
.LFE677:
	.size	vatomic64_await_ge_set, .-vatomic64_await_ge_set
	.align	1
	.type	vatomic64_await_ge_set_acq, @function
vatomic64_await_ge_set_acq:
.LFB678:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1881:
	bgeu	a5,a3,.L1886
.L1879:
	ld	a0,0(a4)
	beq	a0,a5,.L1879
	bleu	a3,a0,.L1878
	mv	a5,a0
	j	.L1879
.L1886:
	mv	a0,a5
.L1878:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1881
	ret
	.cfi_endproc
.LFE678:
	.size	vatomic64_await_ge_set_acq, .-vatomic64_await_ge_set_acq
	.align	1
	.type	vatomic64_await_ge_set_rel, @function
vatomic64_await_ge_set_rel:
.LFB679:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1891:
	bgeu	a5,a3,.L1896
.L1889:
	ld	a0,0(a4)
	beq	a0,a5,.L1889
	bleu	a3,a0,.L1888
	mv	a5,a0
	j	.L1889
.L1896:
	mv	a0,a5
.L1888:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1891
	ret
	.cfi_endproc
.LFE679:
	.size	vatomic64_await_ge_set_rel, .-vatomic64_await_ge_set_rel
	.align	1
	.type	vatomic64_await_ge_set_rlx, @function
vatomic64_await_ge_set_rlx:
.LFB680:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1901:
	bgeu	a5,a3,.L1906
.L1899:
	ld	a0,0(a4)
	beq	a0,a5,.L1899
	bleu	a3,a0,.L1898
	mv	a5,a0
	j	.L1899
.L1906:
	mv	a0,a5
.L1898:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1901
	ret
	.cfi_endproc
.LFE680:
	.size	vatomic64_await_ge_set_rlx, .-vatomic64_await_ge_set_rlx
	.align	1
	.type	vatomic64_await_gt_add, @function
vatomic64_await_gt_add:
.LFB681:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1911:
	bgtu	a5,a3,.L1916
.L1909:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1909
	bltu	a3,a0,.L1908
	mv	a5,a0
	j	.L1909
.L1916:
	mv	a0,a5
.L1908:
	add	a2,a1,a0
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1911
	ret
	.cfi_endproc
.LFE681:
	.size	vatomic64_await_gt_add, .-vatomic64_await_gt_add
	.align	1
	.type	vatomic64_await_gt_add_acq, @function
vatomic64_await_gt_add_acq:
.LFB682:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1921:
	bgtu	a5,a3,.L1926
.L1919:
	ld	a0,0(a4)
	beq	a0,a5,.L1919
	bltu	a3,a0,.L1918
	mv	a5,a0
	j	.L1919
.L1926:
	mv	a0,a5
.L1918:
	add	a2,a1,a0
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1921
	ret
	.cfi_endproc
.LFE682:
	.size	vatomic64_await_gt_add_acq, .-vatomic64_await_gt_add_acq
	.align	1
	.type	vatomic64_await_gt_add_rel, @function
vatomic64_await_gt_add_rel:
.LFB683:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1931:
	bgtu	a5,a3,.L1936
.L1929:
	ld	a0,0(a4)
	beq	a0,a5,.L1929
	bltu	a3,a0,.L1928
	mv	a5,a0
	j	.L1929
.L1936:
	mv	a0,a5
.L1928:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1931
	ret
	.cfi_endproc
.LFE683:
	.size	vatomic64_await_gt_add_rel, .-vatomic64_await_gt_add_rel
	.align	1
	.type	vatomic64_await_gt_add_rlx, @function
vatomic64_await_gt_add_rlx:
.LFB684:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1941:
	bgtu	a5,a3,.L1946
.L1939:
	ld	a0,0(a4)
	beq	a0,a5,.L1939
	bltu	a3,a0,.L1938
	mv	a5,a0
	j	.L1939
.L1946:
	mv	a0,a5
.L1938:
	add	a2,a1,a0
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1941
	ret
	.cfi_endproc
.LFE684:
	.size	vatomic64_await_gt_add_rlx, .-vatomic64_await_gt_add_rlx
	.align	1
	.type	vatomic64_await_gt_sub, @function
vatomic64_await_gt_sub:
.LFB685:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1951:
	bgtu	a5,a3,.L1956
.L1949:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1949
	bltu	a3,a0,.L1948
	mv	a5,a0
	j	.L1949
.L1956:
	mv	a0,a5
.L1948:
	sub	a2,a0,a1
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1951
	ret
	.cfi_endproc
.LFE685:
	.size	vatomic64_await_gt_sub, .-vatomic64_await_gt_sub
	.align	1
	.type	vatomic64_await_gt_sub_acq, @function
vatomic64_await_gt_sub_acq:
.LFB686:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1961:
	bgtu	a5,a3,.L1966
.L1959:
	ld	a0,0(a4)
	beq	a0,a5,.L1959
	bltu	a3,a0,.L1958
	mv	a5,a0
	j	.L1959
.L1966:
	mv	a0,a5
.L1958:
	sub	a2,a0,a1
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1961
	ret
	.cfi_endproc
.LFE686:
	.size	vatomic64_await_gt_sub_acq, .-vatomic64_await_gt_sub_acq
	.align	1
	.type	vatomic64_await_gt_sub_rel, @function
vatomic64_await_gt_sub_rel:
.LFB687:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1971:
	bgtu	a5,a3,.L1976
.L1969:
	ld	a0,0(a4)
	beq	a0,a5,.L1969
	bltu	a3,a0,.L1968
	mv	a5,a0
	j	.L1969
.L1976:
	mv	a0,a5
.L1968:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1971
	ret
	.cfi_endproc
.LFE687:
	.size	vatomic64_await_gt_sub_rel, .-vatomic64_await_gt_sub_rel
	.align	1
	.type	vatomic64_await_gt_sub_rlx, @function
vatomic64_await_gt_sub_rlx:
.LFB688:
	.cfi_startproc
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1981:
	bgtu	a5,a3,.L1986
.L1979:
	ld	a0,0(a4)
	beq	a0,a5,.L1979
	bltu	a3,a0,.L1978
	mv	a5,a0
	j	.L1979
.L1986:
	mv	a0,a5
.L1978:
	sub	a2,a0,a1
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a6,a2,0(a4)
	bnez	a6,1b
	1:
	bne	a5,a0,.L1981
	ret
	.cfi_endproc
.LFE688:
	.size	vatomic64_await_gt_sub_rlx, .-vatomic64_await_gt_sub_rlx
	.align	1
	.type	vatomic64_await_gt_set, @function
vatomic64_await_gt_set:
.LFB689:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
.L1991:
	bgtu	a5,a3,.L1996
.L1989:
	fence	rw,rw
	ld	a0,0(a4)
	fence	r,rw
	beq	a0,a5,.L1989
	bltu	a3,a0,.L1988
	mv	a5,a0
	j	.L1989
.L1996:
	mv	a0,a5
.L1988:
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L1991
	ret
	.cfi_endproc
.LFE689:
	.size	vatomic64_await_gt_set, .-vatomic64_await_gt_set
	.align	1
	.type	vatomic64_await_gt_set_acq, @function
vatomic64_await_gt_set_acq:
.LFB690:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2001:
	bgtu	a5,a3,.L2006
.L1999:
	ld	a0,0(a4)
	beq	a0,a5,.L1999
	bltu	a3,a0,.L1998
	mv	a5,a0
	j	.L1999
.L2006:
	mv	a0,a5
.L1998:
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L2001
	ret
	.cfi_endproc
.LFE690:
	.size	vatomic64_await_gt_set_acq, .-vatomic64_await_gt_set_acq
	.align	1
	.type	vatomic64_await_gt_set_rel, @function
vatomic64_await_gt_set_rel:
.LFB691:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2011:
	bgtu	a5,a3,.L2016
.L2009:
	ld	a0,0(a4)
	beq	a0,a5,.L2009
	bltu	a3,a0,.L2008
	mv	a5,a0
	j	.L2009
.L2016:
	mv	a0,a5
.L2008:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L2011
	ret
	.cfi_endproc
.LFE691:
	.size	vatomic64_await_gt_set_rel, .-vatomic64_await_gt_set_rel
	.align	1
	.type	vatomic64_await_gt_set_rlx, @function
vatomic64_await_gt_set_rlx:
.LFB692:
	.cfi_startproc
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2021:
	bgtu	a5,a3,.L2026
.L2019:
	ld	a0,0(a4)
	beq	a0,a5,.L2019
	bltu	a3,a0,.L2018
	mv	a5,a0
	j	.L2019
.L2026:
	mv	a0,a5
.L2018:
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a1,a2,0(a4)
	bnez	a1,1b
	1:
	bne	a5,a0,.L2021
	ret
	.cfi_endproc
.LFE692:
	.size	vatomic64_await_gt_set_rlx, .-vatomic64_await_gt_set_rlx
	.align	1
	.type	vatomic32_await_neq_add, @function
vatomic32_await_neq_add:
.LFB693:
	.cfi_startproc
	mv	a3,a0
.L2028:
	fence	rw,rw
	lw	a5,0(a3)
	fence	r,rw
	sext.w	a4,a5
	beq	a1,a4,.L2028
	addw	a6,a2,a5
	1:
	lr.w.aqrl	a0,0(a3)
	bne	a0,a5,1f
	sc.w.rl	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2028
	ret
	.cfi_endproc
.LFE693:
	.size	vatomic32_await_neq_add, .-vatomic32_await_neq_add
	.align	1
	.type	vatomic32_await_neq_add_acq, @function
vatomic32_await_neq_add_acq:
.LFB694:
	.cfi_startproc
	mv	a3,a0
.L2033:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2033
	addw	a6,a2,a5
	1:
	lr.w.aq	a0,0(a3)
	bne	a0,a5,1f
	sc.w	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2033
	ret
	.cfi_endproc
.LFE694:
	.size	vatomic32_await_neq_add_acq, .-vatomic32_await_neq_add_acq
	.align	1
	.type	vatomic32_await_neq_add_rel, @function
vatomic32_await_neq_add_rel:
.LFB695:
	.cfi_startproc
	mv	a3,a0
.L2038:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2038
	addw	a6,a2,a5
	1:
	lr.w	a0,0(a3)
	bne	a0,a5,1f
	sc.w.rl	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2038
	ret
	.cfi_endproc
.LFE695:
	.size	vatomic32_await_neq_add_rel, .-vatomic32_await_neq_add_rel
	.align	1
	.type	vatomic32_await_neq_add_rlx, @function
vatomic32_await_neq_add_rlx:
.LFB696:
	.cfi_startproc
	mv	a3,a0
.L2043:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2043
	addw	a6,a2,a5
	1:
	lr.w	a0,0(a3)
	bne	a0,a5,1f
	sc.w	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2043
	ret
	.cfi_endproc
.LFE696:
	.size	vatomic32_await_neq_add_rlx, .-vatomic32_await_neq_add_rlx
	.align	1
	.type	vatomic32_await_neq_sub, @function
vatomic32_await_neq_sub:
.LFB697:
	.cfi_startproc
	mv	a3,a0
.L2048:
	fence	rw,rw
	lw	a5,0(a3)
	fence	r,rw
	sext.w	a4,a5
	beq	a1,a4,.L2048
	subw	a6,a5,a2
	1:
	lr.w.aqrl	a0,0(a3)
	bne	a0,a5,1f
	sc.w.rl	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2048
	ret
	.cfi_endproc
.LFE697:
	.size	vatomic32_await_neq_sub, .-vatomic32_await_neq_sub
	.align	1
	.type	vatomic32_await_neq_sub_acq, @function
vatomic32_await_neq_sub_acq:
.LFB698:
	.cfi_startproc
	mv	a3,a0
.L2053:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2053
	subw	a6,a5,a2
	1:
	lr.w.aq	a0,0(a3)
	bne	a0,a5,1f
	sc.w	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2053
	ret
	.cfi_endproc
.LFE698:
	.size	vatomic32_await_neq_sub_acq, .-vatomic32_await_neq_sub_acq
	.align	1
	.type	vatomic32_await_neq_sub_rel, @function
vatomic32_await_neq_sub_rel:
.LFB699:
	.cfi_startproc
	mv	a3,a0
.L2058:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2058
	subw	a6,a5,a2
	1:
	lr.w	a0,0(a3)
	bne	a0,a5,1f
	sc.w.rl	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2058
	ret
	.cfi_endproc
.LFE699:
	.size	vatomic32_await_neq_sub_rel, .-vatomic32_await_neq_sub_rel
	.align	1
	.type	vatomic32_await_neq_sub_rlx, @function
vatomic32_await_neq_sub_rlx:
.LFB700:
	.cfi_startproc
	mv	a3,a0
.L2063:
	lw	a5,0(a3)
	sext.w	a4,a5
	beq	a1,a4,.L2063
	subw	a6,a5,a2
	1:
	lr.w	a0,0(a3)
	bne	a0,a5,1f
	sc.w	a7,a6,0(a3)
	bnez	a7,1b
	1:
	sext.w	a0,a0
	bne	a0,a4,.L2063
	ret
	.cfi_endproc
.LFE700:
	.size	vatomic32_await_neq_sub_rlx, .-vatomic32_await_neq_sub_rlx
	.align	1
	.type	vatomic32_await_neq_set, @function
vatomic32_await_neq_set:
.LFB701:
	.cfi_startproc
	mv	a3,a0
.L2068:
	fence	rw,rw
	lw	a4,0(a3)
	fence	r,rw
	sext.w	a5,a4
	beq	a1,a5,.L2068
	1:
	lr.w.aqrl	a0,0(a3)
	bne	a0,a4,1f
	sc.w.rl	a6,a2,0(a3)
	bnez	a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2068
	ret
	.cfi_endproc
.LFE701:
	.size	vatomic32_await_neq_set, .-vatomic32_await_neq_set
	.align	1
	.type	vatomic32_await_neq_set_acq, @function
vatomic32_await_neq_set_acq:
.LFB702:
	.cfi_startproc
	mv	a3,a0
.L2073:
	lw	a4,0(a3)
	sext.w	a5,a4
	beq	a1,a5,.L2073
	1:
	lr.w.aq	a0,0(a3)
	bne	a0,a4,1f
	sc.w	a6,a2,0(a3)
	bnez	a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2073
	ret
	.cfi_endproc
.LFE702:
	.size	vatomic32_await_neq_set_acq, .-vatomic32_await_neq_set_acq
	.align	1
	.type	vatomic32_await_neq_set_rel, @function
vatomic32_await_neq_set_rel:
.LFB703:
	.cfi_startproc
	mv	a3,a0
.L2078:
	lw	a4,0(a3)
	sext.w	a5,a4
	beq	a1,a5,.L2078
	1:
	lr.w	a0,0(a3)
	bne	a0,a4,1f
	sc.w.rl	a6,a2,0(a3)
	bnez	a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2078
	ret
	.cfi_endproc
.LFE703:
	.size	vatomic32_await_neq_set_rel, .-vatomic32_await_neq_set_rel
	.align	1
	.type	vatomic32_await_neq_set_rlx, @function
vatomic32_await_neq_set_rlx:
.LFB704:
	.cfi_startproc
	mv	a3,a0
.L2083:
	lw	a4,0(a3)
	sext.w	a5,a4
	beq	a1,a5,.L2083
	1:
	lr.w	a0,0(a3)
	bne	a0,a4,1f
	sc.w	a6,a2,0(a3)
	bnez	a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2083
	ret
	.cfi_endproc
.LFE704:
	.size	vatomic32_await_neq_set_rlx, .-vatomic32_await_neq_set_rlx
	.align	1
	.type	vatomic64_await_neq_add, @function
vatomic64_await_neq_add:
.LFB705:
	.cfi_startproc
	mv	a4,a0
.L2088:
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	beq	a1,a5,.L2088
	add	a3,a2,a5
	1:
	lr.d.aqrl	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2088
	ret
	.cfi_endproc
.LFE705:
	.size	vatomic64_await_neq_add, .-vatomic64_await_neq_add
	.align	1
	.type	vatomic64_await_neq_add_acq, @function
vatomic64_await_neq_add_acq:
.LFB706:
	.cfi_startproc
	mv	a4,a0
.L2093:
	ld	a5,0(a4)
	beq	a1,a5,.L2093
	add	a3,a2,a5
	1:
	lr.d.aq	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2093
	ret
	.cfi_endproc
.LFE706:
	.size	vatomic64_await_neq_add_acq, .-vatomic64_await_neq_add_acq
	.align	1
	.type	vatomic64_await_neq_add_rel, @function
vatomic64_await_neq_add_rel:
.LFB707:
	.cfi_startproc
	mv	a4,a0
.L2098:
	ld	a5,0(a4)
	beq	a1,a5,.L2098
	add	a3,a2,a5
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2098
	ret
	.cfi_endproc
.LFE707:
	.size	vatomic64_await_neq_add_rel, .-vatomic64_await_neq_add_rel
	.align	1
	.type	vatomic64_await_neq_add_rlx, @function
vatomic64_await_neq_add_rlx:
.LFB708:
	.cfi_startproc
	mv	a4,a0
.L2103:
	ld	a5,0(a4)
	beq	a1,a5,.L2103
	add	a3,a2,a5
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2103
	ret
	.cfi_endproc
.LFE708:
	.size	vatomic64_await_neq_add_rlx, .-vatomic64_await_neq_add_rlx
	.align	1
	.type	vatomic64_await_neq_sub, @function
vatomic64_await_neq_sub:
.LFB709:
	.cfi_startproc
	mv	a4,a0
.L2108:
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	beq	a1,a5,.L2108
	sub	a3,a5,a2
	1:
	lr.d.aqrl	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2108
	ret
	.cfi_endproc
.LFE709:
	.size	vatomic64_await_neq_sub, .-vatomic64_await_neq_sub
	.align	1
	.type	vatomic64_await_neq_sub_acq, @function
vatomic64_await_neq_sub_acq:
.LFB710:
	.cfi_startproc
	mv	a4,a0
.L2113:
	ld	a5,0(a4)
	beq	a1,a5,.L2113
	sub	a3,a5,a2
	1:
	lr.d.aq	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2113
	ret
	.cfi_endproc
.LFE710:
	.size	vatomic64_await_neq_sub_acq, .-vatomic64_await_neq_sub_acq
	.align	1
	.type	vatomic64_await_neq_sub_rel, @function
vatomic64_await_neq_sub_rel:
.LFB711:
	.cfi_startproc
	mv	a4,a0
.L2118:
	ld	a5,0(a4)
	beq	a1,a5,.L2118
	sub	a3,a5,a2
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2118
	ret
	.cfi_endproc
.LFE711:
	.size	vatomic64_await_neq_sub_rel, .-vatomic64_await_neq_sub_rel
	.align	1
	.type	vatomic64_await_neq_sub_rlx, @function
vatomic64_await_neq_sub_rlx:
.LFB712:
	.cfi_startproc
	mv	a4,a0
.L2123:
	ld	a5,0(a4)
	beq	a1,a5,.L2123
	sub	a3,a5,a2
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a6,a3,0(a4)
	bnez	a6,1b
	1:
	bne	a0,a5,.L2123
	ret
	.cfi_endproc
.LFE712:
	.size	vatomic64_await_neq_sub_rlx, .-vatomic64_await_neq_sub_rlx
	.align	1
	.type	vatomic64_await_neq_set, @function
vatomic64_await_neq_set:
.LFB713:
	.cfi_startproc
	mv	a4,a0
.L2128:
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	beq	a1,a5,.L2128
	1:
	lr.d.aqrl	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2128
	ret
	.cfi_endproc
.LFE713:
	.size	vatomic64_await_neq_set, .-vatomic64_await_neq_set
	.align	1
	.type	vatomic64_await_neq_set_acq, @function
vatomic64_await_neq_set_acq:
.LFB714:
	.cfi_startproc
	mv	a4,a0
.L2133:
	ld	a5,0(a4)
	beq	a1,a5,.L2133
	1:
	lr.d.aq	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2133
	ret
	.cfi_endproc
.LFE714:
	.size	vatomic64_await_neq_set_acq, .-vatomic64_await_neq_set_acq
	.align	1
	.type	vatomic64_await_neq_set_rel, @function
vatomic64_await_neq_set_rel:
.LFB715:
	.cfi_startproc
	mv	a4,a0
.L2138:
	ld	a5,0(a4)
	beq	a1,a5,.L2138
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2138
	ret
	.cfi_endproc
.LFE715:
	.size	vatomic64_await_neq_set_rel, .-vatomic64_await_neq_set_rel
	.align	1
	.type	vatomic64_await_neq_set_rlx, @function
vatomic64_await_neq_set_rlx:
.LFB716:
	.cfi_startproc
	mv	a4,a0
.L2143:
	ld	a5,0(a4)
	beq	a1,a5,.L2143
	1:
	lr.d	a0,0(a4)
	bne	a0,a5,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2143
	ret
	.cfi_endproc
.LFE716:
	.size	vatomic64_await_neq_set_rlx, .-vatomic64_await_neq_set_rlx
	.align	1
	.type	vatomicptr_await_neq_set, @function
vatomicptr_await_neq_set:
.LFB717:
	.cfi_startproc
	mv	a5,a0
.L2148:
	fence	rw,rw
	ld	a0,0(a5)
	fence	r,rw
	beq	a1,a0,.L2148
	1:
	lr.d.aqrl	a4,0(a5)
	bne	a4,a0,1f
	sc.d.rl	a3,a2,0(a5)
	bnez	a3,1b
	1:
	bne	a0,a4,.L2148
	ret
	.cfi_endproc
.LFE717:
	.size	vatomicptr_await_neq_set, .-vatomicptr_await_neq_set
	.align	1
	.type	vatomicptr_await_neq_set_acq, @function
vatomicptr_await_neq_set_acq:
.LFB718:
	.cfi_startproc
	mv	a5,a0
.L2153:
	ld	a0,0(a5)
	beq	a1,a0,.L2153
	1:
	lr.d.aq	a4,0(a5)
	bne	a4,a0,1f
	sc.d	a3,a2,0(a5)
	bnez	a3,1b
	1:
	bne	a0,a4,.L2153
	ret
	.cfi_endproc
.LFE718:
	.size	vatomicptr_await_neq_set_acq, .-vatomicptr_await_neq_set_acq
	.align	1
	.type	vatomicptr_await_neq_set_rel, @function
vatomicptr_await_neq_set_rel:
.LFB719:
	.cfi_startproc
	mv	a5,a0
.L2158:
	ld	a0,0(a5)
	beq	a1,a0,.L2158
	1:
	lr.d	a4,0(a5)
	bne	a4,a0,1f
	sc.d.rl	a3,a2,0(a5)
	bnez	a3,1b
	1:
	bne	a0,a4,.L2158
	ret
	.cfi_endproc
.LFE719:
	.size	vatomicptr_await_neq_set_rel, .-vatomicptr_await_neq_set_rel
	.align	1
	.type	vatomicptr_await_neq_set_rlx, @function
vatomicptr_await_neq_set_rlx:
.LFB720:
	.cfi_startproc
	mv	a5,a0
.L2163:
	ld	a0,0(a5)
	beq	a1,a0,.L2163
	1:
	lr.d	a4,0(a5)
	bne	a4,a0,1f
	sc.d	a3,a2,0(a5)
	bnez	a3,1b
	1:
	bne	a0,a4,.L2163
	ret
	.cfi_endproc
.LFE720:
	.size	vatomicptr_await_neq_set_rlx, .-vatomicptr_await_neq_set_rlx
	.align	1
	.type	vatomic32_await_eq_add, @function
vatomic32_await_eq_add:
.LFB721:
	.cfi_startproc
	addw	a4,a1,a2
.L2168:
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bne	a1,a5,.L2168
	1:
	lr.w.aqrl	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2168
	mv	a0,a1
	ret
	.cfi_endproc
.LFE721:
	.size	vatomic32_await_eq_add, .-vatomic32_await_eq_add
	.align	1
	.type	vatomic32_await_eq_add_acq, @function
vatomic32_await_eq_add_acq:
.LFB722:
	.cfi_startproc
	addw	a4,a1,a2
.L2173:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2173
	1:
	lr.w.aq	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2173
	mv	a0,a1
	ret
	.cfi_endproc
.LFE722:
	.size	vatomic32_await_eq_add_acq, .-vatomic32_await_eq_add_acq
	.align	1
	.type	vatomic32_await_eq_add_rel, @function
vatomic32_await_eq_add_rel:
.LFB723:
	.cfi_startproc
	addw	a4,a1,a2
.L2178:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2178
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2178
	mv	a0,a1
	ret
	.cfi_endproc
.LFE723:
	.size	vatomic32_await_eq_add_rel, .-vatomic32_await_eq_add_rel
	.align	1
	.type	vatomic32_await_eq_add_rlx, @function
vatomic32_await_eq_add_rlx:
.LFB724:
	.cfi_startproc
	addw	a4,a1,a2
.L2183:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2183
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2183
	mv	a0,a1
	ret
	.cfi_endproc
.LFE724:
	.size	vatomic32_await_eq_add_rlx, .-vatomic32_await_eq_add_rlx
	.align	1
	.type	vatomic32_await_eq_sub, @function
vatomic32_await_eq_sub:
.LFB725:
	.cfi_startproc
	subw	a4,a1,a2
.L2188:
	fence	rw,rw
	lw	a5,0(a0)
	fence	r,rw
	sext.w	a5,a5
	bne	a1,a5,.L2188
	1:
	lr.w.aqrl	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2188
	mv	a0,a1
	ret
	.cfi_endproc
.LFE725:
	.size	vatomic32_await_eq_sub, .-vatomic32_await_eq_sub
	.align	1
	.type	vatomic32_await_eq_sub_acq, @function
vatomic32_await_eq_sub_acq:
.LFB726:
	.cfi_startproc
	subw	a4,a1,a2
.L2193:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2193
	1:
	lr.w.aq	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2193
	mv	a0,a1
	ret
	.cfi_endproc
.LFE726:
	.size	vatomic32_await_eq_sub_acq, .-vatomic32_await_eq_sub_acq
	.align	1
	.type	vatomic32_await_eq_sub_rel, @function
vatomic32_await_eq_sub_rel:
.LFB727:
	.cfi_startproc
	subw	a4,a1,a2
.L2198:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2198
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2198
	mv	a0,a1
	ret
	.cfi_endproc
.LFE727:
	.size	vatomic32_await_eq_sub_rel, .-vatomic32_await_eq_sub_rel
	.align	1
	.type	vatomic32_await_eq_sub_rlx, @function
vatomic32_await_eq_sub_rlx:
.LFB728:
	.cfi_startproc
	subw	a4,a1,a2
.L2203:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2203
	1:
	lr.w	a5,0(a0)
	bne	a5,a1,1f
	sc.w	a3,a4,0(a0)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2203
	mv	a0,a1
	ret
	.cfi_endproc
.LFE728:
	.size	vatomic32_await_eq_sub_rlx, .-vatomic32_await_eq_sub_rlx
	.align	1
	.type	vatomic32_await_eq_set, @function
vatomic32_await_eq_set:
.LFB729:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2208:
	fence	rw,rw
	lw	a5,0(a4)
	fence	r,rw
	sext.w	a5,a5
	bne	a0,a5,.L2208
	1:
	lr.w.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2208
	ret
	.cfi_endproc
.LFE729:
	.size	vatomic32_await_eq_set, .-vatomic32_await_eq_set
	.align	1
	.type	vatomic32_await_eq_set_acq, @function
vatomic32_await_eq_set_acq:
.LFB730:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2213:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2213
	1:
	lr.w.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a3,a2,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2213
	ret
	.cfi_endproc
.LFE730:
	.size	vatomic32_await_eq_set_acq, .-vatomic32_await_eq_set_acq
	.align	1
	.type	vatomic32_await_eq_set_rel, @function
vatomic32_await_eq_set_rel:
.LFB731:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2218:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2218
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2218
	ret
	.cfi_endproc
.LFE731:
	.size	vatomic32_await_eq_set_rel, .-vatomic32_await_eq_set_rel
	.align	1
	.type	vatomic32_await_eq_set_rlx, @function
vatomic32_await_eq_set_rlx:
.LFB732:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2223:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2223
	1:
	lr.w	a5,0(a4)
	bne	a5,a0,1f
	sc.w	a3,a2,0(a4)
	bnez	a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2223
	ret
	.cfi_endproc
.LFE732:
	.size	vatomic32_await_eq_set_rlx, .-vatomic32_await_eq_set_rlx
	.align	1
	.type	vatomic64_await_eq_add, @function
vatomic64_await_eq_add:
.LFB733:
	.cfi_startproc
	add	a4,a1,a2
.L2228:
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bne	a1,a5,.L2228
	1:
	lr.d.aqrl	a5,0(a0)
	bne	a5,a1,1f
	sc.d.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2228
	mv	a0,a1
	ret
	.cfi_endproc
.LFE733:
	.size	vatomic64_await_eq_add, .-vatomic64_await_eq_add
	.align	1
	.type	vatomic64_await_eq_add_acq, @function
vatomic64_await_eq_add_acq:
.LFB734:
	.cfi_startproc
	add	a4,a1,a2
.L2233:
	ld	a5,0(a0)
	bne	a1,a5,.L2233
	1:
	lr.d.aq	a5,0(a0)
	bne	a5,a1,1f
	sc.d	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2233
	mv	a0,a1
	ret
	.cfi_endproc
.LFE734:
	.size	vatomic64_await_eq_add_acq, .-vatomic64_await_eq_add_acq
	.align	1
	.type	vatomic64_await_eq_add_rel, @function
vatomic64_await_eq_add_rel:
.LFB735:
	.cfi_startproc
	add	a4,a1,a2
.L2238:
	ld	a5,0(a0)
	bne	a1,a5,.L2238
	1:
	lr.d	a5,0(a0)
	bne	a5,a1,1f
	sc.d.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2238
	mv	a0,a1
	ret
	.cfi_endproc
.LFE735:
	.size	vatomic64_await_eq_add_rel, .-vatomic64_await_eq_add_rel
	.align	1
	.type	vatomic64_await_eq_add_rlx, @function
vatomic64_await_eq_add_rlx:
.LFB736:
	.cfi_startproc
	add	a4,a1,a2
.L2243:
	ld	a5,0(a0)
	bne	a1,a5,.L2243
	1:
	lr.d	a5,0(a0)
	bne	a5,a1,1f
	sc.d	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2243
	mv	a0,a1
	ret
	.cfi_endproc
.LFE736:
	.size	vatomic64_await_eq_add_rlx, .-vatomic64_await_eq_add_rlx
	.align	1
	.type	vatomic64_await_eq_sub, @function
vatomic64_await_eq_sub:
.LFB737:
	.cfi_startproc
	sub	a4,a1,a2
.L2248:
	fence	rw,rw
	ld	a5,0(a0)
	fence	r,rw
	bne	a1,a5,.L2248
	1:
	lr.d.aqrl	a5,0(a0)
	bne	a5,a1,1f
	sc.d.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2248
	mv	a0,a1
	ret
	.cfi_endproc
.LFE737:
	.size	vatomic64_await_eq_sub, .-vatomic64_await_eq_sub
	.align	1
	.type	vatomic64_await_eq_sub_acq, @function
vatomic64_await_eq_sub_acq:
.LFB738:
	.cfi_startproc
	sub	a4,a1,a2
.L2253:
	ld	a5,0(a0)
	bne	a1,a5,.L2253
	1:
	lr.d.aq	a5,0(a0)
	bne	a5,a1,1f
	sc.d	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2253
	mv	a0,a1
	ret
	.cfi_endproc
.LFE738:
	.size	vatomic64_await_eq_sub_acq, .-vatomic64_await_eq_sub_acq
	.align	1
	.type	vatomic64_await_eq_sub_rel, @function
vatomic64_await_eq_sub_rel:
.LFB739:
	.cfi_startproc
	sub	a4,a1,a2
.L2258:
	ld	a5,0(a0)
	bne	a1,a5,.L2258
	1:
	lr.d	a5,0(a0)
	bne	a5,a1,1f
	sc.d.rl	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2258
	mv	a0,a1
	ret
	.cfi_endproc
.LFE739:
	.size	vatomic64_await_eq_sub_rel, .-vatomic64_await_eq_sub_rel
	.align	1
	.type	vatomic64_await_eq_sub_rlx, @function
vatomic64_await_eq_sub_rlx:
.LFB740:
	.cfi_startproc
	sub	a4,a1,a2
.L2263:
	ld	a5,0(a0)
	bne	a1,a5,.L2263
	1:
	lr.d	a5,0(a0)
	bne	a5,a1,1f
	sc.d	a3,a4,0(a0)
	bnez	a3,1b
	1:
	bne	a1,a5,.L2263
	mv	a0,a1
	ret
	.cfi_endproc
.LFE740:
	.size	vatomic64_await_eq_sub_rlx, .-vatomic64_await_eq_sub_rlx
	.align	1
	.type	vatomic64_await_eq_set, @function
vatomic64_await_eq_set:
.LFB741:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2268:
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	bne	a0,a5,.L2268
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2268
	ret
	.cfi_endproc
.LFE741:
	.size	vatomic64_await_eq_set, .-vatomic64_await_eq_set
	.align	1
	.type	vatomic64_await_eq_set_acq, @function
vatomic64_await_eq_set_acq:
.LFB742:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2273:
	ld	a5,0(a4)
	bne	a0,a5,.L2273
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2273
	ret
	.cfi_endproc
.LFE742:
	.size	vatomic64_await_eq_set_acq, .-vatomic64_await_eq_set_acq
	.align	1
	.type	vatomic64_await_eq_set_rel, @function
vatomic64_await_eq_set_rel:
.LFB743:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2278:
	ld	a5,0(a4)
	bne	a0,a5,.L2278
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2278
	ret
	.cfi_endproc
.LFE743:
	.size	vatomic64_await_eq_set_rel, .-vatomic64_await_eq_set_rel
	.align	1
	.type	vatomic64_await_eq_set_rlx, @function
vatomic64_await_eq_set_rlx:
.LFB744:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2283:
	ld	a5,0(a4)
	bne	a0,a5,.L2283
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2283
	ret
	.cfi_endproc
.LFE744:
	.size	vatomic64_await_eq_set_rlx, .-vatomic64_await_eq_set_rlx
	.align	1
	.type	vatomicptr_await_eq_set, @function
vatomicptr_await_eq_set:
.LFB745:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2288:
	fence	rw,rw
	ld	a5,0(a4)
	fence	r,rw
	bne	a0,a5,.L2288
	1:
	lr.d.aqrl	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2288
	ret
	.cfi_endproc
.LFE745:
	.size	vatomicptr_await_eq_set, .-vatomicptr_await_eq_set
	.align	1
	.type	vatomicptr_await_eq_set_acq, @function
vatomicptr_await_eq_set_acq:
.LFB746:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2293:
	ld	a5,0(a4)
	bne	a0,a5,.L2293
	1:
	lr.d.aq	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2293
	ret
	.cfi_endproc
.LFE746:
	.size	vatomicptr_await_eq_set_acq, .-vatomicptr_await_eq_set_acq
	.align	1
	.type	vatomicptr_await_eq_set_rel, @function
vatomicptr_await_eq_set_rel:
.LFB747:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2298:
	ld	a5,0(a4)
	bne	a0,a5,.L2298
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d.rl	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2298
	ret
	.cfi_endproc
.LFE747:
	.size	vatomicptr_await_eq_set_rel, .-vatomicptr_await_eq_set_rel
	.align	1
	.type	vatomicptr_await_eq_set_rlx, @function
vatomicptr_await_eq_set_rlx:
.LFB748:
	.cfi_startproc
	mv	a4,a0
	mv	a0,a1
.L2303:
	ld	a5,0(a4)
	bne	a0,a5,.L2303
	1:
	lr.d	a5,0(a4)
	bne	a5,a0,1f
	sc.d	a3,a2,0(a4)
	bnez	a3,1b
	1:
	bne	a0,a5,.L2303
	ret
	.cfi_endproc
.LFE748:
	.size	vatomicptr_await_eq_set_rlx, .-vatomicptr_await_eq_set_rlx
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
