	.file	"atomic.h"
	.option pic
	.text
	.align	1
	.type	verification_ignore, @function
verification_ignore:
	ret
	.size	verification_ignore, .-verification_ignore
	.align	1
	.type	verification_assume, @function
verification_assume:
	ret
	.size	verification_assume, .-verification_assume
	.align	1
	.type	verification_rand, @function
verification_rand:
	li	a0,0
	ret
	.size	verification_rand, .-verification_rand
	.align	1
	.type	verification_loop_begin, @function
verification_loop_begin:
	ret
	.size	verification_loop_begin, .-verification_loop_begin
	.align	1
	.type	verification_spin_start, @function
verification_spin_start:
	ret
	.size	verification_spin_start, .-verification_spin_start
	.align	1
	.type	verification_spin_end, @function
verification_spin_end:
	ret
	.size	verification_spin_end, .-verification_spin_end
	.align	1
	.type	vatomic_fence, @function
vatomic_fence:
	fence	iorw,iorw
	ret
	.size	vatomic_fence, .-vatomic_fence
	.align	1
	.type	vatomic_fence_acq, @function
vatomic_fence_acq:
	fence	iorw,iorw
	ret
	.size	vatomic_fence_acq, .-vatomic_fence_acq
	.align	1
	.type	vatomic_fence_rel, @function
vatomic_fence_rel:
	fence	iorw,iorw
	ret
	.size	vatomic_fence_rel, .-vatomic_fence_rel
	.align	1
	.type	vatomic_fence_rlx, @function
vatomic_fence_rlx:
	ret
	.size	vatomic_fence_rlx, .-vatomic_fence_rlx
	.align	1
	.type	vatomic8_read, @function
vatomic8_read:
	fence	iorw,iorw
	lbu	a0,0(a0)
	fence	iorw,iorw
	andi	a0,a0,0xff
	ret
	.size	vatomic8_read, .-vatomic8_read
	.align	1
	.type	vatomic8_read_acq, @function
vatomic8_read_acq:
	lbu	a0,0(a0)
	fence	iorw,iorw
	andi	a0,a0,0xff
	ret
	.size	vatomic8_read_acq, .-vatomic8_read_acq
	.align	1
	.type	vatomic8_read_rlx, @function
vatomic8_read_rlx:
	lbu	a0,0(a0)
	andi	a0,a0,0xff
	ret
	.size	vatomic8_read_rlx, .-vatomic8_read_rlx
	.align	1
	.type	vatomic16_read, @function
vatomic16_read:
	fence	iorw,iorw
	lhu	a0,0(a0)
	fence	iorw,iorw
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.size	vatomic16_read, .-vatomic16_read
	.align	1
	.type	vatomic16_read_acq, @function
vatomic16_read_acq:
	lhu	a0,0(a0)
	fence	iorw,iorw
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.size	vatomic16_read_acq, .-vatomic16_read_acq
	.align	1
	.type	vatomic16_read_rlx, @function
vatomic16_read_rlx:
	lhu	a0,0(a0)
	slli	a0,a0,48
	srli	a0,a0,48
	ret
	.size	vatomic16_read_rlx, .-vatomic16_read_rlx
	.align	1
	.type	vatomic32_read, @function
vatomic32_read:
	fence	iorw,iorw
	lw	a0,0(a0)
	fence	iorw,iorw
	sext.w	a0,a0
	ret
	.size	vatomic32_read, .-vatomic32_read
	.align	1
	.type	vatomic32_read_acq, @function
vatomic32_read_acq:
	lw	a0,0(a0)
	fence	iorw,iorw
	sext.w	a0,a0
	ret
	.size	vatomic32_read_acq, .-vatomic32_read_acq
	.align	1
	.type	vatomic32_read_rlx, @function
vatomic32_read_rlx:
	lw	a0,0(a0)
	sext.w	a0,a0
	ret
	.size	vatomic32_read_rlx, .-vatomic32_read_rlx
	.align	1
	.type	vatomic64_read, @function
vatomic64_read:
	fence	iorw,iorw
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic64_read, .-vatomic64_read
	.align	1
	.type	vatomic64_read_acq, @function
vatomic64_read_acq:
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic64_read_acq, .-vatomic64_read_acq
	.align	1
	.type	vatomic64_read_rlx, @function
vatomic64_read_rlx:
	ld	a0,0(a0)
	ret
	.size	vatomic64_read_rlx, .-vatomic64_read_rlx
	.align	1
	.type	vatomicsz_read, @function
vatomicsz_read:
	fence	iorw,iorw
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomicsz_read, .-vatomicsz_read
	.align	1
	.type	vatomicsz_read_acq, @function
vatomicsz_read_acq:
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomicsz_read_acq, .-vatomicsz_read_acq
	.align	1
	.type	vatomicsz_read_rlx, @function
vatomicsz_read_rlx:
	ld	a0,0(a0)
	ret
	.size	vatomicsz_read_rlx, .-vatomicsz_read_rlx
	.align	1
	.type	vatomicptr_read, @function
vatomicptr_read:
	fence	iorw,iorw
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomicptr_read, .-vatomicptr_read
	.align	1
	.type	vatomicptr_read_acq, @function
vatomicptr_read_acq:
	ld	a0,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomicptr_read_acq, .-vatomicptr_read_acq
	.align	1
	.type	vatomicptr_read_rlx, @function
vatomicptr_read_rlx:
	ld	a0,0(a0)
	ret
	.size	vatomicptr_read_rlx, .-vatomicptr_read_rlx
	.align	1
	.type	vatomic8_write, @function
vatomic8_write:
	fence	iorw,iorw
	sb	a1,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic8_write, .-vatomic8_write
	.align	1
	.type	vatomic8_write_rel, @function
vatomic8_write_rel:
	fence	iorw,iorw
	sb	a1,0(a0)
	ret
	.size	vatomic8_write_rel, .-vatomic8_write_rel
	.align	1
	.type	vatomic8_write_rlx, @function
vatomic8_write_rlx:
	sb	a1,0(a0)
	ret
	.size	vatomic8_write_rlx, .-vatomic8_write_rlx
	.align	1
	.type	vatomic16_write, @function
vatomic16_write:
	fence	iorw,iorw
	sh	a1,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic16_write, .-vatomic16_write
	.align	1
	.type	vatomic16_write_rel, @function
vatomic16_write_rel:
	fence	iorw,iorw
	sh	a1,0(a0)
	ret
	.size	vatomic16_write_rel, .-vatomic16_write_rel
	.align	1
	.type	vatomic16_write_rlx, @function
vatomic16_write_rlx:
	sh	a1,0(a0)
	ret
	.size	vatomic16_write_rlx, .-vatomic16_write_rlx
	.align	1
	.type	vatomic32_write, @function
vatomic32_write:
	fence iorw,ow
	amoswap.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_write, .-vatomic32_write
	.align	1
	.type	vatomic32_write_rel, @function
vatomic32_write_rel:
	fence iorw,ow
	amoswap.w zero,a1,0(a0)
	ret
	.size	vatomic32_write_rel, .-vatomic32_write_rel
	.align	1
	.type	vatomic32_write_rlx, @function
vatomic32_write_rlx:
	amoswap.w zero,a1,0(a0)
	ret
	.size	vatomic32_write_rlx, .-vatomic32_write_rlx
	.align	1
	.type	vatomic64_write, @function
vatomic64_write:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_write, .-vatomic64_write
	.align	1
	.type	vatomic64_write_rel, @function
vatomic64_write_rel:
	fence iorw,ow
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomic64_write_rel, .-vatomic64_write_rel
	.align	1
	.type	vatomic64_write_rlx, @function
vatomic64_write_rlx:
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomic64_write_rlx, .-vatomic64_write_rlx
	.align	1
	.type	vatomicsz_write, @function
vatomicsz_write:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_write, .-vatomicsz_write
	.align	1
	.type	vatomicsz_write_rel, @function
vatomicsz_write_rel:
	fence iorw,ow
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomicsz_write_rel, .-vatomicsz_write_rel
	.align	1
	.type	vatomicsz_write_rlx, @function
vatomicsz_write_rlx:
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomicsz_write_rlx, .-vatomicsz_write_rlx
	.align	1
	.type	vatomicptr_write, @function
vatomicptr_write:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomicptr_write, .-vatomicptr_write
	.align	1
	.type	vatomicptr_write_rel, @function
vatomicptr_write_rel:
	fence iorw,ow
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomicptr_write_rel, .-vatomicptr_write_rel
	.align	1
	.type	vatomicptr_write_rlx, @function
vatomicptr_write_rlx:
	amoswap.d zero,a1,0(a0)
	ret
	.size	vatomicptr_write_rlx, .-vatomicptr_write_rlx
	.align	1
	.type	vatomic8_xchg, @function
vatomic8_xchg:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_exchange_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xchg, .-vatomic8_xchg
	.align	1
	.type	vatomic8_xchg_acq, @function
vatomic8_xchg_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_exchange_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xchg_acq, .-vatomic8_xchg_acq
	.align	1
	.type	vatomic8_xchg_rel, @function
vatomic8_xchg_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_exchange_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xchg_rel, .-vatomic8_xchg_rel
	.align	1
	.type	vatomic8_xchg_rlx, @function
vatomic8_xchg_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_exchange_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xchg_rlx, .-vatomic8_xchg_rlx
	.align	1
	.type	vatomic16_xchg, @function
vatomic16_xchg:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_exchange_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xchg, .-vatomic16_xchg
	.align	1
	.type	vatomic16_xchg_acq, @function
vatomic16_xchg_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_exchange_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xchg_acq, .-vatomic16_xchg_acq
	.align	1
	.type	vatomic16_xchg_rel, @function
vatomic16_xchg_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_exchange_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xchg_rel, .-vatomic16_xchg_rel
	.align	1
	.type	vatomic16_xchg_rlx, @function
vatomic16_xchg_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_exchange_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xchg_rlx, .-vatomic16_xchg_rlx
	.align	1
	.type	vatomic32_xchg, @function
vatomic32_xchg:
	fence iorw,ow
	amoswap.w.aq a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.size	vatomic32_xchg, .-vatomic32_xchg
	.align	1
	.type	vatomic32_xchg_acq, @function
vatomic32_xchg_acq:
	amoswap.w.aq a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.size	vatomic32_xchg_acq, .-vatomic32_xchg_acq
	.align	1
	.type	vatomic32_xchg_rel, @function
vatomic32_xchg_rel:
	fence iorw,ow
	amoswap.w a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.size	vatomic32_xchg_rel, .-vatomic32_xchg_rel
	.align	1
	.type	vatomic32_xchg_rlx, @function
vatomic32_xchg_rlx:
	amoswap.w a1,a1,0(a0)
	sext.w	a0,a1
	ret
	.size	vatomic32_xchg_rlx, .-vatomic32_xchg_rlx
	.align	1
	.type	vatomic64_xchg, @function
vatomic64_xchg:
	fence iorw,ow
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomic64_xchg, .-vatomic64_xchg
	.align	1
	.type	vatomic64_xchg_acq, @function
vatomic64_xchg_acq:
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomic64_xchg_acq, .-vatomic64_xchg_acq
	.align	1
	.type	vatomic64_xchg_rel, @function
vatomic64_xchg_rel:
	fence iorw,ow
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomic64_xchg_rel, .-vatomic64_xchg_rel
	.align	1
	.type	vatomic64_xchg_rlx, @function
vatomic64_xchg_rlx:
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomic64_xchg_rlx, .-vatomic64_xchg_rlx
	.align	1
	.type	vatomicsz_xchg, @function
vatomicsz_xchg:
	fence iorw,ow
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicsz_xchg, .-vatomicsz_xchg
	.align	1
	.type	vatomicsz_xchg_acq, @function
vatomicsz_xchg_acq:
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicsz_xchg_acq, .-vatomicsz_xchg_acq
	.align	1
	.type	vatomicsz_xchg_rel, @function
vatomicsz_xchg_rel:
	fence iorw,ow
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicsz_xchg_rel, .-vatomicsz_xchg_rel
	.align	1
	.type	vatomicsz_xchg_rlx, @function
vatomicsz_xchg_rlx:
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicsz_xchg_rlx, .-vatomicsz_xchg_rlx
	.align	1
	.type	vatomicptr_xchg, @function
vatomicptr_xchg:
	fence iorw,ow
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicptr_xchg, .-vatomicptr_xchg
	.align	1
	.type	vatomicptr_xchg_acq, @function
vatomicptr_xchg_acq:
	amoswap.d.aq a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicptr_xchg_acq, .-vatomicptr_xchg_acq
	.align	1
	.type	vatomicptr_xchg_rel, @function
vatomicptr_xchg_rel:
	fence iorw,ow
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicptr_xchg_rel, .-vatomicptr_xchg_rel
	.align	1
	.type	vatomicptr_xchg_rlx, @function
vatomicptr_xchg_rlx:
	amoswap.d a1,a1,0(a0)
	mv	a0,a1
	ret
	.size	vatomicptr_xchg_rlx, .-vatomicptr_xchg_rlx
	.align	1
	.type	vatomic8_cmpxchg, @function
vatomic8_cmpxchg:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sb	a1,7(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,5
	li	a3,5
	addi	a1,sp,7
	call	__atomic_compare_exchange_1@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lbu	a0,7(sp)
	bne	a5,zero,.L83
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L83:
	call	__stack_chk_fail@plt
	.size	vatomic8_cmpxchg, .-vatomic8_cmpxchg
	.align	1
	.type	vatomic8_cmpxchg_acq, @function
vatomic8_cmpxchg_acq:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sb	a1,7(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,2
	li	a3,2
	addi	a1,sp,7
	call	__atomic_compare_exchange_1@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lbu	a0,7(sp)
	bne	a5,zero,.L87
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L87:
	call	__stack_chk_fail@plt
	.size	vatomic8_cmpxchg_acq, .-vatomic8_cmpxchg_acq
	.align	1
	.type	vatomic8_cmpxchg_rel, @function
vatomic8_cmpxchg_rel:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sb	a1,7(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,0
	li	a3,3
	addi	a1,sp,7
	call	__atomic_compare_exchange_1@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lbu	a0,7(sp)
	bne	a5,zero,.L91
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L91:
	call	__stack_chk_fail@plt
	.size	vatomic8_cmpxchg_rel, .-vatomic8_cmpxchg_rel
	.align	1
	.type	vatomic8_cmpxchg_rlx, @function
vatomic8_cmpxchg_rlx:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sb	a1,7(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,0
	li	a3,0
	addi	a1,sp,7
	call	__atomic_compare_exchange_1@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lbu	a0,7(sp)
	bne	a5,zero,.L95
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L95:
	call	__stack_chk_fail@plt
	.size	vatomic8_cmpxchg_rlx, .-vatomic8_cmpxchg_rlx
	.align	1
	.type	vatomic16_cmpxchg, @function
vatomic16_cmpxchg:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sh	a1,6(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,5
	li	a3,5
	addi	a1,sp,6
	call	__atomic_compare_exchange_2@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lhu	a0,6(sp)
	bne	a5,zero,.L99
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L99:
	call	__stack_chk_fail@plt
	.size	vatomic16_cmpxchg, .-vatomic16_cmpxchg
	.align	1
	.type	vatomic16_cmpxchg_acq, @function
vatomic16_cmpxchg_acq:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sh	a1,6(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,2
	li	a3,2
	addi	a1,sp,6
	call	__atomic_compare_exchange_2@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lhu	a0,6(sp)
	bne	a5,zero,.L103
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L103:
	call	__stack_chk_fail@plt
	.size	vatomic16_cmpxchg_acq, .-vatomic16_cmpxchg_acq
	.align	1
	.type	vatomic16_cmpxchg_rel, @function
vatomic16_cmpxchg_rel:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sh	a1,6(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,0
	li	a3,3
	addi	a1,sp,6
	call	__atomic_compare_exchange_2@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lhu	a0,6(sp)
	bne	a5,zero,.L107
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L107:
	call	__stack_chk_fail@plt
	.size	vatomic16_cmpxchg_rel, .-vatomic16_cmpxchg_rel
	.align	1
	.type	vatomic16_cmpxchg_rlx, @function
vatomic16_cmpxchg_rlx:
	addi	sp,sp,-32
	sd	s0,16(sp)
	la	s0,__stack_chk_guard
	sd	ra,24(sp)
	sh	a1,6(sp)
	ld	a5, 0(s0)
	sd	a5, 8(sp)
	li	a5, 0
	li	a4,0
	li	a3,0
	addi	a1,sp,6
	call	__atomic_compare_exchange_2@plt
	ld	a4, 8(sp)
	ld	a5, 0(s0)
	xor	a5, a4, a5
	li	a4, 0
	lhu	a0,6(sp)
	bne	a5,zero,.L111
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
.L111:
	call	__stack_chk_fail@plt
	.size	vatomic16_cmpxchg_rlx, .-vatomic16_cmpxchg_rlx
	.align	1
	.type	vatomic32_cmpxchg, @function
vatomic32_cmpxchg:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a4,a2,0(a0)
	bnez a4,1b
	1:
	sext.w	a0,a5
	ret
	.size	vatomic32_cmpxchg, .-vatomic32_cmpxchg
	.align	1
	.type	vatomic32_cmpxchg_acq, @function
vatomic32_cmpxchg_acq:
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a4,a2,0(a0)
	bnez a4,1b
	1:
	sext.w	a0,a5
	ret
	.size	vatomic32_cmpxchg_acq, .-vatomic32_cmpxchg_acq
	.align	1
	.type	vatomic32_cmpxchg_rel, @function
vatomic32_cmpxchg_rel:
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a4,a2,0(a0)
	bnez a4,1b
	1:
	sext.w	a0,a5
	ret
	.size	vatomic32_cmpxchg_rel, .-vatomic32_cmpxchg_rel
	.align	1
	.type	vatomic32_cmpxchg_rlx, @function
vatomic32_cmpxchg_rlx:
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a4,a2,0(a0)
	bnez a4,1b
	1:
	sext.w	a0,a5
	ret
	.size	vatomic32_cmpxchg_rlx, .-vatomic32_cmpxchg_rlx
	.align	1
	.type	vatomic64_cmpxchg, @function
vatomic64_cmpxchg:
	mv	a5,a0
	fence iorw,ow
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomic64_cmpxchg, .-vatomic64_cmpxchg
	.align	1
	.type	vatomic64_cmpxchg_acq, @function
vatomic64_cmpxchg_acq:
	mv	a5,a0
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomic64_cmpxchg_acq, .-vatomic64_cmpxchg_acq
	.align	1
	.type	vatomic64_cmpxchg_rel, @function
vatomic64_cmpxchg_rel:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomic64_cmpxchg_rel, .-vatomic64_cmpxchg_rel
	.align	1
	.type	vatomic64_cmpxchg_rlx, @function
vatomic64_cmpxchg_rlx:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomic64_cmpxchg_rlx, .-vatomic64_cmpxchg_rlx
	.align	1
	.type	vatomicsz_cmpxchg, @function
vatomicsz_cmpxchg:
	mv	a5,a0
	fence iorw,ow
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicsz_cmpxchg, .-vatomicsz_cmpxchg
	.align	1
	.type	vatomicsz_cmpxchg_acq, @function
vatomicsz_cmpxchg_acq:
	mv	a5,a0
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicsz_cmpxchg_acq, .-vatomicsz_cmpxchg_acq
	.align	1
	.type	vatomicsz_cmpxchg_rel, @function
vatomicsz_cmpxchg_rel:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicsz_cmpxchg_rel, .-vatomicsz_cmpxchg_rel
	.align	1
	.type	vatomicsz_cmpxchg_rlx, @function
vatomicsz_cmpxchg_rlx:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicsz_cmpxchg_rlx, .-vatomicsz_cmpxchg_rlx
	.align	1
	.type	vatomicptr_cmpxchg, @function
vatomicptr_cmpxchg:
	mv	a5,a0
	fence iorw,ow
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicptr_cmpxchg, .-vatomicptr_cmpxchg
	.align	1
	.type	vatomicptr_cmpxchg_acq, @function
vatomicptr_cmpxchg_acq:
	mv	a5,a0
	1:
	lr.d.aq a0,0(a5)
	bne a0,a1,1f
	sc.d.aq a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicptr_cmpxchg_acq, .-vatomicptr_cmpxchg_acq
	.align	1
	.type	vatomicptr_cmpxchg_rel, @function
vatomicptr_cmpxchg_rel:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicptr_cmpxchg_rel, .-vatomicptr_cmpxchg_rel
	.align	1
	.type	vatomicptr_cmpxchg_rlx, @function
vatomicptr_cmpxchg_rlx:
	mv	a5,a0
	1:
	lr.d a0,0(a5)
	bne a0,a1,1f
	sc.d a4,a2,0(a5)
	bnez a4,1b
	1:
	ret
	.size	vatomicptr_cmpxchg_rlx, .-vatomicptr_cmpxchg_rlx
	.align	1
	.type	vatomic8_get_and, @function
vatomic8_get_and:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_and, .-vatomic8_get_and
	.align	1
	.type	vatomic8_get_and_acq, @function
vatomic8_get_and_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_and_acq, .-vatomic8_get_and_acq
	.align	1
	.type	vatomic8_get_and_rel, @function
vatomic8_get_and_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_and_rel, .-vatomic8_get_and_rel
	.align	1
	.type	vatomic8_get_and_rlx, @function
vatomic8_get_and_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_and_rlx, .-vatomic8_get_and_rlx
	.align	1
	.type	vatomic16_get_and, @function
vatomic16_get_and:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_and, .-vatomic16_get_and
	.align	1
	.type	vatomic16_get_and_acq, @function
vatomic16_get_and_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_and_acq, .-vatomic16_get_and_acq
	.align	1
	.type	vatomic16_get_and_rel, @function
vatomic16_get_and_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_and_rel, .-vatomic16_get_and_rel
	.align	1
	.type	vatomic16_get_and_rlx, @function
vatomic16_get_and_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_and_rlx, .-vatomic16_get_and_rlx
	.align	1
	.type	vatomic32_get_and, @function
vatomic32_get_and:
	fence iorw,ow
	amoand.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_and, .-vatomic32_get_and
	.align	1
	.type	vatomic32_get_and_acq, @function
vatomic32_get_and_acq:
	amoand.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_and_acq, .-vatomic32_get_and_acq
	.align	1
	.type	vatomic32_get_and_rel, @function
vatomic32_get_and_rel:
	fence iorw,ow
	amoand.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_and_rel, .-vatomic32_get_and_rel
	.align	1
	.type	vatomic32_get_and_rlx, @function
vatomic32_get_and_rlx:
	amoand.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_and_rlx, .-vatomic32_get_and_rlx
	.align	1
	.type	vatomic64_get_and, @function
vatomic64_get_and:
	mv	a5,a0
	fence iorw,ow
	amoand.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_and, .-vatomic64_get_and
	.align	1
	.type	vatomic64_get_and_acq, @function
vatomic64_get_and_acq:
	mv	a5,a0
	amoand.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_and_acq, .-vatomic64_get_and_acq
	.align	1
	.type	vatomic64_get_and_rel, @function
vatomic64_get_and_rel:
	mv	a5,a0
	fence iorw,ow
	amoand.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_and_rel, .-vatomic64_get_and_rel
	.align	1
	.type	vatomic64_get_and_rlx, @function
vatomic64_get_and_rlx:
	mv	a5,a0
	amoand.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_and_rlx, .-vatomic64_get_and_rlx
	.align	1
	.type	vatomicsz_get_and, @function
vatomicsz_get_and:
	mv	a5,a0
	fence iorw,ow
	amoand.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_and, .-vatomicsz_get_and
	.align	1
	.type	vatomicsz_get_and_acq, @function
vatomicsz_get_and_acq:
	mv	a5,a0
	amoand.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_and_acq, .-vatomicsz_get_and_acq
	.align	1
	.type	vatomicsz_get_and_rel, @function
vatomicsz_get_and_rel:
	mv	a5,a0
	fence iorw,ow
	amoand.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_and_rel, .-vatomicsz_get_and_rel
	.align	1
	.type	vatomicsz_get_and_rlx, @function
vatomicsz_get_and_rlx:
	mv	a5,a0
	amoand.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_and_rlx, .-vatomicsz_get_and_rlx
	.align	1
	.type	vatomic8_get_or, @function
vatomic8_get_or:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_or, .-vatomic8_get_or
	.align	1
	.type	vatomic8_get_or_acq, @function
vatomic8_get_or_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_or_acq, .-vatomic8_get_or_acq
	.align	1
	.type	vatomic8_get_or_rel, @function
vatomic8_get_or_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_or_rel, .-vatomic8_get_or_rel
	.align	1
	.type	vatomic8_get_or_rlx, @function
vatomic8_get_or_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_or_rlx, .-vatomic8_get_or_rlx
	.align	1
	.type	vatomic16_get_or, @function
vatomic16_get_or:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_or, .-vatomic16_get_or
	.align	1
	.type	vatomic16_get_or_acq, @function
vatomic16_get_or_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_or_acq, .-vatomic16_get_or_acq
	.align	1
	.type	vatomic16_get_or_rel, @function
vatomic16_get_or_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_or_rel, .-vatomic16_get_or_rel
	.align	1
	.type	vatomic16_get_or_rlx, @function
vatomic16_get_or_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_or_rlx, .-vatomic16_get_or_rlx
	.align	1
	.type	vatomic32_get_or, @function
vatomic32_get_or:
	fence iorw,ow
	amoor.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_or, .-vatomic32_get_or
	.align	1
	.type	vatomic32_get_or_acq, @function
vatomic32_get_or_acq:
	amoor.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_or_acq, .-vatomic32_get_or_acq
	.align	1
	.type	vatomic32_get_or_rel, @function
vatomic32_get_or_rel:
	fence iorw,ow
	amoor.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_or_rel, .-vatomic32_get_or_rel
	.align	1
	.type	vatomic32_get_or_rlx, @function
vatomic32_get_or_rlx:
	amoor.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_or_rlx, .-vatomic32_get_or_rlx
	.align	1
	.type	vatomic64_get_or, @function
vatomic64_get_or:
	mv	a5,a0
	fence iorw,ow
	amoor.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_or, .-vatomic64_get_or
	.align	1
	.type	vatomic64_get_or_acq, @function
vatomic64_get_or_acq:
	mv	a5,a0
	amoor.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_or_acq, .-vatomic64_get_or_acq
	.align	1
	.type	vatomic64_get_or_rel, @function
vatomic64_get_or_rel:
	mv	a5,a0
	fence iorw,ow
	amoor.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_or_rel, .-vatomic64_get_or_rel
	.align	1
	.type	vatomic64_get_or_rlx, @function
vatomic64_get_or_rlx:
	mv	a5,a0
	amoor.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_or_rlx, .-vatomic64_get_or_rlx
	.align	1
	.type	vatomicsz_get_or, @function
vatomicsz_get_or:
	mv	a5,a0
	fence iorw,ow
	amoor.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_or, .-vatomicsz_get_or
	.align	1
	.type	vatomicsz_get_or_acq, @function
vatomicsz_get_or_acq:
	mv	a5,a0
	amoor.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_or_acq, .-vatomicsz_get_or_acq
	.align	1
	.type	vatomicsz_get_or_rel, @function
vatomicsz_get_or_rel:
	mv	a5,a0
	fence iorw,ow
	amoor.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_or_rel, .-vatomicsz_get_or_rel
	.align	1
	.type	vatomicsz_get_or_rlx, @function
vatomicsz_get_or_rlx:
	mv	a5,a0
	amoor.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_or_rlx, .-vatomicsz_get_or_rlx
	.align	1
	.type	vatomic8_get_xor, @function
vatomic8_get_xor:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_xor, .-vatomic8_get_xor
	.align	1
	.type	vatomic8_get_xor_acq, @function
vatomic8_get_xor_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_xor_acq, .-vatomic8_get_xor_acq
	.align	1
	.type	vatomic8_get_xor_rel, @function
vatomic8_get_xor_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_xor_rel, .-vatomic8_get_xor_rel
	.align	1
	.type	vatomic8_get_xor_rlx, @function
vatomic8_get_xor_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_xor_rlx, .-vatomic8_get_xor_rlx
	.align	1
	.type	vatomic16_get_xor, @function
vatomic16_get_xor:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_xor, .-vatomic16_get_xor
	.align	1
	.type	vatomic16_get_xor_acq, @function
vatomic16_get_xor_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_xor_acq, .-vatomic16_get_xor_acq
	.align	1
	.type	vatomic16_get_xor_rel, @function
vatomic16_get_xor_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_xor_rel, .-vatomic16_get_xor_rel
	.align	1
	.type	vatomic16_get_xor_rlx, @function
vatomic16_get_xor_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_xor_rlx, .-vatomic16_get_xor_rlx
	.align	1
	.type	vatomic32_get_xor, @function
vatomic32_get_xor:
	fence iorw,ow
	amoxor.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_xor, .-vatomic32_get_xor
	.align	1
	.type	vatomic32_get_xor_acq, @function
vatomic32_get_xor_acq:
	amoxor.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_xor_acq, .-vatomic32_get_xor_acq
	.align	1
	.type	vatomic32_get_xor_rel, @function
vatomic32_get_xor_rel:
	fence iorw,ow
	amoxor.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_xor_rel, .-vatomic32_get_xor_rel
	.align	1
	.type	vatomic32_get_xor_rlx, @function
vatomic32_get_xor_rlx:
	amoxor.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_xor_rlx, .-vatomic32_get_xor_rlx
	.align	1
	.type	vatomic64_get_xor, @function
vatomic64_get_xor:
	mv	a5,a0
	fence iorw,ow
	amoxor.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_xor, .-vatomic64_get_xor
	.align	1
	.type	vatomic64_get_xor_acq, @function
vatomic64_get_xor_acq:
	mv	a5,a0
	amoxor.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_xor_acq, .-vatomic64_get_xor_acq
	.align	1
	.type	vatomic64_get_xor_rel, @function
vatomic64_get_xor_rel:
	mv	a5,a0
	fence iorw,ow
	amoxor.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_xor_rel, .-vatomic64_get_xor_rel
	.align	1
	.type	vatomic64_get_xor_rlx, @function
vatomic64_get_xor_rlx:
	mv	a5,a0
	amoxor.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_xor_rlx, .-vatomic64_get_xor_rlx
	.align	1
	.type	vatomicsz_get_xor, @function
vatomicsz_get_xor:
	mv	a5,a0
	fence iorw,ow
	amoxor.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_xor, .-vatomicsz_get_xor
	.align	1
	.type	vatomicsz_get_xor_acq, @function
vatomicsz_get_xor_acq:
	mv	a5,a0
	amoxor.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_xor_acq, .-vatomicsz_get_xor_acq
	.align	1
	.type	vatomicsz_get_xor_rel, @function
vatomicsz_get_xor_rel:
	mv	a5,a0
	fence iorw,ow
	amoxor.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_xor_rel, .-vatomicsz_get_xor_rel
	.align	1
	.type	vatomicsz_get_xor_rlx, @function
vatomicsz_get_xor_rlx:
	mv	a5,a0
	amoxor.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_xor_rlx, .-vatomicsz_get_xor_rlx
	.align	1
	.type	vatomic8_get_add, @function
vatomic8_get_add:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_add, .-vatomic8_get_add
	.align	1
	.type	vatomic8_get_add_acq, @function
vatomic8_get_add_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_add_acq, .-vatomic8_get_add_acq
	.align	1
	.type	vatomic8_get_add_rel, @function
vatomic8_get_add_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_add_rel, .-vatomic8_get_add_rel
	.align	1
	.type	vatomic8_get_add_rlx, @function
vatomic8_get_add_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_add_rlx, .-vatomic8_get_add_rlx
	.align	1
	.type	vatomic16_get_add, @function
vatomic16_get_add:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_add, .-vatomic16_get_add
	.align	1
	.type	vatomic16_get_add_acq, @function
vatomic16_get_add_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_add_acq, .-vatomic16_get_add_acq
	.align	1
	.type	vatomic16_get_add_rel, @function
vatomic16_get_add_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_add_rel, .-vatomic16_get_add_rel
	.align	1
	.type	vatomic16_get_add_rlx, @function
vatomic16_get_add_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_add_rlx, .-vatomic16_get_add_rlx
	.align	1
	.type	vatomic32_get_add, @function
vatomic32_get_add:
	fence iorw,ow
	amoadd.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_add, .-vatomic32_get_add
	.align	1
	.type	vatomic32_get_add_acq, @function
vatomic32_get_add_acq:
	amoadd.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_add_acq, .-vatomic32_get_add_acq
	.align	1
	.type	vatomic32_get_add_rel, @function
vatomic32_get_add_rel:
	fence iorw,ow
	amoadd.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_add_rel, .-vatomic32_get_add_rel
	.align	1
	.type	vatomic32_get_add_rlx, @function
vatomic32_get_add_rlx:
	amoadd.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_add_rlx, .-vatomic32_get_add_rlx
	.align	1
	.type	vatomic64_get_add, @function
vatomic64_get_add:
	mv	a5,a0
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_add, .-vatomic64_get_add
	.align	1
	.type	vatomic64_get_add_acq, @function
vatomic64_get_add_acq:
	mv	a5,a0
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_add_acq, .-vatomic64_get_add_acq
	.align	1
	.type	vatomic64_get_add_rel, @function
vatomic64_get_add_rel:
	mv	a5,a0
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_add_rel, .-vatomic64_get_add_rel
	.align	1
	.type	vatomic64_get_add_rlx, @function
vatomic64_get_add_rlx:
	mv	a5,a0
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_add_rlx, .-vatomic64_get_add_rlx
	.align	1
	.type	vatomicsz_get_add, @function
vatomicsz_get_add:
	mv	a5,a0
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_add, .-vatomicsz_get_add
	.align	1
	.type	vatomicsz_get_add_acq, @function
vatomicsz_get_add_acq:
	mv	a5,a0
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_add_acq, .-vatomicsz_get_add_acq
	.align	1
	.type	vatomicsz_get_add_rel, @function
vatomicsz_get_add_rel:
	mv	a5,a0
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_add_rel, .-vatomicsz_get_add_rel
	.align	1
	.type	vatomicsz_get_add_rlx, @function
vatomicsz_get_add_rlx:
	mv	a5,a0
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_add_rlx, .-vatomicsz_get_add_rlx
	.align	1
	.type	vatomic8_get_sub, @function
vatomic8_get_sub:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_sub, .-vatomic8_get_sub
	.align	1
	.type	vatomic8_get_sub_acq, @function
vatomic8_get_sub_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_sub_acq, .-vatomic8_get_sub_acq
	.align	1
	.type	vatomic8_get_sub_rel, @function
vatomic8_get_sub_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_sub_rel, .-vatomic8_get_sub_rel
	.align	1
	.type	vatomic8_get_sub_rlx, @function
vatomic8_get_sub_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_sub_rlx, .-vatomic8_get_sub_rlx
	.align	1
	.type	vatomic16_get_sub, @function
vatomic16_get_sub:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_sub, .-vatomic16_get_sub
	.align	1
	.type	vatomic16_get_sub_acq, @function
vatomic16_get_sub_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_sub_acq, .-vatomic16_get_sub_acq
	.align	1
	.type	vatomic16_get_sub_rel, @function
vatomic16_get_sub_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_sub_rel, .-vatomic16_get_sub_rel
	.align	1
	.type	vatomic16_get_sub_rlx, @function
vatomic16_get_sub_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_sub_rlx, .-vatomic16_get_sub_rlx
	.align	1
	.type	vatomic32_get_sub, @function
vatomic32_get_sub:
	negw	a1,a1
	fence iorw,ow
	amoadd.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_sub, .-vatomic32_get_sub
	.align	1
	.type	vatomic32_get_sub_acq, @function
vatomic32_get_sub_acq:
	negw	a1,a1
	amoadd.w.aq a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_sub_acq, .-vatomic32_get_sub_acq
	.align	1
	.type	vatomic32_get_sub_rel, @function
vatomic32_get_sub_rel:
	negw	a1,a1
	fence iorw,ow
	amoadd.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_sub_rel, .-vatomic32_get_sub_rel
	.align	1
	.type	vatomic32_get_sub_rlx, @function
vatomic32_get_sub_rlx:
	negw	a1,a1
	amoadd.w a5,a1,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_sub_rlx, .-vatomic32_get_sub_rlx
	.align	1
	.type	vatomic64_get_sub, @function
vatomic64_get_sub:
	mv	a5,a0
	neg	a1,a1
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_sub, .-vatomic64_get_sub
	.align	1
	.type	vatomic64_get_sub_acq, @function
vatomic64_get_sub_acq:
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomic64_get_sub_acq, .-vatomic64_get_sub_acq
	.align	1
	.type	vatomic64_get_sub_rel, @function
vatomic64_get_sub_rel:
	mv	a5,a0
	neg	a1,a1
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_sub_rel, .-vatomic64_get_sub_rel
	.align	1
	.type	vatomic64_get_sub_rlx, @function
vatomic64_get_sub_rlx:
	mv	a5,a0
	neg	a1,a1
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomic64_get_sub_rlx, .-vatomic64_get_sub_rlx
	.align	1
	.type	vatomicsz_get_sub, @function
vatomicsz_get_sub:
	mv	a5,a0
	neg	a1,a1
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_sub, .-vatomicsz_get_sub
	.align	1
	.type	vatomicsz_get_sub_acq, @function
vatomicsz_get_sub_acq:
	mv	a5,a0
	neg	a1,a1
	amoadd.d.aq a0,a1,0(a5)
	ret
	.size	vatomicsz_get_sub_acq, .-vatomicsz_get_sub_acq
	.align	1
	.type	vatomicsz_get_sub_rel, @function
vatomicsz_get_sub_rel:
	mv	a5,a0
	neg	a1,a1
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_sub_rel, .-vatomicsz_get_sub_rel
	.align	1
	.type	vatomicsz_get_sub_rlx, @function
vatomicsz_get_sub_rlx:
	mv	a5,a0
	neg	a1,a1
	amoadd.d a0,a1,0(a5)
	ret
	.size	vatomicsz_get_sub_rlx, .-vatomicsz_get_sub_rlx
	.align	1
	.type	vatomic8_get_max, @function
vatomic8_get_max:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lbu	s0,0(a0)
	fence	iorw,iorw
	andi	s0,s0,0xff
	addi	s3,sp,7
	bgeu	s0,s1,.L269
.L274:
	sb	s0,7(sp)
	li	a4,5
	li	a3,5
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L269
	mv	s0,a5
	bltu	s0,s1,.L274
.L269:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L275
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L275:
	call	__stack_chk_fail@plt
	.size	vatomic8_get_max, .-vatomic8_get_max
	.align	1
	.type	vatomic8_get_max_acq, @function
vatomic8_get_max_acq:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	fence	iorw,iorw
	andi	s0,s0,0xff
	addi	s3,sp,7
	bgeu	s0,s1,.L277
.L282:
	sb	s0,7(sp)
	li	a4,2
	li	a3,2
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L277
	mv	s0,a5
	bltu	s0,s1,.L282
.L277:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L283
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L283:
	call	__stack_chk_fail@plt
	.size	vatomic8_get_max_acq, .-vatomic8_get_max_acq
	.align	1
	.type	vatomic8_get_max_rel, @function
vatomic8_get_max_rel:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bgeu	s0,s1,.L285
.L290:
	sb	s0,7(sp)
	li	a4,0
	li	a3,3
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L285
	mv	s0,a5
	bltu	s0,s1,.L290
.L285:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L291
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L291:
	call	__stack_chk_fail@plt
	.size	vatomic8_get_max_rel, .-vatomic8_get_max_rel
	.align	1
	.type	vatomic8_get_max_rlx, @function
vatomic8_get_max_rlx:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bgeu	s0,s1,.L293
.L298:
	sb	s0,7(sp)
	li	a4,0
	li	a3,0
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L293
	mv	s0,a5
	bltu	s0,s1,.L298
.L293:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L299
	ld	ra,56(sp)
	mv	a0,s0
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L299:
	call	__stack_chk_fail@plt
	.size	vatomic8_get_max_rlx, .-vatomic8_get_max_rlx
	.align	1
	.type	vatomic16_get_max, @function
vatomic16_get_max:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lhu	s0,0(a0)
	fence	iorw,iorw
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L302
.L306:
	sh	s0,6(sp)
	li	a4,5
	li	a3,5
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L301
	mv	s0,a5
.L302:
	sext.w	s1,s0
	bltu	s1,s4,.L306
.L301:
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L307
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L307:
	call	__stack_chk_fail@plt
	.size	vatomic16_get_max, .-vatomic16_get_max
	.align	1
	.type	vatomic16_get_max_acq, @function
vatomic16_get_max_acq:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	fence	iorw,iorw
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L310
.L314:
	sh	s0,6(sp)
	li	a4,2
	li	a3,2
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L309
	mv	s0,a5
.L310:
	sext.w	s1,s0
	bltu	s1,s4,.L314
.L309:
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L315
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L315:
	call	__stack_chk_fail@plt
	.size	vatomic16_get_max_acq, .-vatomic16_get_max_acq
	.align	1
	.type	vatomic16_get_max_rel, @function
vatomic16_get_max_rel:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L318
.L322:
	sh	s0,6(sp)
	li	a4,0
	li	a3,3
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L317
	mv	s0,a5
.L318:
	sext.w	s1,s0
	bltu	s1,s4,.L322
.L317:
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L323
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L323:
	call	__stack_chk_fail@plt
	.size	vatomic16_get_max_rel, .-vatomic16_get_max_rel
	.align	1
	.type	vatomic16_get_max_rlx, @function
vatomic16_get_max_rlx:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L326
.L330:
	sh	s0,6(sp)
	li	a4,0
	li	a3,0
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L325
	mv	s0,a5
.L326:
	sext.w	s1,s0
	bltu	s1,s4,.L330
.L325:
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L331
	ld	ra,72(sp)
	mv	a0,s0
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L331:
	call	__stack_chk_fail@plt
	.size	vatomic16_get_max_rlx, .-vatomic16_get_max_rlx
	.align	1
	.type	vatomic32_get_max, @function
vatomic32_get_max:
	mv	a4,a0
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a0,a5
	bgeu	a0,a1,.L333
.L336:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L333
	mv	a0,a5
	bltu	a0,a1,.L336
.L333:
	ret
	.size	vatomic32_get_max, .-vatomic32_get_max
	.align	1
	.type	vatomic32_get_max_acq, @function
vatomic32_get_max_acq:
	mv	a4,a0
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a0,a5
	bgeu	a0,a1,.L338
.L341:
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L338
	mv	a0,a5
	bltu	a0,a1,.L341
.L338:
	ret
	.size	vatomic32_get_max_acq, .-vatomic32_get_max_acq
	.align	1
	.type	vatomic32_get_max_rel, @function
vatomic32_get_max_rel:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a0,a5
	bgeu	a0,a1,.L343
.L346:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a3,a1,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L343
	mv	a0,a5
	bltu	a0,a1,.L346
.L343:
	ret
	.size	vatomic32_get_max_rel, .-vatomic32_get_max_rel
	.align	1
	.type	vatomic32_get_max_rlx, @function
vatomic32_get_max_rlx:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a0,a5
	bgeu	a0,a1,.L348
.L351:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a3,a1,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a0,a5,.L348
	mv	a0,a5
	bltu	a0,a1,.L351
.L348:
	ret
	.size	vatomic32_get_max_rlx, .-vatomic32_get_max_rlx
	.align	1
	.type	vatomic64_get_max, @function
vatomic64_get_max:
	mv	a4,a0
	fence	iorw,iorw
	ld	a0,0(a0)
	fence	iorw,iorw
	bgeu	a0,a1,.L352
.L356:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L352
	mv	a0,a5
	bltu	a0,a1,.L356
.L352:
	ret
	.size	vatomic64_get_max, .-vatomic64_get_max
	.align	1
	.type	vatomic64_get_max_acq, @function
vatomic64_get_max_acq:
	mv	a4,a0
	ld	a0,0(a0)
	fence	iorw,iorw
	bgeu	a0,a1,.L357
.L361:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L357
	mv	a0,a5
	bltu	a0,a1,.L361
.L357:
	ret
	.size	vatomic64_get_max_acq, .-vatomic64_get_max_acq
	.align	1
	.type	vatomic64_get_max_rel, @function
vatomic64_get_max_rel:
	mv	a4,a0
	ld	a0,0(a0)
	bgeu	a0,a1,.L362
.L366:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L362
	mv	a0,a5
	bltu	a0,a1,.L366
.L362:
	ret
	.size	vatomic64_get_max_rel, .-vatomic64_get_max_rel
	.align	1
	.type	vatomic64_get_max_rlx, @function
vatomic64_get_max_rlx:
	mv	a4,a0
	ld	a0,0(a0)
	bgeu	a0,a1,.L367
.L371:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L367
	mv	a0,a5
	bltu	a0,a1,.L371
.L367:
	ret
	.size	vatomic64_get_max_rlx, .-vatomic64_get_max_rlx
	.align	1
	.type	vatomicsz_get_max, @function
vatomicsz_get_max:
	mv	a4,a0
	fence	iorw,iorw
	ld	a0,0(a0)
	fence	iorw,iorw
	bleu	a1,a0,.L372
.L376:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L372
	mv	a0,a5
	bgtu	a1,a0,.L376
.L372:
	ret
	.size	vatomicsz_get_max, .-vatomicsz_get_max
	.align	1
	.type	vatomicsz_get_max_acq, @function
vatomicsz_get_max_acq:
	mv	a4,a0
	ld	a0,0(a0)
	fence	iorw,iorw
	bleu	a1,a0,.L377
.L381:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L377
	mv	a0,a5
	bgtu	a1,a0,.L381
.L377:
	ret
	.size	vatomicsz_get_max_acq, .-vatomicsz_get_max_acq
	.align	1
	.type	vatomicsz_get_max_rel, @function
vatomicsz_get_max_rel:
	mv	a4,a0
	ld	a0,0(a0)
	bleu	a1,a0,.L382
.L386:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L382
	mv	a0,a5
	bgtu	a1,a0,.L386
.L382:
	ret
	.size	vatomicsz_get_max_rel, .-vatomicsz_get_max_rel
	.align	1
	.type	vatomicsz_get_max_rlx, @function
vatomicsz_get_max_rlx:
	mv	a4,a0
	ld	a0,0(a0)
	bleu	a1,a0,.L387
.L391:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a1,0(a4)
	bnez a3,1b
	1:
	beq	a0,a5,.L387
	mv	a0,a5
	bgtu	a1,a0,.L391
.L387:
	ret
	.size	vatomicsz_get_max_rlx, .-vatomicsz_get_max_rlx
	.align	1
	.type	vatomic8_max_get, @function
vatomic8_max_get:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lbu	s0,0(a0)
	fence	iorw,iorw
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L393
.L399:
	sb	s0,7(sp)
	li	a4,5
	li	a3,5
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L393
	mv	s0,a5
	bgtu	s1,s0,.L399
.L393:
	andi	a0,s1,0xff
	bgeu	s1,s0,.L395
	andi	a0,s0,0xff
.L395:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L400
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L400:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_get, .-vatomic8_max_get
	.align	1
	.type	vatomic8_max_get_acq, @function
vatomic8_max_get_acq:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	fence	iorw,iorw
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L402
.L408:
	sb	s0,7(sp)
	li	a4,2
	li	a3,2
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L402
	mv	s0,a5
	bgtu	s1,s0,.L408
.L402:
	andi	a0,s1,0xff
	bgeu	s1,s0,.L404
	andi	a0,s0,0xff
.L404:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L409
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L409:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_get_acq, .-vatomic8_max_get_acq
	.align	1
	.type	vatomic8_max_get_rel, @function
vatomic8_max_get_rel:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L411
.L417:
	sb	s0,7(sp)
	li	a4,0
	li	a3,3
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L411
	mv	s0,a5
	bgtu	s1,s0,.L417
.L411:
	andi	a0,s1,0xff
	bgeu	s1,s0,.L413
	andi	a0,s0,0xff
.L413:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L418
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L418:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_get_rel, .-vatomic8_max_get_rel
	.align	1
	.type	vatomic8_max_get_rlx, @function
vatomic8_max_get_rlx:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L420
.L426:
	sb	s0,7(sp)
	li	a4,0
	li	a3,0
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L420
	mv	s0,a5
	bgtu	s1,s0,.L426
.L420:
	andi	a0,s1,0xff
	bgeu	s1,s0,.L422
	andi	a0,s0,0xff
.L422:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L427
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L427:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_get_rlx, .-vatomic8_max_get_rlx
	.align	1
	.type	vatomic16_max_get, @function
vatomic16_max_get:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lhu	s0,0(a0)
	fence	iorw,iorw
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L430
.L435:
	sh	s0,6(sp)
	li	a4,5
	li	a3,5
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L429
	mv	s0,a5
.L430:
	sext.w	s1,s0
	bgtu	s4,s1,.L435
.L429:
	bgeu	s4,s1,.L431
	mv	s2,s0
.L431:
	slli	a0,s2,48
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	srli	a0,a0,48
	bne	a5,zero,.L436
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L436:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_get, .-vatomic16_max_get
	.align	1
	.type	vatomic16_max_get_acq, @function
vatomic16_max_get_acq:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	fence	iorw,iorw
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L439
.L444:
	sh	s0,6(sp)
	li	a4,2
	li	a3,2
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L438
	mv	s0,a5
.L439:
	sext.w	s1,s0
	bgtu	s4,s1,.L444
.L438:
	bgeu	s4,s1,.L440
	mv	s2,s0
.L440:
	slli	a0,s2,48
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	srli	a0,a0,48
	bne	a5,zero,.L445
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L445:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_get_acq, .-vatomic16_max_get_acq
	.align	1
	.type	vatomic16_max_get_rel, @function
vatomic16_max_get_rel:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L448
.L453:
	sh	s0,6(sp)
	li	a4,0
	li	a3,3
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L447
	mv	s0,a5
.L448:
	sext.w	s1,s0
	bgtu	s4,s1,.L453
.L447:
	bgeu	s4,s1,.L449
	mv	s2,s0
.L449:
	slli	a0,s2,48
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	srli	a0,a0,48
	bne	a5,zero,.L454
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L454:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_get_rel, .-vatomic16_max_get_rel
	.align	1
	.type	vatomic16_max_get_rlx, @function
vatomic16_max_get_rlx:
	addi	sp,sp,-80
	sd	s6,16(sp)
	la	s6,__stack_chk_guard
	sd	s2,48(sp)
	sd	s3,40(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s4,32(sp)
	sd	s5,24(sp)
	mv	s3,a0
	mv	s2,a1
	ld	a5, 0(s6)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	s0,0(a0)
	slli	s0,s0,48
	srli	s0,s0,48
	sext.w	s4,a1
	addi	s5,sp,6
	j	.L457
.L462:
	sh	s0,6(sp)
	li	a4,0
	li	a3,0
	mv	a2,s2
	mv	a1,s5
	mv	a0,s3
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s1,a5,.L456
	mv	s0,a5
.L457:
	sext.w	s1,s0
	bgtu	s4,s1,.L462
.L456:
	bgeu	s4,s1,.L458
	mv	s2,s0
.L458:
	slli	a0,s2,48
	ld	a4, 8(sp)
	ld	a5, 0(s6)
	xor	a5, a4, a5
	li	a4, 0
	srli	a0,a0,48
	bne	a5,zero,.L463
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	ld	s6,16(sp)
	addi	sp,sp,80
	jr	ra
.L463:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_get_rlx, .-vatomic16_max_get_rlx
	.align	1
	.type	vatomic32_max_get, @function
vatomic32_max_get:
	fence	iorw,iorw
	lw	a4,0(a0)
	fence	iorw,iorw
	sext.w	a4,a4
	bleu	a1,a4,.L465
.L469:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a0)
	bne a5,a4,1f
	sc.w.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L465
	mv	a4,a5
	bgtu	a1,a4,.L469
.L465:
	sext.w	a0,a1
	bgeu	a1,a4,.L467
	sext.w	a0,a4
.L467:
	ret
	.size	vatomic32_max_get, .-vatomic32_max_get
	.align	1
	.type	vatomic32_max_get_acq, @function
vatomic32_max_get_acq:
	lw	a4,0(a0)
	fence	iorw,iorw
	sext.w	a4,a4
	bleu	a1,a4,.L471
.L475:
	1:
	lr.w.aq a5,0(a0)
	bne a5,a4,1f
	sc.w.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L471
	mv	a4,a5
	bgtu	a1,a4,.L475
.L471:
	sext.w	a0,a1
	bgeu	a1,a4,.L473
	sext.w	a0,a4
.L473:
	ret
	.size	vatomic32_max_get_acq, .-vatomic32_max_get_acq
	.align	1
	.type	vatomic32_max_get_rel, @function
vatomic32_max_get_rel:
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L477
.L481:
	1:
	lr.w a5,0(a0)
	bne a5,a4,1f
	sc.w a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L477
	mv	a4,a5
	bgtu	a1,a4,.L481
.L477:
	sext.w	a0,a1
	bgeu	a1,a4,.L479
	sext.w	a0,a4
.L479:
	ret
	.size	vatomic32_max_get_rel, .-vatomic32_max_get_rel
	.align	1
	.type	vatomic32_max_get_rlx, @function
vatomic32_max_get_rlx:
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L483
.L487:
	1:
	lr.w a5,0(a0)
	bne a5,a4,1f
	sc.w a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L483
	mv	a4,a5
	bgtu	a1,a4,.L487
.L483:
	sext.w	a0,a1
	bgeu	a1,a4,.L485
	sext.w	a0,a4
.L485:
	ret
	.size	vatomic32_max_get_rlx, .-vatomic32_max_get_rlx
	.align	1
	.type	vatomic64_max_get, @function
vatomic64_max_get:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L489
.L493:
	fence iorw,ow
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L489
	mv	a5,a4
	bgtu	a1,a5,.L493
.L489:
	mv	a0,a1
	bgeu	a1,a5,.L491
	mv	a0,a5
.L491:
	ret
	.size	vatomic64_max_get, .-vatomic64_max_get
	.align	1
	.type	vatomic64_max_get_acq, @function
vatomic64_max_get_acq:
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L495
.L499:
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L495
	mv	a5,a4
	bgtu	a1,a5,.L499
.L495:
	mv	a0,a1
	bgeu	a1,a5,.L497
	mv	a0,a5
.L497:
	ret
	.size	vatomic64_max_get_acq, .-vatomic64_max_get_acq
	.align	1
	.type	vatomic64_max_get_rel, @function
vatomic64_max_get_rel:
	ld	a5,0(a0)
	bleu	a1,a5,.L501
.L505:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L501
	mv	a5,a4
	bgtu	a1,a5,.L505
.L501:
	mv	a0,a1
	bgeu	a1,a5,.L503
	mv	a0,a5
.L503:
	ret
	.size	vatomic64_max_get_rel, .-vatomic64_max_get_rel
	.align	1
	.type	vatomic64_max_get_rlx, @function
vatomic64_max_get_rlx:
	ld	a5,0(a0)
	bleu	a1,a5,.L507
.L511:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L507
	mv	a5,a4
	bgtu	a1,a5,.L511
.L507:
	mv	a0,a1
	bgeu	a1,a5,.L509
	mv	a0,a5
.L509:
	ret
	.size	vatomic64_max_get_rlx, .-vatomic64_max_get_rlx
	.align	1
	.type	vatomicsz_max_get, @function
vatomicsz_max_get:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L513
.L517:
	fence iorw,ow
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L513
	mv	a5,a4
	bgtu	a1,a5,.L517
.L513:
	mv	a0,a1
	bgeu	a1,a5,.L515
	mv	a0,a5
.L515:
	ret
	.size	vatomicsz_max_get, .-vatomicsz_max_get
	.align	1
	.type	vatomicsz_max_get_acq, @function
vatomicsz_max_get_acq:
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L519
.L523:
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L519
	mv	a5,a4
	bgtu	a1,a5,.L523
.L519:
	mv	a0,a1
	bgeu	a1,a5,.L521
	mv	a0,a5
.L521:
	ret
	.size	vatomicsz_max_get_acq, .-vatomicsz_max_get_acq
	.align	1
	.type	vatomicsz_max_get_rel, @function
vatomicsz_max_get_rel:
	ld	a5,0(a0)
	bleu	a1,a5,.L525
.L529:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L525
	mv	a5,a4
	bgtu	a1,a5,.L529
.L525:
	mv	a0,a1
	bgeu	a1,a5,.L527
	mv	a0,a5
.L527:
	ret
	.size	vatomicsz_max_get_rel, .-vatomicsz_max_get_rel
	.align	1
	.type	vatomicsz_max_get_rlx, @function
vatomicsz_max_get_rlx:
	ld	a5,0(a0)
	bleu	a1,a5,.L531
.L535:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L531
	mv	a5,a4
	bgtu	a1,a5,.L535
.L531:
	mv	a0,a1
	bgeu	a1,a5,.L533
	mv	a0,a5
.L533:
	ret
	.size	vatomicsz_max_get_rlx, .-vatomicsz_max_get_rlx
	.align	1
	.type	vatomic8_max, @function
vatomic8_max:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lbu	s0,0(a0)
	fence	iorw,iorw
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L536
.L542:
	sb	s0,7(sp)
	li	a4,5
	li	a3,5
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L536
	mv	s0,a5
	bgtu	s1,s0,.L542
.L536:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L543
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L543:
	call	__stack_chk_fail@plt
	.size	vatomic8_max, .-vatomic8_max
	.align	1
	.type	vatomic8_max_rel, @function
vatomic8_max_rel:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L544
.L550:
	sb	s0,7(sp)
	li	a4,0
	li	a3,3
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L544
	mv	s0,a5
	bgtu	s1,s0,.L550
.L544:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L551
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L551:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_rel, .-vatomic8_max_rel
	.align	1
	.type	vatomic8_max_rlx, @function
vatomic8_max_rlx:
	addi	sp,sp,-64
	sd	s4,16(sp)
	la	s4,__stack_chk_guard
	sd	s1,40(sp)
	sd	s2,32(sp)
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s3,24(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s4)
	sd	a5, 8(sp)
	li	a5, 0
	lbu	s0,0(a0)
	andi	s0,s0,0xff
	addi	s3,sp,7
	bleu	s1,s0,.L552
.L558:
	sb	s0,7(sp)
	li	a4,0
	li	a3,0
	mv	a2,s1
	mv	a1,s3
	mv	a0,s2
	call	__atomic_compare_exchange_1@plt
	lbu	a5,7(sp)
	beq	s0,a5,.L552
	mv	s0,a5
	bgtu	s1,s0,.L558
.L552:
	ld	a4, 8(sp)
	ld	a5, 0(s4)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L559
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	ld	s3,24(sp)
	ld	s4,16(sp)
	addi	sp,sp,64
	jr	ra
.L559:
	call	__stack_chk_fail@plt
	.size	vatomic8_max_rlx, .-vatomic8_max_rlx
	.align	1
	.type	vatomic16_max, @function
vatomic16_max:
	addi	sp,sp,-80
	sd	s5,24(sp)
	la	s5,__stack_chk_guard
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s5)
	sd	a5, 8(sp)
	li	a5, 0
	fence	iorw,iorw
	lhu	a5,0(a0)
	fence	iorw,iorw
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	s3,a1
	addi	s4,sp,6
	j	.L562
.L566:
	sh	a5,6(sp)
	li	a4,5
	li	a3,5
	mv	a2,s1
	mv	a1,s4
	mv	a0,s2
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s0,a5,.L560
.L562:
	sext.w	s0,a5
	bgtu	s3,s0,.L566
.L560:
	ld	a4, 8(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L567
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
.L567:
	call	__stack_chk_fail@plt
	.size	vatomic16_max, .-vatomic16_max
	.align	1
	.type	vatomic16_max_rel, @function
vatomic16_max_rel:
	addi	sp,sp,-80
	sd	s5,24(sp)
	la	s5,__stack_chk_guard
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s5)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	a5,0(a0)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	s3,a1
	addi	s4,sp,6
	j	.L570
.L574:
	sh	a5,6(sp)
	li	a4,0
	li	a3,3
	mv	a2,s1
	mv	a1,s4
	mv	a0,s2
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s0,a5,.L568
.L570:
	sext.w	s0,a5
	bgtu	s3,s0,.L574
.L568:
	ld	a4, 8(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L575
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
.L575:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_rel, .-vatomic16_max_rel
	.align	1
	.type	vatomic16_max_rlx, @function
vatomic16_max_rlx:
	addi	sp,sp,-80
	sd	s5,24(sp)
	la	s5,__stack_chk_guard
	sd	s1,56(sp)
	sd	s2,48(sp)
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s3,40(sp)
	sd	s4,32(sp)
	mv	s2,a0
	mv	s1,a1
	ld	a5, 0(s5)
	sd	a5, 8(sp)
	li	a5, 0
	lhu	a5,0(a0)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	s3,a1
	addi	s4,sp,6
	j	.L578
.L582:
	sh	a5,6(sp)
	li	a4,0
	li	a3,0
	mv	a2,s1
	mv	a1,s4
	mv	a0,s2
	call	__atomic_compare_exchange_2@plt
	lhu	a5,6(sp)
	beq	s0,a5,.L576
.L578:
	sext.w	s0,a5
	bgtu	s3,s0,.L582
.L576:
	ld	a4, 8(sp)
	ld	a5, 0(s5)
	xor	a5, a4, a5
	li	a4, 0
	bne	a5,zero,.L583
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	ld	s2,48(sp)
	ld	s3,40(sp)
	ld	s4,32(sp)
	ld	s5,24(sp)
	addi	sp,sp,80
	jr	ra
.L583:
	call	__stack_chk_fail@plt
	.size	vatomic16_max_rlx, .-vatomic16_max_rlx
	.align	1
	.type	vatomic32_max, @function
vatomic32_max:
	fence	iorw,iorw
	lw	a4,0(a0)
	fence	iorw,iorw
	sext.w	a4,a4
	bleu	a1,a4,.L584
.L588:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a0)
	bne a5,a4,1f
	sc.w.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L584
	mv	a4,a5
	bgtu	a1,a4,.L588
.L584:
	ret
	.size	vatomic32_max, .-vatomic32_max
	.align	1
	.type	vatomic32_max_rel, @function
vatomic32_max_rel:
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L589
.L593:
	1:
	lr.w a5,0(a0)
	bne a5,a4,1f
	sc.w a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L589
	mv	a4,a5
	bgtu	a1,a4,.L593
.L589:
	ret
	.size	vatomic32_max_rel, .-vatomic32_max_rel
	.align	1
	.type	vatomic32_max_rlx, @function
vatomic32_max_rlx:
	lw	a4,0(a0)
	sext.w	a4,a4
	bleu	a1,a4,.L594
.L598:
	1:
	lr.w a5,0(a0)
	bne a5,a4,1f
	sc.w a3,a1,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	beq	a4,a5,.L594
	mv	a4,a5
	bgtu	a1,a4,.L598
.L594:
	ret
	.size	vatomic32_max_rlx, .-vatomic32_max_rlx
	.align	1
	.type	vatomic64_max, @function
vatomic64_max:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L599
.L603:
	fence iorw,ow
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L599
	mv	a5,a4
	bgtu	a1,a5,.L603
.L599:
	ret
	.size	vatomic64_max, .-vatomic64_max
	.align	1
	.type	vatomic64_max_rel, @function
vatomic64_max_rel:
	ld	a5,0(a0)
	bleu	a1,a5,.L604
.L608:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L604
	mv	a5,a4
	bgtu	a1,a5,.L608
.L604:
	ret
	.size	vatomic64_max_rel, .-vatomic64_max_rel
	.align	1
	.type	vatomic64_max_rlx, @function
vatomic64_max_rlx:
	ld	a5,0(a0)
	bleu	a1,a5,.L609
.L613:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L609
	mv	a5,a4
	bgtu	a1,a5,.L613
.L609:
	ret
	.size	vatomic64_max_rlx, .-vatomic64_max_rlx
	.align	1
	.type	vatomicsz_max, @function
vatomicsz_max:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L614
.L618:
	fence iorw,ow
	1:
	lr.d.aq a4,0(a0)
	bne a4,a5,1f
	sc.d.aq a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L614
	mv	a5,a4
	bgtu	a1,a5,.L618
.L614:
	ret
	.size	vatomicsz_max, .-vatomicsz_max
	.align	1
	.type	vatomicsz_max_rel, @function
vatomicsz_max_rel:
	ld	a5,0(a0)
	bleu	a1,a5,.L619
.L623:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L619
	mv	a5,a4
	bgtu	a1,a5,.L623
.L619:
	ret
	.size	vatomicsz_max_rel, .-vatomicsz_max_rel
	.align	1
	.type	vatomicsz_max_rlx, @function
vatomicsz_max_rlx:
	ld	a5,0(a0)
	bleu	a1,a5,.L624
.L628:
	1:
	lr.d a4,0(a0)
	bne a4,a5,1f
	sc.d a3,a1,0(a0)
	bnez a3,1b
	1:
	beq	a5,a4,.L624
	mv	a5,a4
	bgtu	a1,a5,.L628
.L624:
	ret
	.size	vatomicsz_max_rlx, .-vatomicsz_max_rlx
	.align	1
	.type	vatomic8_and_get, @function
vatomic8_and_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_get, .-vatomic8_and_get
	.align	1
	.type	vatomic8_and_get_acq, @function
vatomic8_and_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_get_acq, .-vatomic8_and_get_acq
	.align	1
	.type	vatomic8_and_get_rel, @function
vatomic8_and_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_get_rel, .-vatomic8_and_get_rel
	.align	1
	.type	vatomic8_and_get_rlx, @function
vatomic8_and_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_get_rlx, .-vatomic8_and_get_rlx
	.align	1
	.type	vatomic16_and_get, @function
vatomic16_and_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_get, .-vatomic16_and_get
	.align	1
	.type	vatomic16_and_get_acq, @function
vatomic16_and_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_get_acq, .-vatomic16_and_get_acq
	.align	1
	.type	vatomic16_and_get_rel, @function
vatomic16_and_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_get_rel, .-vatomic16_and_get_rel
	.align	1
	.type	vatomic16_and_get_rlx, @function
vatomic16_and_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	and	a0,s0,a0
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_get_rlx, .-vatomic16_and_get_rlx
	.align	1
	.type	vatomic32_and_get, @function
vatomic32_and_get:
	fence iorw,ow
	amoand.w.aq a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_and_get, .-vatomic32_and_get
	.align	1
	.type	vatomic32_and_get_acq, @function
vatomic32_and_get_acq:
	amoand.w.aq a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_and_get_acq, .-vatomic32_and_get_acq
	.align	1
	.type	vatomic32_and_get_rel, @function
vatomic32_and_get_rel:
	fence iorw,ow
	amoand.w a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_and_get_rel, .-vatomic32_and_get_rel
	.align	1
	.type	vatomic32_and_get_rlx, @function
vatomic32_and_get_rlx:
	amoand.w a5,a1,0(a0)
	and	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_and_get_rlx, .-vatomic32_and_get_rlx
	.align	1
	.type	vatomic64_and_get, @function
vatomic64_and_get:
	mv	a5,a0
	fence iorw,ow
	amoand.d.aq a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomic64_and_get, .-vatomic64_and_get
	.align	1
	.type	vatomic64_and_get_acq, @function
vatomic64_and_get_acq:
	mv	a5,a0
	amoand.d.aq a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomic64_and_get_acq, .-vatomic64_and_get_acq
	.align	1
	.type	vatomic64_and_get_rel, @function
vatomic64_and_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoand.d a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomic64_and_get_rel, .-vatomic64_and_get_rel
	.align	1
	.type	vatomic64_and_get_rlx, @function
vatomic64_and_get_rlx:
	mv	a5,a0
	amoand.d a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomic64_and_get_rlx, .-vatomic64_and_get_rlx
	.align	1
	.type	vatomicsz_and_get, @function
vatomicsz_and_get:
	mv	a5,a0
	fence iorw,ow
	amoand.d.aq a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomicsz_and_get, .-vatomicsz_and_get
	.align	1
	.type	vatomicsz_and_get_acq, @function
vatomicsz_and_get_acq:
	mv	a5,a0
	amoand.d.aq a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomicsz_and_get_acq, .-vatomicsz_and_get_acq
	.align	1
	.type	vatomicsz_and_get_rel, @function
vatomicsz_and_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoand.d a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomicsz_and_get_rel, .-vatomicsz_and_get_rel
	.align	1
	.type	vatomicsz_and_get_rlx, @function
vatomicsz_and_get_rlx:
	mv	a5,a0
	amoand.d a0,a1,0(a5)
	and	a0,a1,a0
	ret
	.size	vatomicsz_and_get_rlx, .-vatomicsz_and_get_rlx
	.align	1
	.type	vatomic8_and, @function
vatomic8_and:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and, .-vatomic8_and
	.align	1
	.type	vatomic8_and_rel, @function
vatomic8_and_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_rel, .-vatomic8_and_rel
	.align	1
	.type	vatomic8_and_rlx, @function
vatomic8_and_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_and_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_and_rlx, .-vatomic8_and_rlx
	.align	1
	.type	vatomic16_and, @function
vatomic16_and:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and, .-vatomic16_and
	.align	1
	.type	vatomic16_and_rel, @function
vatomic16_and_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_rel, .-vatomic16_and_rel
	.align	1
	.type	vatomic16_and_rlx, @function
vatomic16_and_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_and_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_and_rlx, .-vatomic16_and_rlx
	.align	1
	.type	vatomic32_and, @function
vatomic32_and:
	fence iorw,ow
	amoand.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_and, .-vatomic32_and
	.align	1
	.type	vatomic32_and_rel, @function
vatomic32_and_rel:
	fence iorw,ow
	amoand.w zero,a1,0(a0)
	ret
	.size	vatomic32_and_rel, .-vatomic32_and_rel
	.align	1
	.type	vatomic32_and_rlx, @function
vatomic32_and_rlx:
	amoand.w zero,a1,0(a0)
	ret
	.size	vatomic32_and_rlx, .-vatomic32_and_rlx
	.align	1
	.type	vatomic64_and, @function
vatomic64_and:
	fence iorw,ow
	amoand.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_and, .-vatomic64_and
	.align	1
	.type	vatomic64_and_rel, @function
vatomic64_and_rel:
	fence iorw,ow
	amoand.d zero,a1,0(a0)
	ret
	.size	vatomic64_and_rel, .-vatomic64_and_rel
	.align	1
	.type	vatomic64_and_rlx, @function
vatomic64_and_rlx:
	amoand.d zero,a1,0(a0)
	ret
	.size	vatomic64_and_rlx, .-vatomic64_and_rlx
	.align	1
	.type	vatomicsz_and, @function
vatomicsz_and:
	fence iorw,ow
	amoand.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_and, .-vatomicsz_and
	.align	1
	.type	vatomicsz_and_rel, @function
vatomicsz_and_rel:
	fence iorw,ow
	amoand.d zero,a1,0(a0)
	ret
	.size	vatomicsz_and_rel, .-vatomicsz_and_rel
	.align	1
	.type	vatomicsz_and_rlx, @function
vatomicsz_and_rlx:
	amoand.d zero,a1,0(a0)
	ret
	.size	vatomicsz_and_rlx, .-vatomicsz_and_rlx
	.align	1
	.type	vatomic8_or_get, @function
vatomic8_or_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_get, .-vatomic8_or_get
	.align	1
	.type	vatomic8_or_get_acq, @function
vatomic8_or_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_get_acq, .-vatomic8_or_get_acq
	.align	1
	.type	vatomic8_or_get_rel, @function
vatomic8_or_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_get_rel, .-vatomic8_or_get_rel
	.align	1
	.type	vatomic8_or_get_rlx, @function
vatomic8_or_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_get_rlx, .-vatomic8_or_get_rlx
	.align	1
	.type	vatomic16_or_get, @function
vatomic16_or_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_get, .-vatomic16_or_get
	.align	1
	.type	vatomic16_or_get_acq, @function
vatomic16_or_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_get_acq, .-vatomic16_or_get_acq
	.align	1
	.type	vatomic16_or_get_rel, @function
vatomic16_or_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_get_rel, .-vatomic16_or_get_rel
	.align	1
	.type	vatomic16_or_get_rlx, @function
vatomic16_or_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	or	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_get_rlx, .-vatomic16_or_get_rlx
	.align	1
	.type	vatomic32_or_get, @function
vatomic32_or_get:
	fence iorw,ow
	amoor.w.aq a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_or_get, .-vatomic32_or_get
	.align	1
	.type	vatomic32_or_get_acq, @function
vatomic32_or_get_acq:
	amoor.w.aq a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_or_get_acq, .-vatomic32_or_get_acq
	.align	1
	.type	vatomic32_or_get_rel, @function
vatomic32_or_get_rel:
	fence iorw,ow
	amoor.w a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_or_get_rel, .-vatomic32_or_get_rel
	.align	1
	.type	vatomic32_or_get_rlx, @function
vatomic32_or_get_rlx:
	amoor.w a5,a1,0(a0)
	or	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_or_get_rlx, .-vatomic32_or_get_rlx
	.align	1
	.type	vatomic64_or_get, @function
vatomic64_or_get:
	mv	a5,a0
	fence iorw,ow
	amoor.d.aq a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomic64_or_get, .-vatomic64_or_get
	.align	1
	.type	vatomic64_or_get_acq, @function
vatomic64_or_get_acq:
	mv	a5,a0
	amoor.d.aq a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomic64_or_get_acq, .-vatomic64_or_get_acq
	.align	1
	.type	vatomic64_or_get_rel, @function
vatomic64_or_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoor.d a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomic64_or_get_rel, .-vatomic64_or_get_rel
	.align	1
	.type	vatomic64_or_get_rlx, @function
vatomic64_or_get_rlx:
	mv	a5,a0
	amoor.d a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomic64_or_get_rlx, .-vatomic64_or_get_rlx
	.align	1
	.type	vatomicsz_or_get, @function
vatomicsz_or_get:
	mv	a5,a0
	fence iorw,ow
	amoor.d.aq a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomicsz_or_get, .-vatomicsz_or_get
	.align	1
	.type	vatomicsz_or_get_acq, @function
vatomicsz_or_get_acq:
	mv	a5,a0
	amoor.d.aq a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomicsz_or_get_acq, .-vatomicsz_or_get_acq
	.align	1
	.type	vatomicsz_or_get_rel, @function
vatomicsz_or_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoor.d a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomicsz_or_get_rel, .-vatomicsz_or_get_rel
	.align	1
	.type	vatomicsz_or_get_rlx, @function
vatomicsz_or_get_rlx:
	mv	a5,a0
	amoor.d a0,a1,0(a5)
	or	a0,a1,a0
	ret
	.size	vatomicsz_or_get_rlx, .-vatomicsz_or_get_rlx
	.align	1
	.type	vatomic8_or, @function
vatomic8_or:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or, .-vatomic8_or
	.align	1
	.type	vatomic8_or_rel, @function
vatomic8_or_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_rel, .-vatomic8_or_rel
	.align	1
	.type	vatomic8_or_rlx, @function
vatomic8_or_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_or_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_or_rlx, .-vatomic8_or_rlx
	.align	1
	.type	vatomic16_or, @function
vatomic16_or:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or, .-vatomic16_or
	.align	1
	.type	vatomic16_or_rel, @function
vatomic16_or_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_rel, .-vatomic16_or_rel
	.align	1
	.type	vatomic16_or_rlx, @function
vatomic16_or_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_or_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_or_rlx, .-vatomic16_or_rlx
	.align	1
	.type	vatomic32_or, @function
vatomic32_or:
	fence iorw,ow
	amoor.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_or, .-vatomic32_or
	.align	1
	.type	vatomic32_or_rel, @function
vatomic32_or_rel:
	fence iorw,ow
	amoor.w zero,a1,0(a0)
	ret
	.size	vatomic32_or_rel, .-vatomic32_or_rel
	.align	1
	.type	vatomic32_or_rlx, @function
vatomic32_or_rlx:
	amoor.w zero,a1,0(a0)
	ret
	.size	vatomic32_or_rlx, .-vatomic32_or_rlx
	.align	1
	.type	vatomic64_or, @function
vatomic64_or:
	fence iorw,ow
	amoor.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_or, .-vatomic64_or
	.align	1
	.type	vatomic64_or_rel, @function
vatomic64_or_rel:
	fence iorw,ow
	amoor.d zero,a1,0(a0)
	ret
	.size	vatomic64_or_rel, .-vatomic64_or_rel
	.align	1
	.type	vatomic64_or_rlx, @function
vatomic64_or_rlx:
	amoor.d zero,a1,0(a0)
	ret
	.size	vatomic64_or_rlx, .-vatomic64_or_rlx
	.align	1
	.type	vatomicsz_or, @function
vatomicsz_or:
	fence iorw,ow
	amoor.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_or, .-vatomicsz_or
	.align	1
	.type	vatomicsz_or_rel, @function
vatomicsz_or_rel:
	fence iorw,ow
	amoor.d zero,a1,0(a0)
	ret
	.size	vatomicsz_or_rel, .-vatomicsz_or_rel
	.align	1
	.type	vatomicsz_or_rlx, @function
vatomicsz_or_rlx:
	amoor.d zero,a1,0(a0)
	ret
	.size	vatomicsz_or_rlx, .-vatomicsz_or_rlx
	.align	1
	.type	vatomic8_xor_get, @function
vatomic8_xor_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_get, .-vatomic8_xor_get
	.align	1
	.type	vatomic8_xor_get_acq, @function
vatomic8_xor_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_get_acq, .-vatomic8_xor_get_acq
	.align	1
	.type	vatomic8_xor_get_rel, @function
vatomic8_xor_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_get_rel, .-vatomic8_xor_get_rel
	.align	1
	.type	vatomic8_xor_get_rlx, @function
vatomic8_xor_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_get_rlx, .-vatomic8_xor_get_rlx
	.align	1
	.type	vatomic16_xor_get, @function
vatomic16_xor_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_get, .-vatomic16_xor_get
	.align	1
	.type	vatomic16_xor_get_acq, @function
vatomic16_xor_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_get_acq, .-vatomic16_xor_get_acq
	.align	1
	.type	vatomic16_xor_get_rel, @function
vatomic16_xor_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_get_rel, .-vatomic16_xor_get_rel
	.align	1
	.type	vatomic16_xor_get_rlx, @function
vatomic16_xor_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	xor	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_get_rlx, .-vatomic16_xor_get_rlx
	.align	1
	.type	vatomic32_xor_get, @function
vatomic32_xor_get:
	fence iorw,ow
	amoxor.w.aq a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_xor_get, .-vatomic32_xor_get
	.align	1
	.type	vatomic32_xor_get_acq, @function
vatomic32_xor_get_acq:
	amoxor.w.aq a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_xor_get_acq, .-vatomic32_xor_get_acq
	.align	1
	.type	vatomic32_xor_get_rel, @function
vatomic32_xor_get_rel:
	fence iorw,ow
	amoxor.w a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_xor_get_rel, .-vatomic32_xor_get_rel
	.align	1
	.type	vatomic32_xor_get_rlx, @function
vatomic32_xor_get_rlx:
	amoxor.w a5,a1,0(a0)
	xor	a1,a1,a5
	sext.w	a0,a1
	ret
	.size	vatomic32_xor_get_rlx, .-vatomic32_xor_get_rlx
	.align	1
	.type	vatomic64_xor_get, @function
vatomic64_xor_get:
	mv	a5,a0
	fence iorw,ow
	amoxor.d.aq a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomic64_xor_get, .-vatomic64_xor_get
	.align	1
	.type	vatomic64_xor_get_acq, @function
vatomic64_xor_get_acq:
	mv	a5,a0
	amoxor.d.aq a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomic64_xor_get_acq, .-vatomic64_xor_get_acq
	.align	1
	.type	vatomic64_xor_get_rel, @function
vatomic64_xor_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoxor.d a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomic64_xor_get_rel, .-vatomic64_xor_get_rel
	.align	1
	.type	vatomic64_xor_get_rlx, @function
vatomic64_xor_get_rlx:
	mv	a5,a0
	amoxor.d a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomic64_xor_get_rlx, .-vatomic64_xor_get_rlx
	.align	1
	.type	vatomicsz_xor_get, @function
vatomicsz_xor_get:
	mv	a5,a0
	fence iorw,ow
	amoxor.d.aq a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomicsz_xor_get, .-vatomicsz_xor_get
	.align	1
	.type	vatomicsz_xor_get_acq, @function
vatomicsz_xor_get_acq:
	mv	a5,a0
	amoxor.d.aq a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomicsz_xor_get_acq, .-vatomicsz_xor_get_acq
	.align	1
	.type	vatomicsz_xor_get_rel, @function
vatomicsz_xor_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoxor.d a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomicsz_xor_get_rel, .-vatomicsz_xor_get_rel
	.align	1
	.type	vatomicsz_xor_get_rlx, @function
vatomicsz_xor_get_rlx:
	mv	a5,a0
	amoxor.d a0,a1,0(a5)
	xor	a0,a1,a0
	ret
	.size	vatomicsz_xor_get_rlx, .-vatomicsz_xor_get_rlx
	.align	1
	.type	vatomic8_xor, @function
vatomic8_xor:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor, .-vatomic8_xor
	.align	1
	.type	vatomic8_xor_rel, @function
vatomic8_xor_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_rel, .-vatomic8_xor_rel
	.align	1
	.type	vatomic8_xor_rlx, @function
vatomic8_xor_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_xor_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_xor_rlx, .-vatomic8_xor_rlx
	.align	1
	.type	vatomic16_xor, @function
vatomic16_xor:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor, .-vatomic16_xor
	.align	1
	.type	vatomic16_xor_rel, @function
vatomic16_xor_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_rel, .-vatomic16_xor_rel
	.align	1
	.type	vatomic16_xor_rlx, @function
vatomic16_xor_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_xor_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_xor_rlx, .-vatomic16_xor_rlx
	.align	1
	.type	vatomic32_xor, @function
vatomic32_xor:
	fence iorw,ow
	amoxor.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_xor, .-vatomic32_xor
	.align	1
	.type	vatomic32_xor_rel, @function
vatomic32_xor_rel:
	fence iorw,ow
	amoxor.w zero,a1,0(a0)
	ret
	.size	vatomic32_xor_rel, .-vatomic32_xor_rel
	.align	1
	.type	vatomic32_xor_rlx, @function
vatomic32_xor_rlx:
	amoxor.w zero,a1,0(a0)
	ret
	.size	vatomic32_xor_rlx, .-vatomic32_xor_rlx
	.align	1
	.type	vatomic64_xor, @function
vatomic64_xor:
	fence iorw,ow
	amoxor.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_xor, .-vatomic64_xor
	.align	1
	.type	vatomic64_xor_rel, @function
vatomic64_xor_rel:
	fence iorw,ow
	amoxor.d zero,a1,0(a0)
	ret
	.size	vatomic64_xor_rel, .-vatomic64_xor_rel
	.align	1
	.type	vatomic64_xor_rlx, @function
vatomic64_xor_rlx:
	amoxor.d zero,a1,0(a0)
	ret
	.size	vatomic64_xor_rlx, .-vatomic64_xor_rlx
	.align	1
	.type	vatomicsz_xor, @function
vatomicsz_xor:
	fence iorw,ow
	amoxor.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_xor, .-vatomicsz_xor
	.align	1
	.type	vatomicsz_xor_rel, @function
vatomicsz_xor_rel:
	fence iorw,ow
	amoxor.d zero,a1,0(a0)
	ret
	.size	vatomicsz_xor_rel, .-vatomicsz_xor_rel
	.align	1
	.type	vatomicsz_xor_rlx, @function
vatomicsz_xor_rlx:
	amoxor.d zero,a1,0(a0)
	ret
	.size	vatomicsz_xor_rlx, .-vatomicsz_xor_rlx
	.align	1
	.type	vatomic8_add_get, @function
vatomic8_add_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_get, .-vatomic8_add_get
	.align	1
	.type	vatomic8_add_get_acq, @function
vatomic8_add_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_get_acq, .-vatomic8_add_get_acq
	.align	1
	.type	vatomic8_add_get_rel, @function
vatomic8_add_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_get_rel, .-vatomic8_add_get_rel
	.align	1
	.type	vatomic8_add_get_rlx, @function
vatomic8_add_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_get_rlx, .-vatomic8_add_get_rlx
	.align	1
	.type	vatomic16_add_get, @function
vatomic16_add_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_get, .-vatomic16_add_get
	.align	1
	.type	vatomic16_add_get_acq, @function
vatomic16_add_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_get_acq, .-vatomic16_add_get_acq
	.align	1
	.type	vatomic16_add_get_rel, @function
vatomic16_add_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_get_rel, .-vatomic16_add_get_rel
	.align	1
	.type	vatomic16_add_get_rlx, @function
vatomic16_add_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addw	a0,s0,a0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_get_rlx, .-vatomic16_add_get_rlx
	.align	1
	.type	vatomic32_add_get, @function
vatomic32_add_get:
	mv	a5,a0
	fence iorw,ow
	amoadd.w.aq a0,a1,0(a5)
	addw	a0,a0,a1
	ret
	.size	vatomic32_add_get, .-vatomic32_add_get
	.align	1
	.type	vatomic32_add_get_acq, @function
vatomic32_add_get_acq:
	mv	a5,a0
	amoadd.w.aq a0,a1,0(a5)
	addw	a0,a0,a1
	ret
	.size	vatomic32_add_get_acq, .-vatomic32_add_get_acq
	.align	1
	.type	vatomic32_add_get_rel, @function
vatomic32_add_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoadd.w a0,a1,0(a5)
	addw	a0,a0,a1
	ret
	.size	vatomic32_add_get_rel, .-vatomic32_add_get_rel
	.align	1
	.type	vatomic32_add_get_rlx, @function
vatomic32_add_get_rlx:
	mv	a5,a0
	amoadd.w a0,a1,0(a5)
	addw	a0,a0,a1
	ret
	.size	vatomic32_add_get_rlx, .-vatomic32_add_get_rlx
	.align	1
	.type	vatomic64_add_get, @function
vatomic64_add_get:
	mv	a5,a0
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomic64_add_get, .-vatomic64_add_get
	.align	1
	.type	vatomic64_add_get_acq, @function
vatomic64_add_get_acq:
	mv	a5,a0
	amoadd.d.aq a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomic64_add_get_acq, .-vatomic64_add_get_acq
	.align	1
	.type	vatomic64_add_get_rel, @function
vatomic64_add_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomic64_add_get_rel, .-vatomic64_add_get_rel
	.align	1
	.type	vatomic64_add_get_rlx, @function
vatomic64_add_get_rlx:
	mv	a5,a0
	amoadd.d a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomic64_add_get_rlx, .-vatomic64_add_get_rlx
	.align	1
	.type	vatomicsz_add_get, @function
vatomicsz_add_get:
	mv	a5,a0
	fence iorw,ow
	amoadd.d.aq a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomicsz_add_get, .-vatomicsz_add_get
	.align	1
	.type	vatomicsz_add_get_acq, @function
vatomicsz_add_get_acq:
	mv	a5,a0
	amoadd.d.aq a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomicsz_add_get_acq, .-vatomicsz_add_get_acq
	.align	1
	.type	vatomicsz_add_get_rel, @function
vatomicsz_add_get_rel:
	mv	a5,a0
	fence iorw,ow
	amoadd.d a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomicsz_add_get_rel, .-vatomicsz_add_get_rel
	.align	1
	.type	vatomicsz_add_get_rlx, @function
vatomicsz_add_get_rlx:
	mv	a5,a0
	amoadd.d a0,a1,0(a5)
	add	a0,a1,a0
	ret
	.size	vatomicsz_add_get_rlx, .-vatomicsz_add_get_rlx
	.align	1
	.type	vatomic8_add, @function
vatomic8_add:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add, .-vatomic8_add
	.align	1
	.type	vatomic8_add_rel, @function
vatomic8_add_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_rel, .-vatomic8_add_rel
	.align	1
	.type	vatomic8_add_rlx, @function
vatomic8_add_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_add_rlx, .-vatomic8_add_rlx
	.align	1
	.type	vatomic16_add, @function
vatomic16_add:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add, .-vatomic16_add
	.align	1
	.type	vatomic16_add_rel, @function
vatomic16_add_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_rel, .-vatomic16_add_rel
	.align	1
	.type	vatomic16_add_rlx, @function
vatomic16_add_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_add_rlx, .-vatomic16_add_rlx
	.align	1
	.type	vatomic32_add, @function
vatomic32_add:
	fence iorw,ow
	amoadd.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_add, .-vatomic32_add
	.align	1
	.type	vatomic32_add_rel, @function
vatomic32_add_rel:
	fence iorw,ow
	amoadd.w zero,a1,0(a0)
	ret
	.size	vatomic32_add_rel, .-vatomic32_add_rel
	.align	1
	.type	vatomic32_add_rlx, @function
vatomic32_add_rlx:
	amoadd.w zero,a1,0(a0)
	ret
	.size	vatomic32_add_rlx, .-vatomic32_add_rlx
	.align	1
	.type	vatomic64_add, @function
vatomic64_add:
	fence iorw,ow
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_add, .-vatomic64_add
	.align	1
	.type	vatomic64_add_rel, @function
vatomic64_add_rel:
	fence iorw,ow
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomic64_add_rel, .-vatomic64_add_rel
	.align	1
	.type	vatomic64_add_rlx, @function
vatomic64_add_rlx:
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomic64_add_rlx, .-vatomic64_add_rlx
	.align	1
	.type	vatomicsz_add, @function
vatomicsz_add:
	fence iorw,ow
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_add, .-vatomicsz_add
	.align	1
	.type	vatomicsz_add_rel, @function
vatomicsz_add_rel:
	fence iorw,ow
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomicsz_add_rel, .-vatomicsz_add_rel
	.align	1
	.type	vatomicsz_add_rlx, @function
vatomicsz_add_rlx:
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomicsz_add_rlx, .-vatomicsz_add_rlx
	.align	1
	.type	vatomic8_get_inc, @function
vatomic8_get_inc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_inc, .-vatomic8_get_inc
	.align	1
	.type	vatomic8_get_inc_acq, @function
vatomic8_get_inc_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_inc_acq, .-vatomic8_get_inc_acq
	.align	1
	.type	vatomic8_get_inc_rel, @function
vatomic8_get_inc_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_inc_rel, .-vatomic8_get_inc_rel
	.align	1
	.type	vatomic8_get_inc_rlx, @function
vatomic8_get_inc_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_inc_rlx, .-vatomic8_get_inc_rlx
	.align	1
	.type	vatomic16_get_inc, @function
vatomic16_get_inc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_inc, .-vatomic16_get_inc
	.align	1
	.type	vatomic16_get_inc_acq, @function
vatomic16_get_inc_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_inc_acq, .-vatomic16_get_inc_acq
	.align	1
	.type	vatomic16_get_inc_rel, @function
vatomic16_get_inc_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_inc_rel, .-vatomic16_get_inc_rel
	.align	1
	.type	vatomic16_get_inc_rlx, @function
vatomic16_get_inc_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_inc_rlx, .-vatomic16_get_inc_rlx
	.align	1
	.type	vatomic32_get_inc, @function
vatomic32_get_inc:
	li	a4,1
	fence iorw,ow
	amoadd.w.aq a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_inc, .-vatomic32_get_inc
	.align	1
	.type	vatomic32_get_inc_acq, @function
vatomic32_get_inc_acq:
	li	a4,1
	amoadd.w.aq a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_inc_acq, .-vatomic32_get_inc_acq
	.align	1
	.type	vatomic32_get_inc_rel, @function
vatomic32_get_inc_rel:
	li	a4,1
	fence iorw,ow
	amoadd.w a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_inc_rel, .-vatomic32_get_inc_rel
	.align	1
	.type	vatomic32_get_inc_rlx, @function
vatomic32_get_inc_rlx:
	li	a4,1
	amoadd.w a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_inc_rlx, .-vatomic32_get_inc_rlx
	.align	1
	.type	vatomic64_get_inc, @function
vatomic64_get_inc:
	mv	a5,a0
	li	a4,1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomic64_get_inc, .-vatomic64_get_inc
	.align	1
	.type	vatomic64_get_inc_acq, @function
vatomic64_get_inc_acq:
	mv	a5,a0
	li	a4,1
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomic64_get_inc_acq, .-vatomic64_get_inc_acq
	.align	1
	.type	vatomic64_get_inc_rel, @function
vatomic64_get_inc_rel:
	mv	a5,a0
	li	a4,1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomic64_get_inc_rel, .-vatomic64_get_inc_rel
	.align	1
	.type	vatomic64_get_inc_rlx, @function
vatomic64_get_inc_rlx:
	mv	a5,a0
	li	a4,1
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomic64_get_inc_rlx, .-vatomic64_get_inc_rlx
	.align	1
	.type	vatomicsz_get_inc, @function
vatomicsz_get_inc:
	mv	a5,a0
	li	a4,1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomicsz_get_inc, .-vatomicsz_get_inc
	.align	1
	.type	vatomicsz_get_inc_acq, @function
vatomicsz_get_inc_acq:
	mv	a5,a0
	li	a4,1
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomicsz_get_inc_acq, .-vatomicsz_get_inc_acq
	.align	1
	.type	vatomicsz_get_inc_rel, @function
vatomicsz_get_inc_rel:
	mv	a5,a0
	li	a4,1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomicsz_get_inc_rel, .-vatomicsz_get_inc_rel
	.align	1
	.type	vatomicsz_get_inc_rlx, @function
vatomicsz_get_inc_rlx:
	mv	a5,a0
	li	a4,1
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomicsz_get_inc_rlx, .-vatomicsz_get_inc_rlx
	.align	1
	.type	vatomic8_inc_get, @function
vatomic8_inc_get:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_get, .-vatomic8_inc_get
	.align	1
	.type	vatomic8_inc_get_acq, @function
vatomic8_inc_get_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_get_acq, .-vatomic8_inc_get_acq
	.align	1
	.type	vatomic8_inc_get_rel, @function
vatomic8_inc_get_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_get_rel, .-vatomic8_inc_get_rel
	.align	1
	.type	vatomic8_inc_get_rlx, @function
vatomic8_inc_get_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_get_rlx, .-vatomic8_inc_get_rlx
	.align	1
	.type	vatomic16_inc_get, @function
vatomic16_inc_get:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_get, .-vatomic16_inc_get
	.align	1
	.type	vatomic16_inc_get_acq, @function
vatomic16_inc_get_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_get_acq, .-vatomic16_inc_get_acq
	.align	1
	.type	vatomic16_inc_get_rel, @function
vatomic16_inc_get_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_get_rel, .-vatomic16_inc_get_rel
	.align	1
	.type	vatomic16_inc_get_rlx, @function
vatomic16_inc_get_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_get_rlx, .-vatomic16_inc_get_rlx
	.align	1
	.type	vatomic32_inc_get, @function
vatomic32_inc_get:
	li	a4,1
	fence iorw,ow
	amoadd.w.aq a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.size	vatomic32_inc_get, .-vatomic32_inc_get
	.align	1
	.type	vatomic32_inc_get_acq, @function
vatomic32_inc_get_acq:
	li	a4,1
	amoadd.w.aq a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.size	vatomic32_inc_get_acq, .-vatomic32_inc_get_acq
	.align	1
	.type	vatomic32_inc_get_rel, @function
vatomic32_inc_get_rel:
	li	a4,1
	fence iorw,ow
	amoadd.w a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.size	vatomic32_inc_get_rel, .-vatomic32_inc_get_rel
	.align	1
	.type	vatomic32_inc_get_rlx, @function
vatomic32_inc_get_rlx:
	li	a4,1
	amoadd.w a5,a4,0(a0)
	addiw	a0,a5,1
	ret
	.size	vatomic32_inc_get_rlx, .-vatomic32_inc_get_rlx
	.align	1
	.type	vatomic64_inc_get, @function
vatomic64_inc_get:
	li	a4,1
	fence iorw,ow
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomic64_inc_get, .-vatomic64_inc_get
	.align	1
	.type	vatomic64_inc_get_acq, @function
vatomic64_inc_get_acq:
	li	a4,1
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomic64_inc_get_acq, .-vatomic64_inc_get_acq
	.align	1
	.type	vatomic64_inc_get_rel, @function
vatomic64_inc_get_rel:
	li	a4,1
	fence iorw,ow
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomic64_inc_get_rel, .-vatomic64_inc_get_rel
	.align	1
	.type	vatomic64_inc_get_rlx, @function
vatomic64_inc_get_rlx:
	li	a4,1
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomic64_inc_get_rlx, .-vatomic64_inc_get_rlx
	.align	1
	.type	vatomicsz_inc_get, @function
vatomicsz_inc_get:
	li	a4,1
	fence iorw,ow
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomicsz_inc_get, .-vatomicsz_inc_get
	.align	1
	.type	vatomicsz_inc_get_acq, @function
vatomicsz_inc_get_acq:
	li	a4,1
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomicsz_inc_get_acq, .-vatomicsz_inc_get_acq
	.align	1
	.type	vatomicsz_inc_get_rel, @function
vatomicsz_inc_get_rel:
	li	a4,1
	fence iorw,ow
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomicsz_inc_get_rel, .-vatomicsz_inc_get_rel
	.align	1
	.type	vatomicsz_inc_get_rlx, @function
vatomicsz_inc_get_rlx:
	li	a4,1
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,1
	ret
	.size	vatomicsz_inc_get_rlx, .-vatomicsz_inc_get_rlx
	.align	1
	.type	vatomic8_inc, @function
vatomic8_inc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc, .-vatomic8_inc
	.align	1
	.type	vatomic8_inc_acq, @function
vatomic8_inc_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_acq, .-vatomic8_inc_acq
	.align	1
	.type	vatomic8_inc_rel, @function
vatomic8_inc_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_rel, .-vatomic8_inc_rel
	.align	1
	.type	vatomic8_inc_rlx, @function
vatomic8_inc_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_inc_rlx, .-vatomic8_inc_rlx
	.align	1
	.type	vatomic16_inc, @function
vatomic16_inc:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc, .-vatomic16_inc
	.align	1
	.type	vatomic16_inc_acq, @function
vatomic16_inc_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_acq, .-vatomic16_inc_acq
	.align	1
	.type	vatomic16_inc_rel, @function
vatomic16_inc_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_rel, .-vatomic16_inc_rel
	.align	1
	.type	vatomic16_inc_rlx, @function
vatomic16_inc_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_add_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_inc_rlx, .-vatomic16_inc_rlx
	.align	1
	.type	vatomic32_inc, @function
vatomic32_inc:
	li	a5,1
	fence iorw,ow
	amoadd.w.aq zero,a5,0(a0)
	ret
	.size	vatomic32_inc, .-vatomic32_inc
	.align	1
	.type	vatomic32_inc_acq, @function
vatomic32_inc_acq:
	li	a5,1
	amoadd.w.aq zero,a5,0(a0)
	ret
	.size	vatomic32_inc_acq, .-vatomic32_inc_acq
	.align	1
	.type	vatomic32_inc_rel, @function
vatomic32_inc_rel:
	li	a5,1
	fence iorw,ow
	amoadd.w zero,a5,0(a0)
	ret
	.size	vatomic32_inc_rel, .-vatomic32_inc_rel
	.align	1
	.type	vatomic32_inc_rlx, @function
vatomic32_inc_rlx:
	li	a5,1
	amoadd.w zero,a5,0(a0)
	ret
	.size	vatomic32_inc_rlx, .-vatomic32_inc_rlx
	.align	1
	.type	vatomic64_inc, @function
vatomic64_inc:
	li	a5,1
	fence iorw,ow
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomic64_inc, .-vatomic64_inc
	.align	1
	.type	vatomic64_inc_acq, @function
vatomic64_inc_acq:
	li	a5,1
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomic64_inc_acq, .-vatomic64_inc_acq
	.align	1
	.type	vatomic64_inc_rel, @function
vatomic64_inc_rel:
	li	a5,1
	fence iorw,ow
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomic64_inc_rel, .-vatomic64_inc_rel
	.align	1
	.type	vatomic64_inc_rlx, @function
vatomic64_inc_rlx:
	li	a5,1
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomic64_inc_rlx, .-vatomic64_inc_rlx
	.align	1
	.type	vatomicsz_inc, @function
vatomicsz_inc:
	li	a5,1
	fence iorw,ow
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomicsz_inc, .-vatomicsz_inc
	.align	1
	.type	vatomicsz_inc_acq, @function
vatomicsz_inc_acq:
	li	a5,1
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomicsz_inc_acq, .-vatomicsz_inc_acq
	.align	1
	.type	vatomicsz_inc_rel, @function
vatomicsz_inc_rel:
	li	a5,1
	fence iorw,ow
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomicsz_inc_rel, .-vatomicsz_inc_rel
	.align	1
	.type	vatomicsz_inc_rlx, @function
vatomicsz_inc_rlx:
	li	a5,1
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomicsz_inc_rlx, .-vatomicsz_inc_rlx
	.align	1
	.type	vatomic8_sub_get, @function
vatomic8_sub_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_get, .-vatomic8_sub_get
	.align	1
	.type	vatomic8_sub_get_acq, @function
vatomic8_sub_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_get_acq, .-vatomic8_sub_get_acq
	.align	1
	.type	vatomic8_sub_get_rel, @function
vatomic8_sub_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_get_rel, .-vatomic8_sub_get_rel
	.align	1
	.type	vatomic8_sub_get_rlx, @function
vatomic8_sub_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_get_rlx, .-vatomic8_sub_get_rlx
	.align	1
	.type	vatomic16_sub_get, @function
vatomic16_sub_get:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,5
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_get, .-vatomic16_sub_get
	.align	1
	.type	vatomic16_sub_get_acq, @function
vatomic16_sub_get_acq:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,2
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_get_acq, .-vatomic16_sub_get_acq
	.align	1
	.type	vatomic16_sub_get_rel, @function
vatomic16_sub_get_rel:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,3
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_get_rel, .-vatomic16_sub_get_rel
	.align	1
	.type	vatomic16_sub_get_rlx, @function
vatomic16_sub_get_rlx:
	addi	sp,sp,-16
	sd	s0,0(sp)
	sd	ra,8(sp)
	mv	s0,a1
	li	a2,0
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	subw	a0,a0,s0
	ld	s0,0(sp)
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_get_rlx, .-vatomic16_sub_get_rlx
	.align	1
	.type	vatomic32_sub_get, @function
vatomic32_sub_get:
	mv	a5,a0
	negw	a4,a1
	fence iorw,ow
	amoadd.w.aq a0,a4,0(a5)
	subw	a0,a0,a1
	ret
	.size	vatomic32_sub_get, .-vatomic32_sub_get
	.align	1
	.type	vatomic32_sub_get_acq, @function
vatomic32_sub_get_acq:
	mv	a5,a0
	negw	a4,a1
	amoadd.w.aq a0,a4,0(a5)
	subw	a0,a0,a1
	ret
	.size	vatomic32_sub_get_acq, .-vatomic32_sub_get_acq
	.align	1
	.type	vatomic32_sub_get_rel, @function
vatomic32_sub_get_rel:
	mv	a5,a0
	negw	a4,a1
	fence iorw,ow
	amoadd.w a0,a4,0(a5)
	subw	a0,a0,a1
	ret
	.size	vatomic32_sub_get_rel, .-vatomic32_sub_get_rel
	.align	1
	.type	vatomic32_sub_get_rlx, @function
vatomic32_sub_get_rlx:
	mv	a5,a0
	negw	a4,a1
	amoadd.w a0,a4,0(a5)
	subw	a0,a0,a1
	ret
	.size	vatomic32_sub_get_rlx, .-vatomic32_sub_get_rlx
	.align	1
	.type	vatomic64_sub_get, @function
vatomic64_sub_get:
	mv	a5,a0
	neg	a4,a1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomic64_sub_get, .-vatomic64_sub_get
	.align	1
	.type	vatomic64_sub_get_acq, @function
vatomic64_sub_get_acq:
	mv	a5,a0
	neg	a4,a1
	amoadd.d.aq a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomic64_sub_get_acq, .-vatomic64_sub_get_acq
	.align	1
	.type	vatomic64_sub_get_rel, @function
vatomic64_sub_get_rel:
	mv	a5,a0
	neg	a4,a1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomic64_sub_get_rel, .-vatomic64_sub_get_rel
	.align	1
	.type	vatomic64_sub_get_rlx, @function
vatomic64_sub_get_rlx:
	mv	a5,a0
	neg	a4,a1
	amoadd.d a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomic64_sub_get_rlx, .-vatomic64_sub_get_rlx
	.align	1
	.type	vatomicsz_sub_get, @function
vatomicsz_sub_get:
	mv	a5,a0
	neg	a4,a1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomicsz_sub_get, .-vatomicsz_sub_get
	.align	1
	.type	vatomicsz_sub_get_acq, @function
vatomicsz_sub_get_acq:
	mv	a5,a0
	neg	a4,a1
	amoadd.d.aq a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomicsz_sub_get_acq, .-vatomicsz_sub_get_acq
	.align	1
	.type	vatomicsz_sub_get_rel, @function
vatomicsz_sub_get_rel:
	mv	a5,a0
	neg	a4,a1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomicsz_sub_get_rel, .-vatomicsz_sub_get_rel
	.align	1
	.type	vatomicsz_sub_get_rlx, @function
vatomicsz_sub_get_rlx:
	mv	a5,a0
	neg	a4,a1
	amoadd.d a0,a4,0(a5)
	sub	a0,a0,a1
	ret
	.size	vatomicsz_sub_get_rlx, .-vatomicsz_sub_get_rlx
	.align	1
	.type	vatomic8_sub, @function
vatomic8_sub:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub, .-vatomic8_sub
	.align	1
	.type	vatomic8_sub_acq, @function
vatomic8_sub_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_acq, .-vatomic8_sub_acq
	.align	1
	.type	vatomic8_sub_rel, @function
vatomic8_sub_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_rel, .-vatomic8_sub_rel
	.align	1
	.type	vatomic8_sub_rlx, @function
vatomic8_sub_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_sub_rlx, .-vatomic8_sub_rlx
	.align	1
	.type	vatomic16_sub, @function
vatomic16_sub:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub, .-vatomic16_sub
	.align	1
	.type	vatomic16_sub_acq, @function
vatomic16_sub_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_acq, .-vatomic16_sub_acq
	.align	1
	.type	vatomic16_sub_rel, @function
vatomic16_sub_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_rel, .-vatomic16_sub_rel
	.align	1
	.type	vatomic16_sub_rlx, @function
vatomic16_sub_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_sub_rlx, .-vatomic16_sub_rlx
	.align	1
	.type	vatomic32_sub, @function
vatomic32_sub:
	negw	a1,a1
	fence iorw,ow
	amoadd.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_sub, .-vatomic32_sub
	.align	1
	.type	vatomic32_sub_acq, @function
vatomic32_sub_acq:
	negw	a1,a1
	amoadd.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_sub_acq, .-vatomic32_sub_acq
	.align	1
	.type	vatomic32_sub_rel, @function
vatomic32_sub_rel:
	negw	a1,a1
	fence iorw,ow
	amoadd.w zero,a1,0(a0)
	ret
	.size	vatomic32_sub_rel, .-vatomic32_sub_rel
	.align	1
	.type	vatomic32_sub_rlx, @function
vatomic32_sub_rlx:
	negw	a1,a1
	amoadd.w zero,a1,0(a0)
	ret
	.size	vatomic32_sub_rlx, .-vatomic32_sub_rlx
	.align	1
	.type	vatomic64_sub, @function
vatomic64_sub:
	neg	a1,a1
	fence iorw,ow
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_sub, .-vatomic64_sub
	.align	1
	.type	vatomic64_sub_acq, @function
vatomic64_sub_acq:
	neg	a1,a1
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_sub_acq, .-vatomic64_sub_acq
	.align	1
	.type	vatomic64_sub_rel, @function
vatomic64_sub_rel:
	neg	a1,a1
	fence iorw,ow
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomic64_sub_rel, .-vatomic64_sub_rel
	.align	1
	.type	vatomic64_sub_rlx, @function
vatomic64_sub_rlx:
	neg	a1,a1
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomic64_sub_rlx, .-vatomic64_sub_rlx
	.align	1
	.type	vatomicsz_sub, @function
vatomicsz_sub:
	neg	a1,a1
	fence iorw,ow
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_sub, .-vatomicsz_sub
	.align	1
	.type	vatomicsz_sub_acq, @function
vatomicsz_sub_acq:
	neg	a1,a1
	amoadd.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_sub_acq, .-vatomicsz_sub_acq
	.align	1
	.type	vatomicsz_sub_rel, @function
vatomicsz_sub_rel:
	neg	a1,a1
	fence iorw,ow
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomicsz_sub_rel, .-vatomicsz_sub_rel
	.align	1
	.type	vatomicsz_sub_rlx, @function
vatomicsz_sub_rlx:
	neg	a1,a1
	amoadd.d zero,a1,0(a0)
	ret
	.size	vatomicsz_sub_rlx, .-vatomicsz_sub_rlx
	.align	1
	.type	vatomic8_get_dec, @function
vatomic8_get_dec:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_dec, .-vatomic8_get_dec
	.align	1
	.type	vatomic8_get_dec_acq, @function
vatomic8_get_dec_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_dec_acq, .-vatomic8_get_dec_acq
	.align	1
	.type	vatomic8_get_dec_rel, @function
vatomic8_get_dec_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_dec_rel, .-vatomic8_get_dec_rel
	.align	1
	.type	vatomic8_get_dec_rlx, @function
vatomic8_get_dec_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_get_dec_rlx, .-vatomic8_get_dec_rlx
	.align	1
	.type	vatomic16_get_dec, @function
vatomic16_get_dec:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_dec, .-vatomic16_get_dec
	.align	1
	.type	vatomic16_get_dec_acq, @function
vatomic16_get_dec_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_dec_acq, .-vatomic16_get_dec_acq
	.align	1
	.type	vatomic16_get_dec_rel, @function
vatomic16_get_dec_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_dec_rel, .-vatomic16_get_dec_rel
	.align	1
	.type	vatomic16_get_dec_rlx, @function
vatomic16_get_dec_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_get_dec_rlx, .-vatomic16_get_dec_rlx
	.align	1
	.type	vatomic32_get_dec, @function
vatomic32_get_dec:
	li	a4,-1
	fence iorw,ow
	amoadd.w.aq a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_dec, .-vatomic32_get_dec
	.align	1
	.type	vatomic32_get_dec_acq, @function
vatomic32_get_dec_acq:
	li	a4,-1
	amoadd.w.aq a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_dec_acq, .-vatomic32_get_dec_acq
	.align	1
	.type	vatomic32_get_dec_rel, @function
vatomic32_get_dec_rel:
	li	a4,-1
	fence iorw,ow
	amoadd.w a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_dec_rel, .-vatomic32_get_dec_rel
	.align	1
	.type	vatomic32_get_dec_rlx, @function
vatomic32_get_dec_rlx:
	li	a4,-1
	amoadd.w a5,a4,0(a0)
	sext.w	a0,a5
	ret
	.size	vatomic32_get_dec_rlx, .-vatomic32_get_dec_rlx
	.align	1
	.type	vatomic64_get_dec, @function
vatomic64_get_dec:
	mv	a5,a0
	li	a4,-1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomic64_get_dec, .-vatomic64_get_dec
	.align	1
	.type	vatomic64_get_dec_acq, @function
vatomic64_get_dec_acq:
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomic64_get_dec_acq, .-vatomic64_get_dec_acq
	.align	1
	.type	vatomic64_get_dec_rel, @function
vatomic64_get_dec_rel:
	mv	a5,a0
	li	a4,-1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomic64_get_dec_rel, .-vatomic64_get_dec_rel
	.align	1
	.type	vatomic64_get_dec_rlx, @function
vatomic64_get_dec_rlx:
	mv	a5,a0
	li	a4,-1
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomic64_get_dec_rlx, .-vatomic64_get_dec_rlx
	.align	1
	.type	vatomicsz_get_dec, @function
vatomicsz_get_dec:
	mv	a5,a0
	li	a4,-1
	fence iorw,ow
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomicsz_get_dec, .-vatomicsz_get_dec
	.align	1
	.type	vatomicsz_get_dec_acq, @function
vatomicsz_get_dec_acq:
	mv	a5,a0
	li	a4,-1
	amoadd.d.aq a0,a4,0(a5)
	ret
	.size	vatomicsz_get_dec_acq, .-vatomicsz_get_dec_acq
	.align	1
	.type	vatomicsz_get_dec_rel, @function
vatomicsz_get_dec_rel:
	mv	a5,a0
	li	a4,-1
	fence iorw,ow
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomicsz_get_dec_rel, .-vatomicsz_get_dec_rel
	.align	1
	.type	vatomicsz_get_dec_rlx, @function
vatomicsz_get_dec_rlx:
	mv	a5,a0
	li	a4,-1
	amoadd.d a0,a4,0(a5)
	ret
	.size	vatomicsz_get_dec_rlx, .-vatomicsz_get_dec_rlx
	.align	1
	.type	vatomic8_dec_get, @function
vatomic8_dec_get:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_get, .-vatomic8_dec_get
	.align	1
	.type	vatomic8_dec_get_acq, @function
vatomic8_dec_get_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_get_acq, .-vatomic8_dec_get_acq
	.align	1
	.type	vatomic8_dec_get_rel, @function
vatomic8_dec_get_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_get_rel, .-vatomic8_dec_get_rel
	.align	1
	.type	vatomic8_dec_get_rlx, @function
vatomic8_dec_get_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	andi	a0,a0,0xff
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_get_rlx, .-vatomic8_dec_get_rlx
	.align	1
	.type	vatomic16_dec_get, @function
vatomic16_dec_get:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_get, .-vatomic16_dec_get
	.align	1
	.type	vatomic16_dec_get_acq, @function
vatomic16_dec_get_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_get_acq, .-vatomic16_dec_get_acq
	.align	1
	.type	vatomic16_dec_get_rel, @function
vatomic16_dec_get_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_get_rel, .-vatomic16_dec_get_rel
	.align	1
	.type	vatomic16_dec_get_rlx, @function
vatomic16_dec_get_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addiw	a0,a0,-1
	slli	a0,a0,48
	srli	a0,a0,48
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_get_rlx, .-vatomic16_dec_get_rlx
	.align	1
	.type	vatomic32_dec_get, @function
vatomic32_dec_get:
	li	a4,-1
	fence iorw,ow
	amoadd.w.aq a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.size	vatomic32_dec_get, .-vatomic32_dec_get
	.align	1
	.type	vatomic32_dec_get_acq, @function
vatomic32_dec_get_acq:
	li	a4,-1
	amoadd.w.aq a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.size	vatomic32_dec_get_acq, .-vatomic32_dec_get_acq
	.align	1
	.type	vatomic32_dec_get_rel, @function
vatomic32_dec_get_rel:
	li	a4,-1
	fence iorw,ow
	amoadd.w a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.size	vatomic32_dec_get_rel, .-vatomic32_dec_get_rel
	.align	1
	.type	vatomic32_dec_get_rlx, @function
vatomic32_dec_get_rlx:
	li	a4,-1
	amoadd.w a5,a4,0(a0)
	addiw	a0,a5,-1
	ret
	.size	vatomic32_dec_get_rlx, .-vatomic32_dec_get_rlx
	.align	1
	.type	vatomic64_dec_get, @function
vatomic64_dec_get:
	li	a4,-1
	fence iorw,ow
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomic64_dec_get, .-vatomic64_dec_get
	.align	1
	.type	vatomic64_dec_get_acq, @function
vatomic64_dec_get_acq:
	li	a4,-1
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomic64_dec_get_acq, .-vatomic64_dec_get_acq
	.align	1
	.type	vatomic64_dec_get_rel, @function
vatomic64_dec_get_rel:
	li	a4,-1
	fence iorw,ow
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomic64_dec_get_rel, .-vatomic64_dec_get_rel
	.align	1
	.type	vatomic64_dec_get_rlx, @function
vatomic64_dec_get_rlx:
	li	a4,-1
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomic64_dec_get_rlx, .-vatomic64_dec_get_rlx
	.align	1
	.type	vatomicsz_dec_get, @function
vatomicsz_dec_get:
	li	a4,-1
	fence iorw,ow
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomicsz_dec_get, .-vatomicsz_dec_get
	.align	1
	.type	vatomicsz_dec_get_acq, @function
vatomicsz_dec_get_acq:
	li	a4,-1
	amoadd.d.aq a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomicsz_dec_get_acq, .-vatomicsz_dec_get_acq
	.align	1
	.type	vatomicsz_dec_get_rel, @function
vatomicsz_dec_get_rel:
	li	a4,-1
	fence iorw,ow
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomicsz_dec_get_rel, .-vatomicsz_dec_get_rel
	.align	1
	.type	vatomicsz_dec_get_rlx, @function
vatomicsz_dec_get_rlx:
	li	a4,-1
	amoadd.d a5,a4,0(a0)
	addi	a0,a5,-1
	ret
	.size	vatomicsz_dec_get_rlx, .-vatomicsz_dec_get_rlx
	.align	1
	.type	vatomic8_dec, @function
vatomic8_dec:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec, .-vatomic8_dec
	.align	1
	.type	vatomic8_dec_acq, @function
vatomic8_dec_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_acq, .-vatomic8_dec_acq
	.align	1
	.type	vatomic8_dec_rel, @function
vatomic8_dec_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_rel, .-vatomic8_dec_rel
	.align	1
	.type	vatomic8_dec_rlx, @function
vatomic8_dec_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_1@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic8_dec_rlx, .-vatomic8_dec_rlx
	.align	1
	.type	vatomic16_dec, @function
vatomic16_dec:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,5
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec, .-vatomic16_dec
	.align	1
	.type	vatomic16_dec_acq, @function
vatomic16_dec_acq:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,2
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_acq, .-vatomic16_dec_acq
	.align	1
	.type	vatomic16_dec_rel, @function
vatomic16_dec_rel:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,3
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_rel, .-vatomic16_dec_rel
	.align	1
	.type	vatomic16_dec_rlx, @function
vatomic16_dec_rlx:
	addi	sp,sp,-16
	sd	ra,8(sp)
	li	a2,0
	li	a1,1
	call	__atomic_fetch_sub_2@plt
	ld	ra,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	vatomic16_dec_rlx, .-vatomic16_dec_rlx
	.align	1
	.type	vatomic32_dec, @function
vatomic32_dec:
	li	a5,-1
	fence iorw,ow
	amoadd.w.aq zero,a5,0(a0)
	ret
	.size	vatomic32_dec, .-vatomic32_dec
	.align	1
	.type	vatomic32_dec_acq, @function
vatomic32_dec_acq:
	li	a5,-1
	amoadd.w.aq zero,a5,0(a0)
	ret
	.size	vatomic32_dec_acq, .-vatomic32_dec_acq
	.align	1
	.type	vatomic32_dec_rel, @function
vatomic32_dec_rel:
	li	a5,-1
	fence iorw,ow
	amoadd.w zero,a5,0(a0)
	ret
	.size	vatomic32_dec_rel, .-vatomic32_dec_rel
	.align	1
	.type	vatomic32_dec_rlx, @function
vatomic32_dec_rlx:
	li	a5,-1
	amoadd.w zero,a5,0(a0)
	ret
	.size	vatomic32_dec_rlx, .-vatomic32_dec_rlx
	.align	1
	.type	vatomic64_dec, @function
vatomic64_dec:
	li	a5,-1
	fence iorw,ow
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomic64_dec, .-vatomic64_dec
	.align	1
	.type	vatomic64_dec_acq, @function
vatomic64_dec_acq:
	li	a5,-1
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomic64_dec_acq, .-vatomic64_dec_acq
	.align	1
	.type	vatomic64_dec_rel, @function
vatomic64_dec_rel:
	li	a5,-1
	fence iorw,ow
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomic64_dec_rel, .-vatomic64_dec_rel
	.align	1
	.type	vatomic64_dec_rlx, @function
vatomic64_dec_rlx:
	li	a5,-1
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomic64_dec_rlx, .-vatomic64_dec_rlx
	.align	1
	.type	vatomicsz_dec, @function
vatomicsz_dec:
	li	a5,-1
	fence iorw,ow
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomicsz_dec, .-vatomicsz_dec
	.align	1
	.type	vatomicsz_dec_acq, @function
vatomicsz_dec_acq:
	li	a5,-1
	amoadd.d.aq zero,a5,0(a0)
	ret
	.size	vatomicsz_dec_acq, .-vatomicsz_dec_acq
	.align	1
	.type	vatomicsz_dec_rel, @function
vatomicsz_dec_rel:
	li	a5,-1
	fence iorw,ow
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomicsz_dec_rel, .-vatomicsz_dec_rel
	.align	1
	.type	vatomicsz_dec_rlx, @function
vatomicsz_dec_rlx:
	li	a5,-1
	amoadd.d zero,a5,0(a0)
	ret
	.size	vatomicsz_dec_rlx, .-vatomicsz_dec_rlx
	.align	1
	.type	vatomic8_init, @function
vatomic8_init:
	fence	iorw,iorw
	sb	a1,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic8_init, .-vatomic8_init
	.align	1
	.type	vatomic16_init, @function
vatomic16_init:
	fence	iorw,iorw
	sh	a1,0(a0)
	fence	iorw,iorw
	ret
	.size	vatomic16_init, .-vatomic16_init
	.align	1
	.type	vatomic32_init, @function
vatomic32_init:
	fence iorw,ow
	amoswap.w.aq zero,a1,0(a0)
	ret
	.size	vatomic32_init, .-vatomic32_init
	.align	1
	.type	vatomic64_init, @function
vatomic64_init:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomic64_init, .-vatomic64_init
	.align	1
	.type	vatomicsz_init, @function
vatomicsz_init:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomicsz_init, .-vatomicsz_init
	.align	1
	.type	vatomicptr_init, @function
vatomicptr_init:
	fence iorw,ow
	amoswap.d.aq zero,a1,0(a0)
	ret
	.size	vatomicptr_init, .-vatomicptr_init
	.align	1
	.type	vatomic32_await_neq, @function
vatomic32_await_neq:
	mv	a5,a0
.L1056:
	fence	iorw,iorw
	lw	a0,0(a5)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a1,a0,.L1056
	ret
	.size	vatomic32_await_neq, .-vatomic32_await_neq
	.align	1
	.type	vatomic32_await_neq_acq, @function
vatomic32_await_neq_acq:
	mv	a5,a0
.L1059:
	lw	a0,0(a5)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a1,a0,.L1059
	ret
	.size	vatomic32_await_neq_acq, .-vatomic32_await_neq_acq
	.align	1
	.type	vatomic32_await_neq_rlx, @function
vatomic32_await_neq_rlx:
	mv	a5,a0
.L1062:
	lw	a0,0(a5)
	sext.w	a0,a0
	beq	a1,a0,.L1062
	ret
	.size	vatomic32_await_neq_rlx, .-vatomic32_await_neq_rlx
	.align	1
	.type	vatomic64_await_neq, @function
vatomic64_await_neq:
	mv	a5,a0
.L1065:
	fence	iorw,iorw
	ld	a0,0(a5)
	fence	iorw,iorw
	beq	a1,a0,.L1065
	ret
	.size	vatomic64_await_neq, .-vatomic64_await_neq
	.align	1
	.type	vatomic64_await_neq_acq, @function
vatomic64_await_neq_acq:
	mv	a5,a0
.L1068:
	ld	a0,0(a5)
	fence	iorw,iorw
	beq	a1,a0,.L1068
	ret
	.size	vatomic64_await_neq_acq, .-vatomic64_await_neq_acq
	.align	1
	.type	vatomic64_await_neq_rlx, @function
vatomic64_await_neq_rlx:
	mv	a5,a0
.L1071:
	ld	a0,0(a5)
	beq	a1,a0,.L1071
	ret
	.size	vatomic64_await_neq_rlx, .-vatomic64_await_neq_rlx
	.align	1
	.type	vatomicptr_await_neq, @function
vatomicptr_await_neq:
	mv	a5,a0
.L1074:
	fence	iorw,iorw
	ld	a0,0(a5)
	fence	iorw,iorw
	beq	a1,a0,.L1074
	ret
	.size	vatomicptr_await_neq, .-vatomicptr_await_neq
	.align	1
	.type	vatomicptr_await_neq_acq, @function
vatomicptr_await_neq_acq:
	mv	a5,a0
.L1077:
	ld	a0,0(a5)
	fence	iorw,iorw
	beq	a1,a0,.L1077
	ret
	.size	vatomicptr_await_neq_acq, .-vatomicptr_await_neq_acq
	.align	1
	.type	vatomicptr_await_neq_rlx, @function
vatomicptr_await_neq_rlx:
	mv	a5,a0
.L1080:
	ld	a0,0(a5)
	beq	a1,a0,.L1080
	ret
	.size	vatomicptr_await_neq_rlx, .-vatomicptr_await_neq_rlx
	.align	1
	.type	vatomic32_await_eq, @function
vatomic32_await_eq:
	mv	a4,a0
	mv	a5,a1
.L1083:
	fence	iorw,iorw
	sext.w	a0,a5
	lw	a5,0(a4)
	fence	iorw,iorw
	sext.w	a5,a5
	bne	a1,a5,.L1083
	ret
	.size	vatomic32_await_eq, .-vatomic32_await_eq
	.align	1
	.type	vatomic32_await_eq_acq, @function
vatomic32_await_eq_acq:
	mv	a3,a0
	mv	a5,a1
.L1086:
	lw	a4,0(a3)
	sext.w	a0,a5
	fence	iorw,iorw
	sext.w	a5,a4
	bne	a1,a5,.L1086
	ret
	.size	vatomic32_await_eq_acq, .-vatomic32_await_eq_acq
	.align	1
	.type	vatomic32_await_eq_rlx, @function
vatomic32_await_eq_rlx:
	mv	a3,a0
	mv	a5,a1
.L1089:
	lw	a4,0(a3)
	sext.w	a0,a5
	sext.w	a5,a4
	bne	a1,a5,.L1089
	ret
	.size	vatomic32_await_eq_rlx, .-vatomic32_await_eq_rlx
	.align	1
	.type	vatomic64_await_eq, @function
vatomic64_await_eq:
	mv	a4,a0
	mv	a5,a1
.L1092:
	fence	iorw,iorw
	mv	a0,a5
	ld	a5,0(a4)
	fence	iorw,iorw
	bne	a1,a5,.L1092
	ret
	.size	vatomic64_await_eq, .-vatomic64_await_eq
	.align	1
	.type	vatomic64_await_eq_acq, @function
vatomic64_await_eq_acq:
	mv	a4,a0
	mv	a5,a1
.L1095:
	mv	a0,a5
	ld	a5,0(a4)
	fence	iorw,iorw
	bne	a1,a5,.L1095
	ret
	.size	vatomic64_await_eq_acq, .-vatomic64_await_eq_acq
	.align	1
	.type	vatomic64_await_eq_rlx, @function
vatomic64_await_eq_rlx:
	mv	a4,a0
	mv	a5,a1
.L1098:
	mv	a0,a5
	ld	a5,0(a4)
	bne	a1,a5,.L1098
	ret
	.size	vatomic64_await_eq_rlx, .-vatomic64_await_eq_rlx
	.align	1
	.type	vatomicptr_await_eq, @function
vatomicptr_await_eq:
	mv	a3,a0
	mv	a5,a1
.L1101:
	fence	iorw,iorw
	ld	a4,0(a3)
	fence	iorw,iorw
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L1101
	ret
	.size	vatomicptr_await_eq, .-vatomicptr_await_eq
	.align	1
	.type	vatomicptr_await_eq_acq, @function
vatomicptr_await_eq_acq:
	mv	a3,a0
	mv	a5,a1
.L1104:
	ld	a4,0(a3)
	fence	iorw,iorw
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L1104
	ret
	.size	vatomicptr_await_eq_acq, .-vatomicptr_await_eq_acq
	.align	1
	.type	vatomicptr_await_eq_rlx, @function
vatomicptr_await_eq_rlx:
	mv	a3,a0
	mv	a5,a1
.L1107:
	ld	a4,0(a3)
	mv	a0,a5
	mv	a5,a4
	bne	a1,a4,.L1107
	ret
	.size	vatomicptr_await_eq_rlx, .-vatomicptr_await_eq_rlx
	.align	1
	.type	vatomic32_await_le, @function
vatomic32_await_le:
	mv	a4,a0
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bgeu	a1,a5,.L1116
.L1111:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1111
	bgeu	a1,a0,.L1117
	mv	a5,a0
	j	.L1111
.L1117:
	ret
.L1116:
	mv	a0,a5
	ret
	.size	vatomic32_await_le, .-vatomic32_await_le
	.align	1
	.type	vatomic32_await_le_acq, @function
vatomic32_await_le_acq:
	mv	a4,a0
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bgeu	a1,a5,.L1125
.L1120:
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1120
	bgeu	a1,a0,.L1126
	mv	a5,a0
	j	.L1120
.L1126:
	ret
.L1125:
	mv	a0,a5
	ret
	.size	vatomic32_await_le_acq, .-vatomic32_await_le_acq
	.align	1
	.type	vatomic32_await_le_rlx, @function
vatomic32_await_le_rlx:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bgeu	a1,a5,.L1134
.L1129:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1129
	bgeu	a1,a0,.L1135
	mv	a5,a0
	j	.L1129
.L1135:
	ret
.L1134:
	mv	a0,a5
	ret
	.size	vatomic32_await_le_rlx, .-vatomic32_await_le_rlx
	.align	1
	.type	vatomic32_await_lt, @function
vatomic32_await_lt:
	mv	a4,a0
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bgtu	a1,a5,.L1143
.L1138:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1138
	bgtu	a1,a0,.L1144
	mv	a5,a0
	j	.L1138
.L1144:
	ret
.L1143:
	mv	a0,a5
	ret
	.size	vatomic32_await_lt, .-vatomic32_await_lt
	.align	1
	.type	vatomic32_await_lt_acq, @function
vatomic32_await_lt_acq:
	mv	a4,a0
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bgtu	a1,a5,.L1152
.L1147:
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1147
	bgtu	a1,a0,.L1153
	mv	a5,a0
	j	.L1147
.L1153:
	ret
.L1152:
	mv	a0,a5
	ret
	.size	vatomic32_await_lt_acq, .-vatomic32_await_lt_acq
	.align	1
	.type	vatomic32_await_lt_rlx, @function
vatomic32_await_lt_rlx:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bgtu	a1,a5,.L1161
.L1156:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1156
	bgtu	a1,a0,.L1162
	mv	a5,a0
	j	.L1156
.L1162:
	ret
.L1161:
	mv	a0,a5
	ret
	.size	vatomic32_await_lt_rlx, .-vatomic32_await_lt_rlx
	.align	1
	.type	vatomic32_await_ge, @function
vatomic32_await_ge:
	mv	a4,a0
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bleu	a1,a5,.L1170
.L1165:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1165
	bleu	a1,a0,.L1171
	mv	a5,a0
	j	.L1165
.L1171:
	ret
.L1170:
	mv	a0,a5
	ret
	.size	vatomic32_await_ge, .-vatomic32_await_ge
	.align	1
	.type	vatomic32_await_ge_acq, @function
vatomic32_await_ge_acq:
	mv	a4,a0
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bleu	a1,a5,.L1179
.L1174:
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1174
	bleu	a1,a0,.L1180
	mv	a5,a0
	j	.L1174
.L1180:
	ret
.L1179:
	mv	a0,a5
	ret
	.size	vatomic32_await_ge_acq, .-vatomic32_await_ge_acq
	.align	1
	.type	vatomic32_await_ge_rlx, @function
vatomic32_await_ge_rlx:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bleu	a1,a5,.L1188
.L1183:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1183
	bleu	a1,a0,.L1189
	mv	a5,a0
	j	.L1183
.L1189:
	ret
.L1188:
	mv	a0,a5
	ret
	.size	vatomic32_await_ge_rlx, .-vatomic32_await_ge_rlx
	.align	1
	.type	vatomic32_await_gt, @function
vatomic32_await_gt:
	mv	a4,a0
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bltu	a1,a5,.L1197
.L1192:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1192
	bltu	a1,a0,.L1198
	mv	a5,a0
	j	.L1192
.L1198:
	ret
.L1197:
	mv	a0,a5
	ret
	.size	vatomic32_await_gt, .-vatomic32_await_gt
	.align	1
	.type	vatomic32_await_gt_acq, @function
vatomic32_await_gt_acq:
	mv	a4,a0
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bltu	a1,a5,.L1206
.L1201:
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1201
	bltu	a1,a0,.L1207
	mv	a5,a0
	j	.L1201
.L1207:
	ret
.L1206:
	mv	a0,a5
	ret
	.size	vatomic32_await_gt_acq, .-vatomic32_await_gt_acq
	.align	1
	.type	vatomic32_await_gt_rlx, @function
vatomic32_await_gt_rlx:
	mv	a4,a0
	lw	a5,0(a0)
	sext.w	a5,a5
	bltu	a1,a5,.L1215
.L1210:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1210
	bltu	a1,a0,.L1216
	mv	a5,a0
	j	.L1210
.L1216:
	ret
.L1215:
	mv	a0,a5
	ret
	.size	vatomic32_await_gt_rlx, .-vatomic32_await_gt_rlx
	.align	1
	.type	vatomic64_await_le, @function
vatomic64_await_le:
	mv	a4,a0
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bgeu	a1,a5,.L1224
.L1219:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1219
	bgeu	a1,a0,.L1225
	mv	a5,a0
	j	.L1219
.L1225:
	ret
.L1224:
	mv	a0,a5
	ret
	.size	vatomic64_await_le, .-vatomic64_await_le
	.align	1
	.type	vatomic64_await_le_acq, @function
vatomic64_await_le_acq:
	mv	a4,a0
	ld	a5,0(a0)
	fence	iorw,iorw
	bgeu	a1,a5,.L1233
.L1228:
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1228
	bgeu	a1,a0,.L1234
	mv	a5,a0
	j	.L1228
.L1234:
	ret
.L1233:
	mv	a0,a5
	ret
	.size	vatomic64_await_le_acq, .-vatomic64_await_le_acq
	.align	1
	.type	vatomic64_await_le_rlx, @function
vatomic64_await_le_rlx:
	mv	a4,a0
	ld	a5,0(a0)
	bgeu	a1,a5,.L1242
.L1237:
	ld	a0,0(a4)
	beq	a0,a5,.L1237
	bgeu	a1,a0,.L1243
	mv	a5,a0
	j	.L1237
.L1243:
	ret
.L1242:
	mv	a0,a5
	ret
	.size	vatomic64_await_le_rlx, .-vatomic64_await_le_rlx
	.align	1
	.type	vatomic64_await_lt, @function
vatomic64_await_lt:
	mv	a4,a0
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bgtu	a1,a5,.L1251
.L1246:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1246
	bgtu	a1,a0,.L1252
	mv	a5,a0
	j	.L1246
.L1252:
	ret
.L1251:
	mv	a0,a5
	ret
	.size	vatomic64_await_lt, .-vatomic64_await_lt
	.align	1
	.type	vatomic64_await_lt_acq, @function
vatomic64_await_lt_acq:
	mv	a4,a0
	ld	a5,0(a0)
	fence	iorw,iorw
	bgtu	a1,a5,.L1260
.L1255:
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1255
	bgtu	a1,a0,.L1261
	mv	a5,a0
	j	.L1255
.L1261:
	ret
.L1260:
	mv	a0,a5
	ret
	.size	vatomic64_await_lt_acq, .-vatomic64_await_lt_acq
	.align	1
	.type	vatomic64_await_lt_rlx, @function
vatomic64_await_lt_rlx:
	mv	a4,a0
	ld	a5,0(a0)
	bgtu	a1,a5,.L1269
.L1264:
	ld	a0,0(a4)
	beq	a0,a5,.L1264
	bgtu	a1,a0,.L1270
	mv	a5,a0
	j	.L1264
.L1270:
	ret
.L1269:
	mv	a0,a5
	ret
	.size	vatomic64_await_lt_rlx, .-vatomic64_await_lt_rlx
	.align	1
	.type	vatomic64_await_ge, @function
vatomic64_await_ge:
	mv	a4,a0
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L1278
.L1273:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1273
	bleu	a1,a0,.L1279
	mv	a5,a0
	j	.L1273
.L1279:
	ret
.L1278:
	mv	a0,a5
	ret
	.size	vatomic64_await_ge, .-vatomic64_await_ge
	.align	1
	.type	vatomic64_await_ge_acq, @function
vatomic64_await_ge_acq:
	mv	a4,a0
	ld	a5,0(a0)
	fence	iorw,iorw
	bleu	a1,a5,.L1287
.L1282:
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1282
	bleu	a1,a0,.L1288
	mv	a5,a0
	j	.L1282
.L1288:
	ret
.L1287:
	mv	a0,a5
	ret
	.size	vatomic64_await_ge_acq, .-vatomic64_await_ge_acq
	.align	1
	.type	vatomic64_await_ge_rlx, @function
vatomic64_await_ge_rlx:
	mv	a4,a0
	ld	a5,0(a0)
	bleu	a1,a5,.L1296
.L1291:
	ld	a0,0(a4)
	beq	a0,a5,.L1291
	bleu	a1,a0,.L1297
	mv	a5,a0
	j	.L1291
.L1297:
	ret
.L1296:
	mv	a0,a5
	ret
	.size	vatomic64_await_ge_rlx, .-vatomic64_await_ge_rlx
	.align	1
	.type	vatomic64_await_gt, @function
vatomic64_await_gt:
	mv	a4,a0
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bltu	a1,a5,.L1305
.L1300:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1300
	bltu	a1,a0,.L1306
	mv	a5,a0
	j	.L1300
.L1306:
	ret
.L1305:
	mv	a0,a5
	ret
	.size	vatomic64_await_gt, .-vatomic64_await_gt
	.align	1
	.type	vatomic64_await_gt_acq, @function
vatomic64_await_gt_acq:
	mv	a4,a0
	ld	a5,0(a0)
	fence	iorw,iorw
	bltu	a1,a5,.L1314
.L1309:
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1309
	bltu	a1,a0,.L1315
	mv	a5,a0
	j	.L1309
.L1315:
	ret
.L1314:
	mv	a0,a5
	ret
	.size	vatomic64_await_gt_acq, .-vatomic64_await_gt_acq
	.align	1
	.type	vatomic64_await_gt_rlx, @function
vatomic64_await_gt_rlx:
	mv	a4,a0
	ld	a5,0(a0)
	bltu	a1,a5,.L1323
.L1318:
	ld	a0,0(a4)
	beq	a0,a5,.L1318
	bltu	a1,a0,.L1324
	mv	a5,a0
	j	.L1318
.L1324:
	ret
.L1323:
	mv	a0,a5
	ret
	.size	vatomic64_await_gt_rlx, .-vatomic64_await_gt_rlx
	.align	1
	.type	vatomic32_await_le_add, @function
vatomic32_await_le_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1329:
	bleu	a5,a3,.L1334
.L1327:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1327
	bgeu	a3,a0,.L1326
	mv	a5,a0
	j	.L1327
.L1334:
	mv	a0,a5
.L1326:
	addw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1329
	ret
	.size	vatomic32_await_le_add, .-vatomic32_await_le_add
	.align	1
	.type	vatomic32_await_le_add_acq, @function
vatomic32_await_le_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1339:
	bleu	a5,a3,.L1344
.L1337:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1337
	bgeu	a3,a0,.L1336
	mv	a5,a0
	j	.L1337
.L1344:
	mv	a0,a5
.L1336:
	addw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1339
	ret
	.size	vatomic32_await_le_add_acq, .-vatomic32_await_le_add_acq
	.align	1
	.type	vatomic32_await_le_add_rel, @function
vatomic32_await_le_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1349:
	bleu	a5,a3,.L1354
.L1347:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1347
	bgeu	a3,a0,.L1346
	mv	a5,a0
	j	.L1347
.L1354:
	mv	a0,a5
.L1346:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1349
	ret
	.size	vatomic32_await_le_add_rel, .-vatomic32_await_le_add_rel
	.align	1
	.type	vatomic32_await_le_add_rlx, @function
vatomic32_await_le_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1359:
	bleu	a5,a3,.L1364
.L1357:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1357
	bgeu	a3,a0,.L1356
	mv	a5,a0
	j	.L1357
.L1364:
	mv	a0,a5
.L1356:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1359
	ret
	.size	vatomic32_await_le_add_rlx, .-vatomic32_await_le_add_rlx
	.align	1
	.type	vatomic32_await_le_sub, @function
vatomic32_await_le_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1369:
	bleu	a5,a3,.L1374
.L1367:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1367
	bgeu	a3,a0,.L1366
	mv	a5,a0
	j	.L1367
.L1374:
	mv	a0,a5
.L1366:
	subw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1369
	ret
	.size	vatomic32_await_le_sub, .-vatomic32_await_le_sub
	.align	1
	.type	vatomic32_await_le_sub_acq, @function
vatomic32_await_le_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1379:
	bleu	a5,a3,.L1384
.L1377:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1377
	bgeu	a3,a0,.L1376
	mv	a5,a0
	j	.L1377
.L1384:
	mv	a0,a5
.L1376:
	subw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1379
	ret
	.size	vatomic32_await_le_sub_acq, .-vatomic32_await_le_sub_acq
	.align	1
	.type	vatomic32_await_le_sub_rel, @function
vatomic32_await_le_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1389:
	bleu	a5,a3,.L1394
.L1387:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1387
	bgeu	a3,a0,.L1386
	mv	a5,a0
	j	.L1387
.L1394:
	mv	a0,a5
.L1386:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1389
	ret
	.size	vatomic32_await_le_sub_rel, .-vatomic32_await_le_sub_rel
	.align	1
	.type	vatomic32_await_le_sub_rlx, @function
vatomic32_await_le_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1399:
	bleu	a5,a3,.L1404
.L1397:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1397
	bgeu	a3,a0,.L1396
	mv	a5,a0
	j	.L1397
.L1404:
	mv	a0,a5
.L1396:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1399
	ret
	.size	vatomic32_await_le_sub_rlx, .-vatomic32_await_le_sub_rlx
	.align	1
	.type	vatomic32_await_le_set, @function
vatomic32_await_le_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1409:
	bleu	a5,a3,.L1414
.L1407:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1407
	bgeu	a3,a0,.L1406
	mv	a5,a0
	j	.L1407
.L1414:
	mv	a0,a5
.L1406:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1409
	ret
	.size	vatomic32_await_le_set, .-vatomic32_await_le_set
	.align	1
	.type	vatomic32_await_le_set_acq, @function
vatomic32_await_le_set_acq:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1419:
	bleu	a5,a3,.L1424
.L1417:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1417
	bgeu	a3,a0,.L1416
	mv	a5,a0
	j	.L1417
.L1424:
	mv	a0,a5
.L1416:
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1419
	ret
	.size	vatomic32_await_le_set_acq, .-vatomic32_await_le_set_acq
	.align	1
	.type	vatomic32_await_le_set_rel, @function
vatomic32_await_le_set_rel:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1429:
	bleu	a5,a3,.L1434
.L1427:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1427
	bgeu	a3,a0,.L1426
	mv	a5,a0
	j	.L1427
.L1434:
	mv	a0,a5
.L1426:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1429
	ret
	.size	vatomic32_await_le_set_rel, .-vatomic32_await_le_set_rel
	.align	1
	.type	vatomic32_await_le_set_rlx, @function
vatomic32_await_le_set_rlx:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1439:
	bleu	a5,a3,.L1444
.L1437:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1437
	bgeu	a3,a0,.L1436
	mv	a5,a0
	j	.L1437
.L1444:
	mv	a0,a5
.L1436:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1439
	ret
	.size	vatomic32_await_le_set_rlx, .-vatomic32_await_le_set_rlx
	.align	1
	.type	vatomic32_await_lt_add, @function
vatomic32_await_lt_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1449:
	bltu	a5,a3,.L1454
.L1447:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1447
	bgtu	a3,a0,.L1446
	mv	a5,a0
	j	.L1447
.L1454:
	mv	a0,a5
.L1446:
	addw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1449
	ret
	.size	vatomic32_await_lt_add, .-vatomic32_await_lt_add
	.align	1
	.type	vatomic32_await_lt_add_acq, @function
vatomic32_await_lt_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1459:
	bltu	a5,a3,.L1464
.L1457:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1457
	bgtu	a3,a0,.L1456
	mv	a5,a0
	j	.L1457
.L1464:
	mv	a0,a5
.L1456:
	addw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1459
	ret
	.size	vatomic32_await_lt_add_acq, .-vatomic32_await_lt_add_acq
	.align	1
	.type	vatomic32_await_lt_add_rel, @function
vatomic32_await_lt_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1469:
	bltu	a5,a3,.L1474
.L1467:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1467
	bgtu	a3,a0,.L1466
	mv	a5,a0
	j	.L1467
.L1474:
	mv	a0,a5
.L1466:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1469
	ret
	.size	vatomic32_await_lt_add_rel, .-vatomic32_await_lt_add_rel
	.align	1
	.type	vatomic32_await_lt_add_rlx, @function
vatomic32_await_lt_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1479:
	bltu	a5,a3,.L1484
.L1477:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1477
	bgtu	a3,a0,.L1476
	mv	a5,a0
	j	.L1477
.L1484:
	mv	a0,a5
.L1476:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1479
	ret
	.size	vatomic32_await_lt_add_rlx, .-vatomic32_await_lt_add_rlx
	.align	1
	.type	vatomic32_await_lt_sub, @function
vatomic32_await_lt_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1489:
	bltu	a5,a3,.L1494
.L1487:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1487
	bgtu	a3,a0,.L1486
	mv	a5,a0
	j	.L1487
.L1494:
	mv	a0,a5
.L1486:
	subw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1489
	ret
	.size	vatomic32_await_lt_sub, .-vatomic32_await_lt_sub
	.align	1
	.type	vatomic32_await_lt_sub_acq, @function
vatomic32_await_lt_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1499:
	bltu	a5,a3,.L1504
.L1497:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1497
	bgtu	a3,a0,.L1496
	mv	a5,a0
	j	.L1497
.L1504:
	mv	a0,a5
.L1496:
	subw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1499
	ret
	.size	vatomic32_await_lt_sub_acq, .-vatomic32_await_lt_sub_acq
	.align	1
	.type	vatomic32_await_lt_sub_rel, @function
vatomic32_await_lt_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1509:
	bltu	a5,a3,.L1514
.L1507:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1507
	bgtu	a3,a0,.L1506
	mv	a5,a0
	j	.L1507
.L1514:
	mv	a0,a5
.L1506:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1509
	ret
	.size	vatomic32_await_lt_sub_rel, .-vatomic32_await_lt_sub_rel
	.align	1
	.type	vatomic32_await_lt_sub_rlx, @function
vatomic32_await_lt_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1519:
	bltu	a5,a3,.L1524
.L1517:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1517
	bgtu	a3,a0,.L1516
	mv	a5,a0
	j	.L1517
.L1524:
	mv	a0,a5
.L1516:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1519
	ret
	.size	vatomic32_await_lt_sub_rlx, .-vatomic32_await_lt_sub_rlx
	.align	1
	.type	vatomic32_await_lt_set, @function
vatomic32_await_lt_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1529:
	bltu	a5,a3,.L1534
.L1527:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1527
	bgtu	a3,a0,.L1526
	mv	a5,a0
	j	.L1527
.L1534:
	mv	a0,a5
.L1526:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1529
	ret
	.size	vatomic32_await_lt_set, .-vatomic32_await_lt_set
	.align	1
	.type	vatomic32_await_lt_set_acq, @function
vatomic32_await_lt_set_acq:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1539:
	bltu	a5,a3,.L1544
.L1537:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1537
	bgtu	a3,a0,.L1536
	mv	a5,a0
	j	.L1537
.L1544:
	mv	a0,a5
.L1536:
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1539
	ret
	.size	vatomic32_await_lt_set_acq, .-vatomic32_await_lt_set_acq
	.align	1
	.type	vatomic32_await_lt_set_rel, @function
vatomic32_await_lt_set_rel:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1549:
	bltu	a5,a3,.L1554
.L1547:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1547
	bgtu	a3,a0,.L1546
	mv	a5,a0
	j	.L1547
.L1554:
	mv	a0,a5
.L1546:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1549
	ret
	.size	vatomic32_await_lt_set_rel, .-vatomic32_await_lt_set_rel
	.align	1
	.type	vatomic32_await_lt_set_rlx, @function
vatomic32_await_lt_set_rlx:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1559:
	bltu	a5,a3,.L1564
.L1557:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1557
	bgtu	a3,a0,.L1556
	mv	a5,a0
	j	.L1557
.L1564:
	mv	a0,a5
.L1556:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1559
	ret
	.size	vatomic32_await_lt_set_rlx, .-vatomic32_await_lt_set_rlx
	.align	1
	.type	vatomic32_await_ge_add, @function
vatomic32_await_ge_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1569:
	bgeu	a5,a3,.L1574
.L1567:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1567
	bleu	a3,a0,.L1566
	mv	a5,a0
	j	.L1567
.L1574:
	mv	a0,a5
.L1566:
	addw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1569
	ret
	.size	vatomic32_await_ge_add, .-vatomic32_await_ge_add
	.align	1
	.type	vatomic32_await_ge_add_acq, @function
vatomic32_await_ge_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1579:
	bgeu	a5,a3,.L1584
.L1577:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1577
	bleu	a3,a0,.L1576
	mv	a5,a0
	j	.L1577
.L1584:
	mv	a0,a5
.L1576:
	addw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1579
	ret
	.size	vatomic32_await_ge_add_acq, .-vatomic32_await_ge_add_acq
	.align	1
	.type	vatomic32_await_ge_add_rel, @function
vatomic32_await_ge_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1589:
	bgeu	a5,a3,.L1594
.L1587:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1587
	bleu	a3,a0,.L1586
	mv	a5,a0
	j	.L1587
.L1594:
	mv	a0,a5
.L1586:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1589
	ret
	.size	vatomic32_await_ge_add_rel, .-vatomic32_await_ge_add_rel
	.align	1
	.type	vatomic32_await_ge_add_rlx, @function
vatomic32_await_ge_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1599:
	bgeu	a5,a3,.L1604
.L1597:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1597
	bleu	a3,a0,.L1596
	mv	a5,a0
	j	.L1597
.L1604:
	mv	a0,a5
.L1596:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1599
	ret
	.size	vatomic32_await_ge_add_rlx, .-vatomic32_await_ge_add_rlx
	.align	1
	.type	vatomic32_await_ge_sub, @function
vatomic32_await_ge_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1609:
	bgeu	a5,a3,.L1614
.L1607:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1607
	bleu	a3,a0,.L1606
	mv	a5,a0
	j	.L1607
.L1614:
	mv	a0,a5
.L1606:
	subw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1609
	ret
	.size	vatomic32_await_ge_sub, .-vatomic32_await_ge_sub
	.align	1
	.type	vatomic32_await_ge_sub_acq, @function
vatomic32_await_ge_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1619:
	bgeu	a5,a3,.L1624
.L1617:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1617
	bleu	a3,a0,.L1616
	mv	a5,a0
	j	.L1617
.L1624:
	mv	a0,a5
.L1616:
	subw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1619
	ret
	.size	vatomic32_await_ge_sub_acq, .-vatomic32_await_ge_sub_acq
	.align	1
	.type	vatomic32_await_ge_sub_rel, @function
vatomic32_await_ge_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1629:
	bgeu	a5,a3,.L1634
.L1627:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1627
	bleu	a3,a0,.L1626
	mv	a5,a0
	j	.L1627
.L1634:
	mv	a0,a5
.L1626:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1629
	ret
	.size	vatomic32_await_ge_sub_rel, .-vatomic32_await_ge_sub_rel
	.align	1
	.type	vatomic32_await_ge_sub_rlx, @function
vatomic32_await_ge_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1639:
	bgeu	a5,a3,.L1644
.L1637:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1637
	bleu	a3,a0,.L1636
	mv	a5,a0
	j	.L1637
.L1644:
	mv	a0,a5
.L1636:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1639
	ret
	.size	vatomic32_await_ge_sub_rlx, .-vatomic32_await_ge_sub_rlx
	.align	1
	.type	vatomic32_await_ge_set, @function
vatomic32_await_ge_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1649:
	bgeu	a5,a3,.L1654
.L1647:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1647
	bleu	a3,a0,.L1646
	mv	a5,a0
	j	.L1647
.L1654:
	mv	a0,a5
.L1646:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1649
	ret
	.size	vatomic32_await_ge_set, .-vatomic32_await_ge_set
	.align	1
	.type	vatomic32_await_ge_set_acq, @function
vatomic32_await_ge_set_acq:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1659:
	bgeu	a5,a3,.L1664
.L1657:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1657
	bleu	a3,a0,.L1656
	mv	a5,a0
	j	.L1657
.L1664:
	mv	a0,a5
.L1656:
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1659
	ret
	.size	vatomic32_await_ge_set_acq, .-vatomic32_await_ge_set_acq
	.align	1
	.type	vatomic32_await_ge_set_rel, @function
vatomic32_await_ge_set_rel:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1669:
	bgeu	a5,a3,.L1674
.L1667:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1667
	bleu	a3,a0,.L1666
	mv	a5,a0
	j	.L1667
.L1674:
	mv	a0,a5
.L1666:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1669
	ret
	.size	vatomic32_await_ge_set_rel, .-vatomic32_await_ge_set_rel
	.align	1
	.type	vatomic32_await_ge_set_rlx, @function
vatomic32_await_ge_set_rlx:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1679:
	bgeu	a5,a3,.L1684
.L1677:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1677
	bleu	a3,a0,.L1676
	mv	a5,a0
	j	.L1677
.L1684:
	mv	a0,a5
.L1676:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1679
	ret
	.size	vatomic32_await_ge_set_rlx, .-vatomic32_await_ge_set_rlx
	.align	1
	.type	vatomic32_await_gt_add, @function
vatomic32_await_gt_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1689:
	bgtu	a5,a3,.L1694
.L1687:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1687
	bltu	a3,a0,.L1686
	mv	a5,a0
	j	.L1687
.L1694:
	mv	a0,a5
.L1686:
	addw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1689
	ret
	.size	vatomic32_await_gt_add, .-vatomic32_await_gt_add
	.align	1
	.type	vatomic32_await_gt_add_acq, @function
vatomic32_await_gt_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1699:
	bgtu	a5,a3,.L1704
.L1697:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1697
	bltu	a3,a0,.L1696
	mv	a5,a0
	j	.L1697
.L1704:
	mv	a0,a5
.L1696:
	addw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1699
	ret
	.size	vatomic32_await_gt_add_acq, .-vatomic32_await_gt_add_acq
	.align	1
	.type	vatomic32_await_gt_add_rel, @function
vatomic32_await_gt_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1709:
	bgtu	a5,a3,.L1714
.L1707:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1707
	bltu	a3,a0,.L1706
	mv	a5,a0
	j	.L1707
.L1714:
	mv	a0,a5
.L1706:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1709
	ret
	.size	vatomic32_await_gt_add_rel, .-vatomic32_await_gt_add_rel
	.align	1
	.type	vatomic32_await_gt_add_rlx, @function
vatomic32_await_gt_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1719:
	bgtu	a5,a3,.L1724
.L1717:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1717
	bltu	a3,a0,.L1716
	mv	a5,a0
	j	.L1717
.L1724:
	mv	a0,a5
.L1716:
	addw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1719
	ret
	.size	vatomic32_await_gt_add_rlx, .-vatomic32_await_gt_add_rlx
	.align	1
	.type	vatomic32_await_gt_sub, @function
vatomic32_await_gt_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1729:
	bgtu	a5,a3,.L1734
.L1727:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1727
	bltu	a3,a0,.L1726
	mv	a5,a0
	j	.L1727
.L1734:
	mv	a0,a5
.L1726:
	subw	a2,a0,a1
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1729
	ret
	.size	vatomic32_await_gt_sub, .-vatomic32_await_gt_sub
	.align	1
	.type	vatomic32_await_gt_sub_acq, @function
vatomic32_await_gt_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1739:
	bgtu	a5,a3,.L1744
.L1737:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1737
	bltu	a3,a0,.L1736
	mv	a5,a0
	j	.L1737
.L1744:
	mv	a0,a5
.L1736:
	subw	a2,a0,a1
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1739
	ret
	.size	vatomic32_await_gt_sub_acq, .-vatomic32_await_gt_sub_acq
	.align	1
	.type	vatomic32_await_gt_sub_rel, @function
vatomic32_await_gt_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1749:
	bgtu	a5,a3,.L1754
.L1747:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1747
	bltu	a3,a0,.L1746
	mv	a5,a0
	j	.L1747
.L1754:
	mv	a0,a5
.L1746:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1749
	ret
	.size	vatomic32_await_gt_sub_rel, .-vatomic32_await_gt_sub_rel
	.align	1
	.type	vatomic32_await_gt_sub_rlx, @function
vatomic32_await_gt_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	lw	a5,0(a0)
	sext.w	a5,a5
.L1759:
	bgtu	a5,a3,.L1764
.L1757:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1757
	bltu	a3,a0,.L1756
	mv	a5,a0
	j	.L1757
.L1764:
	mv	a0,a5
.L1756:
	subw	a2,a0,a1
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a6,a2,0(a4)
	bnez a6,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1759
	ret
	.size	vatomic32_await_gt_sub_rlx, .-vatomic32_await_gt_sub_rlx
	.align	1
	.type	vatomic32_await_gt_set, @function
vatomic32_await_gt_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
.L1769:
	bgtu	a5,a3,.L1774
.L1767:
	fence	iorw,iorw
	lw	a0,0(a4)
	fence	iorw,iorw
	sext.w	a0,a0
	beq	a0,a5,.L1767
	bltu	a3,a0,.L1766
	mv	a5,a0
	j	.L1767
.L1774:
	mv	a0,a5
.L1766:
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1769
	ret
	.size	vatomic32_await_gt_set, .-vatomic32_await_gt_set
	.align	1
	.type	vatomic32_await_gt_set_acq, @function
vatomic32_await_gt_set_acq:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1779:
	bgtu	a5,a3,.L1784
.L1777:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1777
	bltu	a3,a0,.L1776
	mv	a5,a0
	j	.L1777
.L1784:
	mv	a0,a5
.L1776:
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1779
	ret
	.size	vatomic32_await_gt_set_acq, .-vatomic32_await_gt_set_acq
	.align	1
	.type	vatomic32_await_gt_set_rel, @function
vatomic32_await_gt_set_rel:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1789:
	bgtu	a5,a3,.L1794
.L1787:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1787
	bltu	a3,a0,.L1786
	mv	a5,a0
	j	.L1787
.L1794:
	mv	a0,a5
.L1786:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1789
	ret
	.size	vatomic32_await_gt_set_rel, .-vatomic32_await_gt_set_rel
	.align	1
	.type	vatomic32_await_gt_set_rlx, @function
vatomic32_await_gt_set_rlx:
	mv	a4,a0
	mv	a3,a1
	lw	a5,0(a0)
	sext.w	a5,a5
.L1799:
	bgtu	a5,a3,.L1804
.L1797:
	lw	a0,0(a4)
	sext.w	a0,a0
	beq	a0,a5,.L1797
	bltu	a3,a0,.L1796
	mv	a5,a0
	j	.L1797
.L1804:
	mv	a0,a5
.L1796:
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a1,a2,0(a4)
	bnez a1,1b
	1:
	sext.w	a5,a5
	bne	a0,a5,.L1799
	ret
	.size	vatomic32_await_gt_set_rlx, .-vatomic32_await_gt_set_rlx
	.align	1
	.type	vatomic64_await_le_add, @function
vatomic64_await_le_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L1809:
	bleu	a5,a3,.L1814
.L1807:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1807
	bgeu	a3,a0,.L1806
	mv	a5,a0
	j	.L1807
.L1814:
	mv	a0,a5
.L1806:
	add	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1809
	ret
	.size	vatomic64_await_le_add, .-vatomic64_await_le_add
	.align	1
	.type	vatomic64_await_le_add_acq, @function
vatomic64_await_le_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1819:
	bleu	a5,a3,.L1824
.L1817:
	ld	a0,0(a4)
	beq	a0,a5,.L1817
	bgeu	a3,a0,.L1816
	mv	a5,a0
	j	.L1817
.L1824:
	mv	a0,a5
.L1816:
	add	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1819
	ret
	.size	vatomic64_await_le_add_acq, .-vatomic64_await_le_add_acq
	.align	1
	.type	vatomic64_await_le_add_rel, @function
vatomic64_await_le_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1829:
	bleu	a5,a3,.L1834
.L1827:
	ld	a0,0(a4)
	beq	a0,a5,.L1827
	bgeu	a3,a0,.L1826
	mv	a5,a0
	j	.L1827
.L1834:
	mv	a0,a5
.L1826:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1829
	ret
	.size	vatomic64_await_le_add_rel, .-vatomic64_await_le_add_rel
	.align	1
	.type	vatomic64_await_le_add_rlx, @function
vatomic64_await_le_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1839:
	bleu	a5,a3,.L1844
.L1837:
	ld	a0,0(a4)
	beq	a0,a5,.L1837
	bgeu	a3,a0,.L1836
	mv	a5,a0
	j	.L1837
.L1844:
	mv	a0,a5
.L1836:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1839
	ret
	.size	vatomic64_await_le_add_rlx, .-vatomic64_await_le_add_rlx
	.align	1
	.type	vatomic64_await_le_sub, @function
vatomic64_await_le_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L1849:
	bleu	a5,a3,.L1854
.L1847:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1847
	bgeu	a3,a0,.L1846
	mv	a5,a0
	j	.L1847
.L1854:
	mv	a0,a5
.L1846:
	sub	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1849
	ret
	.size	vatomic64_await_le_sub, .-vatomic64_await_le_sub
	.align	1
	.type	vatomic64_await_le_sub_acq, @function
vatomic64_await_le_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1859:
	bleu	a5,a3,.L1864
.L1857:
	ld	a0,0(a4)
	beq	a0,a5,.L1857
	bgeu	a3,a0,.L1856
	mv	a5,a0
	j	.L1857
.L1864:
	mv	a0,a5
.L1856:
	sub	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1859
	ret
	.size	vatomic64_await_le_sub_acq, .-vatomic64_await_le_sub_acq
	.align	1
	.type	vatomic64_await_le_sub_rel, @function
vatomic64_await_le_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1869:
	bleu	a5,a3,.L1874
.L1867:
	ld	a0,0(a4)
	beq	a0,a5,.L1867
	bgeu	a3,a0,.L1866
	mv	a5,a0
	j	.L1867
.L1874:
	mv	a0,a5
.L1866:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1869
	ret
	.size	vatomic64_await_le_sub_rel, .-vatomic64_await_le_sub_rel
	.align	1
	.type	vatomic64_await_le_sub_rlx, @function
vatomic64_await_le_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1879:
	bleu	a5,a3,.L1884
.L1877:
	ld	a0,0(a4)
	beq	a0,a5,.L1877
	bgeu	a3,a0,.L1876
	mv	a5,a0
	j	.L1877
.L1884:
	mv	a0,a5
.L1876:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1879
	ret
	.size	vatomic64_await_le_sub_rlx, .-vatomic64_await_le_sub_rlx
	.align	1
	.type	vatomic64_await_le_set, @function
vatomic64_await_le_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L1889:
	bleu	a5,a3,.L1894
.L1887:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1887
	bgeu	a3,a0,.L1886
	mv	a5,a0
	j	.L1887
.L1894:
	mv	a0,a5
.L1886:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L1889
	ret
	.size	vatomic64_await_le_set, .-vatomic64_await_le_set
	.align	1
	.type	vatomic64_await_le_set_acq, @function
vatomic64_await_le_set_acq:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1899:
	bleu	a5,a3,.L1904
.L1897:
	ld	a0,0(a4)
	beq	a0,a5,.L1897
	bgeu	a3,a0,.L1896
	mv	a5,a0
	j	.L1897
.L1904:
	mv	a0,a5
.L1896:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L1899
	ret
	.size	vatomic64_await_le_set_acq, .-vatomic64_await_le_set_acq
	.align	1
	.type	vatomic64_await_le_set_rel, @function
vatomic64_await_le_set_rel:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1909:
	bleu	a5,a3,.L1914
.L1907:
	ld	a0,0(a4)
	beq	a0,a5,.L1907
	bgeu	a3,a0,.L1906
	mv	a5,a0
	j	.L1907
.L1914:
	mv	a0,a5
.L1906:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L1909
	ret
	.size	vatomic64_await_le_set_rel, .-vatomic64_await_le_set_rel
	.align	1
	.type	vatomic64_await_le_set_rlx, @function
vatomic64_await_le_set_rlx:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L1919:
	bleu	a5,a3,.L1924
.L1917:
	ld	a0,0(a4)
	beq	a0,a5,.L1917
	bgeu	a3,a0,.L1916
	mv	a5,a0
	j	.L1917
.L1924:
	mv	a0,a5
.L1916:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L1919
	ret
	.size	vatomic64_await_le_set_rlx, .-vatomic64_await_le_set_rlx
	.align	1
	.type	vatomic64_await_lt_add, @function
vatomic64_await_lt_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L1929:
	bltu	a5,a3,.L1934
.L1927:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1927
	bgtu	a3,a0,.L1926
	mv	a5,a0
	j	.L1927
.L1934:
	mv	a0,a5
.L1926:
	add	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1929
	ret
	.size	vatomic64_await_lt_add, .-vatomic64_await_lt_add
	.align	1
	.type	vatomic64_await_lt_add_acq, @function
vatomic64_await_lt_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1939:
	bltu	a5,a3,.L1944
.L1937:
	ld	a0,0(a4)
	beq	a0,a5,.L1937
	bgtu	a3,a0,.L1936
	mv	a5,a0
	j	.L1937
.L1944:
	mv	a0,a5
.L1936:
	add	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1939
	ret
	.size	vatomic64_await_lt_add_acq, .-vatomic64_await_lt_add_acq
	.align	1
	.type	vatomic64_await_lt_add_rel, @function
vatomic64_await_lt_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1949:
	bltu	a5,a3,.L1954
.L1947:
	ld	a0,0(a4)
	beq	a0,a5,.L1947
	bgtu	a3,a0,.L1946
	mv	a5,a0
	j	.L1947
.L1954:
	mv	a0,a5
.L1946:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1949
	ret
	.size	vatomic64_await_lt_add_rel, .-vatomic64_await_lt_add_rel
	.align	1
	.type	vatomic64_await_lt_add_rlx, @function
vatomic64_await_lt_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1959:
	bltu	a5,a3,.L1964
.L1957:
	ld	a0,0(a4)
	beq	a0,a5,.L1957
	bgtu	a3,a0,.L1956
	mv	a5,a0
	j	.L1957
.L1964:
	mv	a0,a5
.L1956:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1959
	ret
	.size	vatomic64_await_lt_add_rlx, .-vatomic64_await_lt_add_rlx
	.align	1
	.type	vatomic64_await_lt_sub, @function
vatomic64_await_lt_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L1969:
	bltu	a5,a3,.L1974
.L1967:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L1967
	bgtu	a3,a0,.L1966
	mv	a5,a0
	j	.L1967
.L1974:
	mv	a0,a5
.L1966:
	sub	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1969
	ret
	.size	vatomic64_await_lt_sub, .-vatomic64_await_lt_sub
	.align	1
	.type	vatomic64_await_lt_sub_acq, @function
vatomic64_await_lt_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1979:
	bltu	a5,a3,.L1984
.L1977:
	ld	a0,0(a4)
	beq	a0,a5,.L1977
	bgtu	a3,a0,.L1976
	mv	a5,a0
	j	.L1977
.L1984:
	mv	a0,a5
.L1976:
	sub	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1979
	ret
	.size	vatomic64_await_lt_sub_acq, .-vatomic64_await_lt_sub_acq
	.align	1
	.type	vatomic64_await_lt_sub_rel, @function
vatomic64_await_lt_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1989:
	bltu	a5,a3,.L1994
.L1987:
	ld	a0,0(a4)
	beq	a0,a5,.L1987
	bgtu	a3,a0,.L1986
	mv	a5,a0
	j	.L1987
.L1994:
	mv	a0,a5
.L1986:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1989
	ret
	.size	vatomic64_await_lt_sub_rel, .-vatomic64_await_lt_sub_rel
	.align	1
	.type	vatomic64_await_lt_sub_rlx, @function
vatomic64_await_lt_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L1999:
	bltu	a5,a3,.L2004
.L1997:
	ld	a0,0(a4)
	beq	a0,a5,.L1997
	bgtu	a3,a0,.L1996
	mv	a5,a0
	j	.L1997
.L2004:
	mv	a0,a5
.L1996:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L1999
	ret
	.size	vatomic64_await_lt_sub_rlx, .-vatomic64_await_lt_sub_rlx
	.align	1
	.type	vatomic64_await_lt_set, @function
vatomic64_await_lt_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2009:
	bltu	a5,a3,.L2014
.L2007:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2007
	bgtu	a3,a0,.L2006
	mv	a5,a0
	j	.L2007
.L2014:
	mv	a0,a5
.L2006:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2009
	ret
	.size	vatomic64_await_lt_set, .-vatomic64_await_lt_set
	.align	1
	.type	vatomic64_await_lt_set_acq, @function
vatomic64_await_lt_set_acq:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2019:
	bltu	a5,a3,.L2024
.L2017:
	ld	a0,0(a4)
	beq	a0,a5,.L2017
	bgtu	a3,a0,.L2016
	mv	a5,a0
	j	.L2017
.L2024:
	mv	a0,a5
.L2016:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2019
	ret
	.size	vatomic64_await_lt_set_acq, .-vatomic64_await_lt_set_acq
	.align	1
	.type	vatomic64_await_lt_set_rel, @function
vatomic64_await_lt_set_rel:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2029:
	bltu	a5,a3,.L2034
.L2027:
	ld	a0,0(a4)
	beq	a0,a5,.L2027
	bgtu	a3,a0,.L2026
	mv	a5,a0
	j	.L2027
.L2034:
	mv	a0,a5
.L2026:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2029
	ret
	.size	vatomic64_await_lt_set_rel, .-vatomic64_await_lt_set_rel
	.align	1
	.type	vatomic64_await_lt_set_rlx, @function
vatomic64_await_lt_set_rlx:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2039:
	bltu	a5,a3,.L2044
.L2037:
	ld	a0,0(a4)
	beq	a0,a5,.L2037
	bgtu	a3,a0,.L2036
	mv	a5,a0
	j	.L2037
.L2044:
	mv	a0,a5
.L2036:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2039
	ret
	.size	vatomic64_await_lt_set_rlx, .-vatomic64_await_lt_set_rlx
	.align	1
	.type	vatomic64_await_ge_add, @function
vatomic64_await_ge_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2049:
	bgeu	a5,a3,.L2054
.L2047:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2047
	bleu	a3,a0,.L2046
	mv	a5,a0
	j	.L2047
.L2054:
	mv	a0,a5
.L2046:
	add	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2049
	ret
	.size	vatomic64_await_ge_add, .-vatomic64_await_ge_add
	.align	1
	.type	vatomic64_await_ge_add_acq, @function
vatomic64_await_ge_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2059:
	bgeu	a5,a3,.L2064
.L2057:
	ld	a0,0(a4)
	beq	a0,a5,.L2057
	bleu	a3,a0,.L2056
	mv	a5,a0
	j	.L2057
.L2064:
	mv	a0,a5
.L2056:
	add	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2059
	ret
	.size	vatomic64_await_ge_add_acq, .-vatomic64_await_ge_add_acq
	.align	1
	.type	vatomic64_await_ge_add_rel, @function
vatomic64_await_ge_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2069:
	bgeu	a5,a3,.L2074
.L2067:
	ld	a0,0(a4)
	beq	a0,a5,.L2067
	bleu	a3,a0,.L2066
	mv	a5,a0
	j	.L2067
.L2074:
	mv	a0,a5
.L2066:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2069
	ret
	.size	vatomic64_await_ge_add_rel, .-vatomic64_await_ge_add_rel
	.align	1
	.type	vatomic64_await_ge_add_rlx, @function
vatomic64_await_ge_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2079:
	bgeu	a5,a3,.L2084
.L2077:
	ld	a0,0(a4)
	beq	a0,a5,.L2077
	bleu	a3,a0,.L2076
	mv	a5,a0
	j	.L2077
.L2084:
	mv	a0,a5
.L2076:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2079
	ret
	.size	vatomic64_await_ge_add_rlx, .-vatomic64_await_ge_add_rlx
	.align	1
	.type	vatomic64_await_ge_sub, @function
vatomic64_await_ge_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2089:
	bgeu	a5,a3,.L2094
.L2087:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2087
	bleu	a3,a0,.L2086
	mv	a5,a0
	j	.L2087
.L2094:
	mv	a0,a5
.L2086:
	sub	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2089
	ret
	.size	vatomic64_await_ge_sub, .-vatomic64_await_ge_sub
	.align	1
	.type	vatomic64_await_ge_sub_acq, @function
vatomic64_await_ge_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2099:
	bgeu	a5,a3,.L2104
.L2097:
	ld	a0,0(a4)
	beq	a0,a5,.L2097
	bleu	a3,a0,.L2096
	mv	a5,a0
	j	.L2097
.L2104:
	mv	a0,a5
.L2096:
	sub	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2099
	ret
	.size	vatomic64_await_ge_sub_acq, .-vatomic64_await_ge_sub_acq
	.align	1
	.type	vatomic64_await_ge_sub_rel, @function
vatomic64_await_ge_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2109:
	bgeu	a5,a3,.L2114
.L2107:
	ld	a0,0(a4)
	beq	a0,a5,.L2107
	bleu	a3,a0,.L2106
	mv	a5,a0
	j	.L2107
.L2114:
	mv	a0,a5
.L2106:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2109
	ret
	.size	vatomic64_await_ge_sub_rel, .-vatomic64_await_ge_sub_rel
	.align	1
	.type	vatomic64_await_ge_sub_rlx, @function
vatomic64_await_ge_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2119:
	bgeu	a5,a3,.L2124
.L2117:
	ld	a0,0(a4)
	beq	a0,a5,.L2117
	bleu	a3,a0,.L2116
	mv	a5,a0
	j	.L2117
.L2124:
	mv	a0,a5
.L2116:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2119
	ret
	.size	vatomic64_await_ge_sub_rlx, .-vatomic64_await_ge_sub_rlx
	.align	1
	.type	vatomic64_await_ge_set, @function
vatomic64_await_ge_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2129:
	bgeu	a5,a3,.L2134
.L2127:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2127
	bleu	a3,a0,.L2126
	mv	a5,a0
	j	.L2127
.L2134:
	mv	a0,a5
.L2126:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2129
	ret
	.size	vatomic64_await_ge_set, .-vatomic64_await_ge_set
	.align	1
	.type	vatomic64_await_ge_set_acq, @function
vatomic64_await_ge_set_acq:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2139:
	bgeu	a5,a3,.L2144
.L2137:
	ld	a0,0(a4)
	beq	a0,a5,.L2137
	bleu	a3,a0,.L2136
	mv	a5,a0
	j	.L2137
.L2144:
	mv	a0,a5
.L2136:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2139
	ret
	.size	vatomic64_await_ge_set_acq, .-vatomic64_await_ge_set_acq
	.align	1
	.type	vatomic64_await_ge_set_rel, @function
vatomic64_await_ge_set_rel:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2149:
	bgeu	a5,a3,.L2154
.L2147:
	ld	a0,0(a4)
	beq	a0,a5,.L2147
	bleu	a3,a0,.L2146
	mv	a5,a0
	j	.L2147
.L2154:
	mv	a0,a5
.L2146:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2149
	ret
	.size	vatomic64_await_ge_set_rel, .-vatomic64_await_ge_set_rel
	.align	1
	.type	vatomic64_await_ge_set_rlx, @function
vatomic64_await_ge_set_rlx:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2159:
	bgeu	a5,a3,.L2164
.L2157:
	ld	a0,0(a4)
	beq	a0,a5,.L2157
	bleu	a3,a0,.L2156
	mv	a5,a0
	j	.L2157
.L2164:
	mv	a0,a5
.L2156:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2159
	ret
	.size	vatomic64_await_ge_set_rlx, .-vatomic64_await_ge_set_rlx
	.align	1
	.type	vatomic64_await_gt_add, @function
vatomic64_await_gt_add:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2169:
	bgtu	a5,a3,.L2174
.L2167:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2167
	bltu	a3,a0,.L2166
	mv	a5,a0
	j	.L2167
.L2174:
	mv	a0,a5
.L2166:
	add	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2169
	ret
	.size	vatomic64_await_gt_add, .-vatomic64_await_gt_add
	.align	1
	.type	vatomic64_await_gt_add_acq, @function
vatomic64_await_gt_add_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2179:
	bgtu	a5,a3,.L2184
.L2177:
	ld	a0,0(a4)
	beq	a0,a5,.L2177
	bltu	a3,a0,.L2176
	mv	a5,a0
	j	.L2177
.L2184:
	mv	a0,a5
.L2176:
	add	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2179
	ret
	.size	vatomic64_await_gt_add_acq, .-vatomic64_await_gt_add_acq
	.align	1
	.type	vatomic64_await_gt_add_rel, @function
vatomic64_await_gt_add_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2189:
	bgtu	a5,a3,.L2194
.L2187:
	ld	a0,0(a4)
	beq	a0,a5,.L2187
	bltu	a3,a0,.L2186
	mv	a5,a0
	j	.L2187
.L2194:
	mv	a0,a5
.L2186:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2189
	ret
	.size	vatomic64_await_gt_add_rel, .-vatomic64_await_gt_add_rel
	.align	1
	.type	vatomic64_await_gt_add_rlx, @function
vatomic64_await_gt_add_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2199:
	bgtu	a5,a3,.L2204
.L2197:
	ld	a0,0(a4)
	beq	a0,a5,.L2197
	bltu	a3,a0,.L2196
	mv	a5,a0
	j	.L2197
.L2204:
	mv	a0,a5
.L2196:
	add	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2199
	ret
	.size	vatomic64_await_gt_add_rlx, .-vatomic64_await_gt_add_rlx
	.align	1
	.type	vatomic64_await_gt_sub, @function
vatomic64_await_gt_sub:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2209:
	bgtu	a5,a3,.L2214
.L2207:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2207
	bltu	a3,a0,.L2206
	mv	a5,a0
	j	.L2207
.L2214:
	mv	a0,a5
.L2206:
	sub	a2,a0,a1
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2209
	ret
	.size	vatomic64_await_gt_sub, .-vatomic64_await_gt_sub
	.align	1
	.type	vatomic64_await_gt_sub_acq, @function
vatomic64_await_gt_sub_acq:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2219:
	bgtu	a5,a3,.L2224
.L2217:
	ld	a0,0(a4)
	beq	a0,a5,.L2217
	bltu	a3,a0,.L2216
	mv	a5,a0
	j	.L2217
.L2224:
	mv	a0,a5
.L2216:
	sub	a2,a0,a1
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2219
	ret
	.size	vatomic64_await_gt_sub_acq, .-vatomic64_await_gt_sub_acq
	.align	1
	.type	vatomic64_await_gt_sub_rel, @function
vatomic64_await_gt_sub_rel:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2229:
	bgtu	a5,a3,.L2234
.L2227:
	ld	a0,0(a4)
	beq	a0,a5,.L2227
	bltu	a3,a0,.L2226
	mv	a5,a0
	j	.L2227
.L2234:
	mv	a0,a5
.L2226:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2229
	ret
	.size	vatomic64_await_gt_sub_rel, .-vatomic64_await_gt_sub_rel
	.align	1
	.type	vatomic64_await_gt_sub_rlx, @function
vatomic64_await_gt_sub_rlx:
	mv	a3,a1
	mv	a4,a0
	mv	a1,a2
	ld	a5,0(a0)
.L2239:
	bgtu	a5,a3,.L2244
.L2237:
	ld	a0,0(a4)
	beq	a0,a5,.L2237
	bltu	a3,a0,.L2236
	mv	a5,a0
	j	.L2237
.L2244:
	mv	a0,a5
.L2236:
	sub	a2,a0,a1
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a6,a2,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2239
	ret
	.size	vatomic64_await_gt_sub_rlx, .-vatomic64_await_gt_sub_rlx
	.align	1
	.type	vatomic64_await_gt_set, @function
vatomic64_await_gt_set:
	mv	a4,a0
	mv	a3,a1
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
.L2249:
	bgtu	a5,a3,.L2254
.L2247:
	fence	iorw,iorw
	ld	a0,0(a4)
	fence	iorw,iorw
	beq	a0,a5,.L2247
	bltu	a3,a0,.L2246
	mv	a5,a0
	j	.L2247
.L2254:
	mv	a0,a5
.L2246:
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2249
	ret
	.size	vatomic64_await_gt_set, .-vatomic64_await_gt_set
	.align	1
	.type	vatomic64_await_gt_set_acq, @function
vatomic64_await_gt_set_acq:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2259:
	bgtu	a5,a3,.L2264
.L2257:
	ld	a0,0(a4)
	beq	a0,a5,.L2257
	bltu	a3,a0,.L2256
	mv	a5,a0
	j	.L2257
.L2264:
	mv	a0,a5
.L2256:
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2259
	ret
	.size	vatomic64_await_gt_set_acq, .-vatomic64_await_gt_set_acq
	.align	1
	.type	vatomic64_await_gt_set_rel, @function
vatomic64_await_gt_set_rel:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2269:
	bgtu	a5,a3,.L2274
.L2267:
	ld	a0,0(a4)
	beq	a0,a5,.L2267
	bltu	a3,a0,.L2266
	mv	a5,a0
	j	.L2267
.L2274:
	mv	a0,a5
.L2266:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2269
	ret
	.size	vatomic64_await_gt_set_rel, .-vatomic64_await_gt_set_rel
	.align	1
	.type	vatomic64_await_gt_set_rlx, @function
vatomic64_await_gt_set_rlx:
	mv	a4,a0
	mv	a3,a1
	ld	a5,0(a0)
.L2279:
	bgtu	a5,a3,.L2284
.L2277:
	ld	a0,0(a4)
	beq	a0,a5,.L2277
	bltu	a3,a0,.L2276
	mv	a5,a0
	j	.L2277
.L2284:
	mv	a0,a5
.L2276:
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a1,a2,0(a4)
	bnez a1,1b
	1:
	bne	a0,a5,.L2279
	ret
	.size	vatomic64_await_gt_set_rlx, .-vatomic64_await_gt_set_rlx
	.align	1
	.type	vatomic32_await_neq_add, @function
vatomic32_await_neq_add:
	mv	a4,a0
.L2286:
	fence	iorw,iorw
	lw	a5,0(a4)
	fence	iorw,iorw
	sext.w	a5,a5
	beq	a1,a5,.L2286
	addw	a3,a2,a5
	fence iorw,ow
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2286
	ret
	.size	vatomic32_await_neq_add, .-vatomic32_await_neq_add
	.align	1
	.type	vatomic32_await_neq_add_acq, @function
vatomic32_await_neq_add_acq:
	mv	a4,a0
.L2291:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2291
	addw	a3,a2,a5
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2291
	ret
	.size	vatomic32_await_neq_add_acq, .-vatomic32_await_neq_add_acq
	.align	1
	.type	vatomic32_await_neq_add_rel, @function
vatomic32_await_neq_add_rel:
	mv	a4,a0
.L2296:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2296
	addw	a3,a2,a5
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2296
	ret
	.size	vatomic32_await_neq_add_rel, .-vatomic32_await_neq_add_rel
	.align	1
	.type	vatomic32_await_neq_add_rlx, @function
vatomic32_await_neq_add_rlx:
	mv	a4,a0
.L2301:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2301
	addw	a3,a2,a5
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2301
	ret
	.size	vatomic32_await_neq_add_rlx, .-vatomic32_await_neq_add_rlx
	.align	1
	.type	vatomic32_await_neq_sub, @function
vatomic32_await_neq_sub:
	mv	a4,a0
.L2306:
	fence	iorw,iorw
	lw	a5,0(a4)
	fence	iorw,iorw
	sext.w	a5,a5
	beq	a1,a5,.L2306
	subw	a3,a5,a2
	fence iorw,ow
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2306
	ret
	.size	vatomic32_await_neq_sub, .-vatomic32_await_neq_sub
	.align	1
	.type	vatomic32_await_neq_sub_acq, @function
vatomic32_await_neq_sub_acq:
	mv	a4,a0
.L2311:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2311
	subw	a3,a5,a2
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2311
	ret
	.size	vatomic32_await_neq_sub_acq, .-vatomic32_await_neq_sub_acq
	.align	1
	.type	vatomic32_await_neq_sub_rel, @function
vatomic32_await_neq_sub_rel:
	mv	a4,a0
.L2316:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2316
	subw	a3,a5,a2
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2316
	ret
	.size	vatomic32_await_neq_sub_rel, .-vatomic32_await_neq_sub_rel
	.align	1
	.type	vatomic32_await_neq_sub_rlx, @function
vatomic32_await_neq_sub_rlx:
	mv	a4,a0
.L2321:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2321
	subw	a3,a5,a2
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a6,a3,0(a4)
	bnez a6,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2321
	ret
	.size	vatomic32_await_neq_sub_rlx, .-vatomic32_await_neq_sub_rlx
	.align	1
	.type	vatomic32_await_neq_set, @function
vatomic32_await_neq_set:
	mv	a4,a0
.L2326:
	fence	iorw,iorw
	lw	a5,0(a4)
	fence	iorw,iorw
	sext.w	a5,a5
	beq	a1,a5,.L2326
	fence iorw,ow
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2326
	ret
	.size	vatomic32_await_neq_set, .-vatomic32_await_neq_set
	.align	1
	.type	vatomic32_await_neq_set_acq, @function
vatomic32_await_neq_set_acq:
	mv	a4,a0
.L2331:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2331
	1:
	lr.w.aq a0,0(a4)
	bne a0,a5,1f
	sc.w.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2331
	ret
	.size	vatomic32_await_neq_set_acq, .-vatomic32_await_neq_set_acq
	.align	1
	.type	vatomic32_await_neq_set_rel, @function
vatomic32_await_neq_set_rel:
	mv	a4,a0
.L2336:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2336
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2336
	ret
	.size	vatomic32_await_neq_set_rel, .-vatomic32_await_neq_set_rel
	.align	1
	.type	vatomic32_await_neq_set_rlx, @function
vatomic32_await_neq_set_rlx:
	mv	a4,a0
.L2341:
	lw	a5,0(a4)
	sext.w	a5,a5
	beq	a1,a5,.L2341
	1:
	lr.w a0,0(a4)
	bne a0,a5,1f
	sc.w a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a0,a0
	bne	a0,a5,.L2341
	ret
	.size	vatomic32_await_neq_set_rlx, .-vatomic32_await_neq_set_rlx
	.align	1
	.type	vatomic64_await_neq_add, @function
vatomic64_await_neq_add:
	mv	a4,a0
.L2346:
	fence	iorw,iorw
	ld	a5,0(a4)
	fence	iorw,iorw
	beq	a1,a5,.L2346
	add	a3,a2,a5
	fence iorw,ow
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2346
	ret
	.size	vatomic64_await_neq_add, .-vatomic64_await_neq_add
	.align	1
	.type	vatomic64_await_neq_add_acq, @function
vatomic64_await_neq_add_acq:
	mv	a4,a0
.L2351:
	ld	a5,0(a4)
	beq	a1,a5,.L2351
	add	a3,a2,a5
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2351
	ret
	.size	vatomic64_await_neq_add_acq, .-vatomic64_await_neq_add_acq
	.align	1
	.type	vatomic64_await_neq_add_rel, @function
vatomic64_await_neq_add_rel:
	mv	a4,a0
.L2356:
	ld	a5,0(a4)
	beq	a1,a5,.L2356
	add	a3,a2,a5
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2356
	ret
	.size	vatomic64_await_neq_add_rel, .-vatomic64_await_neq_add_rel
	.align	1
	.type	vatomic64_await_neq_add_rlx, @function
vatomic64_await_neq_add_rlx:
	mv	a4,a0
.L2361:
	ld	a5,0(a4)
	beq	a1,a5,.L2361
	add	a3,a2,a5
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2361
	ret
	.size	vatomic64_await_neq_add_rlx, .-vatomic64_await_neq_add_rlx
	.align	1
	.type	vatomic64_await_neq_sub, @function
vatomic64_await_neq_sub:
	mv	a4,a0
.L2366:
	fence	iorw,iorw
	ld	a5,0(a4)
	fence	iorw,iorw
	beq	a1,a5,.L2366
	sub	a3,a5,a2
	fence iorw,ow
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2366
	ret
	.size	vatomic64_await_neq_sub, .-vatomic64_await_neq_sub
	.align	1
	.type	vatomic64_await_neq_sub_acq, @function
vatomic64_await_neq_sub_acq:
	mv	a4,a0
.L2371:
	ld	a5,0(a4)
	beq	a1,a5,.L2371
	sub	a3,a5,a2
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2371
	ret
	.size	vatomic64_await_neq_sub_acq, .-vatomic64_await_neq_sub_acq
	.align	1
	.type	vatomic64_await_neq_sub_rel, @function
vatomic64_await_neq_sub_rel:
	mv	a4,a0
.L2376:
	ld	a5,0(a4)
	beq	a1,a5,.L2376
	sub	a3,a5,a2
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2376
	ret
	.size	vatomic64_await_neq_sub_rel, .-vatomic64_await_neq_sub_rel
	.align	1
	.type	vatomic64_await_neq_sub_rlx, @function
vatomic64_await_neq_sub_rlx:
	mv	a4,a0
.L2381:
	ld	a5,0(a4)
	beq	a1,a5,.L2381
	sub	a3,a5,a2
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a6,a3,0(a4)
	bnez a6,1b
	1:
	bne	a0,a5,.L2381
	ret
	.size	vatomic64_await_neq_sub_rlx, .-vatomic64_await_neq_sub_rlx
	.align	1
	.type	vatomic64_await_neq_set, @function
vatomic64_await_neq_set:
	mv	a4,a0
.L2386:
	fence	iorw,iorw
	ld	a5,0(a4)
	fence	iorw,iorw
	beq	a1,a5,.L2386
	fence iorw,ow
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2386
	ret
	.size	vatomic64_await_neq_set, .-vatomic64_await_neq_set
	.align	1
	.type	vatomic64_await_neq_set_acq, @function
vatomic64_await_neq_set_acq:
	mv	a4,a0
.L2391:
	ld	a5,0(a4)
	beq	a1,a5,.L2391
	1:
	lr.d.aq a0,0(a4)
	bne a0,a5,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2391
	ret
	.size	vatomic64_await_neq_set_acq, .-vatomic64_await_neq_set_acq
	.align	1
	.type	vatomic64_await_neq_set_rel, @function
vatomic64_await_neq_set_rel:
	mv	a4,a0
.L2396:
	ld	a5,0(a4)
	beq	a1,a5,.L2396
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2396
	ret
	.size	vatomic64_await_neq_set_rel, .-vatomic64_await_neq_set_rel
	.align	1
	.type	vatomic64_await_neq_set_rlx, @function
vatomic64_await_neq_set_rlx:
	mv	a4,a0
.L2401:
	ld	a5,0(a4)
	beq	a1,a5,.L2401
	1:
	lr.d a0,0(a4)
	bne a0,a5,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2401
	ret
	.size	vatomic64_await_neq_set_rlx, .-vatomic64_await_neq_set_rlx
	.align	1
	.type	vatomicptr_await_neq_set, @function
vatomicptr_await_neq_set:
	mv	a5,a0
.L2406:
	fence	iorw,iorw
	ld	a0,0(a5)
	fence	iorw,iorw
	beq	a1,a0,.L2406
	fence iorw,ow
	1:
	lr.d.aq a4,0(a5)
	bne a4,a0,1f
	sc.d.aq a3,a2,0(a5)
	bnez a3,1b
	1:
	bne	a0,a4,.L2406
	ret
	.size	vatomicptr_await_neq_set, .-vatomicptr_await_neq_set
	.align	1
	.type	vatomicptr_await_neq_set_acq, @function
vatomicptr_await_neq_set_acq:
	mv	a5,a0
.L2411:
	ld	a0,0(a5)
	beq	a1,a0,.L2411
	1:
	lr.d.aq a4,0(a5)
	bne a4,a0,1f
	sc.d.aq a3,a2,0(a5)
	bnez a3,1b
	1:
	bne	a0,a4,.L2411
	ret
	.size	vatomicptr_await_neq_set_acq, .-vatomicptr_await_neq_set_acq
	.align	1
	.type	vatomicptr_await_neq_set_rel, @function
vatomicptr_await_neq_set_rel:
	mv	a5,a0
.L2416:
	ld	a0,0(a5)
	beq	a1,a0,.L2416
	1:
	lr.d a4,0(a5)
	bne a4,a0,1f
	sc.d a3,a2,0(a5)
	bnez a3,1b
	1:
	bne	a0,a4,.L2416
	ret
	.size	vatomicptr_await_neq_set_rel, .-vatomicptr_await_neq_set_rel
	.align	1
	.type	vatomicptr_await_neq_set_rlx, @function
vatomicptr_await_neq_set_rlx:
	mv	a5,a0
.L2421:
	ld	a0,0(a5)
	beq	a1,a0,.L2421
	1:
	lr.d a4,0(a5)
	bne a4,a0,1f
	sc.d a3,a2,0(a5)
	bnez a3,1b
	1:
	bne	a0,a4,.L2421
	ret
	.size	vatomicptr_await_neq_set_rlx, .-vatomicptr_await_neq_set_rlx
	.align	1
	.type	vatomic32_await_eq_add, @function
vatomic32_await_eq_add:
	addw	a4,a1,a2
.L2426:
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bne	a1,a5,.L2426
	fence iorw,ow
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2426
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_add, .-vatomic32_await_eq_add
	.align	1
	.type	vatomic32_await_eq_add_acq, @function
vatomic32_await_eq_add_acq:
	addw	a4,a1,a2
.L2431:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2431
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2431
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_add_acq, .-vatomic32_await_eq_add_acq
	.align	1
	.type	vatomic32_await_eq_add_rel, @function
vatomic32_await_eq_add_rel:
	addw	a4,a1,a2
.L2436:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2436
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2436
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_add_rel, .-vatomic32_await_eq_add_rel
	.align	1
	.type	vatomic32_await_eq_add_rlx, @function
vatomic32_await_eq_add_rlx:
	addw	a4,a1,a2
.L2441:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2441
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2441
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_add_rlx, .-vatomic32_await_eq_add_rlx
	.align	1
	.type	vatomic32_await_eq_sub, @function
vatomic32_await_eq_sub:
	subw	a4,a1,a2
.L2446:
	fence	iorw,iorw
	lw	a5,0(a0)
	fence	iorw,iorw
	sext.w	a5,a5
	bne	a1,a5,.L2446
	fence iorw,ow
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2446
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_sub, .-vatomic32_await_eq_sub
	.align	1
	.type	vatomic32_await_eq_sub_acq, @function
vatomic32_await_eq_sub_acq:
	subw	a4,a1,a2
.L2451:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2451
	1:
	lr.w.aq a5,0(a0)
	bne a5,a1,1f
	sc.w.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2451
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_sub_acq, .-vatomic32_await_eq_sub_acq
	.align	1
	.type	vatomic32_await_eq_sub_rel, @function
vatomic32_await_eq_sub_rel:
	subw	a4,a1,a2
.L2456:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2456
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2456
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_sub_rel, .-vatomic32_await_eq_sub_rel
	.align	1
	.type	vatomic32_await_eq_sub_rlx, @function
vatomic32_await_eq_sub_rlx:
	subw	a4,a1,a2
.L2461:
	lw	a5,0(a0)
	sext.w	a5,a5
	bne	a1,a5,.L2461
	1:
	lr.w a5,0(a0)
	bne a5,a1,1f
	sc.w a3,a4,0(a0)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a1,.L2461
	mv	a0,a1
	ret
	.size	vatomic32_await_eq_sub_rlx, .-vatomic32_await_eq_sub_rlx
	.align	1
	.type	vatomic32_await_eq_set, @function
vatomic32_await_eq_set:
	mv	a4,a0
	mv	a0,a1
.L2466:
	fence	iorw,iorw
	lw	a5,0(a4)
	fence	iorw,iorw
	sext.w	a5,a5
	bne	a0,a5,.L2466
	fence iorw,ow
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2466
	ret
	.size	vatomic32_await_eq_set, .-vatomic32_await_eq_set
	.align	1
	.type	vatomic32_await_eq_set_acq, @function
vatomic32_await_eq_set_acq:
	mv	a4,a0
	mv	a0,a1
.L2471:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2471
	1:
	lr.w.aq a5,0(a4)
	bne a5,a0,1f
	sc.w.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2471
	ret
	.size	vatomic32_await_eq_set_acq, .-vatomic32_await_eq_set_acq
	.align	1
	.type	vatomic32_await_eq_set_rel, @function
vatomic32_await_eq_set_rel:
	mv	a4,a0
	mv	a0,a1
.L2476:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2476
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2476
	ret
	.size	vatomic32_await_eq_set_rel, .-vatomic32_await_eq_set_rel
	.align	1
	.type	vatomic32_await_eq_set_rlx, @function
vatomic32_await_eq_set_rlx:
	mv	a4,a0
	mv	a0,a1
.L2481:
	lw	a5,0(a4)
	sext.w	a5,a5
	bne	a0,a5,.L2481
	1:
	lr.w a5,0(a4)
	bne a5,a0,1f
	sc.w a3,a2,0(a4)
	bnez a3,1b
	1:
	sext.w	a5,a5
	bne	a5,a0,.L2481
	ret
	.size	vatomic32_await_eq_set_rlx, .-vatomic32_await_eq_set_rlx
	.align	1
	.type	vatomic64_await_eq_add, @function
vatomic64_await_eq_add:
	add	a4,a1,a2
.L2486:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bne	a1,a5,.L2486
	fence iorw,ow
	1:
	lr.d.aq a5,0(a0)
	bne a5,a1,1f
	sc.d.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2486
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_add, .-vatomic64_await_eq_add
	.align	1
	.type	vatomic64_await_eq_add_acq, @function
vatomic64_await_eq_add_acq:
	add	a4,a1,a2
.L2491:
	ld	a5,0(a0)
	bne	a1,a5,.L2491
	1:
	lr.d.aq a5,0(a0)
	bne a5,a1,1f
	sc.d.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2491
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_add_acq, .-vatomic64_await_eq_add_acq
	.align	1
	.type	vatomic64_await_eq_add_rel, @function
vatomic64_await_eq_add_rel:
	add	a4,a1,a2
.L2496:
	ld	a5,0(a0)
	bne	a1,a5,.L2496
	1:
	lr.d a5,0(a0)
	bne a5,a1,1f
	sc.d a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2496
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_add_rel, .-vatomic64_await_eq_add_rel
	.align	1
	.type	vatomic64_await_eq_add_rlx, @function
vatomic64_await_eq_add_rlx:
	add	a4,a1,a2
.L2501:
	ld	a5,0(a0)
	bne	a1,a5,.L2501
	1:
	lr.d a5,0(a0)
	bne a5,a1,1f
	sc.d a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2501
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_add_rlx, .-vatomic64_await_eq_add_rlx
	.align	1
	.type	vatomic64_await_eq_sub, @function
vatomic64_await_eq_sub:
	sub	a4,a1,a2
.L2506:
	fence	iorw,iorw
	ld	a5,0(a0)
	fence	iorw,iorw
	bne	a1,a5,.L2506
	fence iorw,ow
	1:
	lr.d.aq a5,0(a0)
	bne a5,a1,1f
	sc.d.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2506
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_sub, .-vatomic64_await_eq_sub
	.align	1
	.type	vatomic64_await_eq_sub_acq, @function
vatomic64_await_eq_sub_acq:
	sub	a4,a1,a2
.L2511:
	ld	a5,0(a0)
	bne	a1,a5,.L2511
	1:
	lr.d.aq a5,0(a0)
	bne a5,a1,1f
	sc.d.aq a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2511
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_sub_acq, .-vatomic64_await_eq_sub_acq
	.align	1
	.type	vatomic64_await_eq_sub_rel, @function
vatomic64_await_eq_sub_rel:
	sub	a4,a1,a2
.L2516:
	ld	a5,0(a0)
	bne	a1,a5,.L2516
	1:
	lr.d a5,0(a0)
	bne a5,a1,1f
	sc.d a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2516
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_sub_rel, .-vatomic64_await_eq_sub_rel
	.align	1
	.type	vatomic64_await_eq_sub_rlx, @function
vatomic64_await_eq_sub_rlx:
	sub	a4,a1,a2
.L2521:
	ld	a5,0(a0)
	bne	a1,a5,.L2521
	1:
	lr.d a5,0(a0)
	bne a5,a1,1f
	sc.d a3,a4,0(a0)
	bnez a3,1b
	1:
	bne	a1,a5,.L2521
	mv	a0,a1
	ret
	.size	vatomic64_await_eq_sub_rlx, .-vatomic64_await_eq_sub_rlx
	.align	1
	.type	vatomic64_await_eq_set, @function
vatomic64_await_eq_set:
	mv	a4,a0
	mv	a0,a1
.L2526:
	fence	iorw,iorw
	ld	a5,0(a4)
	fence	iorw,iorw
	bne	a0,a5,.L2526
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2526
	ret
	.size	vatomic64_await_eq_set, .-vatomic64_await_eq_set
	.align	1
	.type	vatomic64_await_eq_set_acq, @function
vatomic64_await_eq_set_acq:
	mv	a4,a0
	mv	a0,a1
.L2531:
	ld	a5,0(a4)
	bne	a0,a5,.L2531
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2531
	ret
	.size	vatomic64_await_eq_set_acq, .-vatomic64_await_eq_set_acq
	.align	1
	.type	vatomic64_await_eq_set_rel, @function
vatomic64_await_eq_set_rel:
	mv	a4,a0
	mv	a0,a1
.L2536:
	ld	a5,0(a4)
	bne	a0,a5,.L2536
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2536
	ret
	.size	vatomic64_await_eq_set_rel, .-vatomic64_await_eq_set_rel
	.align	1
	.type	vatomic64_await_eq_set_rlx, @function
vatomic64_await_eq_set_rlx:
	mv	a4,a0
	mv	a0,a1
.L2541:
	ld	a5,0(a4)
	bne	a0,a5,.L2541
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2541
	ret
	.size	vatomic64_await_eq_set_rlx, .-vatomic64_await_eq_set_rlx
	.align	1
	.type	vatomicptr_await_eq_set, @function
vatomicptr_await_eq_set:
	mv	a4,a0
	mv	a0,a1
.L2546:
	fence	iorw,iorw
	ld	a5,0(a4)
	fence	iorw,iorw
	bne	a0,a5,.L2546
	fence iorw,ow
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2546
	ret
	.size	vatomicptr_await_eq_set, .-vatomicptr_await_eq_set
	.align	1
	.type	vatomicptr_await_eq_set_acq, @function
vatomicptr_await_eq_set_acq:
	mv	a4,a0
	mv	a0,a1
.L2551:
	ld	a5,0(a4)
	bne	a0,a5,.L2551
	1:
	lr.d.aq a5,0(a4)
	bne a5,a0,1f
	sc.d.aq a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2551
	ret
	.size	vatomicptr_await_eq_set_acq, .-vatomicptr_await_eq_set_acq
	.align	1
	.type	vatomicptr_await_eq_set_rel, @function
vatomicptr_await_eq_set_rel:
	mv	a4,a0
	mv	a0,a1
.L2556:
	ld	a5,0(a4)
	bne	a0,a5,.L2556
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2556
	ret
	.size	vatomicptr_await_eq_set_rel, .-vatomicptr_await_eq_set_rel
	.align	1
	.type	vatomicptr_await_eq_set_rlx, @function
vatomicptr_await_eq_set_rlx:
	mv	a4,a0
	mv	a0,a1
.L2561:
	ld	a5,0(a4)
	bne	a0,a5,.L2561
	1:
	lr.d a5,0(a4)
	bne a5,a0,1f
	sc.d a3,a2,0(a4)
	bnez a3,1b
	1:
	bne	a0,a5,.L2561
	ret
	.size	vatomicptr_await_eq_set_rlx, .-vatomicptr_await_eq_set_rlx
	.ident	"GCC:
	(Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
