	.arch armv8-a
	.file	"atomic.h"
	.text
	.align	2
	.p2align 4,,11
	.type	verification_ignore, %function
verification_ignore:
.LFB0:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE0:
	.size	verification_ignore, .-verification_ignore
	.align	2
	.p2align 4,,11
	.type	verification_assume, %function
verification_assume:
.LFB1:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE1:
	.size	verification_assume, .-verification_assume
	.align	2
	.p2align 4,,11
	.type	verification_rand, %function
verification_rand:
.LFB2:
	.cfi_startproc
	mov	w0, 0
	ret
	.cfi_endproc
.LFE2:
	.size	verification_rand, .-verification_rand
	.align	2
	.p2align 4,,11
	.type	verification_loop_begin, %function
verification_loop_begin:
.LFB750:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE750:
	.size	verification_loop_begin, .-verification_loop_begin
	.align	2
	.p2align 4,,11
	.type	verification_spin_start, %function
verification_spin_start:
.LFB752:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE752:
	.size	verification_spin_start, .-verification_spin_start
	.align	2
	.p2align 4,,11
	.type	verification_spin_end, %function
verification_spin_end:
.LFB5:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE5:
	.size	verification_spin_end, .-verification_spin_end
	.align	2
	.p2align 4,,11
	.type	vatomic_fence, %function
vatomic_fence:
.LFB6:
	.cfi_startproc
	dmb	ish
	ret
	.cfi_endproc
.LFE6:
	.size	vatomic_fence, .-vatomic_fence
	.align	2
	.p2align 4,,11
	.type	vatomic_fence_acq, %function
vatomic_fence_acq:
.LFB7:
	.cfi_startproc
	dmb	ishld
	ret
	.cfi_endproc
.LFE7:
	.size	vatomic_fence_acq, .-vatomic_fence_acq
	.align	2
	.p2align 4,,11
	.type	vatomic_fence_rel, %function
vatomic_fence_rel:
.LFB8:
	.cfi_startproc
	dmb	ish
	ret
	.cfi_endproc
.LFE8:
	.size	vatomic_fence_rel, .-vatomic_fence_rel
	.align	2
	.p2align 4,,11
	.type	vatomic_fence_rlx, %function
vatomic_fence_rlx:
.LFB9:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE9:
	.size	vatomic_fence_rlx, .-vatomic_fence_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_read, %function
vatomic8_read:
.LFB10:
	.cfi_startproc
	ldarb	w0, [x0]
	ret
	.cfi_endproc
.LFE10:
	.size	vatomic8_read, .-vatomic8_read
	.align	2
	.p2align 4,,11
	.type	vatomic8_read_acq, %function
vatomic8_read_acq:
.LFB11:
	.cfi_startproc
	ldarb	w0, [x0]
	ret
	.cfi_endproc
.LFE11:
	.size	vatomic8_read_acq, .-vatomic8_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_read_rlx, %function
vatomic8_read_rlx:
.LFB12:
	.cfi_startproc
	ldrb	w0, [x0]
	ret
	.cfi_endproc
.LFE12:
	.size	vatomic8_read_rlx, .-vatomic8_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_read, %function
vatomic16_read:
.LFB13:
	.cfi_startproc
	ldarh	w0, [x0]
	ret
	.cfi_endproc
.LFE13:
	.size	vatomic16_read, .-vatomic16_read
	.align	2
	.p2align 4,,11
	.type	vatomic16_read_acq, %function
vatomic16_read_acq:
.LFB14:
	.cfi_startproc
	ldarh	w0, [x0]
	ret
	.cfi_endproc
.LFE14:
	.size	vatomic16_read_acq, .-vatomic16_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_read_rlx, %function
vatomic16_read_rlx:
.LFB15:
	.cfi_startproc
	ldrh	w0, [x0]
	ret
	.cfi_endproc
.LFE15:
	.size	vatomic16_read_rlx, .-vatomic16_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_read, %function
vatomic32_read:
.LFB16:
	.cfi_startproc
	ldar	w0, [x0]
	ret
	.cfi_endproc
.LFE16:
	.size	vatomic32_read, .-vatomic32_read
	.align	2
	.p2align 4,,11
	.type	vatomic32_read_acq, %function
vatomic32_read_acq:
.LFB17:
	.cfi_startproc
	ldar	w0, [x0]
	ret
	.cfi_endproc
.LFE17:
	.size	vatomic32_read_acq, .-vatomic32_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_read_rlx, %function
vatomic32_read_rlx:
.LFB18:
	.cfi_startproc
	ldr	w0, [x0]
	ret
	.cfi_endproc
.LFE18:
	.size	vatomic32_read_rlx, .-vatomic32_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_read, %function
vatomic64_read:
.LFB19:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE19:
	.size	vatomic64_read, .-vatomic64_read
	.align	2
	.p2align 4,,11
	.type	vatomic64_read_acq, %function
vatomic64_read_acq:
.LFB20:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE20:
	.size	vatomic64_read_acq, .-vatomic64_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_read_rlx, %function
vatomic64_read_rlx:
.LFB21:
	.cfi_startproc
	ldr	x0, [x0]
	ret
	.cfi_endproc
.LFE21:
	.size	vatomic64_read_rlx, .-vatomic64_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_read, %function
vatomicsz_read:
.LFB776:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE776:
	.size	vatomicsz_read, .-vatomicsz_read
	.align	2
	.p2align 4,,11
	.type	vatomicsz_read_acq, %function
vatomicsz_read_acq:
.LFB778:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE778:
	.size	vatomicsz_read_acq, .-vatomicsz_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_read_rlx, %function
vatomicsz_read_rlx:
.LFB780:
	.cfi_startproc
	ldr	x0, [x0]
	ret
	.cfi_endproc
.LFE780:
	.size	vatomicsz_read_rlx, .-vatomicsz_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_read, %function
vatomicptr_read:
.LFB25:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE25:
	.size	vatomicptr_read, .-vatomicptr_read
	.align	2
	.p2align 4,,11
	.type	vatomicptr_read_acq, %function
vatomicptr_read_acq:
.LFB26:
	.cfi_startproc
	ldar	x0, [x0]
	ret
	.cfi_endproc
.LFE26:
	.size	vatomicptr_read_acq, .-vatomicptr_read_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_read_rlx, %function
vatomicptr_read_rlx:
.LFB27:
	.cfi_startproc
	ldr	x0, [x0]
	ret
	.cfi_endproc
.LFE27:
	.size	vatomicptr_read_rlx, .-vatomicptr_read_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_write, %function
vatomic8_write:
.LFB754:
	.cfi_startproc
	and	w1, w1, 255
	stlrb	w1, [x0]
	ret
	.cfi_endproc
.LFE754:
	.size	vatomic8_write, .-vatomic8_write
	.align	2
	.p2align 4,,11
	.type	vatomic8_write_rel, %function
vatomic8_write_rel:
.LFB29:
	.cfi_startproc
	and	w1, w1, 255
	stlrb	w1, [x0]
	ret
	.cfi_endproc
.LFE29:
	.size	vatomic8_write_rel, .-vatomic8_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_write_rlx, %function
vatomic8_write_rlx:
.LFB30:
	.cfi_startproc
	and	w1, w1, 255
	strb	w1, [x0]
	ret
	.cfi_endproc
.LFE30:
	.size	vatomic8_write_rlx, .-vatomic8_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_write, %function
vatomic16_write:
.LFB756:
	.cfi_startproc
	and	w1, w1, 65535
	stlrh	w1, [x0]
	ret
	.cfi_endproc
.LFE756:
	.size	vatomic16_write, .-vatomic16_write
	.align	2
	.p2align 4,,11
	.type	vatomic16_write_rel, %function
vatomic16_write_rel:
.LFB32:
	.cfi_startproc
	and	w1, w1, 65535
	stlrh	w1, [x0]
	ret
	.cfi_endproc
.LFE32:
	.size	vatomic16_write_rel, .-vatomic16_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_write_rlx, %function
vatomic16_write_rlx:
.LFB33:
	.cfi_startproc
	and	w1, w1, 65535
	strh	w1, [x0]
	ret
	.cfi_endproc
.LFE33:
	.size	vatomic16_write_rlx, .-vatomic16_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_write, %function
vatomic32_write:
.LFB758:
	.cfi_startproc
	stlr	w1, [x0]
	ret
	.cfi_endproc
.LFE758:
	.size	vatomic32_write, .-vatomic32_write
	.align	2
	.p2align 4,,11
	.type	vatomic32_write_rel, %function
vatomic32_write_rel:
.LFB35:
	.cfi_startproc
	stlr	w1, [x0]
	ret
	.cfi_endproc
.LFE35:
	.size	vatomic32_write_rel, .-vatomic32_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_write_rlx, %function
vatomic32_write_rlx:
.LFB36:
	.cfi_startproc
	str	w1, [x0]
	ret
	.cfi_endproc
.LFE36:
	.size	vatomic32_write_rlx, .-vatomic32_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_write, %function
vatomic64_write:
.LFB760:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE760:
	.size	vatomic64_write, .-vatomic64_write
	.align	2
	.p2align 4,,11
	.type	vatomic64_write_rel, %function
vatomic64_write_rel:
.LFB38:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE38:
	.size	vatomic64_write_rel, .-vatomic64_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_write_rlx, %function
vatomic64_write_rlx:
.LFB39:
	.cfi_startproc
	str	x1, [x0]
	ret
	.cfi_endproc
.LFE39:
	.size	vatomic64_write_rlx, .-vatomic64_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_write, %function
vatomicsz_write:
.LFB764:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE764:
	.size	vatomicsz_write, .-vatomicsz_write
	.align	2
	.p2align 4,,11
	.type	vatomicsz_write_rel, %function
vatomicsz_write_rel:
.LFB782:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE782:
	.size	vatomicsz_write_rel, .-vatomicsz_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_write_rlx, %function
vatomicsz_write_rlx:
.LFB794:
	.cfi_startproc
	str	x1, [x0]
	ret
	.cfi_endproc
.LFE794:
	.size	vatomicsz_write_rlx, .-vatomicsz_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_write, %function
vatomicptr_write:
.LFB968:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE968:
	.size	vatomicptr_write, .-vatomicptr_write
	.align	2
	.p2align 4,,11
	.type	vatomicptr_write_rel, %function
vatomicptr_write_rel:
.LFB44:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE44:
	.size	vatomicptr_write_rel, .-vatomicptr_write_rel
	.align	2
	.p2align 4,,11
	.type	vatomicptr_write_rlx, %function
vatomicptr_write_rlx:
.LFB45:
	.cfi_startproc
	str	x1, [x0]
	ret
	.cfi_endproc
.LFE45:
	.size	vatomicptr_write_rlx, .-vatomicptr_write_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_xchg, %function
vatomic8_xchg:
.LFB46:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L49:
	ldaxrb	w0, [x2]
	stlxrb	w3, w1, [x2]
	cbnz	w3, .L49
	ret
	.cfi_endproc
.LFE46:
	.size	vatomic8_xchg, .-vatomic8_xchg
	.align	2
	.p2align 4,,11
	.type	vatomic8_xchg_acq, %function
vatomic8_xchg_acq:
.LFB47:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L51:
	ldaxrb	w0, [x2]
	stxrb	w3, w1, [x2]
	cbnz	w3, .L51
	ret
	.cfi_endproc
.LFE47:
	.size	vatomic8_xchg_acq, .-vatomic8_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_xchg_rel, %function
vatomic8_xchg_rel:
.LFB48:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L53:
	ldxrb	w0, [x2]
	stlxrb	w3, w1, [x2]
	cbnz	w3, .L53
	ret
	.cfi_endproc
.LFE48:
	.size	vatomic8_xchg_rel, .-vatomic8_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_xchg_rlx, %function
vatomic8_xchg_rlx:
.LFB49:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L55:
	ldxrb	w0, [x2]
	stxrb	w3, w1, [x2]
	cbnz	w3, .L55
	ret
	.cfi_endproc
.LFE49:
	.size	vatomic8_xchg_rlx, .-vatomic8_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_xchg, %function
vatomic16_xchg:
.LFB50:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L57:
	ldaxrh	w0, [x2]
	stlxrh	w3, w1, [x2]
	cbnz	w3, .L57
	ret
	.cfi_endproc
.LFE50:
	.size	vatomic16_xchg, .-vatomic16_xchg
	.align	2
	.p2align 4,,11
	.type	vatomic16_xchg_acq, %function
vatomic16_xchg_acq:
.LFB51:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L59:
	ldaxrh	w0, [x2]
	stxrh	w3, w1, [x2]
	cbnz	w3, .L59
	ret
	.cfi_endproc
.LFE51:
	.size	vatomic16_xchg_acq, .-vatomic16_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_xchg_rel, %function
vatomic16_xchg_rel:
.LFB52:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L61:
	ldxrh	w0, [x2]
	stlxrh	w3, w1, [x2]
	cbnz	w3, .L61
	ret
	.cfi_endproc
.LFE52:
	.size	vatomic16_xchg_rel, .-vatomic16_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_xchg_rlx, %function
vatomic16_xchg_rlx:
.LFB53:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L63:
	ldxrh	w0, [x2]
	stxrh	w3, w1, [x2]
	cbnz	w3, .L63
	ret
	.cfi_endproc
.LFE53:
	.size	vatomic16_xchg_rlx, .-vatomic16_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_xchg, %function
vatomic32_xchg:
.LFB54:
	.cfi_startproc
	mov	x2, x0
.L65:
	ldaxr	w0, [x2]
	stlxr	w3, w1, [x2]
	cbnz	w3, .L65
	ret
	.cfi_endproc
.LFE54:
	.size	vatomic32_xchg, .-vatomic32_xchg
	.align	2
	.p2align 4,,11
	.type	vatomic32_xchg_acq, %function
vatomic32_xchg_acq:
.LFB55:
	.cfi_startproc
	mov	x2, x0
.L67:
	ldaxr	w0, [x2]
	stxr	w3, w1, [x2]
	cbnz	w3, .L67
	ret
	.cfi_endproc
.LFE55:
	.size	vatomic32_xchg_acq, .-vatomic32_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_xchg_rel, %function
vatomic32_xchg_rel:
.LFB56:
	.cfi_startproc
	mov	x2, x0
.L69:
	ldxr	w0, [x2]
	stlxr	w3, w1, [x2]
	cbnz	w3, .L69
	ret
	.cfi_endproc
.LFE56:
	.size	vatomic32_xchg_rel, .-vatomic32_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_xchg_rlx, %function
vatomic32_xchg_rlx:
.LFB57:
	.cfi_startproc
	mov	x2, x0
.L71:
	ldxr	w0, [x2]
	stxr	w3, w1, [x2]
	cbnz	w3, .L71
	ret
	.cfi_endproc
.LFE57:
	.size	vatomic32_xchg_rlx, .-vatomic32_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_xchg, %function
vatomic64_xchg:
.LFB58:
	.cfi_startproc
	mov	x2, x0
.L73:
	ldaxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L73
	ret
	.cfi_endproc
.LFE58:
	.size	vatomic64_xchg, .-vatomic64_xchg
	.align	2
	.p2align 4,,11
	.type	vatomic64_xchg_acq, %function
vatomic64_xchg_acq:
.LFB59:
	.cfi_startproc
	mov	x2, x0
.L75:
	ldaxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L75
	ret
	.cfi_endproc
.LFE59:
	.size	vatomic64_xchg_acq, .-vatomic64_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_xchg_rel, %function
vatomic64_xchg_rel:
.LFB60:
	.cfi_startproc
	mov	x2, x0
.L77:
	ldxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L77
	ret
	.cfi_endproc
.LFE60:
	.size	vatomic64_xchg_rel, .-vatomic64_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_xchg_rlx, %function
vatomic64_xchg_rlx:
.LFB61:
	.cfi_startproc
	mov	x2, x0
.L79:
	ldxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L79
	ret
	.cfi_endproc
.LFE61:
	.size	vatomic64_xchg_rlx, .-vatomic64_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xchg, %function
vatomicsz_xchg:
.LFB806:
	.cfi_startproc
	mov	x2, x0
.L81:
	ldaxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L81
	ret
	.cfi_endproc
.LFE806:
	.size	vatomicsz_xchg, .-vatomicsz_xchg
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xchg_acq, %function
vatomicsz_xchg_acq:
.LFB828:
	.cfi_startproc
	mov	x2, x0
.L83:
	ldaxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L83
	ret
	.cfi_endproc
.LFE828:
	.size	vatomicsz_xchg_acq, .-vatomicsz_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xchg_rel, %function
vatomicsz_xchg_rel:
.LFB850:
	.cfi_startproc
	mov	x2, x0
.L85:
	ldxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L85
	ret
	.cfi_endproc
.LFE850:
	.size	vatomicsz_xchg_rel, .-vatomicsz_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xchg_rlx, %function
vatomicsz_xchg_rlx:
.LFB872:
	.cfi_startproc
	mov	x2, x0
.L87:
	ldxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L87
	ret
	.cfi_endproc
.LFE872:
	.size	vatomicsz_xchg_rlx, .-vatomicsz_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_xchg, %function
vatomicptr_xchg:
.LFB66:
	.cfi_startproc
	mov	x2, x0
.L89:
	ldaxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L89
	ret
	.cfi_endproc
.LFE66:
	.size	vatomicptr_xchg, .-vatomicptr_xchg
	.align	2
	.p2align 4,,11
	.type	vatomicptr_xchg_acq, %function
vatomicptr_xchg_acq:
.LFB67:
	.cfi_startproc
	mov	x2, x0
.L91:
	ldaxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L91
	ret
	.cfi_endproc
.LFE67:
	.size	vatomicptr_xchg_acq, .-vatomicptr_xchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_xchg_rel, %function
vatomicptr_xchg_rel:
.LFB68:
	.cfi_startproc
	mov	x2, x0
.L93:
	ldxr	x0, [x2]
	stlxr	w3, x1, [x2]
	cbnz	w3, .L93
	ret
	.cfi_endproc
.LFE68:
	.size	vatomicptr_xchg_rel, .-vatomicptr_xchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomicptr_xchg_rlx, %function
vatomicptr_xchg_rlx:
.LFB69:
	.cfi_startproc
	mov	x2, x0
.L95:
	ldxr	x0, [x2]
	stxr	w3, x1, [x2]
	cbnz	w3, .L95
	ret
	.cfi_endproc
.LFE69:
	.size	vatomicptr_xchg_rlx, .-vatomicptr_xchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_cmpxchg, %function
vatomic8_cmpxchg:
.LFB70:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	and	w2, w2, 255
.L97:
	ldaxrb	w0, [x3]
	cmp	w0, w1, uxtb
	bne	.L98
	stlxrb	w4, w2, [x3]
	cbnz	w4, .L97
.L98:
	ret
	.cfi_endproc
.LFE70:
	.size	vatomic8_cmpxchg, .-vatomic8_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomic8_cmpxchg_acq, %function
vatomic8_cmpxchg_acq:
.LFB71:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	and	w2, w2, 255
.L100:
	ldaxrb	w0, [x3]
	cmp	w0, w1, uxtb
	bne	.L101
	stxrb	w4, w2, [x3]
	cbnz	w4, .L100
.L101:
	ret
	.cfi_endproc
.LFE71:
	.size	vatomic8_cmpxchg_acq, .-vatomic8_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_cmpxchg_rel, %function
vatomic8_cmpxchg_rel:
.LFB72:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	and	w2, w2, 255
.L103:
	ldxrb	w0, [x3]
	cmp	w0, w1, uxtb
	bne	.L104
	stlxrb	w4, w2, [x3]
	cbnz	w4, .L103
.L104:
	ret
	.cfi_endproc
.LFE72:
	.size	vatomic8_cmpxchg_rel, .-vatomic8_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_cmpxchg_rlx, %function
vatomic8_cmpxchg_rlx:
.LFB73:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	and	w2, w2, 255
.L106:
	ldxrb	w0, [x3]
	cmp	w0, w1, uxtb
	bne	.L107
	stxrb	w4, w2, [x3]
	cbnz	w4, .L106
.L107:
	ret
	.cfi_endproc
.LFE73:
	.size	vatomic8_cmpxchg_rlx, .-vatomic8_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_cmpxchg, %function
vatomic16_cmpxchg:
.LFB74:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	and	w2, w2, 65535
.L109:
	ldaxrh	w0, [x3]
	cmp	w0, w1, uxth
	bne	.L110
	stlxrh	w4, w2, [x3]
	cbnz	w4, .L109
.L110:
	ret
	.cfi_endproc
.LFE74:
	.size	vatomic16_cmpxchg, .-vatomic16_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomic16_cmpxchg_acq, %function
vatomic16_cmpxchg_acq:
.LFB75:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	and	w2, w2, 65535
.L112:
	ldaxrh	w0, [x3]
	cmp	w0, w1, uxth
	bne	.L113
	stxrh	w4, w2, [x3]
	cbnz	w4, .L112
.L113:
	ret
	.cfi_endproc
.LFE75:
	.size	vatomic16_cmpxchg_acq, .-vatomic16_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_cmpxchg_rel, %function
vatomic16_cmpxchg_rel:
.LFB76:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	and	w2, w2, 65535
.L115:
	ldxrh	w0, [x3]
	cmp	w0, w1, uxth
	bne	.L116
	stlxrh	w4, w2, [x3]
	cbnz	w4, .L115
.L116:
	ret
	.cfi_endproc
.LFE76:
	.size	vatomic16_cmpxchg_rel, .-vatomic16_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_cmpxchg_rlx, %function
vatomic16_cmpxchg_rlx:
.LFB77:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	and	w2, w2, 65535
.L118:
	ldxrh	w0, [x3]
	cmp	w0, w1, uxth
	bne	.L119
	stxrh	w4, w2, [x3]
	cbnz	w4, .L118
.L119:
	ret
	.cfi_endproc
.LFE77:
	.size	vatomic16_cmpxchg_rlx, .-vatomic16_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_cmpxchg, %function
vatomic32_cmpxchg:
.LFB78:
	.cfi_startproc
	mov	x3, x0
.L121:
	ldaxr	w0, [x3]
	cmp	w0, w1
	bne	.L122
	stlxr	w4, w2, [x3]
	cbnz	w4, .L121
.L122:
	ret
	.cfi_endproc
.LFE78:
	.size	vatomic32_cmpxchg, .-vatomic32_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomic32_cmpxchg_acq, %function
vatomic32_cmpxchg_acq:
.LFB79:
	.cfi_startproc
	mov	x3, x0
.L124:
	ldaxr	w0, [x3]
	cmp	w0, w1
	bne	.L125
	stxr	w4, w2, [x3]
	cbnz	w4, .L124
.L125:
	ret
	.cfi_endproc
.LFE79:
	.size	vatomic32_cmpxchg_acq, .-vatomic32_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_cmpxchg_rel, %function
vatomic32_cmpxchg_rel:
.LFB80:
	.cfi_startproc
	mov	x3, x0
.L127:
	ldxr	w0, [x3]
	cmp	w0, w1
	bne	.L128
	stlxr	w4, w2, [x3]
	cbnz	w4, .L127
.L128:
	ret
	.cfi_endproc
.LFE80:
	.size	vatomic32_cmpxchg_rel, .-vatomic32_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_cmpxchg_rlx, %function
vatomic32_cmpxchg_rlx:
.LFB81:
	.cfi_startproc
	mov	x3, x0
.L130:
	ldxr	w0, [x3]
	cmp	w0, w1
	bne	.L131
	stxr	w4, w2, [x3]
	cbnz	w4, .L130
.L131:
	ret
	.cfi_endproc
.LFE81:
	.size	vatomic32_cmpxchg_rlx, .-vatomic32_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_cmpxchg, %function
vatomic64_cmpxchg:
.LFB82:
	.cfi_startproc
	mov	x3, x0
.L133:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L134
	stlxr	w4, x2, [x3]
	cbnz	w4, .L133
.L134:
	ret
	.cfi_endproc
.LFE82:
	.size	vatomic64_cmpxchg, .-vatomic64_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomic64_cmpxchg_acq, %function
vatomic64_cmpxchg_acq:
.LFB83:
	.cfi_startproc
	mov	x3, x0
.L136:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L137
	stxr	w4, x2, [x3]
	cbnz	w4, .L136
.L137:
	ret
	.cfi_endproc
.LFE83:
	.size	vatomic64_cmpxchg_acq, .-vatomic64_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_cmpxchg_rel, %function
vatomic64_cmpxchg_rel:
.LFB84:
	.cfi_startproc
	mov	x3, x0
.L139:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L140
	stlxr	w4, x2, [x3]
	cbnz	w4, .L139
.L140:
	ret
	.cfi_endproc
.LFE84:
	.size	vatomic64_cmpxchg_rel, .-vatomic64_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_cmpxchg_rlx, %function
vatomic64_cmpxchg_rlx:
.LFB85:
	.cfi_startproc
	mov	x3, x0
.L142:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L143
	stxr	w4, x2, [x3]
	cbnz	w4, .L142
.L143:
	ret
	.cfi_endproc
.LFE85:
	.size	vatomic64_cmpxchg_rlx, .-vatomic64_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_cmpxchg, %function
vatomicsz_cmpxchg:
.LFB952:
	.cfi_startproc
	mov	x3, x0
.L145:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L146
	stlxr	w4, x2, [x3]
	cbnz	w4, .L145
.L146:
	ret
	.cfi_endproc
.LFE952:
	.size	vatomicsz_cmpxchg, .-vatomicsz_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomicsz_cmpxchg_acq, %function
vatomicsz_cmpxchg_acq:
.LFB954:
	.cfi_startproc
	mov	x3, x0
.L148:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L149
	stxr	w4, x2, [x3]
	cbnz	w4, .L148
.L149:
	ret
	.cfi_endproc
.LFE954:
	.size	vatomicsz_cmpxchg_acq, .-vatomicsz_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_cmpxchg_rel, %function
vatomicsz_cmpxchg_rel:
.LFB956:
	.cfi_startproc
	mov	x3, x0
.L151:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L152
	stlxr	w4, x2, [x3]
	cbnz	w4, .L151
.L152:
	ret
	.cfi_endproc
.LFE956:
	.size	vatomicsz_cmpxchg_rel, .-vatomicsz_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_cmpxchg_rlx, %function
vatomicsz_cmpxchg_rlx:
.LFB958:
	.cfi_startproc
	mov	x3, x0
.L154:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L155
	stxr	w4, x2, [x3]
	cbnz	w4, .L154
.L155:
	ret
	.cfi_endproc
.LFE958:
	.size	vatomicsz_cmpxchg_rlx, .-vatomicsz_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_cmpxchg, %function
vatomicptr_cmpxchg:
.LFB90:
	.cfi_startproc
	mov	x3, x0
.L157:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L158
	stlxr	w4, x2, [x3]
	cbnz	w4, .L157
.L158:
	ret
	.cfi_endproc
.LFE90:
	.size	vatomicptr_cmpxchg, .-vatomicptr_cmpxchg
	.align	2
	.p2align 4,,11
	.type	vatomicptr_cmpxchg_acq, %function
vatomicptr_cmpxchg_acq:
.LFB91:
	.cfi_startproc
	mov	x3, x0
.L160:
	ldaxr	x0, [x3]
	cmp	x0, x1
	bne	.L161
	stxr	w4, x2, [x3]
	cbnz	w4, .L160
.L161:
	ret
	.cfi_endproc
.LFE91:
	.size	vatomicptr_cmpxchg_acq, .-vatomicptr_cmpxchg_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_cmpxchg_rel, %function
vatomicptr_cmpxchg_rel:
.LFB92:
	.cfi_startproc
	mov	x3, x0
.L163:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L164
	stlxr	w4, x2, [x3]
	cbnz	w4, .L163
.L164:
	ret
	.cfi_endproc
.LFE92:
	.size	vatomicptr_cmpxchg_rel, .-vatomicptr_cmpxchg_rel
	.align	2
	.p2align 4,,11
	.type	vatomicptr_cmpxchg_rlx, %function
vatomicptr_cmpxchg_rlx:
.LFB93:
	.cfi_startproc
	mov	x3, x0
.L166:
	ldxr	x0, [x3]
	cmp	x0, x1
	bne	.L167
	stxr	w4, x2, [x3]
	cbnz	w4, .L166
.L167:
	ret
	.cfi_endproc
.LFE93:
	.size	vatomicptr_cmpxchg_rlx, .-vatomicptr_cmpxchg_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_and, %function
vatomic8_get_and:
.LFB94:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L169:
	ldaxrb	w0, [x2]
	and	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L169
	ret
	.cfi_endproc
.LFE94:
	.size	vatomic8_get_and, .-vatomic8_get_and
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_and_acq, %function
vatomic8_get_and_acq:
.LFB95:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L171:
	ldaxrb	w0, [x2]
	and	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L171
	ret
	.cfi_endproc
.LFE95:
	.size	vatomic8_get_and_acq, .-vatomic8_get_and_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_and_rel, %function
vatomic8_get_and_rel:
.LFB96:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L173:
	ldxrb	w0, [x2]
	and	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L173
	ret
	.cfi_endproc
.LFE96:
	.size	vatomic8_get_and_rel, .-vatomic8_get_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_and_rlx, %function
vatomic8_get_and_rlx:
.LFB97:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L175:
	ldxrb	w0, [x2]
	and	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L175
	ret
	.cfi_endproc
.LFE97:
	.size	vatomic8_get_and_rlx, .-vatomic8_get_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_and, %function
vatomic16_get_and:
.LFB98:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L177:
	ldaxrh	w0, [x2]
	and	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L177
	ret
	.cfi_endproc
.LFE98:
	.size	vatomic16_get_and, .-vatomic16_get_and
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_and_acq, %function
vatomic16_get_and_acq:
.LFB99:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L179:
	ldaxrh	w0, [x2]
	and	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L179
	ret
	.cfi_endproc
.LFE99:
	.size	vatomic16_get_and_acq, .-vatomic16_get_and_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_and_rel, %function
vatomic16_get_and_rel:
.LFB100:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L181:
	ldxrh	w0, [x2]
	and	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L181
	ret
	.cfi_endproc
.LFE100:
	.size	vatomic16_get_and_rel, .-vatomic16_get_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_and_rlx, %function
vatomic16_get_and_rlx:
.LFB101:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L183:
	ldxrh	w0, [x2]
	and	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L183
	ret
	.cfi_endproc
.LFE101:
	.size	vatomic16_get_and_rlx, .-vatomic16_get_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_and, %function
vatomic32_get_and:
.LFB102:
	.cfi_startproc
	mov	x2, x0
.L185:
	ldaxr	w0, [x2]
	and	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L185
	ret
	.cfi_endproc
.LFE102:
	.size	vatomic32_get_and, .-vatomic32_get_and
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_and_acq, %function
vatomic32_get_and_acq:
.LFB103:
	.cfi_startproc
	mov	x2, x0
.L187:
	ldaxr	w0, [x2]
	and	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L187
	ret
	.cfi_endproc
.LFE103:
	.size	vatomic32_get_and_acq, .-vatomic32_get_and_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_and_rel, %function
vatomic32_get_and_rel:
.LFB104:
	.cfi_startproc
	mov	x2, x0
.L189:
	ldxr	w0, [x2]
	and	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L189
	ret
	.cfi_endproc
.LFE104:
	.size	vatomic32_get_and_rel, .-vatomic32_get_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_and_rlx, %function
vatomic32_get_and_rlx:
.LFB105:
	.cfi_startproc
	mov	x2, x0
.L191:
	ldxr	w0, [x2]
	and	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L191
	ret
	.cfi_endproc
.LFE105:
	.size	vatomic32_get_and_rlx, .-vatomic32_get_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_and, %function
vatomic64_get_and:
.LFB106:
	.cfi_startproc
	mov	x2, x0
.L193:
	ldaxr	x0, [x2]
	and	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L193
	ret
	.cfi_endproc
.LFE106:
	.size	vatomic64_get_and, .-vatomic64_get_and
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_and_acq, %function
vatomic64_get_and_acq:
.LFB107:
	.cfi_startproc
	mov	x2, x0
.L195:
	ldaxr	x0, [x2]
	and	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L195
	ret
	.cfi_endproc
.LFE107:
	.size	vatomic64_get_and_acq, .-vatomic64_get_and_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_and_rel, %function
vatomic64_get_and_rel:
.LFB108:
	.cfi_startproc
	mov	x2, x0
.L197:
	ldxr	x0, [x2]
	and	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L197
	ret
	.cfi_endproc
.LFE108:
	.size	vatomic64_get_and_rel, .-vatomic64_get_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_and_rlx, %function
vatomic64_get_and_rlx:
.LFB109:
	.cfi_startproc
	mov	x2, x0
.L199:
	ldxr	x0, [x2]
	and	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L199
	ret
	.cfi_endproc
.LFE109:
	.size	vatomic64_get_and_rlx, .-vatomic64_get_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_and, %function
vatomicsz_get_and:
.LFB808:
	.cfi_startproc
	mov	x2, x0
.L201:
	ldaxr	x0, [x2]
	and	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L201
	ret
	.cfi_endproc
.LFE808:
	.size	vatomicsz_get_and, .-vatomicsz_get_and
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_and_acq, %function
vatomicsz_get_and_acq:
.LFB830:
	.cfi_startproc
	mov	x2, x0
.L203:
	ldaxr	x0, [x2]
	and	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L203
	ret
	.cfi_endproc
.LFE830:
	.size	vatomicsz_get_and_acq, .-vatomicsz_get_and_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_and_rel, %function
vatomicsz_get_and_rel:
.LFB852:
	.cfi_startproc
	mov	x2, x0
.L205:
	ldxr	x0, [x2]
	and	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L205
	ret
	.cfi_endproc
.LFE852:
	.size	vatomicsz_get_and_rel, .-vatomicsz_get_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_and_rlx, %function
vatomicsz_get_and_rlx:
.LFB874:
	.cfi_startproc
	mov	x2, x0
.L207:
	ldxr	x0, [x2]
	and	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L207
	ret
	.cfi_endproc
.LFE874:
	.size	vatomicsz_get_and_rlx, .-vatomicsz_get_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_or, %function
vatomic8_get_or:
.LFB114:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L209:
	ldaxrb	w0, [x2]
	orr	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L209
	ret
	.cfi_endproc
.LFE114:
	.size	vatomic8_get_or, .-vatomic8_get_or
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_or_acq, %function
vatomic8_get_or_acq:
.LFB115:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L211:
	ldaxrb	w0, [x2]
	orr	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L211
	ret
	.cfi_endproc
.LFE115:
	.size	vatomic8_get_or_acq, .-vatomic8_get_or_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_or_rel, %function
vatomic8_get_or_rel:
.LFB116:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L213:
	ldxrb	w0, [x2]
	orr	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L213
	ret
	.cfi_endproc
.LFE116:
	.size	vatomic8_get_or_rel, .-vatomic8_get_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_or_rlx, %function
vatomic8_get_or_rlx:
.LFB117:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L215:
	ldxrb	w0, [x2]
	orr	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L215
	ret
	.cfi_endproc
.LFE117:
	.size	vatomic8_get_or_rlx, .-vatomic8_get_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_or, %function
vatomic16_get_or:
.LFB118:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L217:
	ldaxrh	w0, [x2]
	orr	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L217
	ret
	.cfi_endproc
.LFE118:
	.size	vatomic16_get_or, .-vatomic16_get_or
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_or_acq, %function
vatomic16_get_or_acq:
.LFB119:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L219:
	ldaxrh	w0, [x2]
	orr	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L219
	ret
	.cfi_endproc
.LFE119:
	.size	vatomic16_get_or_acq, .-vatomic16_get_or_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_or_rel, %function
vatomic16_get_or_rel:
.LFB120:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L221:
	ldxrh	w0, [x2]
	orr	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L221
	ret
	.cfi_endproc
.LFE120:
	.size	vatomic16_get_or_rel, .-vatomic16_get_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_or_rlx, %function
vatomic16_get_or_rlx:
.LFB121:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L223:
	ldxrh	w0, [x2]
	orr	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L223
	ret
	.cfi_endproc
.LFE121:
	.size	vatomic16_get_or_rlx, .-vatomic16_get_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_or, %function
vatomic32_get_or:
.LFB122:
	.cfi_startproc
	mov	x2, x0
.L225:
	ldaxr	w0, [x2]
	orr	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L225
	ret
	.cfi_endproc
.LFE122:
	.size	vatomic32_get_or, .-vatomic32_get_or
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_or_acq, %function
vatomic32_get_or_acq:
.LFB123:
	.cfi_startproc
	mov	x2, x0
.L227:
	ldaxr	w0, [x2]
	orr	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L227
	ret
	.cfi_endproc
.LFE123:
	.size	vatomic32_get_or_acq, .-vatomic32_get_or_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_or_rel, %function
vatomic32_get_or_rel:
.LFB124:
	.cfi_startproc
	mov	x2, x0
.L229:
	ldxr	w0, [x2]
	orr	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L229
	ret
	.cfi_endproc
.LFE124:
	.size	vatomic32_get_or_rel, .-vatomic32_get_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_or_rlx, %function
vatomic32_get_or_rlx:
.LFB125:
	.cfi_startproc
	mov	x2, x0
.L231:
	ldxr	w0, [x2]
	orr	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L231
	ret
	.cfi_endproc
.LFE125:
	.size	vatomic32_get_or_rlx, .-vatomic32_get_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_or, %function
vatomic64_get_or:
.LFB126:
	.cfi_startproc
	mov	x2, x0
.L233:
	ldaxr	x0, [x2]
	orr	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L233
	ret
	.cfi_endproc
.LFE126:
	.size	vatomic64_get_or, .-vatomic64_get_or
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_or_acq, %function
vatomic64_get_or_acq:
.LFB127:
	.cfi_startproc
	mov	x2, x0
.L235:
	ldaxr	x0, [x2]
	orr	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L235
	ret
	.cfi_endproc
.LFE127:
	.size	vatomic64_get_or_acq, .-vatomic64_get_or_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_or_rel, %function
vatomic64_get_or_rel:
.LFB128:
	.cfi_startproc
	mov	x2, x0
.L237:
	ldxr	x0, [x2]
	orr	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L237
	ret
	.cfi_endproc
.LFE128:
	.size	vatomic64_get_or_rel, .-vatomic64_get_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_or_rlx, %function
vatomic64_get_or_rlx:
.LFB129:
	.cfi_startproc
	mov	x2, x0
.L239:
	ldxr	x0, [x2]
	orr	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L239
	ret
	.cfi_endproc
.LFE129:
	.size	vatomic64_get_or_rlx, .-vatomic64_get_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_or, %function
vatomicsz_get_or:
.LFB812:
	.cfi_startproc
	mov	x2, x0
.L241:
	ldaxr	x0, [x2]
	orr	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L241
	ret
	.cfi_endproc
.LFE812:
	.size	vatomicsz_get_or, .-vatomicsz_get_or
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_or_acq, %function
vatomicsz_get_or_acq:
.LFB834:
	.cfi_startproc
	mov	x2, x0
.L243:
	ldaxr	x0, [x2]
	orr	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L243
	ret
	.cfi_endproc
.LFE834:
	.size	vatomicsz_get_or_acq, .-vatomicsz_get_or_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_or_rel, %function
vatomicsz_get_or_rel:
.LFB856:
	.cfi_startproc
	mov	x2, x0
.L245:
	ldxr	x0, [x2]
	orr	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L245
	ret
	.cfi_endproc
.LFE856:
	.size	vatomicsz_get_or_rel, .-vatomicsz_get_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_or_rlx, %function
vatomicsz_get_or_rlx:
.LFB878:
	.cfi_startproc
	mov	x2, x0
.L247:
	ldxr	x0, [x2]
	orr	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L247
	ret
	.cfi_endproc
.LFE878:
	.size	vatomicsz_get_or_rlx, .-vatomicsz_get_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_xor, %function
vatomic8_get_xor:
.LFB134:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L249:
	ldaxrb	w0, [x2]
	eor	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L249
	ret
	.cfi_endproc
.LFE134:
	.size	vatomic8_get_xor, .-vatomic8_get_xor
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_xor_acq, %function
vatomic8_get_xor_acq:
.LFB135:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L251:
	ldaxrb	w0, [x2]
	eor	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L251
	ret
	.cfi_endproc
.LFE135:
	.size	vatomic8_get_xor_acq, .-vatomic8_get_xor_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_xor_rel, %function
vatomic8_get_xor_rel:
.LFB136:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L253:
	ldxrb	w0, [x2]
	eor	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L253
	ret
	.cfi_endproc
.LFE136:
	.size	vatomic8_get_xor_rel, .-vatomic8_get_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_xor_rlx, %function
vatomic8_get_xor_rlx:
.LFB137:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L255:
	ldxrb	w0, [x2]
	eor	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L255
	ret
	.cfi_endproc
.LFE137:
	.size	vatomic8_get_xor_rlx, .-vatomic8_get_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_xor, %function
vatomic16_get_xor:
.LFB138:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L257:
	ldaxrh	w0, [x2]
	eor	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L257
	ret
	.cfi_endproc
.LFE138:
	.size	vatomic16_get_xor, .-vatomic16_get_xor
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_xor_acq, %function
vatomic16_get_xor_acq:
.LFB139:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L259:
	ldaxrh	w0, [x2]
	eor	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L259
	ret
	.cfi_endproc
.LFE139:
	.size	vatomic16_get_xor_acq, .-vatomic16_get_xor_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_xor_rel, %function
vatomic16_get_xor_rel:
.LFB140:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L261:
	ldxrh	w0, [x2]
	eor	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L261
	ret
	.cfi_endproc
.LFE140:
	.size	vatomic16_get_xor_rel, .-vatomic16_get_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_xor_rlx, %function
vatomic16_get_xor_rlx:
.LFB141:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L263:
	ldxrh	w0, [x2]
	eor	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L263
	ret
	.cfi_endproc
.LFE141:
	.size	vatomic16_get_xor_rlx, .-vatomic16_get_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_xor, %function
vatomic32_get_xor:
.LFB142:
	.cfi_startproc
	mov	x2, x0
.L265:
	ldaxr	w0, [x2]
	eor	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L265
	ret
	.cfi_endproc
.LFE142:
	.size	vatomic32_get_xor, .-vatomic32_get_xor
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_xor_acq, %function
vatomic32_get_xor_acq:
.LFB143:
	.cfi_startproc
	mov	x2, x0
.L267:
	ldaxr	w0, [x2]
	eor	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L267
	ret
	.cfi_endproc
.LFE143:
	.size	vatomic32_get_xor_acq, .-vatomic32_get_xor_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_xor_rel, %function
vatomic32_get_xor_rel:
.LFB144:
	.cfi_startproc
	mov	x2, x0
.L269:
	ldxr	w0, [x2]
	eor	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L269
	ret
	.cfi_endproc
.LFE144:
	.size	vatomic32_get_xor_rel, .-vatomic32_get_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_xor_rlx, %function
vatomic32_get_xor_rlx:
.LFB145:
	.cfi_startproc
	mov	x2, x0
.L271:
	ldxr	w0, [x2]
	eor	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L271
	ret
	.cfi_endproc
.LFE145:
	.size	vatomic32_get_xor_rlx, .-vatomic32_get_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_xor, %function
vatomic64_get_xor:
.LFB146:
	.cfi_startproc
	mov	x2, x0
.L273:
	ldaxr	x0, [x2]
	eor	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L273
	ret
	.cfi_endproc
.LFE146:
	.size	vatomic64_get_xor, .-vatomic64_get_xor
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_xor_acq, %function
vatomic64_get_xor_acq:
.LFB147:
	.cfi_startproc
	mov	x2, x0
.L275:
	ldaxr	x0, [x2]
	eor	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L275
	ret
	.cfi_endproc
.LFE147:
	.size	vatomic64_get_xor_acq, .-vatomic64_get_xor_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_xor_rel, %function
vatomic64_get_xor_rel:
.LFB148:
	.cfi_startproc
	mov	x2, x0
.L277:
	ldxr	x0, [x2]
	eor	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L277
	ret
	.cfi_endproc
.LFE148:
	.size	vatomic64_get_xor_rel, .-vatomic64_get_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_xor_rlx, %function
vatomic64_get_xor_rlx:
.LFB149:
	.cfi_startproc
	mov	x2, x0
.L279:
	ldxr	x0, [x2]
	eor	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L279
	ret
	.cfi_endproc
.LFE149:
	.size	vatomic64_get_xor_rlx, .-vatomic64_get_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_xor, %function
vatomicsz_get_xor:
.LFB816:
	.cfi_startproc
	mov	x2, x0
.L281:
	ldaxr	x0, [x2]
	eor	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L281
	ret
	.cfi_endproc
.LFE816:
	.size	vatomicsz_get_xor, .-vatomicsz_get_xor
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_xor_acq, %function
vatomicsz_get_xor_acq:
.LFB838:
	.cfi_startproc
	mov	x2, x0
.L283:
	ldaxr	x0, [x2]
	eor	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L283
	ret
	.cfi_endproc
.LFE838:
	.size	vatomicsz_get_xor_acq, .-vatomicsz_get_xor_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_xor_rel, %function
vatomicsz_get_xor_rel:
.LFB860:
	.cfi_startproc
	mov	x2, x0
.L285:
	ldxr	x0, [x2]
	eor	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L285
	ret
	.cfi_endproc
.LFE860:
	.size	vatomicsz_get_xor_rel, .-vatomicsz_get_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_xor_rlx, %function
vatomicsz_get_xor_rlx:
.LFB882:
	.cfi_startproc
	mov	x2, x0
.L287:
	ldxr	x0, [x2]
	eor	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L287
	ret
	.cfi_endproc
.LFE882:
	.size	vatomicsz_get_xor_rlx, .-vatomicsz_get_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_add, %function
vatomic8_get_add:
.LFB154:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L289:
	ldaxrb	w0, [x2]
	add	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L289
	ret
	.cfi_endproc
.LFE154:
	.size	vatomic8_get_add, .-vatomic8_get_add
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_add_acq, %function
vatomic8_get_add_acq:
.LFB155:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L291:
	ldaxrb	w0, [x2]
	add	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L291
	ret
	.cfi_endproc
.LFE155:
	.size	vatomic8_get_add_acq, .-vatomic8_get_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_add_rel, %function
vatomic8_get_add_rel:
.LFB156:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L293:
	ldxrb	w0, [x2]
	add	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L293
	ret
	.cfi_endproc
.LFE156:
	.size	vatomic8_get_add_rel, .-vatomic8_get_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_add_rlx, %function
vatomic8_get_add_rlx:
.LFB157:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L295:
	ldxrb	w0, [x2]
	add	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L295
	ret
	.cfi_endproc
.LFE157:
	.size	vatomic8_get_add_rlx, .-vatomic8_get_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_add, %function
vatomic16_get_add:
.LFB158:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L297:
	ldaxrh	w0, [x2]
	add	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L297
	ret
	.cfi_endproc
.LFE158:
	.size	vatomic16_get_add, .-vatomic16_get_add
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_add_acq, %function
vatomic16_get_add_acq:
.LFB159:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L299:
	ldaxrh	w0, [x2]
	add	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L299
	ret
	.cfi_endproc
.LFE159:
	.size	vatomic16_get_add_acq, .-vatomic16_get_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_add_rel, %function
vatomic16_get_add_rel:
.LFB160:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L301:
	ldxrh	w0, [x2]
	add	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L301
	ret
	.cfi_endproc
.LFE160:
	.size	vatomic16_get_add_rel, .-vatomic16_get_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_add_rlx, %function
vatomic16_get_add_rlx:
.LFB161:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L303:
	ldxrh	w0, [x2]
	add	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L303
	ret
	.cfi_endproc
.LFE161:
	.size	vatomic16_get_add_rlx, .-vatomic16_get_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_add, %function
vatomic32_get_add:
.LFB162:
	.cfi_startproc
	mov	x2, x0
.L305:
	ldaxr	w0, [x2]
	add	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L305
	ret
	.cfi_endproc
.LFE162:
	.size	vatomic32_get_add, .-vatomic32_get_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_add_acq, %function
vatomic32_get_add_acq:
.LFB163:
	.cfi_startproc
	mov	x2, x0
.L307:
	ldaxr	w0, [x2]
	add	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L307
	ret
	.cfi_endproc
.LFE163:
	.size	vatomic32_get_add_acq, .-vatomic32_get_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_add_rel, %function
vatomic32_get_add_rel:
.LFB164:
	.cfi_startproc
	mov	x2, x0
.L309:
	ldxr	w0, [x2]
	add	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L309
	ret
	.cfi_endproc
.LFE164:
	.size	vatomic32_get_add_rel, .-vatomic32_get_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_add_rlx, %function
vatomic32_get_add_rlx:
.LFB165:
	.cfi_startproc
	mov	x2, x0
.L311:
	ldxr	w0, [x2]
	add	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L311
	ret
	.cfi_endproc
.LFE165:
	.size	vatomic32_get_add_rlx, .-vatomic32_get_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_add, %function
vatomic64_get_add:
.LFB166:
	.cfi_startproc
	mov	x2, x0
.L313:
	ldaxr	x0, [x2]
	add	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L313
	ret
	.cfi_endproc
.LFE166:
	.size	vatomic64_get_add, .-vatomic64_get_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_add_acq, %function
vatomic64_get_add_acq:
.LFB167:
	.cfi_startproc
	mov	x2, x0
.L315:
	ldaxr	x0, [x2]
	add	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L315
	ret
	.cfi_endproc
.LFE167:
	.size	vatomic64_get_add_acq, .-vatomic64_get_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_add_rel, %function
vatomic64_get_add_rel:
.LFB168:
	.cfi_startproc
	mov	x2, x0
.L317:
	ldxr	x0, [x2]
	add	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L317
	ret
	.cfi_endproc
.LFE168:
	.size	vatomic64_get_add_rel, .-vatomic64_get_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_add_rlx, %function
vatomic64_get_add_rlx:
.LFB169:
	.cfi_startproc
	mov	x2, x0
.L319:
	ldxr	x0, [x2]
	add	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L319
	ret
	.cfi_endproc
.LFE169:
	.size	vatomic64_get_add_rlx, .-vatomic64_get_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_add, %function
vatomicsz_get_add:
.LFB820:
	.cfi_startproc
	mov	x2, x0
.L321:
	ldaxr	x0, [x2]
	add	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L321
	ret
	.cfi_endproc
.LFE820:
	.size	vatomicsz_get_add, .-vatomicsz_get_add
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_add_acq, %function
vatomicsz_get_add_acq:
.LFB842:
	.cfi_startproc
	mov	x2, x0
.L323:
	ldaxr	x0, [x2]
	add	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L323
	ret
	.cfi_endproc
.LFE842:
	.size	vatomicsz_get_add_acq, .-vatomicsz_get_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_add_rel, %function
vatomicsz_get_add_rel:
.LFB864:
	.cfi_startproc
	mov	x2, x0
.L325:
	ldxr	x0, [x2]
	add	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L325
	ret
	.cfi_endproc
.LFE864:
	.size	vatomicsz_get_add_rel, .-vatomicsz_get_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_add_rlx, %function
vatomicsz_get_add_rlx:
.LFB886:
	.cfi_startproc
	mov	x2, x0
.L327:
	ldxr	x0, [x2]
	add	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L327
	ret
	.cfi_endproc
.LFE886:
	.size	vatomicsz_get_add_rlx, .-vatomicsz_get_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_sub, %function
vatomic8_get_sub:
.LFB174:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L329:
	ldaxrb	w0, [x2]
	sub	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L329
	ret
	.cfi_endproc
.LFE174:
	.size	vatomic8_get_sub, .-vatomic8_get_sub
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_sub_acq, %function
vatomic8_get_sub_acq:
.LFB175:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L331:
	ldaxrb	w0, [x2]
	sub	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L331
	ret
	.cfi_endproc
.LFE175:
	.size	vatomic8_get_sub_acq, .-vatomic8_get_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_sub_rel, %function
vatomic8_get_sub_rel:
.LFB176:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L333:
	ldxrb	w0, [x2]
	sub	w3, w0, w1
	stlxrb	w4, w3, [x2]
	cbnz	w4, .L333
	ret
	.cfi_endproc
.LFE176:
	.size	vatomic8_get_sub_rel, .-vatomic8_get_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_sub_rlx, %function
vatomic8_get_sub_rlx:
.LFB177:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L335:
	ldxrb	w0, [x2]
	sub	w3, w0, w1
	stxrb	w4, w3, [x2]
	cbnz	w4, .L335
	ret
	.cfi_endproc
.LFE177:
	.size	vatomic8_get_sub_rlx, .-vatomic8_get_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_sub, %function
vatomic16_get_sub:
.LFB178:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L337:
	ldaxrh	w0, [x2]
	sub	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L337
	ret
	.cfi_endproc
.LFE178:
	.size	vatomic16_get_sub, .-vatomic16_get_sub
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_sub_acq, %function
vatomic16_get_sub_acq:
.LFB179:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L339:
	ldaxrh	w0, [x2]
	sub	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L339
	ret
	.cfi_endproc
.LFE179:
	.size	vatomic16_get_sub_acq, .-vatomic16_get_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_sub_rel, %function
vatomic16_get_sub_rel:
.LFB180:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L341:
	ldxrh	w0, [x2]
	sub	w3, w0, w1
	stlxrh	w4, w3, [x2]
	cbnz	w4, .L341
	ret
	.cfi_endproc
.LFE180:
	.size	vatomic16_get_sub_rel, .-vatomic16_get_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_sub_rlx, %function
vatomic16_get_sub_rlx:
.LFB181:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L343:
	ldxrh	w0, [x2]
	sub	w3, w0, w1
	stxrh	w4, w3, [x2]
	cbnz	w4, .L343
	ret
	.cfi_endproc
.LFE181:
	.size	vatomic16_get_sub_rlx, .-vatomic16_get_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_sub, %function
vatomic32_get_sub:
.LFB182:
	.cfi_startproc
	mov	x2, x0
.L345:
	ldaxr	w0, [x2]
	sub	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L345
	ret
	.cfi_endproc
.LFE182:
	.size	vatomic32_get_sub, .-vatomic32_get_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_sub_acq, %function
vatomic32_get_sub_acq:
.LFB183:
	.cfi_startproc
	mov	x2, x0
.L347:
	ldaxr	w0, [x2]
	sub	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L347
	ret
	.cfi_endproc
.LFE183:
	.size	vatomic32_get_sub_acq, .-vatomic32_get_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_sub_rel, %function
vatomic32_get_sub_rel:
.LFB184:
	.cfi_startproc
	mov	x2, x0
.L349:
	ldxr	w0, [x2]
	sub	w3, w0, w1
	stlxr	w4, w3, [x2]
	cbnz	w4, .L349
	ret
	.cfi_endproc
.LFE184:
	.size	vatomic32_get_sub_rel, .-vatomic32_get_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_sub_rlx, %function
vatomic32_get_sub_rlx:
.LFB185:
	.cfi_startproc
	mov	x2, x0
.L351:
	ldxr	w0, [x2]
	sub	w3, w0, w1
	stxr	w4, w3, [x2]
	cbnz	w4, .L351
	ret
	.cfi_endproc
.LFE185:
	.size	vatomic32_get_sub_rlx, .-vatomic32_get_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_sub, %function
vatomic64_get_sub:
.LFB186:
	.cfi_startproc
	mov	x2, x0
.L353:
	ldaxr	x0, [x2]
	sub	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L353
	ret
	.cfi_endproc
.LFE186:
	.size	vatomic64_get_sub, .-vatomic64_get_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_sub_acq, %function
vatomic64_get_sub_acq:
.LFB187:
	.cfi_startproc
	mov	x2, x0
.L355:
	ldaxr	x0, [x2]
	sub	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L355
	ret
	.cfi_endproc
.LFE187:
	.size	vatomic64_get_sub_acq, .-vatomic64_get_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_sub_rel, %function
vatomic64_get_sub_rel:
.LFB188:
	.cfi_startproc
	mov	x2, x0
.L357:
	ldxr	x0, [x2]
	sub	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L357
	ret
	.cfi_endproc
.LFE188:
	.size	vatomic64_get_sub_rel, .-vatomic64_get_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_sub_rlx, %function
vatomic64_get_sub_rlx:
.LFB189:
	.cfi_startproc
	mov	x2, x0
.L359:
	ldxr	x0, [x2]
	sub	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L359
	ret
	.cfi_endproc
.LFE189:
	.size	vatomic64_get_sub_rlx, .-vatomic64_get_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_sub, %function
vatomicsz_get_sub:
.LFB824:
	.cfi_startproc
	mov	x2, x0
.L361:
	ldaxr	x0, [x2]
	sub	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L361
	ret
	.cfi_endproc
.LFE824:
	.size	vatomicsz_get_sub, .-vatomicsz_get_sub
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_sub_acq, %function
vatomicsz_get_sub_acq:
.LFB846:
	.cfi_startproc
	mov	x2, x0
.L363:
	ldaxr	x0, [x2]
	sub	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L363
	ret
	.cfi_endproc
.LFE846:
	.size	vatomicsz_get_sub_acq, .-vatomicsz_get_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_sub_rel, %function
vatomicsz_get_sub_rel:
.LFB868:
	.cfi_startproc
	mov	x2, x0
.L365:
	ldxr	x0, [x2]
	sub	x3, x0, x1
	stlxr	w4, x3, [x2]
	cbnz	w4, .L365
	ret
	.cfi_endproc
.LFE868:
	.size	vatomicsz_get_sub_rel, .-vatomicsz_get_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_sub_rlx, %function
vatomicsz_get_sub_rlx:
.LFB890:
	.cfi_startproc
	mov	x2, x0
.L367:
	ldxr	x0, [x2]
	sub	x3, x0, x1
	stxr	w4, x3, [x2]
	cbnz	w4, .L367
	ret
	.cfi_endproc
.LFE890:
	.size	vatomicsz_get_sub_rlx, .-vatomicsz_get_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_max, %function
vatomic8_get_max:
.LFB194:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	ldarb	w0, [x0]
	b	.L370
	.p2align 2,,3
.L372:
.L373:
	ldaxrb	w2, [x3]
	cmp	w2, w0, uxtb
	bne	.L374
	stlxrb	w4, w1, [x3]
	cbnz	w4, .L373
.L374:
	and	w2, w2, 255
	cmp	w0, w2
	beq	.L369
	mov	w0, w2
.L370:
	cmp	w0, w1
	bcc	.L372
.L369:
	ret
	.cfi_endproc
.LFE194:
	.size	vatomic8_get_max, .-vatomic8_get_max
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_max_acq, %function
vatomic8_get_max_acq:
.LFB195:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	ldarb	w0, [x0]
	b	.L377
	.p2align 2,,3
.L379:
.L380:
	ldaxrb	w2, [x3]
	cmp	w2, w0, uxtb
	bne	.L381
	stxrb	w4, w1, [x3]
	cbnz	w4, .L380
.L381:
	and	w2, w2, 255
	cmp	w0, w2
	beq	.L376
	mov	w0, w2
.L377:
	cmp	w0, w1
	bcc	.L379
.L376:
	ret
	.cfi_endproc
.LFE195:
	.size	vatomic8_get_max_acq, .-vatomic8_get_max_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_max_rel, %function
vatomic8_get_max_rel:
.LFB196:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	ldrb	w0, [x0]
	b	.L384
	.p2align 2,,3
.L386:
.L387:
	ldxrb	w2, [x3]
	cmp	w2, w0, uxtb
	bne	.L388
	stlxrb	w4, w1, [x3]
	cbnz	w4, .L387
.L388:
	and	w2, w2, 255
	cmp	w0, w2
	beq	.L383
	mov	w0, w2
.L384:
	cmp	w0, w1
	bcc	.L386
.L383:
	ret
	.cfi_endproc
.LFE196:
	.size	vatomic8_get_max_rel, .-vatomic8_get_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_max_rlx, %function
vatomic8_get_max_rlx:
.LFB197:
	.cfi_startproc
	and	w1, w1, 255
	mov	x3, x0
	ldrb	w0, [x0]
	b	.L391
	.p2align 2,,3
.L393:
.L394:
	ldxrb	w2, [x3]
	cmp	w2, w0, uxtb
	bne	.L395
	stxrb	w4, w1, [x3]
	cbnz	w4, .L394
.L395:
	and	w2, w2, 255
	cmp	w0, w2
	beq	.L390
	mov	w0, w2
.L391:
	cmp	w0, w1
	bcc	.L393
.L390:
	ret
	.cfi_endproc
.LFE197:
	.size	vatomic8_get_max_rlx, .-vatomic8_get_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_max, %function
vatomic16_get_max:
.LFB198:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	ldarh	w0, [x0]
	b	.L398
	.p2align 2,,3
.L400:
.L401:
	ldaxrh	w2, [x3]
	cmp	w2, w0, uxth
	bne	.L402
	stlxrh	w4, w1, [x3]
	cbnz	w4, .L401
.L402:
	and	w2, w2, 65535
	cmp	w0, w2
	beq	.L397
	mov	w0, w2
.L398:
	cmp	w0, w1
	bcc	.L400
.L397:
	ret
	.cfi_endproc
.LFE198:
	.size	vatomic16_get_max, .-vatomic16_get_max
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_max_acq, %function
vatomic16_get_max_acq:
.LFB199:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	ldarh	w0, [x0]
	b	.L405
	.p2align 2,,3
.L407:
.L408:
	ldaxrh	w2, [x3]
	cmp	w2, w0, uxth
	bne	.L409
	stxrh	w4, w1, [x3]
	cbnz	w4, .L408
.L409:
	and	w2, w2, 65535
	cmp	w0, w2
	beq	.L404
	mov	w0, w2
.L405:
	cmp	w0, w1
	bcc	.L407
.L404:
	ret
	.cfi_endproc
.LFE199:
	.size	vatomic16_get_max_acq, .-vatomic16_get_max_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_max_rel, %function
vatomic16_get_max_rel:
.LFB200:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	ldrh	w0, [x0]
	b	.L412
	.p2align 2,,3
.L414:
.L415:
	ldxrh	w2, [x3]
	cmp	w2, w0, uxth
	bne	.L416
	stlxrh	w4, w1, [x3]
	cbnz	w4, .L415
.L416:
	and	w2, w2, 65535
	cmp	w0, w2
	beq	.L411
	mov	w0, w2
.L412:
	cmp	w0, w1
	bcc	.L414
.L411:
	ret
	.cfi_endproc
.LFE200:
	.size	vatomic16_get_max_rel, .-vatomic16_get_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_max_rlx, %function
vatomic16_get_max_rlx:
.LFB201:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x3, x0
	ldrh	w0, [x0]
	b	.L419
	.p2align 2,,3
.L421:
.L422:
	ldxrh	w2, [x3]
	cmp	w2, w0, uxth
	bne	.L423
	stxrh	w4, w1, [x3]
	cbnz	w4, .L422
.L423:
	and	w2, w2, 65535
	cmp	w0, w2
	beq	.L418
	mov	w0, w2
.L419:
	cmp	w0, w1
	bcc	.L421
.L418:
	ret
	.cfi_endproc
.LFE201:
	.size	vatomic16_get_max_rlx, .-vatomic16_get_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_max, %function
vatomic32_get_max:
.LFB202:
	.cfi_startproc
	mov	x3, x0
	ldar	w0, [x0]
	b	.L426
	.p2align 2,,3
.L428:
.L429:
	ldaxr	w2, [x3]
	cmp	w2, w0
	bne	.L430
	stlxr	w4, w1, [x3]
	cbnz	w4, .L429
.L430:
	cmp	w0, w2
	beq	.L424
	mov	w0, w2
.L426:
	cmp	w0, w1
	bcc	.L428
.L424:
	ret
	.cfi_endproc
.LFE202:
	.size	vatomic32_get_max, .-vatomic32_get_max
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_max_acq, %function
vatomic32_get_max_acq:
.LFB203:
	.cfi_startproc
	mov	x3, x0
	ldar	w0, [x0]
	b	.L433
	.p2align 2,,3
.L435:
.L436:
	ldaxr	w2, [x3]
	cmp	w2, w0
	bne	.L437
	stxr	w4, w1, [x3]
	cbnz	w4, .L436
.L437:
	cmp	w0, w2
	beq	.L431
	mov	w0, w2
.L433:
	cmp	w0, w1
	bcc	.L435
.L431:
	ret
	.cfi_endproc
.LFE203:
	.size	vatomic32_get_max_acq, .-vatomic32_get_max_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_max_rel, %function
vatomic32_get_max_rel:
.LFB204:
	.cfi_startproc
	mov	x3, x0
	ldr	w0, [x0]
	b	.L440
	.p2align 2,,3
.L442:
.L443:
	ldxr	w2, [x3]
	cmp	w2, w0
	bne	.L444
	stlxr	w4, w1, [x3]
	cbnz	w4, .L443
.L444:
	cmp	w0, w2
	beq	.L438
	mov	w0, w2
.L440:
	cmp	w0, w1
	bcc	.L442
.L438:
	ret
	.cfi_endproc
.LFE204:
	.size	vatomic32_get_max_rel, .-vatomic32_get_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_max_rlx, %function
vatomic32_get_max_rlx:
.LFB205:
	.cfi_startproc
	mov	x3, x0
	ldr	w0, [x0]
	b	.L447
	.p2align 2,,3
.L449:
.L450:
	ldxr	w2, [x3]
	cmp	w2, w0
	bne	.L451
	stxr	w4, w1, [x3]
	cbnz	w4, .L450
.L451:
	cmp	w0, w2
	beq	.L445
	mov	w0, w2
.L447:
	cmp	w0, w1
	bcc	.L449
.L445:
	ret
	.cfi_endproc
.LFE205:
	.size	vatomic32_get_max_rlx, .-vatomic32_get_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_max, %function
vatomic64_get_max:
.LFB206:
	.cfi_startproc
	mov	x3, x0
	ldar	x0, [x0]
	b	.L454
	.p2align 2,,3
.L456:
.L457:
	ldaxr	x2, [x3]
	cmp	x2, x0
	bne	.L458
	stlxr	w4, x1, [x3]
	cbnz	w4, .L457
.L458:
	cmp	x0, x2
	beq	.L452
	mov	x0, x2
.L454:
	cmp	x0, x1
	bcc	.L456
.L452:
	ret
	.cfi_endproc
.LFE206:
	.size	vatomic64_get_max, .-vatomic64_get_max
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_max_acq, %function
vatomic64_get_max_acq:
.LFB207:
	.cfi_startproc
	mov	x3, x0
	ldar	x0, [x0]
	b	.L461
	.p2align 2,,3
.L463:
.L464:
	ldaxr	x2, [x3]
	cmp	x2, x0
	bne	.L465
	stxr	w4, x1, [x3]
	cbnz	w4, .L464
.L465:
	cmp	x0, x2
	beq	.L459
	mov	x0, x2
.L461:
	cmp	x0, x1
	bcc	.L463
.L459:
	ret
	.cfi_endproc
.LFE207:
	.size	vatomic64_get_max_acq, .-vatomic64_get_max_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_max_rel, %function
vatomic64_get_max_rel:
.LFB208:
	.cfi_startproc
	mov	x3, x0
	ldr	x0, [x0]
	b	.L468
	.p2align 2,,3
.L470:
.L471:
	ldxr	x2, [x3]
	cmp	x2, x0
	bne	.L472
	stlxr	w4, x1, [x3]
	cbnz	w4, .L471
.L472:
	cmp	x0, x2
	beq	.L466
	mov	x0, x2
.L468:
	cmp	x0, x1
	bcc	.L470
.L466:
	ret
	.cfi_endproc
.LFE208:
	.size	vatomic64_get_max_rel, .-vatomic64_get_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_max_rlx, %function
vatomic64_get_max_rlx:
.LFB209:
	.cfi_startproc
	mov	x3, x0
	ldr	x0, [x0]
	b	.L475
	.p2align 2,,3
.L477:
.L478:
	ldxr	x2, [x3]
	cmp	x2, x0
	bne	.L479
	stxr	w4, x1, [x3]
	cbnz	w4, .L478
.L479:
	cmp	x0, x2
	beq	.L473
	mov	x0, x2
.L475:
	cmp	x0, x1
	bcc	.L477
.L473:
	ret
	.cfi_endproc
.LFE209:
	.size	vatomic64_get_max_rlx, .-vatomic64_get_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_max, %function
vatomicsz_get_max:
.LFB960:
	.cfi_startproc
	mov	x3, x0
	ldar	x0, [x0]
	b	.L482
	.p2align 2,,3
.L484:
.L485:
	ldaxr	x2, [x3]
	cmp	x2, x0
	bne	.L486
	stlxr	w4, x1, [x3]
	cbnz	w4, .L485
.L486:
	cmp	x0, x2
	beq	.L480
	mov	x0, x2
.L482:
	cmp	x1, x0
	bhi	.L484
.L480:
	ret
	.cfi_endproc
.LFE960:
	.size	vatomicsz_get_max, .-vatomicsz_get_max
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_max_acq, %function
vatomicsz_get_max_acq:
.LFB962:
	.cfi_startproc
	mov	x3, x0
	ldar	x0, [x0]
	b	.L489
	.p2align 2,,3
.L491:
.L492:
	ldaxr	x2, [x3]
	cmp	x2, x0
	bne	.L493
	stxr	w4, x1, [x3]
	cbnz	w4, .L492
.L493:
	cmp	x0, x2
	beq	.L487
	mov	x0, x2
.L489:
	cmp	x1, x0
	bhi	.L491
.L487:
	ret
	.cfi_endproc
.LFE962:
	.size	vatomicsz_get_max_acq, .-vatomicsz_get_max_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_max_rel, %function
vatomicsz_get_max_rel:
.LFB964:
	.cfi_startproc
	mov	x3, x0
	ldr	x0, [x0]
	b	.L496
	.p2align 2,,3
.L498:
.L499:
	ldxr	x2, [x3]
	cmp	x2, x0
	bne	.L500
	stlxr	w4, x1, [x3]
	cbnz	w4, .L499
.L500:
	cmp	x0, x2
	beq	.L494
	mov	x0, x2
.L496:
	cmp	x1, x0
	bhi	.L498
.L494:
	ret
	.cfi_endproc
.LFE964:
	.size	vatomicsz_get_max_rel, .-vatomicsz_get_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_max_rlx, %function
vatomicsz_get_max_rlx:
.LFB966:
	.cfi_startproc
	mov	x3, x0
	ldr	x0, [x0]
	b	.L503
	.p2align 2,,3
.L505:
.L506:
	ldxr	x2, [x3]
	cmp	x2, x0
	bne	.L507
	stxr	w4, x1, [x3]
	cbnz	w4, .L506
.L507:
	cmp	x0, x2
	beq	.L501
	mov	x0, x2
.L503:
	cmp	x1, x0
	bhi	.L505
.L501:
	ret
	.cfi_endproc
.LFE966:
	.size	vatomicsz_get_max_rlx, .-vatomicsz_get_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_get, %function
vatomic8_max_get:
.LFB214:
	.cfi_startproc
	and	w1, w1, 255
	ldarb	w3, [x0]
	b	.L510
	.p2align 2,,3
.L512:
.L513:
	ldaxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L514
	stlxrb	w4, w1, [x0]
	cbnz	w4, .L513
.L514:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L509
	mov	w3, w2
.L510:
	cmp	w1, w3
	bhi	.L512
.L509:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE214:
	.size	vatomic8_max_get, .-vatomic8_max_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_get_acq, %function
vatomic8_max_get_acq:
.LFB215:
	.cfi_startproc
	and	w1, w1, 255
	ldarb	w3, [x0]
	b	.L517
	.p2align 2,,3
.L519:
.L520:
	ldaxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L521
	stxrb	w4, w1, [x0]
	cbnz	w4, .L520
.L521:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L516
	mov	w3, w2
.L517:
	cmp	w1, w3
	bhi	.L519
.L516:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE215:
	.size	vatomic8_max_get_acq, .-vatomic8_max_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_get_rel, %function
vatomic8_max_get_rel:
.LFB216:
	.cfi_startproc
	and	w1, w1, 255
	ldrb	w3, [x0]
	b	.L524
	.p2align 2,,3
.L526:
.L527:
	ldxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L528
	stlxrb	w4, w1, [x0]
	cbnz	w4, .L527
.L528:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L523
	mov	w3, w2
.L524:
	cmp	w1, w3
	bhi	.L526
.L523:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE216:
	.size	vatomic8_max_get_rel, .-vatomic8_max_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_get_rlx, %function
vatomic8_max_get_rlx:
.LFB217:
	.cfi_startproc
	and	w1, w1, 255
	ldrb	w3, [x0]
	b	.L531
	.p2align 2,,3
.L533:
.L534:
	ldxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L535
	stxrb	w4, w1, [x0]
	cbnz	w4, .L534
.L535:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L530
	mov	w3, w2
.L531:
	cmp	w1, w3
	bhi	.L533
.L530:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE217:
	.size	vatomic8_max_get_rlx, .-vatomic8_max_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_get, %function
vatomic16_max_get:
.LFB218:
	.cfi_startproc
	and	w1, w1, 65535
	ldarh	w3, [x0]
	b	.L538
	.p2align 2,,3
.L540:
.L541:
	ldaxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L542
	stlxrh	w4, w1, [x0]
	cbnz	w4, .L541
.L542:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L537
	mov	w3, w2
.L538:
	cmp	w1, w3
	bhi	.L540
.L537:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE218:
	.size	vatomic16_max_get, .-vatomic16_max_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_get_acq, %function
vatomic16_max_get_acq:
.LFB219:
	.cfi_startproc
	and	w1, w1, 65535
	ldarh	w3, [x0]
	b	.L545
	.p2align 2,,3
.L547:
.L548:
	ldaxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L549
	stxrh	w4, w1, [x0]
	cbnz	w4, .L548
.L549:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L544
	mov	w3, w2
.L545:
	cmp	w1, w3
	bhi	.L547
.L544:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE219:
	.size	vatomic16_max_get_acq, .-vatomic16_max_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_get_rel, %function
vatomic16_max_get_rel:
.LFB220:
	.cfi_startproc
	and	w1, w1, 65535
	ldrh	w3, [x0]
	b	.L552
	.p2align 2,,3
.L554:
.L555:
	ldxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L556
	stlxrh	w4, w1, [x0]
	cbnz	w4, .L555
.L556:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L551
	mov	w3, w2
.L552:
	cmp	w1, w3
	bhi	.L554
.L551:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE220:
	.size	vatomic16_max_get_rel, .-vatomic16_max_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_get_rlx, %function
vatomic16_max_get_rlx:
.LFB221:
	.cfi_startproc
	and	w1, w1, 65535
	ldrh	w3, [x0]
	b	.L559
	.p2align 2,,3
.L561:
.L562:
	ldxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L563
	stxrh	w4, w1, [x0]
	cbnz	w4, .L562
.L563:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L558
	mov	w3, w2
.L559:
	cmp	w1, w3
	bhi	.L561
.L558:
	cmp	w3, w1
	csel	w0, w1, w3, ls
	ret
	.cfi_endproc
.LFE221:
	.size	vatomic16_max_get_rlx, .-vatomic16_max_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_get, %function
vatomic32_max_get:
.LFB222:
	.cfi_startproc
	ldar	w2, [x0]
	b	.L566
	.p2align 2,,3
.L568:
.L569:
	ldaxr	w3, [x0]
	cmp	w3, w2
	bne	.L570
	stlxr	w4, w1, [x0]
	cbnz	w4, .L569
.L570:
	cmp	w2, w3
	beq	.L565
	mov	w2, w3
.L566:
	cmp	w1, w2
	bhi	.L568
.L565:
	cmp	w1, w2
	csel	w0, w1, w2, cs
	ret
	.cfi_endproc
.LFE222:
	.size	vatomic32_max_get, .-vatomic32_max_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_get_acq, %function
vatomic32_max_get_acq:
.LFB223:
	.cfi_startproc
	ldar	w2, [x0]
	b	.L573
	.p2align 2,,3
.L575:
.L576:
	ldaxr	w3, [x0]
	cmp	w3, w2
	bne	.L577
	stxr	w4, w1, [x0]
	cbnz	w4, .L576
.L577:
	cmp	w2, w3
	beq	.L572
	mov	w2, w3
.L573:
	cmp	w1, w2
	bhi	.L575
.L572:
	cmp	w1, w2
	csel	w0, w1, w2, cs
	ret
	.cfi_endproc
.LFE223:
	.size	vatomic32_max_get_acq, .-vatomic32_max_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_get_rel, %function
vatomic32_max_get_rel:
.LFB224:
	.cfi_startproc
	ldr	w2, [x0]
	b	.L580
	.p2align 2,,3
.L582:
.L583:
	ldxr	w3, [x0]
	cmp	w3, w2
	bne	.L584
	stlxr	w4, w1, [x0]
	cbnz	w4, .L583
.L584:
	cmp	w2, w3
	beq	.L579
	mov	w2, w3
.L580:
	cmp	w1, w2
	bhi	.L582
.L579:
	cmp	w1, w2
	csel	w0, w1, w2, cs
	ret
	.cfi_endproc
.LFE224:
	.size	vatomic32_max_get_rel, .-vatomic32_max_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_get_rlx, %function
vatomic32_max_get_rlx:
.LFB225:
	.cfi_startproc
	ldr	w2, [x0]
	b	.L587
	.p2align 2,,3
.L589:
.L590:
	ldxr	w3, [x0]
	cmp	w3, w2
	bne	.L591
	stxr	w4, w1, [x0]
	cbnz	w4, .L590
.L591:
	cmp	w2, w3
	beq	.L586
	mov	w2, w3
.L587:
	cmp	w1, w2
	bhi	.L589
.L586:
	cmp	w1, w2
	csel	w0, w1, w2, cs
	ret
	.cfi_endproc
.LFE225:
	.size	vatomic32_max_get_rlx, .-vatomic32_max_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_get, %function
vatomic64_max_get:
.LFB226:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L594
	.p2align 2,,3
.L596:
.L597:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L598
	stlxr	w4, x1, [x0]
	cbnz	w4, .L597
.L598:
	cmp	x2, x3
	beq	.L593
	mov	x2, x3
.L594:
	cmp	x1, x2
	bhi	.L596
.L593:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE226:
	.size	vatomic64_max_get, .-vatomic64_max_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_get_acq, %function
vatomic64_max_get_acq:
.LFB227:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L601
	.p2align 2,,3
.L603:
.L604:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L605
	stxr	w4, x1, [x0]
	cbnz	w4, .L604
.L605:
	cmp	x2, x3
	beq	.L600
	mov	x2, x3
.L601:
	cmp	x1, x2
	bhi	.L603
.L600:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE227:
	.size	vatomic64_max_get_acq, .-vatomic64_max_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_get_rel, %function
vatomic64_max_get_rel:
.LFB228:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L608
	.p2align 2,,3
.L610:
.L611:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L612
	stlxr	w4, x1, [x0]
	cbnz	w4, .L611
.L612:
	cmp	x2, x3
	beq	.L607
	mov	x2, x3
.L608:
	cmp	x1, x2
	bhi	.L610
.L607:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE228:
	.size	vatomic64_max_get_rel, .-vatomic64_max_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_get_rlx, %function
vatomic64_max_get_rlx:
.LFB229:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L615
	.p2align 2,,3
.L617:
.L618:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L619
	stxr	w4, x1, [x0]
	cbnz	w4, .L618
.L619:
	cmp	x2, x3
	beq	.L614
	mov	x2, x3
.L615:
	cmp	x1, x2
	bhi	.L617
.L614:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE229:
	.size	vatomic64_max_get_rlx, .-vatomic64_max_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_get, %function
vatomicsz_max_get:
.LFB894:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L622
	.p2align 2,,3
.L624:
.L625:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L626
	stlxr	w4, x1, [x0]
	cbnz	w4, .L625
.L626:
	cmp	x2, x3
	beq	.L621
	mov	x2, x3
.L622:
	cmp	x1, x2
	bhi	.L624
.L621:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE894:
	.size	vatomicsz_max_get, .-vatomicsz_max_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_get_acq, %function
vatomicsz_max_get_acq:
.LFB896:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L629
	.p2align 2,,3
.L631:
.L632:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L633
	stxr	w4, x1, [x0]
	cbnz	w4, .L632
.L633:
	cmp	x2, x3
	beq	.L628
	mov	x2, x3
.L629:
	cmp	x1, x2
	bhi	.L631
.L628:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE896:
	.size	vatomicsz_max_get_acq, .-vatomicsz_max_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_get_rel, %function
vatomicsz_max_get_rel:
.LFB898:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L636
	.p2align 2,,3
.L638:
.L639:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L640
	stlxr	w4, x1, [x0]
	cbnz	w4, .L639
.L640:
	cmp	x2, x3
	beq	.L635
	mov	x2, x3
.L636:
	cmp	x1, x2
	bhi	.L638
.L635:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE898:
	.size	vatomicsz_max_get_rel, .-vatomicsz_max_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_get_rlx, %function
vatomicsz_max_get_rlx:
.LFB900:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L643
	.p2align 2,,3
.L645:
.L646:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L647
	stxr	w4, x1, [x0]
	cbnz	w4, .L646
.L647:
	cmp	x2, x3
	beq	.L642
	mov	x2, x3
.L643:
	cmp	x1, x2
	bhi	.L645
.L642:
	cmp	x1, x2
	csel	x0, x1, x2, cs
	ret
	.cfi_endproc
.LFE900:
	.size	vatomicsz_max_get_rlx, .-vatomicsz_max_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_max, %function
vatomic8_max:
.LFB234:
	.cfi_startproc
	and	w1, w1, 255
	ldarb	w3, [x0]
	b	.L650
	.p2align 2,,3
.L652:
.L653:
	ldaxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L654
	stlxrb	w4, w1, [x0]
	cbnz	w4, .L653
.L654:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L648
	mov	w3, w2
.L650:
	cmp	w1, w3
	bhi	.L652
.L648:
	ret
	.cfi_endproc
.LFE234:
	.size	vatomic8_max, .-vatomic8_max
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_rel, %function
vatomic8_max_rel:
.LFB235:
	.cfi_startproc
	and	w1, w1, 255
	ldrb	w3, [x0]
	b	.L657
	.p2align 2,,3
.L659:
.L660:
	ldxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L661
	stlxrb	w4, w1, [x0]
	cbnz	w4, .L660
.L661:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L655
	mov	w3, w2
.L657:
	cmp	w1, w3
	bhi	.L659
.L655:
	ret
	.cfi_endproc
.LFE235:
	.size	vatomic8_max_rel, .-vatomic8_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_max_rlx, %function
vatomic8_max_rlx:
.LFB236:
	.cfi_startproc
	and	w1, w1, 255
	ldrb	w3, [x0]
	b	.L664
	.p2align 2,,3
.L666:
.L667:
	ldxrb	w2, [x0]
	cmp	w2, w3, uxtb
	bne	.L668
	stxrb	w4, w1, [x0]
	cbnz	w4, .L667
.L668:
	and	w2, w2, 255
	cmp	w3, w2
	beq	.L662
	mov	w3, w2
.L664:
	cmp	w1, w3
	bhi	.L666
.L662:
	ret
	.cfi_endproc
.LFE236:
	.size	vatomic8_max_rlx, .-vatomic8_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_max, %function
vatomic16_max:
.LFB237:
	.cfi_startproc
	and	w1, w1, 65535
	ldarh	w3, [x0]
	b	.L671
	.p2align 2,,3
.L673:
.L674:
	ldaxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L675
	stlxrh	w4, w1, [x0]
	cbnz	w4, .L674
.L675:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L669
	mov	w3, w2
.L671:
	cmp	w1, w3
	bhi	.L673
.L669:
	ret
	.cfi_endproc
.LFE237:
	.size	vatomic16_max, .-vatomic16_max
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_rel, %function
vatomic16_max_rel:
.LFB238:
	.cfi_startproc
	and	w1, w1, 65535
	ldrh	w3, [x0]
	b	.L678
	.p2align 2,,3
.L680:
.L681:
	ldxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L682
	stlxrh	w4, w1, [x0]
	cbnz	w4, .L681
.L682:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L676
	mov	w3, w2
.L678:
	cmp	w1, w3
	bhi	.L680
.L676:
	ret
	.cfi_endproc
.LFE238:
	.size	vatomic16_max_rel, .-vatomic16_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_max_rlx, %function
vatomic16_max_rlx:
.LFB239:
	.cfi_startproc
	and	w1, w1, 65535
	ldrh	w3, [x0]
	b	.L685
	.p2align 2,,3
.L687:
.L688:
	ldxrh	w2, [x0]
	cmp	w2, w3, uxth
	bne	.L689
	stxrh	w4, w1, [x0]
	cbnz	w4, .L688
.L689:
	and	w2, w2, 65535
	cmp	w3, w2
	beq	.L683
	mov	w3, w2
.L685:
	cmp	w1, w3
	bhi	.L687
.L683:
	ret
	.cfi_endproc
.LFE239:
	.size	vatomic16_max_rlx, .-vatomic16_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_max, %function
vatomic32_max:
.LFB240:
	.cfi_startproc
	ldar	w2, [x0]
	b	.L692
	.p2align 2,,3
.L694:
.L695:
	ldaxr	w3, [x0]
	cmp	w3, w2
	bne	.L696
	stlxr	w4, w1, [x0]
	cbnz	w4, .L695
.L696:
	cmp	w2, w3
	beq	.L690
	mov	w2, w3
.L692:
	cmp	w1, w2
	bhi	.L694
.L690:
	ret
	.cfi_endproc
.LFE240:
	.size	vatomic32_max, .-vatomic32_max
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_rel, %function
vatomic32_max_rel:
.LFB241:
	.cfi_startproc
	ldr	w2, [x0]
	b	.L699
	.p2align 2,,3
.L701:
.L702:
	ldxr	w3, [x0]
	cmp	w3, w2
	bne	.L703
	stlxr	w4, w1, [x0]
	cbnz	w4, .L702
.L703:
	cmp	w2, w3
	beq	.L697
	mov	w2, w3
.L699:
	cmp	w1, w2
	bhi	.L701
.L697:
	ret
	.cfi_endproc
.LFE241:
	.size	vatomic32_max_rel, .-vatomic32_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_max_rlx, %function
vatomic32_max_rlx:
.LFB242:
	.cfi_startproc
	ldr	w2, [x0]
	b	.L706
	.p2align 2,,3
.L708:
.L709:
	ldxr	w3, [x0]
	cmp	w3, w2
	bne	.L710
	stxr	w4, w1, [x0]
	cbnz	w4, .L709
.L710:
	cmp	w2, w3
	beq	.L704
	mov	w2, w3
.L706:
	cmp	w1, w2
	bhi	.L708
.L704:
	ret
	.cfi_endproc
.LFE242:
	.size	vatomic32_max_rlx, .-vatomic32_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_max, %function
vatomic64_max:
.LFB243:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L713
	.p2align 2,,3
.L715:
.L716:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L717
	stlxr	w4, x1, [x0]
	cbnz	w4, .L716
.L717:
	cmp	x2, x3
	beq	.L711
	mov	x2, x3
.L713:
	cmp	x1, x2
	bhi	.L715
.L711:
	ret
	.cfi_endproc
.LFE243:
	.size	vatomic64_max, .-vatomic64_max
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_rel, %function
vatomic64_max_rel:
.LFB244:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L720
	.p2align 2,,3
.L722:
.L723:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L724
	stlxr	w4, x1, [x0]
	cbnz	w4, .L723
.L724:
	cmp	x2, x3
	beq	.L718
	mov	x2, x3
.L720:
	cmp	x1, x2
	bhi	.L722
.L718:
	ret
	.cfi_endproc
.LFE244:
	.size	vatomic64_max_rel, .-vatomic64_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_max_rlx, %function
vatomic64_max_rlx:
.LFB245:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L727
	.p2align 2,,3
.L729:
.L730:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L731
	stxr	w4, x1, [x0]
	cbnz	w4, .L730
.L731:
	cmp	x2, x3
	beq	.L725
	mov	x2, x3
.L727:
	cmp	x1, x2
	bhi	.L729
.L725:
	ret
	.cfi_endproc
.LFE245:
	.size	vatomic64_max_rlx, .-vatomic64_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max, %function
vatomicsz_max:
.LFB902:
	.cfi_startproc
	ldar	x2, [x0]
	b	.L734
	.p2align 2,,3
.L736:
.L737:
	ldaxr	x3, [x0]
	cmp	x3, x2
	bne	.L738
	stlxr	w4, x1, [x0]
	cbnz	w4, .L737
.L738:
	cmp	x2, x3
	beq	.L732
	mov	x2, x3
.L734:
	cmp	x1, x2
	bhi	.L736
.L732:
	ret
	.cfi_endproc
.LFE902:
	.size	vatomicsz_max, .-vatomicsz_max
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_rel, %function
vatomicsz_max_rel:
.LFB904:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L741
	.p2align 2,,3
.L743:
.L744:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L745
	stlxr	w4, x1, [x0]
	cbnz	w4, .L744
.L745:
	cmp	x2, x3
	beq	.L739
	mov	x2, x3
.L741:
	cmp	x1, x2
	bhi	.L743
.L739:
	ret
	.cfi_endproc
.LFE904:
	.size	vatomicsz_max_rel, .-vatomicsz_max_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_max_rlx, %function
vatomicsz_max_rlx:
.LFB906:
	.cfi_startproc
	ldr	x2, [x0]
	b	.L748
	.p2align 2,,3
.L750:
.L751:
	ldxr	x3, [x0]
	cmp	x3, x2
	bne	.L752
	stxr	w4, x1, [x0]
	cbnz	w4, .L751
.L752:
	cmp	x2, x3
	beq	.L746
	mov	x2, x3
.L748:
	cmp	x1, x2
	bhi	.L750
.L746:
	ret
	.cfi_endproc
.LFE906:
	.size	vatomicsz_max_rlx, .-vatomicsz_max_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_get, %function
vatomic8_and_get:
.LFB249:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L754:
	ldaxrb	w0, [x2]
	and	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L754
	ret
	.cfi_endproc
.LFE249:
	.size	vatomic8_and_get, .-vatomic8_and_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_get_acq, %function
vatomic8_and_get_acq:
.LFB250:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L756:
	ldaxrb	w0, [x2]
	and	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L756
	ret
	.cfi_endproc
.LFE250:
	.size	vatomic8_and_get_acq, .-vatomic8_and_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_get_rel, %function
vatomic8_and_get_rel:
.LFB251:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L758:
	ldxrb	w0, [x2]
	and	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L758
	ret
	.cfi_endproc
.LFE251:
	.size	vatomic8_and_get_rel, .-vatomic8_and_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_get_rlx, %function
vatomic8_and_get_rlx:
.LFB252:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L760:
	ldxrb	w0, [x2]
	and	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L760
	ret
	.cfi_endproc
.LFE252:
	.size	vatomic8_and_get_rlx, .-vatomic8_and_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_get, %function
vatomic16_and_get:
.LFB253:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L762:
	ldaxrh	w0, [x2]
	and	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L762
	ret
	.cfi_endproc
.LFE253:
	.size	vatomic16_and_get, .-vatomic16_and_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_get_acq, %function
vatomic16_and_get_acq:
.LFB254:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L764:
	ldaxrh	w0, [x2]
	and	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L764
	ret
	.cfi_endproc
.LFE254:
	.size	vatomic16_and_get_acq, .-vatomic16_and_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_get_rel, %function
vatomic16_and_get_rel:
.LFB255:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L766:
	ldxrh	w0, [x2]
	and	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L766
	ret
	.cfi_endproc
.LFE255:
	.size	vatomic16_and_get_rel, .-vatomic16_and_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_get_rlx, %function
vatomic16_and_get_rlx:
.LFB256:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L768:
	ldxrh	w0, [x2]
	and	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L768
	ret
	.cfi_endproc
.LFE256:
	.size	vatomic16_and_get_rlx, .-vatomic16_and_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_get, %function
vatomic32_and_get:
.LFB257:
	.cfi_startproc
	mov	x2, x0
.L770:
	ldaxr	w0, [x2]
	and	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L770
	ret
	.cfi_endproc
.LFE257:
	.size	vatomic32_and_get, .-vatomic32_and_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_get_acq, %function
vatomic32_and_get_acq:
.LFB258:
	.cfi_startproc
	mov	x2, x0
.L772:
	ldaxr	w0, [x2]
	and	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L772
	ret
	.cfi_endproc
.LFE258:
	.size	vatomic32_and_get_acq, .-vatomic32_and_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_get_rel, %function
vatomic32_and_get_rel:
.LFB259:
	.cfi_startproc
	mov	x2, x0
.L774:
	ldxr	w0, [x2]
	and	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L774
	ret
	.cfi_endproc
.LFE259:
	.size	vatomic32_and_get_rel, .-vatomic32_and_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_get_rlx, %function
vatomic32_and_get_rlx:
.LFB260:
	.cfi_startproc
	mov	x2, x0
.L776:
	ldxr	w0, [x2]
	and	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L776
	ret
	.cfi_endproc
.LFE260:
	.size	vatomic32_and_get_rlx, .-vatomic32_and_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_get, %function
vatomic64_and_get:
.LFB261:
	.cfi_startproc
	mov	x2, x0
.L778:
	ldaxr	x0, [x2]
	and	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L778
	ret
	.cfi_endproc
.LFE261:
	.size	vatomic64_and_get, .-vatomic64_and_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_get_acq, %function
vatomic64_and_get_acq:
.LFB262:
	.cfi_startproc
	mov	x2, x0
.L780:
	ldaxr	x0, [x2]
	and	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L780
	ret
	.cfi_endproc
.LFE262:
	.size	vatomic64_and_get_acq, .-vatomic64_and_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_get_rel, %function
vatomic64_and_get_rel:
.LFB263:
	.cfi_startproc
	mov	x2, x0
.L782:
	ldxr	x0, [x2]
	and	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L782
	ret
	.cfi_endproc
.LFE263:
	.size	vatomic64_and_get_rel, .-vatomic64_and_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_get_rlx, %function
vatomic64_and_get_rlx:
.LFB264:
	.cfi_startproc
	mov	x2, x0
.L784:
	ldxr	x0, [x2]
	and	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L784
	ret
	.cfi_endproc
.LFE264:
	.size	vatomic64_and_get_rlx, .-vatomic64_and_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_get, %function
vatomicsz_and_get:
.LFB810:
	.cfi_startproc
	mov	x2, x0
.L786:
	ldaxr	x0, [x2]
	and	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L786
	ret
	.cfi_endproc
.LFE810:
	.size	vatomicsz_and_get, .-vatomicsz_and_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_get_acq, %function
vatomicsz_and_get_acq:
.LFB832:
	.cfi_startproc
	mov	x2, x0
.L788:
	ldaxr	x0, [x2]
	and	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L788
	ret
	.cfi_endproc
.LFE832:
	.size	vatomicsz_and_get_acq, .-vatomicsz_and_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_get_rel, %function
vatomicsz_and_get_rel:
.LFB854:
	.cfi_startproc
	mov	x2, x0
.L790:
	ldxr	x0, [x2]
	and	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L790
	ret
	.cfi_endproc
.LFE854:
	.size	vatomicsz_and_get_rel, .-vatomicsz_and_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_get_rlx, %function
vatomicsz_and_get_rlx:
.LFB876:
	.cfi_startproc
	mov	x2, x0
.L792:
	ldxr	x0, [x2]
	and	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L792
	ret
	.cfi_endproc
.LFE876:
	.size	vatomicsz_and_get_rlx, .-vatomicsz_and_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_and, %function
vatomic8_and:
.LFB269:
	.cfi_startproc
	and	w1, w1, 255
.L794:
	ldaxrb	w3, [x0]
	and	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L794
	ret
	.cfi_endproc
.LFE269:
	.size	vatomic8_and, .-vatomic8_and
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_rel, %function
vatomic8_and_rel:
.LFB270:
	.cfi_startproc
	and	w1, w1, 255
.L796:
	ldxrb	w3, [x0]
	and	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L796
	ret
	.cfi_endproc
.LFE270:
	.size	vatomic8_and_rel, .-vatomic8_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_and_rlx, %function
vatomic8_and_rlx:
.LFB271:
	.cfi_startproc
	and	w1, w1, 255
.L798:
	ldxrb	w3, [x0]
	and	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L798
	ret
	.cfi_endproc
.LFE271:
	.size	vatomic8_and_rlx, .-vatomic8_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_and, %function
vatomic16_and:
.LFB272:
	.cfi_startproc
	and	w1, w1, 65535
.L800:
	ldaxrh	w3, [x0]
	and	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L800
	ret
	.cfi_endproc
.LFE272:
	.size	vatomic16_and, .-vatomic16_and
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_rel, %function
vatomic16_and_rel:
.LFB273:
	.cfi_startproc
	and	w1, w1, 65535
.L802:
	ldxrh	w3, [x0]
	and	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L802
	ret
	.cfi_endproc
.LFE273:
	.size	vatomic16_and_rel, .-vatomic16_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_and_rlx, %function
vatomic16_and_rlx:
.LFB274:
	.cfi_startproc
	and	w1, w1, 65535
.L804:
	ldxrh	w3, [x0]
	and	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L804
	ret
	.cfi_endproc
.LFE274:
	.size	vatomic16_and_rlx, .-vatomic16_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_and, %function
vatomic32_and:
.LFB275:
	.cfi_startproc
.L806:
	ldaxr	w3, [x0]
	and	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L806
	ret
	.cfi_endproc
.LFE275:
	.size	vatomic32_and, .-vatomic32_and
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_rel, %function
vatomic32_and_rel:
.LFB276:
	.cfi_startproc
.L808:
	ldxr	w3, [x0]
	and	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L808
	ret
	.cfi_endproc
.LFE276:
	.size	vatomic32_and_rel, .-vatomic32_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_and_rlx, %function
vatomic32_and_rlx:
.LFB277:
	.cfi_startproc
.L810:
	ldxr	w3, [x0]
	and	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L810
	ret
	.cfi_endproc
.LFE277:
	.size	vatomic32_and_rlx, .-vatomic32_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_and, %function
vatomic64_and:
.LFB278:
	.cfi_startproc
.L812:
	ldaxr	x3, [x0]
	and	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L812
	ret
	.cfi_endproc
.LFE278:
	.size	vatomic64_and, .-vatomic64_and
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_rel, %function
vatomic64_and_rel:
.LFB279:
	.cfi_startproc
.L814:
	ldxr	x3, [x0]
	and	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L814
	ret
	.cfi_endproc
.LFE279:
	.size	vatomic64_and_rel, .-vatomic64_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_and_rlx, %function
vatomic64_and_rlx:
.LFB280:
	.cfi_startproc
.L816:
	ldxr	x3, [x0]
	and	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L816
	ret
	.cfi_endproc
.LFE280:
	.size	vatomic64_and_rlx, .-vatomic64_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and, %function
vatomicsz_and:
.LFB766:
	.cfi_startproc
.L818:
	ldaxr	x3, [x0]
	and	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L818
	ret
	.cfi_endproc
.LFE766:
	.size	vatomicsz_and, .-vatomicsz_and
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_rel, %function
vatomicsz_and_rel:
.LFB784:
	.cfi_startproc
.L820:
	ldxr	x3, [x0]
	and	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L820
	ret
	.cfi_endproc
.LFE784:
	.size	vatomicsz_and_rel, .-vatomicsz_and_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_and_rlx, %function
vatomicsz_and_rlx:
.LFB796:
	.cfi_startproc
.L822:
	ldxr	x3, [x0]
	and	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L822
	ret
	.cfi_endproc
.LFE796:
	.size	vatomicsz_and_rlx, .-vatomicsz_and_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_get, %function
vatomic8_or_get:
.LFB284:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L824:
	ldaxrb	w0, [x2]
	orr	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L824
	ret
	.cfi_endproc
.LFE284:
	.size	vatomic8_or_get, .-vatomic8_or_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_get_acq, %function
vatomic8_or_get_acq:
.LFB285:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L826:
	ldaxrb	w0, [x2]
	orr	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L826
	ret
	.cfi_endproc
.LFE285:
	.size	vatomic8_or_get_acq, .-vatomic8_or_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_get_rel, %function
vatomic8_or_get_rel:
.LFB286:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L828:
	ldxrb	w0, [x2]
	orr	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L828
	ret
	.cfi_endproc
.LFE286:
	.size	vatomic8_or_get_rel, .-vatomic8_or_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_get_rlx, %function
vatomic8_or_get_rlx:
.LFB287:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L830:
	ldxrb	w0, [x2]
	orr	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L830
	ret
	.cfi_endproc
.LFE287:
	.size	vatomic8_or_get_rlx, .-vatomic8_or_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_get, %function
vatomic16_or_get:
.LFB288:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L832:
	ldaxrh	w0, [x2]
	orr	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L832
	ret
	.cfi_endproc
.LFE288:
	.size	vatomic16_or_get, .-vatomic16_or_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_get_acq, %function
vatomic16_or_get_acq:
.LFB289:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L834:
	ldaxrh	w0, [x2]
	orr	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L834
	ret
	.cfi_endproc
.LFE289:
	.size	vatomic16_or_get_acq, .-vatomic16_or_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_get_rel, %function
vatomic16_or_get_rel:
.LFB290:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L836:
	ldxrh	w0, [x2]
	orr	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L836
	ret
	.cfi_endproc
.LFE290:
	.size	vatomic16_or_get_rel, .-vatomic16_or_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_get_rlx, %function
vatomic16_or_get_rlx:
.LFB291:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L838:
	ldxrh	w0, [x2]
	orr	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L838
	ret
	.cfi_endproc
.LFE291:
	.size	vatomic16_or_get_rlx, .-vatomic16_or_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_get, %function
vatomic32_or_get:
.LFB292:
	.cfi_startproc
	mov	x2, x0
.L840:
	ldaxr	w0, [x2]
	orr	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L840
	ret
	.cfi_endproc
.LFE292:
	.size	vatomic32_or_get, .-vatomic32_or_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_get_acq, %function
vatomic32_or_get_acq:
.LFB293:
	.cfi_startproc
	mov	x2, x0
.L842:
	ldaxr	w0, [x2]
	orr	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L842
	ret
	.cfi_endproc
.LFE293:
	.size	vatomic32_or_get_acq, .-vatomic32_or_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_get_rel, %function
vatomic32_or_get_rel:
.LFB294:
	.cfi_startproc
	mov	x2, x0
.L844:
	ldxr	w0, [x2]
	orr	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L844
	ret
	.cfi_endproc
.LFE294:
	.size	vatomic32_or_get_rel, .-vatomic32_or_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_get_rlx, %function
vatomic32_or_get_rlx:
.LFB295:
	.cfi_startproc
	mov	x2, x0
.L846:
	ldxr	w0, [x2]
	orr	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L846
	ret
	.cfi_endproc
.LFE295:
	.size	vatomic32_or_get_rlx, .-vatomic32_or_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_get, %function
vatomic64_or_get:
.LFB296:
	.cfi_startproc
	mov	x2, x0
.L848:
	ldaxr	x0, [x2]
	orr	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L848
	ret
	.cfi_endproc
.LFE296:
	.size	vatomic64_or_get, .-vatomic64_or_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_get_acq, %function
vatomic64_or_get_acq:
.LFB297:
	.cfi_startproc
	mov	x2, x0
.L850:
	ldaxr	x0, [x2]
	orr	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L850
	ret
	.cfi_endproc
.LFE297:
	.size	vatomic64_or_get_acq, .-vatomic64_or_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_get_rel, %function
vatomic64_or_get_rel:
.LFB298:
	.cfi_startproc
	mov	x2, x0
.L852:
	ldxr	x0, [x2]
	orr	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L852
	ret
	.cfi_endproc
.LFE298:
	.size	vatomic64_or_get_rel, .-vatomic64_or_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_get_rlx, %function
vatomic64_or_get_rlx:
.LFB299:
	.cfi_startproc
	mov	x2, x0
.L854:
	ldxr	x0, [x2]
	orr	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L854
	ret
	.cfi_endproc
.LFE299:
	.size	vatomic64_or_get_rlx, .-vatomic64_or_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_get, %function
vatomicsz_or_get:
.LFB814:
	.cfi_startproc
	mov	x2, x0
.L856:
	ldaxr	x0, [x2]
	orr	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L856
	ret
	.cfi_endproc
.LFE814:
	.size	vatomicsz_or_get, .-vatomicsz_or_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_get_acq, %function
vatomicsz_or_get_acq:
.LFB836:
	.cfi_startproc
	mov	x2, x0
.L858:
	ldaxr	x0, [x2]
	orr	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L858
	ret
	.cfi_endproc
.LFE836:
	.size	vatomicsz_or_get_acq, .-vatomicsz_or_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_get_rel, %function
vatomicsz_or_get_rel:
.LFB858:
	.cfi_startproc
	mov	x2, x0
.L860:
	ldxr	x0, [x2]
	orr	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L860
	ret
	.cfi_endproc
.LFE858:
	.size	vatomicsz_or_get_rel, .-vatomicsz_or_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_get_rlx, %function
vatomicsz_or_get_rlx:
.LFB880:
	.cfi_startproc
	mov	x2, x0
.L862:
	ldxr	x0, [x2]
	orr	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L862
	ret
	.cfi_endproc
.LFE880:
	.size	vatomicsz_or_get_rlx, .-vatomicsz_or_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_or, %function
vatomic8_or:
.LFB304:
	.cfi_startproc
	and	w1, w1, 255
.L864:
	ldaxrb	w3, [x0]
	orr	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L864
	ret
	.cfi_endproc
.LFE304:
	.size	vatomic8_or, .-vatomic8_or
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_rel, %function
vatomic8_or_rel:
.LFB305:
	.cfi_startproc
	and	w1, w1, 255
.L866:
	ldxrb	w3, [x0]
	orr	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L866
	ret
	.cfi_endproc
.LFE305:
	.size	vatomic8_or_rel, .-vatomic8_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_or_rlx, %function
vatomic8_or_rlx:
.LFB306:
	.cfi_startproc
	and	w1, w1, 255
.L868:
	ldxrb	w3, [x0]
	orr	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L868
	ret
	.cfi_endproc
.LFE306:
	.size	vatomic8_or_rlx, .-vatomic8_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_or, %function
vatomic16_or:
.LFB307:
	.cfi_startproc
	and	w1, w1, 65535
.L870:
	ldaxrh	w3, [x0]
	orr	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L870
	ret
	.cfi_endproc
.LFE307:
	.size	vatomic16_or, .-vatomic16_or
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_rel, %function
vatomic16_or_rel:
.LFB308:
	.cfi_startproc
	and	w1, w1, 65535
.L872:
	ldxrh	w3, [x0]
	orr	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L872
	ret
	.cfi_endproc
.LFE308:
	.size	vatomic16_or_rel, .-vatomic16_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_or_rlx, %function
vatomic16_or_rlx:
.LFB309:
	.cfi_startproc
	and	w1, w1, 65535
.L874:
	ldxrh	w3, [x0]
	orr	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L874
	ret
	.cfi_endproc
.LFE309:
	.size	vatomic16_or_rlx, .-vatomic16_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_or, %function
vatomic32_or:
.LFB310:
	.cfi_startproc
.L876:
	ldaxr	w3, [x0]
	orr	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L876
	ret
	.cfi_endproc
.LFE310:
	.size	vatomic32_or, .-vatomic32_or
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_rel, %function
vatomic32_or_rel:
.LFB311:
	.cfi_startproc
.L878:
	ldxr	w3, [x0]
	orr	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L878
	ret
	.cfi_endproc
.LFE311:
	.size	vatomic32_or_rel, .-vatomic32_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_or_rlx, %function
vatomic32_or_rlx:
.LFB312:
	.cfi_startproc
.L880:
	ldxr	w3, [x0]
	orr	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L880
	ret
	.cfi_endproc
.LFE312:
	.size	vatomic32_or_rlx, .-vatomic32_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_or, %function
vatomic64_or:
.LFB313:
	.cfi_startproc
.L882:
	ldaxr	x3, [x0]
	orr	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L882
	ret
	.cfi_endproc
.LFE313:
	.size	vatomic64_or, .-vatomic64_or
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_rel, %function
vatomic64_or_rel:
.LFB314:
	.cfi_startproc
.L884:
	ldxr	x3, [x0]
	orr	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L884
	ret
	.cfi_endproc
.LFE314:
	.size	vatomic64_or_rel, .-vatomic64_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_or_rlx, %function
vatomic64_or_rlx:
.LFB315:
	.cfi_startproc
.L886:
	ldxr	x3, [x0]
	orr	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L886
	ret
	.cfi_endproc
.LFE315:
	.size	vatomic64_or_rlx, .-vatomic64_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or, %function
vatomicsz_or:
.LFB768:
	.cfi_startproc
.L888:
	ldaxr	x3, [x0]
	orr	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L888
	ret
	.cfi_endproc
.LFE768:
	.size	vatomicsz_or, .-vatomicsz_or
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_rel, %function
vatomicsz_or_rel:
.LFB786:
	.cfi_startproc
.L890:
	ldxr	x3, [x0]
	orr	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L890
	ret
	.cfi_endproc
.LFE786:
	.size	vatomicsz_or_rel, .-vatomicsz_or_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_or_rlx, %function
vatomicsz_or_rlx:
.LFB798:
	.cfi_startproc
.L892:
	ldxr	x3, [x0]
	orr	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L892
	ret
	.cfi_endproc
.LFE798:
	.size	vatomicsz_or_rlx, .-vatomicsz_or_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_get, %function
vatomic8_xor_get:
.LFB319:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L894:
	ldaxrb	w0, [x2]
	eor	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L894
	ret
	.cfi_endproc
.LFE319:
	.size	vatomic8_xor_get, .-vatomic8_xor_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_get_acq, %function
vatomic8_xor_get_acq:
.LFB320:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L896:
	ldaxrb	w0, [x2]
	eor	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L896
	ret
	.cfi_endproc
.LFE320:
	.size	vatomic8_xor_get_acq, .-vatomic8_xor_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_get_rel, %function
vatomic8_xor_get_rel:
.LFB321:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L898:
	ldxrb	w0, [x2]
	eor	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L898
	ret
	.cfi_endproc
.LFE321:
	.size	vatomic8_xor_get_rel, .-vatomic8_xor_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_get_rlx, %function
vatomic8_xor_get_rlx:
.LFB322:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L900:
	ldxrb	w0, [x2]
	eor	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L900
	ret
	.cfi_endproc
.LFE322:
	.size	vatomic8_xor_get_rlx, .-vatomic8_xor_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_get, %function
vatomic16_xor_get:
.LFB323:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L902:
	ldaxrh	w0, [x2]
	eor	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L902
	ret
	.cfi_endproc
.LFE323:
	.size	vatomic16_xor_get, .-vatomic16_xor_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_get_acq, %function
vatomic16_xor_get_acq:
.LFB324:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L904:
	ldaxrh	w0, [x2]
	eor	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L904
	ret
	.cfi_endproc
.LFE324:
	.size	vatomic16_xor_get_acq, .-vatomic16_xor_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_get_rel, %function
vatomic16_xor_get_rel:
.LFB325:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L906:
	ldxrh	w0, [x2]
	eor	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L906
	ret
	.cfi_endproc
.LFE325:
	.size	vatomic16_xor_get_rel, .-vatomic16_xor_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_get_rlx, %function
vatomic16_xor_get_rlx:
.LFB326:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L908:
	ldxrh	w0, [x2]
	eor	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L908
	ret
	.cfi_endproc
.LFE326:
	.size	vatomic16_xor_get_rlx, .-vatomic16_xor_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_get, %function
vatomic32_xor_get:
.LFB327:
	.cfi_startproc
	mov	x2, x0
.L910:
	ldaxr	w0, [x2]
	eor	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L910
	ret
	.cfi_endproc
.LFE327:
	.size	vatomic32_xor_get, .-vatomic32_xor_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_get_acq, %function
vatomic32_xor_get_acq:
.LFB328:
	.cfi_startproc
	mov	x2, x0
.L912:
	ldaxr	w0, [x2]
	eor	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L912
	ret
	.cfi_endproc
.LFE328:
	.size	vatomic32_xor_get_acq, .-vatomic32_xor_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_get_rel, %function
vatomic32_xor_get_rel:
.LFB329:
	.cfi_startproc
	mov	x2, x0
.L914:
	ldxr	w0, [x2]
	eor	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L914
	ret
	.cfi_endproc
.LFE329:
	.size	vatomic32_xor_get_rel, .-vatomic32_xor_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_get_rlx, %function
vatomic32_xor_get_rlx:
.LFB330:
	.cfi_startproc
	mov	x2, x0
.L916:
	ldxr	w0, [x2]
	eor	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L916
	ret
	.cfi_endproc
.LFE330:
	.size	vatomic32_xor_get_rlx, .-vatomic32_xor_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_get, %function
vatomic64_xor_get:
.LFB331:
	.cfi_startproc
	mov	x2, x0
.L918:
	ldaxr	x0, [x2]
	eor	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L918
	ret
	.cfi_endproc
.LFE331:
	.size	vatomic64_xor_get, .-vatomic64_xor_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_get_acq, %function
vatomic64_xor_get_acq:
.LFB332:
	.cfi_startproc
	mov	x2, x0
.L920:
	ldaxr	x0, [x2]
	eor	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L920
	ret
	.cfi_endproc
.LFE332:
	.size	vatomic64_xor_get_acq, .-vatomic64_xor_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_get_rel, %function
vatomic64_xor_get_rel:
.LFB333:
	.cfi_startproc
	mov	x2, x0
.L922:
	ldxr	x0, [x2]
	eor	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L922
	ret
	.cfi_endproc
.LFE333:
	.size	vatomic64_xor_get_rel, .-vatomic64_xor_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_get_rlx, %function
vatomic64_xor_get_rlx:
.LFB334:
	.cfi_startproc
	mov	x2, x0
.L924:
	ldxr	x0, [x2]
	eor	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L924
	ret
	.cfi_endproc
.LFE334:
	.size	vatomic64_xor_get_rlx, .-vatomic64_xor_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_get, %function
vatomicsz_xor_get:
.LFB818:
	.cfi_startproc
	mov	x2, x0
.L926:
	ldaxr	x0, [x2]
	eor	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L926
	ret
	.cfi_endproc
.LFE818:
	.size	vatomicsz_xor_get, .-vatomicsz_xor_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_get_acq, %function
vatomicsz_xor_get_acq:
.LFB840:
	.cfi_startproc
	mov	x2, x0
.L928:
	ldaxr	x0, [x2]
	eor	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L928
	ret
	.cfi_endproc
.LFE840:
	.size	vatomicsz_xor_get_acq, .-vatomicsz_xor_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_get_rel, %function
vatomicsz_xor_get_rel:
.LFB862:
	.cfi_startproc
	mov	x2, x0
.L930:
	ldxr	x0, [x2]
	eor	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L930
	ret
	.cfi_endproc
.LFE862:
	.size	vatomicsz_xor_get_rel, .-vatomicsz_xor_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_get_rlx, %function
vatomicsz_xor_get_rlx:
.LFB884:
	.cfi_startproc
	mov	x2, x0
.L932:
	ldxr	x0, [x2]
	eor	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L932
	ret
	.cfi_endproc
.LFE884:
	.size	vatomicsz_xor_get_rlx, .-vatomicsz_xor_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor, %function
vatomic8_xor:
.LFB339:
	.cfi_startproc
	and	w1, w1, 255
.L934:
	ldaxrb	w3, [x0]
	eor	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L934
	ret
	.cfi_endproc
.LFE339:
	.size	vatomic8_xor, .-vatomic8_xor
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_rel, %function
vatomic8_xor_rel:
.LFB340:
	.cfi_startproc
	and	w1, w1, 255
.L936:
	ldxrb	w3, [x0]
	eor	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L936
	ret
	.cfi_endproc
.LFE340:
	.size	vatomic8_xor_rel, .-vatomic8_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_xor_rlx, %function
vatomic8_xor_rlx:
.LFB341:
	.cfi_startproc
	and	w1, w1, 255
.L938:
	ldxrb	w3, [x0]
	eor	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L938
	ret
	.cfi_endproc
.LFE341:
	.size	vatomic8_xor_rlx, .-vatomic8_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor, %function
vatomic16_xor:
.LFB342:
	.cfi_startproc
	and	w1, w1, 65535
.L940:
	ldaxrh	w3, [x0]
	eor	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L940
	ret
	.cfi_endproc
.LFE342:
	.size	vatomic16_xor, .-vatomic16_xor
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_rel, %function
vatomic16_xor_rel:
.LFB343:
	.cfi_startproc
	and	w1, w1, 65535
.L942:
	ldxrh	w3, [x0]
	eor	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L942
	ret
	.cfi_endproc
.LFE343:
	.size	vatomic16_xor_rel, .-vatomic16_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_xor_rlx, %function
vatomic16_xor_rlx:
.LFB344:
	.cfi_startproc
	and	w1, w1, 65535
.L944:
	ldxrh	w3, [x0]
	eor	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L944
	ret
	.cfi_endproc
.LFE344:
	.size	vatomic16_xor_rlx, .-vatomic16_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor, %function
vatomic32_xor:
.LFB345:
	.cfi_startproc
.L946:
	ldaxr	w3, [x0]
	eor	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L946
	ret
	.cfi_endproc
.LFE345:
	.size	vatomic32_xor, .-vatomic32_xor
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_rel, %function
vatomic32_xor_rel:
.LFB346:
	.cfi_startproc
.L948:
	ldxr	w3, [x0]
	eor	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L948
	ret
	.cfi_endproc
.LFE346:
	.size	vatomic32_xor_rel, .-vatomic32_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_xor_rlx, %function
vatomic32_xor_rlx:
.LFB347:
	.cfi_startproc
.L950:
	ldxr	w3, [x0]
	eor	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L950
	ret
	.cfi_endproc
.LFE347:
	.size	vatomic32_xor_rlx, .-vatomic32_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor, %function
vatomic64_xor:
.LFB348:
	.cfi_startproc
.L952:
	ldaxr	x3, [x0]
	eor	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L952
	ret
	.cfi_endproc
.LFE348:
	.size	vatomic64_xor, .-vatomic64_xor
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_rel, %function
vatomic64_xor_rel:
.LFB349:
	.cfi_startproc
.L954:
	ldxr	x3, [x0]
	eor	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L954
	ret
	.cfi_endproc
.LFE349:
	.size	vatomic64_xor_rel, .-vatomic64_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_xor_rlx, %function
vatomic64_xor_rlx:
.LFB350:
	.cfi_startproc
.L956:
	ldxr	x3, [x0]
	eor	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L956
	ret
	.cfi_endproc
.LFE350:
	.size	vatomic64_xor_rlx, .-vatomic64_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor, %function
vatomicsz_xor:
.LFB770:
	.cfi_startproc
.L958:
	ldaxr	x3, [x0]
	eor	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L958
	ret
	.cfi_endproc
.LFE770:
	.size	vatomicsz_xor, .-vatomicsz_xor
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_rel, %function
vatomicsz_xor_rel:
.LFB788:
	.cfi_startproc
.L960:
	ldxr	x3, [x0]
	eor	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L960
	ret
	.cfi_endproc
.LFE788:
	.size	vatomicsz_xor_rel, .-vatomicsz_xor_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_xor_rlx, %function
vatomicsz_xor_rlx:
.LFB800:
	.cfi_startproc
.L962:
	ldxr	x3, [x0]
	eor	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L962
	ret
	.cfi_endproc
.LFE800:
	.size	vatomicsz_xor_rlx, .-vatomicsz_xor_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_get, %function
vatomic8_add_get:
.LFB354:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L964:
	ldaxrb	w0, [x2]
	add	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L964
	ret
	.cfi_endproc
.LFE354:
	.size	vatomic8_add_get, .-vatomic8_add_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_get_acq, %function
vatomic8_add_get_acq:
.LFB355:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L966:
	ldaxrb	w0, [x2]
	add	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L966
	ret
	.cfi_endproc
.LFE355:
	.size	vatomic8_add_get_acq, .-vatomic8_add_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_get_rel, %function
vatomic8_add_get_rel:
.LFB356:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L968:
	ldxrb	w0, [x2]
	add	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L968
	ret
	.cfi_endproc
.LFE356:
	.size	vatomic8_add_get_rel, .-vatomic8_add_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_get_rlx, %function
vatomic8_add_get_rlx:
.LFB357:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L970:
	ldxrb	w0, [x2]
	add	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L970
	ret
	.cfi_endproc
.LFE357:
	.size	vatomic8_add_get_rlx, .-vatomic8_add_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_get, %function
vatomic16_add_get:
.LFB358:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L972:
	ldaxrh	w0, [x2]
	add	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L972
	ret
	.cfi_endproc
.LFE358:
	.size	vatomic16_add_get, .-vatomic16_add_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_get_acq, %function
vatomic16_add_get_acq:
.LFB359:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L974:
	ldaxrh	w0, [x2]
	add	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L974
	ret
	.cfi_endproc
.LFE359:
	.size	vatomic16_add_get_acq, .-vatomic16_add_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_get_rel, %function
vatomic16_add_get_rel:
.LFB360:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L976:
	ldxrh	w0, [x2]
	add	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L976
	ret
	.cfi_endproc
.LFE360:
	.size	vatomic16_add_get_rel, .-vatomic16_add_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_get_rlx, %function
vatomic16_add_get_rlx:
.LFB361:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L978:
	ldxrh	w0, [x2]
	add	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L978
	ret
	.cfi_endproc
.LFE361:
	.size	vatomic16_add_get_rlx, .-vatomic16_add_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_get, %function
vatomic32_add_get:
.LFB362:
	.cfi_startproc
	mov	x2, x0
.L980:
	ldaxr	w0, [x2]
	add	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L980
	ret
	.cfi_endproc
.LFE362:
	.size	vatomic32_add_get, .-vatomic32_add_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_get_acq, %function
vatomic32_add_get_acq:
.LFB363:
	.cfi_startproc
	mov	x2, x0
.L982:
	ldaxr	w0, [x2]
	add	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L982
	ret
	.cfi_endproc
.LFE363:
	.size	vatomic32_add_get_acq, .-vatomic32_add_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_get_rel, %function
vatomic32_add_get_rel:
.LFB364:
	.cfi_startproc
	mov	x2, x0
.L984:
	ldxr	w0, [x2]
	add	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L984
	ret
	.cfi_endproc
.LFE364:
	.size	vatomic32_add_get_rel, .-vatomic32_add_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_get_rlx, %function
vatomic32_add_get_rlx:
.LFB365:
	.cfi_startproc
	mov	x2, x0
.L986:
	ldxr	w0, [x2]
	add	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L986
	ret
	.cfi_endproc
.LFE365:
	.size	vatomic32_add_get_rlx, .-vatomic32_add_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_get, %function
vatomic64_add_get:
.LFB366:
	.cfi_startproc
	mov	x2, x0
.L988:
	ldaxr	x0, [x2]
	add	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L988
	ret
	.cfi_endproc
.LFE366:
	.size	vatomic64_add_get, .-vatomic64_add_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_get_acq, %function
vatomic64_add_get_acq:
.LFB367:
	.cfi_startproc
	mov	x2, x0
.L990:
	ldaxr	x0, [x2]
	add	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L990
	ret
	.cfi_endproc
.LFE367:
	.size	vatomic64_add_get_acq, .-vatomic64_add_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_get_rel, %function
vatomic64_add_get_rel:
.LFB368:
	.cfi_startproc
	mov	x2, x0
.L992:
	ldxr	x0, [x2]
	add	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L992
	ret
	.cfi_endproc
.LFE368:
	.size	vatomic64_add_get_rel, .-vatomic64_add_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_get_rlx, %function
vatomic64_add_get_rlx:
.LFB369:
	.cfi_startproc
	mov	x2, x0
.L994:
	ldxr	x0, [x2]
	add	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L994
	ret
	.cfi_endproc
.LFE369:
	.size	vatomic64_add_get_rlx, .-vatomic64_add_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_get, %function
vatomicsz_add_get:
.LFB822:
	.cfi_startproc
	mov	x2, x0
.L996:
	ldaxr	x0, [x2]
	add	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L996
	ret
	.cfi_endproc
.LFE822:
	.size	vatomicsz_add_get, .-vatomicsz_add_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_get_acq, %function
vatomicsz_add_get_acq:
.LFB844:
	.cfi_startproc
	mov	x2, x0
.L998:
	ldaxr	x0, [x2]
	add	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L998
	ret
	.cfi_endproc
.LFE844:
	.size	vatomicsz_add_get_acq, .-vatomicsz_add_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_get_rel, %function
vatomicsz_add_get_rel:
.LFB866:
	.cfi_startproc
	mov	x2, x0
.L1000:
	ldxr	x0, [x2]
	add	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L1000
	ret
	.cfi_endproc
.LFE866:
	.size	vatomicsz_add_get_rel, .-vatomicsz_add_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_get_rlx, %function
vatomicsz_add_get_rlx:
.LFB888:
	.cfi_startproc
	mov	x2, x0
.L1002:
	ldxr	x0, [x2]
	add	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L1002
	ret
	.cfi_endproc
.LFE888:
	.size	vatomicsz_add_get_rlx, .-vatomicsz_add_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_add, %function
vatomic8_add:
.LFB374:
	.cfi_startproc
	and	w1, w1, 255
.L1004:
	ldaxrb	w3, [x0]
	add	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L1004
	ret
	.cfi_endproc
.LFE374:
	.size	vatomic8_add, .-vatomic8_add
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_rel, %function
vatomic8_add_rel:
.LFB375:
	.cfi_startproc
	and	w1, w1, 255
.L1006:
	ldxrb	w3, [x0]
	add	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L1006
	ret
	.cfi_endproc
.LFE375:
	.size	vatomic8_add_rel, .-vatomic8_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_add_rlx, %function
vatomic8_add_rlx:
.LFB376:
	.cfi_startproc
	and	w1, w1, 255
.L1008:
	ldxrb	w3, [x0]
	add	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L1008
	ret
	.cfi_endproc
.LFE376:
	.size	vatomic8_add_rlx, .-vatomic8_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_add, %function
vatomic16_add:
.LFB377:
	.cfi_startproc
	and	w1, w1, 65535
.L1010:
	ldaxrh	w3, [x0]
	add	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L1010
	ret
	.cfi_endproc
.LFE377:
	.size	vatomic16_add, .-vatomic16_add
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_rel, %function
vatomic16_add_rel:
.LFB378:
	.cfi_startproc
	and	w1, w1, 65535
.L1012:
	ldxrh	w3, [x0]
	add	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L1012
	ret
	.cfi_endproc
.LFE378:
	.size	vatomic16_add_rel, .-vatomic16_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_add_rlx, %function
vatomic16_add_rlx:
.LFB379:
	.cfi_startproc
	and	w1, w1, 65535
.L1014:
	ldxrh	w3, [x0]
	add	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L1014
	ret
	.cfi_endproc
.LFE379:
	.size	vatomic16_add_rlx, .-vatomic16_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_add, %function
vatomic32_add:
.LFB380:
	.cfi_startproc
.L1016:
	ldaxr	w3, [x0]
	add	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L1016
	ret
	.cfi_endproc
.LFE380:
	.size	vatomic32_add, .-vatomic32_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_rel, %function
vatomic32_add_rel:
.LFB381:
	.cfi_startproc
.L1018:
	ldxr	w3, [x0]
	add	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L1018
	ret
	.cfi_endproc
.LFE381:
	.size	vatomic32_add_rel, .-vatomic32_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_add_rlx, %function
vatomic32_add_rlx:
.LFB382:
	.cfi_startproc
.L1020:
	ldxr	w3, [x0]
	add	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L1020
	ret
	.cfi_endproc
.LFE382:
	.size	vatomic32_add_rlx, .-vatomic32_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_add, %function
vatomic64_add:
.LFB383:
	.cfi_startproc
.L1022:
	ldaxr	x3, [x0]
	add	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1022
	ret
	.cfi_endproc
.LFE383:
	.size	vatomic64_add, .-vatomic64_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_rel, %function
vatomic64_add_rel:
.LFB384:
	.cfi_startproc
.L1024:
	ldxr	x3, [x0]
	add	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1024
	ret
	.cfi_endproc
.LFE384:
	.size	vatomic64_add_rel, .-vatomic64_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_add_rlx, %function
vatomic64_add_rlx:
.LFB385:
	.cfi_startproc
.L1026:
	ldxr	x3, [x0]
	add	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1026
	ret
	.cfi_endproc
.LFE385:
	.size	vatomic64_add_rlx, .-vatomic64_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add, %function
vatomicsz_add:
.LFB772:
	.cfi_startproc
.L1028:
	ldaxr	x3, [x0]
	add	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1028
	ret
	.cfi_endproc
.LFE772:
	.size	vatomicsz_add, .-vatomicsz_add
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_rel, %function
vatomicsz_add_rel:
.LFB790:
	.cfi_startproc
.L1030:
	ldxr	x3, [x0]
	add	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1030
	ret
	.cfi_endproc
.LFE790:
	.size	vatomicsz_add_rel, .-vatomicsz_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_add_rlx, %function
vatomicsz_add_rlx:
.LFB802:
	.cfi_startproc
.L1032:
	ldxr	x3, [x0]
	add	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1032
	ret
	.cfi_endproc
.LFE802:
	.size	vatomicsz_add_rlx, .-vatomicsz_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_inc, %function
vatomic8_get_inc:
.LFB389:
	.cfi_startproc
	mov	x1, x0
.L1034:
	ldaxrb	w0, [x1]
	add	w2, w0, 1
	stlxrb	w3, w2, [x1]
	cbnz	w3, .L1034
	ret
	.cfi_endproc
.LFE389:
	.size	vatomic8_get_inc, .-vatomic8_get_inc
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_inc_acq, %function
vatomic8_get_inc_acq:
.LFB390:
	.cfi_startproc
	mov	x1, x0
.L1036:
	ldaxrb	w0, [x1]
	add	w2, w0, 1
	stxrb	w3, w2, [x1]
	cbnz	w3, .L1036
	ret
	.cfi_endproc
.LFE390:
	.size	vatomic8_get_inc_acq, .-vatomic8_get_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_inc_rel, %function
vatomic8_get_inc_rel:
.LFB391:
	.cfi_startproc
	mov	x1, x0
.L1038:
	ldxrb	w0, [x1]
	add	w2, w0, 1
	stlxrb	w3, w2, [x1]
	cbnz	w3, .L1038
	ret
	.cfi_endproc
.LFE391:
	.size	vatomic8_get_inc_rel, .-vatomic8_get_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_inc_rlx, %function
vatomic8_get_inc_rlx:
.LFB392:
	.cfi_startproc
	mov	x1, x0
.L1040:
	ldxrb	w0, [x1]
	add	w2, w0, 1
	stxrb	w3, w2, [x1]
	cbnz	w3, .L1040
	ret
	.cfi_endproc
.LFE392:
	.size	vatomic8_get_inc_rlx, .-vatomic8_get_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_inc, %function
vatomic16_get_inc:
.LFB393:
	.cfi_startproc
	mov	x1, x0
.L1042:
	ldaxrh	w0, [x1]
	add	w2, w0, 1
	stlxrh	w3, w2, [x1]
	cbnz	w3, .L1042
	ret
	.cfi_endproc
.LFE393:
	.size	vatomic16_get_inc, .-vatomic16_get_inc
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_inc_acq, %function
vatomic16_get_inc_acq:
.LFB394:
	.cfi_startproc
	mov	x1, x0
.L1044:
	ldaxrh	w0, [x1]
	add	w2, w0, 1
	stxrh	w3, w2, [x1]
	cbnz	w3, .L1044
	ret
	.cfi_endproc
.LFE394:
	.size	vatomic16_get_inc_acq, .-vatomic16_get_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_inc_rel, %function
vatomic16_get_inc_rel:
.LFB395:
	.cfi_startproc
	mov	x1, x0
.L1046:
	ldxrh	w0, [x1]
	add	w2, w0, 1
	stlxrh	w3, w2, [x1]
	cbnz	w3, .L1046
	ret
	.cfi_endproc
.LFE395:
	.size	vatomic16_get_inc_rel, .-vatomic16_get_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_inc_rlx, %function
vatomic16_get_inc_rlx:
.LFB396:
	.cfi_startproc
	mov	x1, x0
.L1048:
	ldxrh	w0, [x1]
	add	w2, w0, 1
	stxrh	w3, w2, [x1]
	cbnz	w3, .L1048
	ret
	.cfi_endproc
.LFE396:
	.size	vatomic16_get_inc_rlx, .-vatomic16_get_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_inc, %function
vatomic32_get_inc:
.LFB397:
	.cfi_startproc
	mov	x1, x0
.L1050:
	ldaxr	w0, [x1]
	add	w2, w0, 1
	stlxr	w3, w2, [x1]
	cbnz	w3, .L1050
	ret
	.cfi_endproc
.LFE397:
	.size	vatomic32_get_inc, .-vatomic32_get_inc
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_inc_acq, %function
vatomic32_get_inc_acq:
.LFB398:
	.cfi_startproc
	mov	x1, x0
.L1052:
	ldaxr	w0, [x1]
	add	w2, w0, 1
	stxr	w3, w2, [x1]
	cbnz	w3, .L1052
	ret
	.cfi_endproc
.LFE398:
	.size	vatomic32_get_inc_acq, .-vatomic32_get_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_inc_rel, %function
vatomic32_get_inc_rel:
.LFB399:
	.cfi_startproc
	mov	x1, x0
.L1054:
	ldxr	w0, [x1]
	add	w2, w0, 1
	stlxr	w3, w2, [x1]
	cbnz	w3, .L1054
	ret
	.cfi_endproc
.LFE399:
	.size	vatomic32_get_inc_rel, .-vatomic32_get_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_inc_rlx, %function
vatomic32_get_inc_rlx:
.LFB400:
	.cfi_startproc
	mov	x1, x0
.L1056:
	ldxr	w0, [x1]
	add	w2, w0, 1
	stxr	w3, w2, [x1]
	cbnz	w3, .L1056
	ret
	.cfi_endproc
.LFE400:
	.size	vatomic32_get_inc_rlx, .-vatomic32_get_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_inc, %function
vatomic64_get_inc:
.LFB401:
	.cfi_startproc
	mov	x1, x0
.L1058:
	ldaxr	x0, [x1]
	add	x2, x0, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1058
	ret
	.cfi_endproc
.LFE401:
	.size	vatomic64_get_inc, .-vatomic64_get_inc
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_inc_acq, %function
vatomic64_get_inc_acq:
.LFB402:
	.cfi_startproc
	mov	x1, x0
.L1060:
	ldaxr	x0, [x1]
	add	x2, x0, 1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1060
	ret
	.cfi_endproc
.LFE402:
	.size	vatomic64_get_inc_acq, .-vatomic64_get_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_inc_rel, %function
vatomic64_get_inc_rel:
.LFB403:
	.cfi_startproc
	mov	x1, x0
.L1062:
	ldxr	x0, [x1]
	add	x2, x0, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1062
	ret
	.cfi_endproc
.LFE403:
	.size	vatomic64_get_inc_rel, .-vatomic64_get_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_inc_rlx, %function
vatomic64_get_inc_rlx:
.LFB404:
	.cfi_startproc
	mov	x1, x0
.L1064:
	ldxr	x0, [x1]
	add	x2, x0, 1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1064
	ret
	.cfi_endproc
.LFE404:
	.size	vatomic64_get_inc_rlx, .-vatomic64_get_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_inc, %function
vatomicsz_get_inc:
.LFB908:
	.cfi_startproc
	mov	x1, x0
.L1066:
	ldaxr	x0, [x1]
	add	x2, x0, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1066
	ret
	.cfi_endproc
.LFE908:
	.size	vatomicsz_get_inc, .-vatomicsz_get_inc
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_inc_acq, %function
vatomicsz_get_inc_acq:
.LFB916:
	.cfi_startproc
	mov	x1, x0
.L1068:
	ldaxr	x0, [x1]
	add	x2, x0, 1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1068
	ret
	.cfi_endproc
.LFE916:
	.size	vatomicsz_get_inc_acq, .-vatomicsz_get_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_inc_rel, %function
vatomicsz_get_inc_rel:
.LFB924:
	.cfi_startproc
	mov	x1, x0
.L1070:
	ldxr	x0, [x1]
	add	x2, x0, 1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1070
	ret
	.cfi_endproc
.LFE924:
	.size	vatomicsz_get_inc_rel, .-vatomicsz_get_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_inc_rlx, %function
vatomicsz_get_inc_rlx:
.LFB932:
	.cfi_startproc
	mov	x1, x0
.L1072:
	ldxr	x0, [x1]
	add	x2, x0, 1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1072
	ret
	.cfi_endproc
.LFE932:
	.size	vatomicsz_get_inc_rlx, .-vatomicsz_get_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_get, %function
vatomic8_inc_get:
.LFB409:
	.cfi_startproc
	mov	x1, x0
.L1074:
	ldaxrb	w0, [x1]
	add	w0, w0, 1
	stlxrb	w2, w0, [x1]
	cbnz	w2, .L1074
	ret
	.cfi_endproc
.LFE409:
	.size	vatomic8_inc_get, .-vatomic8_inc_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_get_acq, %function
vatomic8_inc_get_acq:
.LFB410:
	.cfi_startproc
	mov	x1, x0
.L1076:
	ldaxrb	w0, [x1]
	add	w0, w0, 1
	stxrb	w2, w0, [x1]
	cbnz	w2, .L1076
	ret
	.cfi_endproc
.LFE410:
	.size	vatomic8_inc_get_acq, .-vatomic8_inc_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_get_rel, %function
vatomic8_inc_get_rel:
.LFB411:
	.cfi_startproc
	mov	x1, x0
.L1078:
	ldxrb	w0, [x1]
	add	w0, w0, 1
	stlxrb	w2, w0, [x1]
	cbnz	w2, .L1078
	ret
	.cfi_endproc
.LFE411:
	.size	vatomic8_inc_get_rel, .-vatomic8_inc_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_get_rlx, %function
vatomic8_inc_get_rlx:
.LFB412:
	.cfi_startproc
	mov	x1, x0
.L1080:
	ldxrb	w0, [x1]
	add	w0, w0, 1
	stxrb	w2, w0, [x1]
	cbnz	w2, .L1080
	ret
	.cfi_endproc
.LFE412:
	.size	vatomic8_inc_get_rlx, .-vatomic8_inc_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_get, %function
vatomic16_inc_get:
.LFB413:
	.cfi_startproc
	mov	x1, x0
.L1082:
	ldaxrh	w0, [x1]
	add	w0, w0, 1
	stlxrh	w2, w0, [x1]
	cbnz	w2, .L1082
	ret
	.cfi_endproc
.LFE413:
	.size	vatomic16_inc_get, .-vatomic16_inc_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_get_acq, %function
vatomic16_inc_get_acq:
.LFB414:
	.cfi_startproc
	mov	x1, x0
.L1084:
	ldaxrh	w0, [x1]
	add	w0, w0, 1
	stxrh	w2, w0, [x1]
	cbnz	w2, .L1084
	ret
	.cfi_endproc
.LFE414:
	.size	vatomic16_inc_get_acq, .-vatomic16_inc_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_get_rel, %function
vatomic16_inc_get_rel:
.LFB415:
	.cfi_startproc
	mov	x1, x0
.L1086:
	ldxrh	w0, [x1]
	add	w0, w0, 1
	stlxrh	w2, w0, [x1]
	cbnz	w2, .L1086
	ret
	.cfi_endproc
.LFE415:
	.size	vatomic16_inc_get_rel, .-vatomic16_inc_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_get_rlx, %function
vatomic16_inc_get_rlx:
.LFB416:
	.cfi_startproc
	mov	x1, x0
.L1088:
	ldxrh	w0, [x1]
	add	w0, w0, 1
	stxrh	w2, w0, [x1]
	cbnz	w2, .L1088
	ret
	.cfi_endproc
.LFE416:
	.size	vatomic16_inc_get_rlx, .-vatomic16_inc_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_get, %function
vatomic32_inc_get:
.LFB417:
	.cfi_startproc
	mov	x1, x0
.L1090:
	ldaxr	w0, [x1]
	add	w0, w0, 1
	stlxr	w2, w0, [x1]
	cbnz	w2, .L1090
	ret
	.cfi_endproc
.LFE417:
	.size	vatomic32_inc_get, .-vatomic32_inc_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_get_acq, %function
vatomic32_inc_get_acq:
.LFB418:
	.cfi_startproc
	mov	x1, x0
.L1092:
	ldaxr	w0, [x1]
	add	w0, w0, 1
	stxr	w2, w0, [x1]
	cbnz	w2, .L1092
	ret
	.cfi_endproc
.LFE418:
	.size	vatomic32_inc_get_acq, .-vatomic32_inc_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_get_rel, %function
vatomic32_inc_get_rel:
.LFB419:
	.cfi_startproc
	mov	x1, x0
.L1094:
	ldxr	w0, [x1]
	add	w0, w0, 1
	stlxr	w2, w0, [x1]
	cbnz	w2, .L1094
	ret
	.cfi_endproc
.LFE419:
	.size	vatomic32_inc_get_rel, .-vatomic32_inc_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_get_rlx, %function
vatomic32_inc_get_rlx:
.LFB420:
	.cfi_startproc
	mov	x1, x0
.L1096:
	ldxr	w0, [x1]
	add	w0, w0, 1
	stxr	w2, w0, [x1]
	cbnz	w2, .L1096
	ret
	.cfi_endproc
.LFE420:
	.size	vatomic32_inc_get_rlx, .-vatomic32_inc_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_get, %function
vatomic64_inc_get:
.LFB421:
	.cfi_startproc
	mov	x1, x0
.L1098:
	ldaxr	x0, [x1]
	add	x0, x0, 1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1098
	ret
	.cfi_endproc
.LFE421:
	.size	vatomic64_inc_get, .-vatomic64_inc_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_get_acq, %function
vatomic64_inc_get_acq:
.LFB422:
	.cfi_startproc
	mov	x1, x0
.L1100:
	ldaxr	x0, [x1]
	add	x0, x0, 1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1100
	ret
	.cfi_endproc
.LFE422:
	.size	vatomic64_inc_get_acq, .-vatomic64_inc_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_get_rel, %function
vatomic64_inc_get_rel:
.LFB423:
	.cfi_startproc
	mov	x1, x0
.L1102:
	ldxr	x0, [x1]
	add	x0, x0, 1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1102
	ret
	.cfi_endproc
.LFE423:
	.size	vatomic64_inc_get_rel, .-vatomic64_inc_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_get_rlx, %function
vatomic64_inc_get_rlx:
.LFB424:
	.cfi_startproc
	mov	x1, x0
.L1104:
	ldxr	x0, [x1]
	add	x0, x0, 1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1104
	ret
	.cfi_endproc
.LFE424:
	.size	vatomic64_inc_get_rlx, .-vatomic64_inc_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_get, %function
vatomicsz_inc_get:
.LFB910:
	.cfi_startproc
	mov	x1, x0
.L1106:
	ldaxr	x0, [x1]
	add	x0, x0, 1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1106
	ret
	.cfi_endproc
.LFE910:
	.size	vatomicsz_inc_get, .-vatomicsz_inc_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_get_acq, %function
vatomicsz_inc_get_acq:
.LFB918:
	.cfi_startproc
	mov	x1, x0
.L1108:
	ldaxr	x0, [x1]
	add	x0, x0, 1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1108
	ret
	.cfi_endproc
.LFE918:
	.size	vatomicsz_inc_get_acq, .-vatomicsz_inc_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_get_rel, %function
vatomicsz_inc_get_rel:
.LFB926:
	.cfi_startproc
	mov	x1, x0
.L1110:
	ldxr	x0, [x1]
	add	x0, x0, 1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1110
	ret
	.cfi_endproc
.LFE926:
	.size	vatomicsz_inc_get_rel, .-vatomicsz_inc_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_get_rlx, %function
vatomicsz_inc_get_rlx:
.LFB934:
	.cfi_startproc
	mov	x1, x0
.L1112:
	ldxr	x0, [x1]
	add	x0, x0, 1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1112
	ret
	.cfi_endproc
.LFE934:
	.size	vatomicsz_inc_get_rlx, .-vatomicsz_inc_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc, %function
vatomic8_inc:
.LFB429:
	.cfi_startproc
.L1114:
	ldaxrb	w2, [x0]
	add	w2, w2, 1
	stlxrb	w1, w2, [x0]
	cbnz	w1, .L1114
	ret
	.cfi_endproc
.LFE429:
	.size	vatomic8_inc, .-vatomic8_inc
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_acq, %function
vatomic8_inc_acq:
.LFB430:
	.cfi_startproc
.L1116:
	ldaxrb	w2, [x0]
	add	w2, w2, 1
	stxrb	w1, w2, [x0]
	cbnz	w1, .L1116
	ret
	.cfi_endproc
.LFE430:
	.size	vatomic8_inc_acq, .-vatomic8_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_rel, %function
vatomic8_inc_rel:
.LFB431:
	.cfi_startproc
.L1118:
	ldxrb	w2, [x0]
	add	w2, w2, 1
	stlxrb	w1, w2, [x0]
	cbnz	w1, .L1118
	ret
	.cfi_endproc
.LFE431:
	.size	vatomic8_inc_rel, .-vatomic8_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_inc_rlx, %function
vatomic8_inc_rlx:
.LFB432:
	.cfi_startproc
.L1120:
	ldxrb	w2, [x0]
	add	w2, w2, 1
	stxrb	w1, w2, [x0]
	cbnz	w1, .L1120
	ret
	.cfi_endproc
.LFE432:
	.size	vatomic8_inc_rlx, .-vatomic8_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc, %function
vatomic16_inc:
.LFB433:
	.cfi_startproc
.L1122:
	ldaxrh	w2, [x0]
	add	w2, w2, 1
	stlxrh	w1, w2, [x0]
	cbnz	w1, .L1122
	ret
	.cfi_endproc
.LFE433:
	.size	vatomic16_inc, .-vatomic16_inc
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_acq, %function
vatomic16_inc_acq:
.LFB434:
	.cfi_startproc
.L1124:
	ldaxrh	w2, [x0]
	add	w2, w2, 1
	stxrh	w1, w2, [x0]
	cbnz	w1, .L1124
	ret
	.cfi_endproc
.LFE434:
	.size	vatomic16_inc_acq, .-vatomic16_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_rel, %function
vatomic16_inc_rel:
.LFB435:
	.cfi_startproc
.L1126:
	ldxrh	w2, [x0]
	add	w2, w2, 1
	stlxrh	w1, w2, [x0]
	cbnz	w1, .L1126
	ret
	.cfi_endproc
.LFE435:
	.size	vatomic16_inc_rel, .-vatomic16_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_inc_rlx, %function
vatomic16_inc_rlx:
.LFB436:
	.cfi_startproc
.L1128:
	ldxrh	w2, [x0]
	add	w2, w2, 1
	stxrh	w1, w2, [x0]
	cbnz	w1, .L1128
	ret
	.cfi_endproc
.LFE436:
	.size	vatomic16_inc_rlx, .-vatomic16_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc, %function
vatomic32_inc:
.LFB437:
	.cfi_startproc
.L1130:
	ldaxr	w2, [x0]
	add	w2, w2, 1
	stlxr	w1, w2, [x0]
	cbnz	w1, .L1130
	ret
	.cfi_endproc
.LFE437:
	.size	vatomic32_inc, .-vatomic32_inc
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_acq, %function
vatomic32_inc_acq:
.LFB438:
	.cfi_startproc
.L1132:
	ldaxr	w2, [x0]
	add	w2, w2, 1
	stxr	w1, w2, [x0]
	cbnz	w1, .L1132
	ret
	.cfi_endproc
.LFE438:
	.size	vatomic32_inc_acq, .-vatomic32_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_rel, %function
vatomic32_inc_rel:
.LFB439:
	.cfi_startproc
.L1134:
	ldxr	w2, [x0]
	add	w2, w2, 1
	stlxr	w1, w2, [x0]
	cbnz	w1, .L1134
	ret
	.cfi_endproc
.LFE439:
	.size	vatomic32_inc_rel, .-vatomic32_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_inc_rlx, %function
vatomic32_inc_rlx:
.LFB440:
	.cfi_startproc
.L1136:
	ldxr	w2, [x0]
	add	w2, w2, 1
	stxr	w1, w2, [x0]
	cbnz	w1, .L1136
	ret
	.cfi_endproc
.LFE440:
	.size	vatomic32_inc_rlx, .-vatomic32_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc, %function
vatomic64_inc:
.LFB441:
	.cfi_startproc
.L1138:
	ldaxr	x2, [x0]
	add	x2, x2, 1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1138
	ret
	.cfi_endproc
.LFE441:
	.size	vatomic64_inc, .-vatomic64_inc
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_acq, %function
vatomic64_inc_acq:
.LFB442:
	.cfi_startproc
.L1140:
	ldaxr	x2, [x0]
	add	x2, x2, 1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1140
	ret
	.cfi_endproc
.LFE442:
	.size	vatomic64_inc_acq, .-vatomic64_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_rel, %function
vatomic64_inc_rel:
.LFB443:
	.cfi_startproc
.L1142:
	ldxr	x2, [x0]
	add	x2, x2, 1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1142
	ret
	.cfi_endproc
.LFE443:
	.size	vatomic64_inc_rel, .-vatomic64_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_inc_rlx, %function
vatomic64_inc_rlx:
.LFB444:
	.cfi_startproc
.L1144:
	ldxr	x2, [x0]
	add	x2, x2, 1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1144
	ret
	.cfi_endproc
.LFE444:
	.size	vatomic64_inc_rlx, .-vatomic64_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc, %function
vatomicsz_inc:
.LFB940:
	.cfi_startproc
.L1146:
	ldaxr	x2, [x0]
	add	x2, x2, 1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1146
	ret
	.cfi_endproc
.LFE940:
	.size	vatomicsz_inc, .-vatomicsz_inc
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_acq, %function
vatomicsz_inc_acq:
.LFB970:
	.cfi_startproc
.L1148:
	ldaxr	x2, [x0]
	add	x2, x2, 1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1148
	ret
	.cfi_endproc
.LFE970:
	.size	vatomicsz_inc_acq, .-vatomicsz_inc_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_rel, %function
vatomicsz_inc_rel:
.LFB944:
	.cfi_startproc
.L1150:
	ldxr	x2, [x0]
	add	x2, x2, 1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1150
	ret
	.cfi_endproc
.LFE944:
	.size	vatomicsz_inc_rel, .-vatomicsz_inc_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_inc_rlx, %function
vatomicsz_inc_rlx:
.LFB948:
	.cfi_startproc
.L1152:
	ldxr	x2, [x0]
	add	x2, x2, 1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1152
	ret
	.cfi_endproc
.LFE948:
	.size	vatomicsz_inc_rlx, .-vatomicsz_inc_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_get, %function
vatomic8_sub_get:
.LFB449:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L1154:
	ldaxrb	w0, [x2]
	sub	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L1154
	ret
	.cfi_endproc
.LFE449:
	.size	vatomic8_sub_get, .-vatomic8_sub_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_get_acq, %function
vatomic8_sub_get_acq:
.LFB450:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L1156:
	ldaxrb	w0, [x2]
	sub	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L1156
	ret
	.cfi_endproc
.LFE450:
	.size	vatomic8_sub_get_acq, .-vatomic8_sub_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_get_rel, %function
vatomic8_sub_get_rel:
.LFB451:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L1158:
	ldxrb	w0, [x2]
	sub	w0, w0, w1
	stlxrb	w3, w0, [x2]
	cbnz	w3, .L1158
	ret
	.cfi_endproc
.LFE451:
	.size	vatomic8_sub_get_rel, .-vatomic8_sub_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_get_rlx, %function
vatomic8_sub_get_rlx:
.LFB452:
	.cfi_startproc
	and	w1, w1, 255
	mov	x2, x0
.L1160:
	ldxrb	w0, [x2]
	sub	w0, w0, w1
	stxrb	w3, w0, [x2]
	cbnz	w3, .L1160
	ret
	.cfi_endproc
.LFE452:
	.size	vatomic8_sub_get_rlx, .-vatomic8_sub_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_get, %function
vatomic16_sub_get:
.LFB453:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L1162:
	ldaxrh	w0, [x2]
	sub	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L1162
	ret
	.cfi_endproc
.LFE453:
	.size	vatomic16_sub_get, .-vatomic16_sub_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_get_acq, %function
vatomic16_sub_get_acq:
.LFB454:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L1164:
	ldaxrh	w0, [x2]
	sub	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L1164
	ret
	.cfi_endproc
.LFE454:
	.size	vatomic16_sub_get_acq, .-vatomic16_sub_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_get_rel, %function
vatomic16_sub_get_rel:
.LFB455:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L1166:
	ldxrh	w0, [x2]
	sub	w0, w0, w1
	stlxrh	w3, w0, [x2]
	cbnz	w3, .L1166
	ret
	.cfi_endproc
.LFE455:
	.size	vatomic16_sub_get_rel, .-vatomic16_sub_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_get_rlx, %function
vatomic16_sub_get_rlx:
.LFB456:
	.cfi_startproc
	and	w1, w1, 65535
	mov	x2, x0
.L1168:
	ldxrh	w0, [x2]
	sub	w0, w0, w1
	stxrh	w3, w0, [x2]
	cbnz	w3, .L1168
	ret
	.cfi_endproc
.LFE456:
	.size	vatomic16_sub_get_rlx, .-vatomic16_sub_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_get, %function
vatomic32_sub_get:
.LFB457:
	.cfi_startproc
	mov	x2, x0
.L1170:
	ldaxr	w0, [x2]
	sub	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L1170
	ret
	.cfi_endproc
.LFE457:
	.size	vatomic32_sub_get, .-vatomic32_sub_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_get_acq, %function
vatomic32_sub_get_acq:
.LFB458:
	.cfi_startproc
	mov	x2, x0
.L1172:
	ldaxr	w0, [x2]
	sub	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L1172
	ret
	.cfi_endproc
.LFE458:
	.size	vatomic32_sub_get_acq, .-vatomic32_sub_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_get_rel, %function
vatomic32_sub_get_rel:
.LFB459:
	.cfi_startproc
	mov	x2, x0
.L1174:
	ldxr	w0, [x2]
	sub	w0, w0, w1
	stlxr	w3, w0, [x2]
	cbnz	w3, .L1174
	ret
	.cfi_endproc
.LFE459:
	.size	vatomic32_sub_get_rel, .-vatomic32_sub_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_get_rlx, %function
vatomic32_sub_get_rlx:
.LFB460:
	.cfi_startproc
	mov	x2, x0
.L1176:
	ldxr	w0, [x2]
	sub	w0, w0, w1
	stxr	w3, w0, [x2]
	cbnz	w3, .L1176
	ret
	.cfi_endproc
.LFE460:
	.size	vatomic32_sub_get_rlx, .-vatomic32_sub_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_get, %function
vatomic64_sub_get:
.LFB461:
	.cfi_startproc
	mov	x2, x0
.L1178:
	ldaxr	x0, [x2]
	sub	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L1178
	ret
	.cfi_endproc
.LFE461:
	.size	vatomic64_sub_get, .-vatomic64_sub_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_get_acq, %function
vatomic64_sub_get_acq:
.LFB462:
	.cfi_startproc
	mov	x2, x0
.L1180:
	ldaxr	x0, [x2]
	sub	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L1180
	ret
	.cfi_endproc
.LFE462:
	.size	vatomic64_sub_get_acq, .-vatomic64_sub_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_get_rel, %function
vatomic64_sub_get_rel:
.LFB463:
	.cfi_startproc
	mov	x2, x0
.L1182:
	ldxr	x0, [x2]
	sub	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L1182
	ret
	.cfi_endproc
.LFE463:
	.size	vatomic64_sub_get_rel, .-vatomic64_sub_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_get_rlx, %function
vatomic64_sub_get_rlx:
.LFB464:
	.cfi_startproc
	mov	x2, x0
.L1184:
	ldxr	x0, [x2]
	sub	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L1184
	ret
	.cfi_endproc
.LFE464:
	.size	vatomic64_sub_get_rlx, .-vatomic64_sub_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_get, %function
vatomicsz_sub_get:
.LFB826:
	.cfi_startproc
	mov	x2, x0
.L1186:
	ldaxr	x0, [x2]
	sub	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L1186
	ret
	.cfi_endproc
.LFE826:
	.size	vatomicsz_sub_get, .-vatomicsz_sub_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_get_acq, %function
vatomicsz_sub_get_acq:
.LFB848:
	.cfi_startproc
	mov	x2, x0
.L1188:
	ldaxr	x0, [x2]
	sub	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L1188
	ret
	.cfi_endproc
.LFE848:
	.size	vatomicsz_sub_get_acq, .-vatomicsz_sub_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_get_rel, %function
vatomicsz_sub_get_rel:
.LFB870:
	.cfi_startproc
	mov	x2, x0
.L1190:
	ldxr	x0, [x2]
	sub	x0, x0, x1
	stlxr	w3, x0, [x2]
	cbnz	w3, .L1190
	ret
	.cfi_endproc
.LFE870:
	.size	vatomicsz_sub_get_rel, .-vatomicsz_sub_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_get_rlx, %function
vatomicsz_sub_get_rlx:
.LFB892:
	.cfi_startproc
	mov	x2, x0
.L1192:
	ldxr	x0, [x2]
	sub	x0, x0, x1
	stxr	w3, x0, [x2]
	cbnz	w3, .L1192
	ret
	.cfi_endproc
.LFE892:
	.size	vatomicsz_sub_get_rlx, .-vatomicsz_sub_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub, %function
vatomic8_sub:
.LFB469:
	.cfi_startproc
	and	w1, w1, 255
.L1194:
	ldaxrb	w3, [x0]
	sub	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L1194
	ret
	.cfi_endproc
.LFE469:
	.size	vatomic8_sub, .-vatomic8_sub
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_acq, %function
vatomic8_sub_acq:
.LFB470:
	.cfi_startproc
	and	w1, w1, 255
.L1196:
	ldaxrb	w3, [x0]
	sub	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L1196
	ret
	.cfi_endproc
.LFE470:
	.size	vatomic8_sub_acq, .-vatomic8_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_rel, %function
vatomic8_sub_rel:
.LFB471:
	.cfi_startproc
	and	w1, w1, 255
.L1198:
	ldxrb	w3, [x0]
	sub	w3, w3, w1
	stlxrb	w2, w3, [x0]
	cbnz	w2, .L1198
	ret
	.cfi_endproc
.LFE471:
	.size	vatomic8_sub_rel, .-vatomic8_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_sub_rlx, %function
vatomic8_sub_rlx:
.LFB472:
	.cfi_startproc
	and	w1, w1, 255
.L1200:
	ldxrb	w3, [x0]
	sub	w3, w3, w1
	stxrb	w2, w3, [x0]
	cbnz	w2, .L1200
	ret
	.cfi_endproc
.LFE472:
	.size	vatomic8_sub_rlx, .-vatomic8_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub, %function
vatomic16_sub:
.LFB473:
	.cfi_startproc
	and	w1, w1, 65535
.L1202:
	ldaxrh	w3, [x0]
	sub	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L1202
	ret
	.cfi_endproc
.LFE473:
	.size	vatomic16_sub, .-vatomic16_sub
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_acq, %function
vatomic16_sub_acq:
.LFB474:
	.cfi_startproc
	and	w1, w1, 65535
.L1204:
	ldaxrh	w3, [x0]
	sub	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L1204
	ret
	.cfi_endproc
.LFE474:
	.size	vatomic16_sub_acq, .-vatomic16_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_rel, %function
vatomic16_sub_rel:
.LFB475:
	.cfi_startproc
	and	w1, w1, 65535
.L1206:
	ldxrh	w3, [x0]
	sub	w3, w3, w1
	stlxrh	w2, w3, [x0]
	cbnz	w2, .L1206
	ret
	.cfi_endproc
.LFE475:
	.size	vatomic16_sub_rel, .-vatomic16_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_sub_rlx, %function
vatomic16_sub_rlx:
.LFB476:
	.cfi_startproc
	and	w1, w1, 65535
.L1208:
	ldxrh	w3, [x0]
	sub	w3, w3, w1
	stxrh	w2, w3, [x0]
	cbnz	w2, .L1208
	ret
	.cfi_endproc
.LFE476:
	.size	vatomic16_sub_rlx, .-vatomic16_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub, %function
vatomic32_sub:
.LFB477:
	.cfi_startproc
.L1210:
	ldaxr	w3, [x0]
	sub	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L1210
	ret
	.cfi_endproc
.LFE477:
	.size	vatomic32_sub, .-vatomic32_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_acq, %function
vatomic32_sub_acq:
.LFB478:
	.cfi_startproc
.L1212:
	ldaxr	w3, [x0]
	sub	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L1212
	ret
	.cfi_endproc
.LFE478:
	.size	vatomic32_sub_acq, .-vatomic32_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_rel, %function
vatomic32_sub_rel:
.LFB479:
	.cfi_startproc
.L1214:
	ldxr	w3, [x0]
	sub	w3, w3, w1
	stlxr	w2, w3, [x0]
	cbnz	w2, .L1214
	ret
	.cfi_endproc
.LFE479:
	.size	vatomic32_sub_rel, .-vatomic32_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_sub_rlx, %function
vatomic32_sub_rlx:
.LFB480:
	.cfi_startproc
.L1216:
	ldxr	w3, [x0]
	sub	w3, w3, w1
	stxr	w2, w3, [x0]
	cbnz	w2, .L1216
	ret
	.cfi_endproc
.LFE480:
	.size	vatomic32_sub_rlx, .-vatomic32_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub, %function
vatomic64_sub:
.LFB481:
	.cfi_startproc
.L1218:
	ldaxr	x3, [x0]
	sub	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1218
	ret
	.cfi_endproc
.LFE481:
	.size	vatomic64_sub, .-vatomic64_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_acq, %function
vatomic64_sub_acq:
.LFB482:
	.cfi_startproc
.L1220:
	ldaxr	x3, [x0]
	sub	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1220
	ret
	.cfi_endproc
.LFE482:
	.size	vatomic64_sub_acq, .-vatomic64_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_rel, %function
vatomic64_sub_rel:
.LFB483:
	.cfi_startproc
.L1222:
	ldxr	x3, [x0]
	sub	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1222
	ret
	.cfi_endproc
.LFE483:
	.size	vatomic64_sub_rel, .-vatomic64_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_sub_rlx, %function
vatomic64_sub_rlx:
.LFB484:
	.cfi_startproc
.L1224:
	ldxr	x3, [x0]
	sub	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1224
	ret
	.cfi_endproc
.LFE484:
	.size	vatomic64_sub_rlx, .-vatomic64_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub, %function
vatomicsz_sub:
.LFB774:
	.cfi_startproc
.L1226:
	ldaxr	x3, [x0]
	sub	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1226
	ret
	.cfi_endproc
.LFE774:
	.size	vatomicsz_sub, .-vatomicsz_sub
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_acq, %function
vatomicsz_sub_acq:
.LFB974:
	.cfi_startproc
.L1228:
	ldaxr	x3, [x0]
	sub	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1228
	ret
	.cfi_endproc
.LFE974:
	.size	vatomicsz_sub_acq, .-vatomicsz_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_rel, %function
vatomicsz_sub_rel:
.LFB792:
	.cfi_startproc
.L1230:
	ldxr	x3, [x0]
	sub	x3, x3, x1
	stlxr	w2, x3, [x0]
	cbnz	w2, .L1230
	ret
	.cfi_endproc
.LFE792:
	.size	vatomicsz_sub_rel, .-vatomicsz_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_sub_rlx, %function
vatomicsz_sub_rlx:
.LFB804:
	.cfi_startproc
.L1232:
	ldxr	x3, [x0]
	sub	x3, x3, x1
	stxr	w2, x3, [x0]
	cbnz	w2, .L1232
	ret
	.cfi_endproc
.LFE804:
	.size	vatomicsz_sub_rlx, .-vatomicsz_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_dec, %function
vatomic8_get_dec:
.LFB489:
	.cfi_startproc
	mov	x1, x0
.L1234:
	ldaxrb	w0, [x1]
	sub	w2, w0, #1
	stlxrb	w3, w2, [x1]
	cbnz	w3, .L1234
	ret
	.cfi_endproc
.LFE489:
	.size	vatomic8_get_dec, .-vatomic8_get_dec
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_dec_acq, %function
vatomic8_get_dec_acq:
.LFB490:
	.cfi_startproc
	mov	x1, x0
.L1236:
	ldaxrb	w0, [x1]
	sub	w2, w0, #1
	stxrb	w3, w2, [x1]
	cbnz	w3, .L1236
	ret
	.cfi_endproc
.LFE490:
	.size	vatomic8_get_dec_acq, .-vatomic8_get_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_dec_rel, %function
vatomic8_get_dec_rel:
.LFB491:
	.cfi_startproc
	mov	x1, x0
.L1238:
	ldxrb	w0, [x1]
	sub	w2, w0, #1
	stlxrb	w3, w2, [x1]
	cbnz	w3, .L1238
	ret
	.cfi_endproc
.LFE491:
	.size	vatomic8_get_dec_rel, .-vatomic8_get_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_get_dec_rlx, %function
vatomic8_get_dec_rlx:
.LFB492:
	.cfi_startproc
	mov	x1, x0
.L1240:
	ldxrb	w0, [x1]
	sub	w2, w0, #1
	stxrb	w3, w2, [x1]
	cbnz	w3, .L1240
	ret
	.cfi_endproc
.LFE492:
	.size	vatomic8_get_dec_rlx, .-vatomic8_get_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_dec, %function
vatomic16_get_dec:
.LFB493:
	.cfi_startproc
	mov	x1, x0
.L1242:
	ldaxrh	w0, [x1]
	sub	w2, w0, #1
	stlxrh	w3, w2, [x1]
	cbnz	w3, .L1242
	ret
	.cfi_endproc
.LFE493:
	.size	vatomic16_get_dec, .-vatomic16_get_dec
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_dec_acq, %function
vatomic16_get_dec_acq:
.LFB494:
	.cfi_startproc
	mov	x1, x0
.L1244:
	ldaxrh	w0, [x1]
	sub	w2, w0, #1
	stxrh	w3, w2, [x1]
	cbnz	w3, .L1244
	ret
	.cfi_endproc
.LFE494:
	.size	vatomic16_get_dec_acq, .-vatomic16_get_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_dec_rel, %function
vatomic16_get_dec_rel:
.LFB495:
	.cfi_startproc
	mov	x1, x0
.L1246:
	ldxrh	w0, [x1]
	sub	w2, w0, #1
	stlxrh	w3, w2, [x1]
	cbnz	w3, .L1246
	ret
	.cfi_endproc
.LFE495:
	.size	vatomic16_get_dec_rel, .-vatomic16_get_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_get_dec_rlx, %function
vatomic16_get_dec_rlx:
.LFB496:
	.cfi_startproc
	mov	x1, x0
.L1248:
	ldxrh	w0, [x1]
	sub	w2, w0, #1
	stxrh	w3, w2, [x1]
	cbnz	w3, .L1248
	ret
	.cfi_endproc
.LFE496:
	.size	vatomic16_get_dec_rlx, .-vatomic16_get_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_dec, %function
vatomic32_get_dec:
.LFB497:
	.cfi_startproc
	mov	x1, x0
.L1250:
	ldaxr	w0, [x1]
	sub	w2, w0, #1
	stlxr	w3, w2, [x1]
	cbnz	w3, .L1250
	ret
	.cfi_endproc
.LFE497:
	.size	vatomic32_get_dec, .-vatomic32_get_dec
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_dec_acq, %function
vatomic32_get_dec_acq:
.LFB498:
	.cfi_startproc
	mov	x1, x0
.L1252:
	ldaxr	w0, [x1]
	sub	w2, w0, #1
	stxr	w3, w2, [x1]
	cbnz	w3, .L1252
	ret
	.cfi_endproc
.LFE498:
	.size	vatomic32_get_dec_acq, .-vatomic32_get_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_dec_rel, %function
vatomic32_get_dec_rel:
.LFB499:
	.cfi_startproc
	mov	x1, x0
.L1254:
	ldxr	w0, [x1]
	sub	w2, w0, #1
	stlxr	w3, w2, [x1]
	cbnz	w3, .L1254
	ret
	.cfi_endproc
.LFE499:
	.size	vatomic32_get_dec_rel, .-vatomic32_get_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_get_dec_rlx, %function
vatomic32_get_dec_rlx:
.LFB500:
	.cfi_startproc
	mov	x1, x0
.L1256:
	ldxr	w0, [x1]
	sub	w2, w0, #1
	stxr	w3, w2, [x1]
	cbnz	w3, .L1256
	ret
	.cfi_endproc
.LFE500:
	.size	vatomic32_get_dec_rlx, .-vatomic32_get_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_dec, %function
vatomic64_get_dec:
.LFB501:
	.cfi_startproc
	mov	x1, x0
.L1258:
	ldaxr	x0, [x1]
	sub	x2, x0, #1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1258
	ret
	.cfi_endproc
.LFE501:
	.size	vatomic64_get_dec, .-vatomic64_get_dec
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_dec_acq, %function
vatomic64_get_dec_acq:
.LFB502:
	.cfi_startproc
	mov	x1, x0
.L1260:
	ldaxr	x0, [x1]
	sub	x2, x0, #1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1260
	ret
	.cfi_endproc
.LFE502:
	.size	vatomic64_get_dec_acq, .-vatomic64_get_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_dec_rel, %function
vatomic64_get_dec_rel:
.LFB503:
	.cfi_startproc
	mov	x1, x0
.L1262:
	ldxr	x0, [x1]
	sub	x2, x0, #1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1262
	ret
	.cfi_endproc
.LFE503:
	.size	vatomic64_get_dec_rel, .-vatomic64_get_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_get_dec_rlx, %function
vatomic64_get_dec_rlx:
.LFB504:
	.cfi_startproc
	mov	x1, x0
.L1264:
	ldxr	x0, [x1]
	sub	x2, x0, #1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1264
	ret
	.cfi_endproc
.LFE504:
	.size	vatomic64_get_dec_rlx, .-vatomic64_get_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_dec, %function
vatomicsz_get_dec:
.LFB912:
	.cfi_startproc
	mov	x1, x0
.L1266:
	ldaxr	x0, [x1]
	sub	x2, x0, #1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1266
	ret
	.cfi_endproc
.LFE912:
	.size	vatomicsz_get_dec, .-vatomicsz_get_dec
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_dec_acq, %function
vatomicsz_get_dec_acq:
.LFB920:
	.cfi_startproc
	mov	x1, x0
.L1268:
	ldaxr	x0, [x1]
	sub	x2, x0, #1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1268
	ret
	.cfi_endproc
.LFE920:
	.size	vatomicsz_get_dec_acq, .-vatomicsz_get_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_dec_rel, %function
vatomicsz_get_dec_rel:
.LFB928:
	.cfi_startproc
	mov	x1, x0
.L1270:
	ldxr	x0, [x1]
	sub	x2, x0, #1
	stlxr	w3, x2, [x1]
	cbnz	w3, .L1270
	ret
	.cfi_endproc
.LFE928:
	.size	vatomicsz_get_dec_rel, .-vatomicsz_get_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_get_dec_rlx, %function
vatomicsz_get_dec_rlx:
.LFB936:
	.cfi_startproc
	mov	x1, x0
.L1272:
	ldxr	x0, [x1]
	sub	x2, x0, #1
	stxr	w3, x2, [x1]
	cbnz	w3, .L1272
	ret
	.cfi_endproc
.LFE936:
	.size	vatomicsz_get_dec_rlx, .-vatomicsz_get_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_get, %function
vatomic8_dec_get:
.LFB509:
	.cfi_startproc
	mov	x1, x0
.L1274:
	ldaxrb	w0, [x1]
	sub	w0, w0, #1
	stlxrb	w2, w0, [x1]
	cbnz	w2, .L1274
	ret
	.cfi_endproc
.LFE509:
	.size	vatomic8_dec_get, .-vatomic8_dec_get
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_get_acq, %function
vatomic8_dec_get_acq:
.LFB510:
	.cfi_startproc
	mov	x1, x0
.L1276:
	ldaxrb	w0, [x1]
	sub	w0, w0, #1
	stxrb	w2, w0, [x1]
	cbnz	w2, .L1276
	ret
	.cfi_endproc
.LFE510:
	.size	vatomic8_dec_get_acq, .-vatomic8_dec_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_get_rel, %function
vatomic8_dec_get_rel:
.LFB511:
	.cfi_startproc
	mov	x1, x0
.L1278:
	ldxrb	w0, [x1]
	sub	w0, w0, #1
	stlxrb	w2, w0, [x1]
	cbnz	w2, .L1278
	ret
	.cfi_endproc
.LFE511:
	.size	vatomic8_dec_get_rel, .-vatomic8_dec_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_get_rlx, %function
vatomic8_dec_get_rlx:
.LFB512:
	.cfi_startproc
	mov	x1, x0
.L1280:
	ldxrb	w0, [x1]
	sub	w0, w0, #1
	stxrb	w2, w0, [x1]
	cbnz	w2, .L1280
	ret
	.cfi_endproc
.LFE512:
	.size	vatomic8_dec_get_rlx, .-vatomic8_dec_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_get, %function
vatomic16_dec_get:
.LFB513:
	.cfi_startproc
	mov	x1, x0
.L1282:
	ldaxrh	w0, [x1]
	sub	w0, w0, #1
	stlxrh	w2, w0, [x1]
	cbnz	w2, .L1282
	ret
	.cfi_endproc
.LFE513:
	.size	vatomic16_dec_get, .-vatomic16_dec_get
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_get_acq, %function
vatomic16_dec_get_acq:
.LFB514:
	.cfi_startproc
	mov	x1, x0
.L1284:
	ldaxrh	w0, [x1]
	sub	w0, w0, #1
	stxrh	w2, w0, [x1]
	cbnz	w2, .L1284
	ret
	.cfi_endproc
.LFE514:
	.size	vatomic16_dec_get_acq, .-vatomic16_dec_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_get_rel, %function
vatomic16_dec_get_rel:
.LFB515:
	.cfi_startproc
	mov	x1, x0
.L1286:
	ldxrh	w0, [x1]
	sub	w0, w0, #1
	stlxrh	w2, w0, [x1]
	cbnz	w2, .L1286
	ret
	.cfi_endproc
.LFE515:
	.size	vatomic16_dec_get_rel, .-vatomic16_dec_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_get_rlx, %function
vatomic16_dec_get_rlx:
.LFB516:
	.cfi_startproc
	mov	x1, x0
.L1288:
	ldxrh	w0, [x1]
	sub	w0, w0, #1
	stxrh	w2, w0, [x1]
	cbnz	w2, .L1288
	ret
	.cfi_endproc
.LFE516:
	.size	vatomic16_dec_get_rlx, .-vatomic16_dec_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_get, %function
vatomic32_dec_get:
.LFB517:
	.cfi_startproc
	mov	x1, x0
.L1290:
	ldaxr	w0, [x1]
	sub	w0, w0, #1
	stlxr	w2, w0, [x1]
	cbnz	w2, .L1290
	ret
	.cfi_endproc
.LFE517:
	.size	vatomic32_dec_get, .-vatomic32_dec_get
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_get_acq, %function
vatomic32_dec_get_acq:
.LFB518:
	.cfi_startproc
	mov	x1, x0
.L1292:
	ldaxr	w0, [x1]
	sub	w0, w0, #1
	stxr	w2, w0, [x1]
	cbnz	w2, .L1292
	ret
	.cfi_endproc
.LFE518:
	.size	vatomic32_dec_get_acq, .-vatomic32_dec_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_get_rel, %function
vatomic32_dec_get_rel:
.LFB519:
	.cfi_startproc
	mov	x1, x0
.L1294:
	ldxr	w0, [x1]
	sub	w0, w0, #1
	stlxr	w2, w0, [x1]
	cbnz	w2, .L1294
	ret
	.cfi_endproc
.LFE519:
	.size	vatomic32_dec_get_rel, .-vatomic32_dec_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_get_rlx, %function
vatomic32_dec_get_rlx:
.LFB520:
	.cfi_startproc
	mov	x1, x0
.L1296:
	ldxr	w0, [x1]
	sub	w0, w0, #1
	stxr	w2, w0, [x1]
	cbnz	w2, .L1296
	ret
	.cfi_endproc
.LFE520:
	.size	vatomic32_dec_get_rlx, .-vatomic32_dec_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_get, %function
vatomic64_dec_get:
.LFB521:
	.cfi_startproc
	mov	x1, x0
.L1298:
	ldaxr	x0, [x1]
	sub	x0, x0, #1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1298
	ret
	.cfi_endproc
.LFE521:
	.size	vatomic64_dec_get, .-vatomic64_dec_get
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_get_acq, %function
vatomic64_dec_get_acq:
.LFB522:
	.cfi_startproc
	mov	x1, x0
.L1300:
	ldaxr	x0, [x1]
	sub	x0, x0, #1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1300
	ret
	.cfi_endproc
.LFE522:
	.size	vatomic64_dec_get_acq, .-vatomic64_dec_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_get_rel, %function
vatomic64_dec_get_rel:
.LFB523:
	.cfi_startproc
	mov	x1, x0
.L1302:
	ldxr	x0, [x1]
	sub	x0, x0, #1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1302
	ret
	.cfi_endproc
.LFE523:
	.size	vatomic64_dec_get_rel, .-vatomic64_dec_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_get_rlx, %function
vatomic64_dec_get_rlx:
.LFB524:
	.cfi_startproc
	mov	x1, x0
.L1304:
	ldxr	x0, [x1]
	sub	x0, x0, #1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1304
	ret
	.cfi_endproc
.LFE524:
	.size	vatomic64_dec_get_rlx, .-vatomic64_dec_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_get, %function
vatomicsz_dec_get:
.LFB914:
	.cfi_startproc
	mov	x1, x0
.L1306:
	ldaxr	x0, [x1]
	sub	x0, x0, #1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1306
	ret
	.cfi_endproc
.LFE914:
	.size	vatomicsz_dec_get, .-vatomicsz_dec_get
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_get_acq, %function
vatomicsz_dec_get_acq:
.LFB922:
	.cfi_startproc
	mov	x1, x0
.L1308:
	ldaxr	x0, [x1]
	sub	x0, x0, #1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1308
	ret
	.cfi_endproc
.LFE922:
	.size	vatomicsz_dec_get_acq, .-vatomicsz_dec_get_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_get_rel, %function
vatomicsz_dec_get_rel:
.LFB930:
	.cfi_startproc
	mov	x1, x0
.L1310:
	ldxr	x0, [x1]
	sub	x0, x0, #1
	stlxr	w2, x0, [x1]
	cbnz	w2, .L1310
	ret
	.cfi_endproc
.LFE930:
	.size	vatomicsz_dec_get_rel, .-vatomicsz_dec_get_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_get_rlx, %function
vatomicsz_dec_get_rlx:
.LFB938:
	.cfi_startproc
	mov	x1, x0
.L1312:
	ldxr	x0, [x1]
	sub	x0, x0, #1
	stxr	w2, x0, [x1]
	cbnz	w2, .L1312
	ret
	.cfi_endproc
.LFE938:
	.size	vatomicsz_dec_get_rlx, .-vatomicsz_dec_get_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec, %function
vatomic8_dec:
.LFB529:
	.cfi_startproc
.L1314:
	ldaxrb	w2, [x0]
	sub	w2, w2, #1
	stlxrb	w1, w2, [x0]
	cbnz	w1, .L1314
	ret
	.cfi_endproc
.LFE529:
	.size	vatomic8_dec, .-vatomic8_dec
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_acq, %function
vatomic8_dec_acq:
.LFB530:
	.cfi_startproc
.L1316:
	ldaxrb	w2, [x0]
	sub	w2, w2, #1
	stxrb	w1, w2, [x0]
	cbnz	w1, .L1316
	ret
	.cfi_endproc
.LFE530:
	.size	vatomic8_dec_acq, .-vatomic8_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_rel, %function
vatomic8_dec_rel:
.LFB531:
	.cfi_startproc
.L1318:
	ldxrb	w2, [x0]
	sub	w2, w2, #1
	stlxrb	w1, w2, [x0]
	cbnz	w1, .L1318
	ret
	.cfi_endproc
.LFE531:
	.size	vatomic8_dec_rel, .-vatomic8_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic8_dec_rlx, %function
vatomic8_dec_rlx:
.LFB532:
	.cfi_startproc
.L1320:
	ldxrb	w2, [x0]
	sub	w2, w2, #1
	stxrb	w1, w2, [x0]
	cbnz	w1, .L1320
	ret
	.cfi_endproc
.LFE532:
	.size	vatomic8_dec_rlx, .-vatomic8_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec, %function
vatomic16_dec:
.LFB533:
	.cfi_startproc
.L1322:
	ldaxrh	w2, [x0]
	sub	w2, w2, #1
	stlxrh	w1, w2, [x0]
	cbnz	w1, .L1322
	ret
	.cfi_endproc
.LFE533:
	.size	vatomic16_dec, .-vatomic16_dec
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_acq, %function
vatomic16_dec_acq:
.LFB534:
	.cfi_startproc
.L1324:
	ldaxrh	w2, [x0]
	sub	w2, w2, #1
	stxrh	w1, w2, [x0]
	cbnz	w1, .L1324
	ret
	.cfi_endproc
.LFE534:
	.size	vatomic16_dec_acq, .-vatomic16_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_rel, %function
vatomic16_dec_rel:
.LFB535:
	.cfi_startproc
.L1326:
	ldxrh	w2, [x0]
	sub	w2, w2, #1
	stlxrh	w1, w2, [x0]
	cbnz	w1, .L1326
	ret
	.cfi_endproc
.LFE535:
	.size	vatomic16_dec_rel, .-vatomic16_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic16_dec_rlx, %function
vatomic16_dec_rlx:
.LFB536:
	.cfi_startproc
.L1328:
	ldxrh	w2, [x0]
	sub	w2, w2, #1
	stxrh	w1, w2, [x0]
	cbnz	w1, .L1328
	ret
	.cfi_endproc
.LFE536:
	.size	vatomic16_dec_rlx, .-vatomic16_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec, %function
vatomic32_dec:
.LFB537:
	.cfi_startproc
.L1330:
	ldaxr	w2, [x0]
	sub	w2, w2, #1
	stlxr	w1, w2, [x0]
	cbnz	w1, .L1330
	ret
	.cfi_endproc
.LFE537:
	.size	vatomic32_dec, .-vatomic32_dec
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_acq, %function
vatomic32_dec_acq:
.LFB538:
	.cfi_startproc
.L1332:
	ldaxr	w2, [x0]
	sub	w2, w2, #1
	stxr	w1, w2, [x0]
	cbnz	w1, .L1332
	ret
	.cfi_endproc
.LFE538:
	.size	vatomic32_dec_acq, .-vatomic32_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_rel, %function
vatomic32_dec_rel:
.LFB539:
	.cfi_startproc
.L1334:
	ldxr	w2, [x0]
	sub	w2, w2, #1
	stlxr	w1, w2, [x0]
	cbnz	w1, .L1334
	ret
	.cfi_endproc
.LFE539:
	.size	vatomic32_dec_rel, .-vatomic32_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_dec_rlx, %function
vatomic32_dec_rlx:
.LFB540:
	.cfi_startproc
.L1336:
	ldxr	w2, [x0]
	sub	w2, w2, #1
	stxr	w1, w2, [x0]
	cbnz	w1, .L1336
	ret
	.cfi_endproc
.LFE540:
	.size	vatomic32_dec_rlx, .-vatomic32_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec, %function
vatomic64_dec:
.LFB541:
	.cfi_startproc
.L1338:
	ldaxr	x2, [x0]
	sub	x2, x2, #1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1338
	ret
	.cfi_endproc
.LFE541:
	.size	vatomic64_dec, .-vatomic64_dec
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_acq, %function
vatomic64_dec_acq:
.LFB542:
	.cfi_startproc
.L1340:
	ldaxr	x2, [x0]
	sub	x2, x2, #1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1340
	ret
	.cfi_endproc
.LFE542:
	.size	vatomic64_dec_acq, .-vatomic64_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_rel, %function
vatomic64_dec_rel:
.LFB543:
	.cfi_startproc
.L1342:
	ldxr	x2, [x0]
	sub	x2, x2, #1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1342
	ret
	.cfi_endproc
.LFE543:
	.size	vatomic64_dec_rel, .-vatomic64_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_dec_rlx, %function
vatomic64_dec_rlx:
.LFB544:
	.cfi_startproc
.L1344:
	ldxr	x2, [x0]
	sub	x2, x2, #1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1344
	ret
	.cfi_endproc
.LFE544:
	.size	vatomic64_dec_rlx, .-vatomic64_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec, %function
vatomicsz_dec:
.LFB942:
	.cfi_startproc
.L1346:
	ldaxr	x2, [x0]
	sub	x2, x2, #1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1346
	ret
	.cfi_endproc
.LFE942:
	.size	vatomicsz_dec, .-vatomicsz_dec
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_acq, %function
vatomicsz_dec_acq:
.LFB972:
	.cfi_startproc
.L1348:
	ldaxr	x2, [x0]
	sub	x2, x2, #1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1348
	ret
	.cfi_endproc
.LFE972:
	.size	vatomicsz_dec_acq, .-vatomicsz_dec_acq
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_rel, %function
vatomicsz_dec_rel:
.LFB946:
	.cfi_startproc
.L1350:
	ldxr	x2, [x0]
	sub	x2, x2, #1
	stlxr	w1, x2, [x0]
	cbnz	w1, .L1350
	ret
	.cfi_endproc
.LFE946:
	.size	vatomicsz_dec_rel, .-vatomicsz_dec_rel
	.align	2
	.p2align 4,,11
	.type	vatomicsz_dec_rlx, %function
vatomicsz_dec_rlx:
.LFB950:
	.cfi_startproc
.L1352:
	ldxr	x2, [x0]
	sub	x2, x2, #1
	stxr	w1, x2, [x0]
	cbnz	w1, .L1352
	ret
	.cfi_endproc
.LFE950:
	.size	vatomicsz_dec_rlx, .-vatomicsz_dec_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic8_init, %function
vatomic8_init:
.LFB549:
	.cfi_startproc
	and	w1, w1, 255
	stlrb	w1, [x0]
	ret
	.cfi_endproc
.LFE549:
	.size	vatomic8_init, .-vatomic8_init
	.align	2
	.p2align 4,,11
	.type	vatomic16_init, %function
vatomic16_init:
.LFB550:
	.cfi_startproc
	and	w1, w1, 65535
	stlrh	w1, [x0]
	ret
	.cfi_endproc
.LFE550:
	.size	vatomic16_init, .-vatomic16_init
	.align	2
	.p2align 4,,11
	.type	vatomic32_init, %function
vatomic32_init:
.LFB551:
	.cfi_startproc
	stlr	w1, [x0]
	ret
	.cfi_endproc
.LFE551:
	.size	vatomic32_init, .-vatomic32_init
	.align	2
	.p2align 4,,11
	.type	vatomic64_init, %function
vatomic64_init:
.LFB552:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE552:
	.size	vatomic64_init, .-vatomic64_init
	.align	2
	.p2align 4,,11
	.type	vatomicsz_init, %function
vatomicsz_init:
.LFB762:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE762:
	.size	vatomicsz_init, .-vatomicsz_init
	.align	2
	.p2align 4,,11
	.type	vatomicptr_init, %function
vatomicptr_init:
.LFB554:
	.cfi_startproc
	stlr	x1, [x0]
	ret
	.cfi_endproc
.LFE554:
	.size	vatomicptr_init, .-vatomicptr_init
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq, %function
vatomic32_await_neq:
.LFB555:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1360:
	ldar	w0, [x2]
	cmp	w1, w0
	beq	.L1360
	ret
	.cfi_endproc
.LFE555:
	.size	vatomic32_await_neq, .-vatomic32_await_neq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_acq, %function
vatomic32_await_neq_acq:
.LFB556:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1363:
	ldar	w0, [x2]
	cmp	w1, w0
	beq	.L1363
	ret
	.cfi_endproc
.LFE556:
	.size	vatomic32_await_neq_acq, .-vatomic32_await_neq_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_rlx, %function
vatomic32_await_neq_rlx:
.LFB557:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1366:
	ldr	w0, [x2]
	cmp	w1, w0
	beq	.L1366
	ret
	.cfi_endproc
.LFE557:
	.size	vatomic32_await_neq_rlx, .-vatomic32_await_neq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq, %function
vatomic64_await_neq:
.LFB558:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1369:
	ldar	x0, [x2]
	cmp	x1, x0
	beq	.L1369
	ret
	.cfi_endproc
.LFE558:
	.size	vatomic64_await_neq, .-vatomic64_await_neq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_acq, %function
vatomic64_await_neq_acq:
.LFB559:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1372:
	ldar	x0, [x2]
	cmp	x1, x0
	beq	.L1372
	ret
	.cfi_endproc
.LFE559:
	.size	vatomic64_await_neq_acq, .-vatomic64_await_neq_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_rlx, %function
vatomic64_await_neq_rlx:
.LFB560:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1375:
	ldr	x0, [x2]
	cmp	x1, x0
	beq	.L1375
	ret
	.cfi_endproc
.LFE560:
	.size	vatomic64_await_neq_rlx, .-vatomic64_await_neq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq, %function
vatomicptr_await_neq:
.LFB561:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1378:
	ldar	x0, [x2]
	cmp	x1, x0
	beq	.L1378
	ret
	.cfi_endproc
.LFE561:
	.size	vatomicptr_await_neq, .-vatomicptr_await_neq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_acq, %function
vatomicptr_await_neq_acq:
.LFB562:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1381:
	ldar	x0, [x2]
	cmp	x1, x0
	beq	.L1381
	ret
	.cfi_endproc
.LFE562:
	.size	vatomicptr_await_neq_acq, .-vatomicptr_await_neq_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_rlx, %function
vatomicptr_await_neq_rlx:
.LFB563:
	.cfi_startproc
	mov	x2, x0
	.p2align 3,,7
.L1384:
	ldr	x0, [x2]
	cmp	x1, x0
	beq	.L1384
	ret
	.cfi_endproc
.LFE563:
	.size	vatomicptr_await_neq_rlx, .-vatomicptr_await_neq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq, %function
vatomic32_await_eq:
.LFB564:
	.cfi_startproc
	mov	x3, x0
	mov	w2, w1
	.p2align 3,,7
.L1387:
	mov	w0, w2
	ldar	w2, [x3]
	cmp	w1, w2
	bne	.L1387
	ret
	.cfi_endproc
.LFE564:
	.size	vatomic32_await_eq, .-vatomic32_await_eq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_acq, %function
vatomic32_await_eq_acq:
.LFB565:
	.cfi_startproc
	mov	x3, x0
	mov	w2, w1
	.p2align 3,,7
.L1390:
	mov	w0, w2
	ldar	w2, [x3]
	cmp	w1, w2
	bne	.L1390
	ret
	.cfi_endproc
.LFE565:
	.size	vatomic32_await_eq_acq, .-vatomic32_await_eq_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_rlx, %function
vatomic32_await_eq_rlx:
.LFB566:
	.cfi_startproc
	mov	x3, x0
	mov	w2, w1
	.p2align 3,,7
.L1393:
	mov	w0, w2
	ldr	w2, [x3]
	cmp	w1, w2
	bne	.L1393
	ret
	.cfi_endproc
.LFE566:
	.size	vatomic32_await_eq_rlx, .-vatomic32_await_eq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq, %function
vatomic64_await_eq:
.LFB567:
	.cfi_startproc
	mov	x3, x0
	mov	x2, x1
	.p2align 3,,7
.L1396:
	mov	x0, x2
	ldar	x2, [x3]
	cmp	x1, x2
	bne	.L1396
	ret
	.cfi_endproc
.LFE567:
	.size	vatomic64_await_eq, .-vatomic64_await_eq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_acq, %function
vatomic64_await_eq_acq:
.LFB568:
	.cfi_startproc
	mov	x3, x0
	mov	x2, x1
	.p2align 3,,7
.L1399:
	mov	x0, x2
	ldar	x2, [x3]
	cmp	x1, x2
	bne	.L1399
	ret
	.cfi_endproc
.LFE568:
	.size	vatomic64_await_eq_acq, .-vatomic64_await_eq_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_rlx, %function
vatomic64_await_eq_rlx:
.LFB569:
	.cfi_startproc
	mov	x3, x0
	mov	x2, x1
	.p2align 3,,7
.L1402:
	mov	x0, x2
	ldr	x2, [x3]
	cmp	x1, x2
	bne	.L1402
	ret
	.cfi_endproc
.LFE569:
	.size	vatomic64_await_eq_rlx, .-vatomic64_await_eq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq, %function
vatomicptr_await_eq:
.LFB570:
	.cfi_startproc
	mov	x4, x0
	mov	x2, x1
	.p2align 3,,7
.L1405:
	ldar	x3, [x4]
	mov	x0, x2
	mov	x2, x3
	cmp	x1, x3
	bne	.L1405
	ret
	.cfi_endproc
.LFE570:
	.size	vatomicptr_await_eq, .-vatomicptr_await_eq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_acq, %function
vatomicptr_await_eq_acq:
.LFB571:
	.cfi_startproc
	mov	x4, x0
	mov	x2, x1
	.p2align 3,,7
.L1408:
	ldar	x3, [x4]
	mov	x0, x2
	mov	x2, x3
	cmp	x1, x3
	bne	.L1408
	ret
	.cfi_endproc
.LFE571:
	.size	vatomicptr_await_eq_acq, .-vatomicptr_await_eq_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_rlx, %function
vatomicptr_await_eq_rlx:
.LFB572:
	.cfi_startproc
	mov	x4, x0
	mov	x2, x1
	.p2align 3,,7
.L1411:
	ldr	x3, [x4]
	mov	x0, x2
	mov	x2, x3
	cmp	x1, x3
	bne	.L1411
	ret
	.cfi_endproc
.LFE572:
	.size	vatomicptr_await_eq_rlx, .-vatomicptr_await_eq_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le, %function
vatomic32_await_le:
.LFB573:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bcs	.L1417
	.p2align 3,,7
.L1415:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1415
	mov	w2, w0
	cmp	w1, w0
	bcc	.L1415
	ret
.L1417:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE573:
	.size	vatomic32_await_le, .-vatomic32_await_le
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_acq, %function
vatomic32_await_le_acq:
.LFB574:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bcs	.L1424
	.p2align 3,,7
.L1422:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1422
	mov	w2, w0
	cmp	w1, w0
	bcc	.L1422
	ret
.L1424:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE574:
	.size	vatomic32_await_le_acq, .-vatomic32_await_le_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_rlx, %function
vatomic32_await_le_rlx:
.LFB575:
	.cfi_startproc
	mov	x3, x0
	ldr	w2, [x0]
	cmp	w1, w2
	bcs	.L1431
	.p2align 3,,7
.L1429:
	ldr	w0, [x3]
	cmp	w0, w2
	beq	.L1429
	mov	w2, w0
	cmp	w1, w0
	bcc	.L1429
	ret
.L1431:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE575:
	.size	vatomic32_await_le_rlx, .-vatomic32_await_le_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt, %function
vatomic32_await_lt:
.LFB576:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bhi	.L1438
	.p2align 3,,7
.L1436:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1436
	mov	w2, w0
	cmp	w1, w0
	bls	.L1436
	ret
.L1438:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE576:
	.size	vatomic32_await_lt, .-vatomic32_await_lt
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_acq, %function
vatomic32_await_lt_acq:
.LFB577:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bhi	.L1445
	.p2align 3,,7
.L1443:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1443
	mov	w2, w0
	cmp	w1, w0
	bls	.L1443
	ret
.L1445:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE577:
	.size	vatomic32_await_lt_acq, .-vatomic32_await_lt_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_rlx, %function
vatomic32_await_lt_rlx:
.LFB578:
	.cfi_startproc
	mov	x3, x0
	ldr	w2, [x0]
	cmp	w1, w2
	bhi	.L1452
	.p2align 3,,7
.L1450:
	ldr	w0, [x3]
	cmp	w0, w2
	beq	.L1450
	mov	w2, w0
	cmp	w1, w0
	bls	.L1450
	ret
.L1452:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE578:
	.size	vatomic32_await_lt_rlx, .-vatomic32_await_lt_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge, %function
vatomic32_await_ge:
.LFB579:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bls	.L1459
	.p2align 3,,7
.L1457:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1457
	mov	w2, w0
	cmp	w1, w0
	bhi	.L1457
	ret
.L1459:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE579:
	.size	vatomic32_await_ge, .-vatomic32_await_ge
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_acq, %function
vatomic32_await_ge_acq:
.LFB580:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bls	.L1466
	.p2align 3,,7
.L1464:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1464
	mov	w2, w0
	cmp	w1, w0
	bhi	.L1464
	ret
.L1466:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE580:
	.size	vatomic32_await_ge_acq, .-vatomic32_await_ge_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_rlx, %function
vatomic32_await_ge_rlx:
.LFB581:
	.cfi_startproc
	mov	x3, x0
	ldr	w2, [x0]
	cmp	w1, w2
	bls	.L1473
	.p2align 3,,7
.L1471:
	ldr	w0, [x3]
	cmp	w0, w2
	beq	.L1471
	mov	w2, w0
	cmp	w1, w0
	bhi	.L1471
	ret
.L1473:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE581:
	.size	vatomic32_await_ge_rlx, .-vatomic32_await_ge_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt, %function
vatomic32_await_gt:
.LFB582:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bcc	.L1480
	.p2align 3,,7
.L1478:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1478
	mov	w2, w0
	cmp	w1, w0
	bcs	.L1478
	ret
.L1480:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE582:
	.size	vatomic32_await_gt, .-vatomic32_await_gt
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_acq, %function
vatomic32_await_gt_acq:
.LFB583:
	.cfi_startproc
	mov	x3, x0
	ldar	w2, [x0]
	cmp	w1, w2
	bcc	.L1487
	.p2align 3,,7
.L1485:
	ldar	w0, [x3]
	cmp	w0, w2
	beq	.L1485
	mov	w2, w0
	cmp	w1, w0
	bcs	.L1485
	ret
.L1487:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE583:
	.size	vatomic32_await_gt_acq, .-vatomic32_await_gt_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_rlx, %function
vatomic32_await_gt_rlx:
.LFB584:
	.cfi_startproc
	mov	x3, x0
	ldr	w2, [x0]
	cmp	w1, w2
	bcc	.L1494
	.p2align 3,,7
.L1492:
	ldr	w0, [x3]
	cmp	w0, w2
	beq	.L1492
	mov	w2, w0
	cmp	w1, w0
	bcs	.L1492
	ret
.L1494:
	mov	w0, w2
	ret
	.cfi_endproc
.LFE584:
	.size	vatomic32_await_gt_rlx, .-vatomic32_await_gt_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le, %function
vatomic64_await_le:
.LFB585:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bcs	.L1501
	.p2align 3,,7
.L1499:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1499
	mov	x2, x0
	cmp	x1, x0
	bcc	.L1499
	ret
.L1501:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE585:
	.size	vatomic64_await_le, .-vatomic64_await_le
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_acq, %function
vatomic64_await_le_acq:
.LFB586:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bcs	.L1508
	.p2align 3,,7
.L1506:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1506
	mov	x2, x0
	cmp	x1, x0
	bcc	.L1506
	ret
.L1508:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE586:
	.size	vatomic64_await_le_acq, .-vatomic64_await_le_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_rlx, %function
vatomic64_await_le_rlx:
.LFB587:
	.cfi_startproc
	mov	x3, x0
	ldr	x2, [x0]
	cmp	x1, x2
	bcs	.L1515
	.p2align 3,,7
.L1513:
	ldr	x0, [x3]
	cmp	x0, x2
	beq	.L1513
	mov	x2, x0
	cmp	x1, x0
	bcc	.L1513
	ret
.L1515:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE587:
	.size	vatomic64_await_le_rlx, .-vatomic64_await_le_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt, %function
vatomic64_await_lt:
.LFB588:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bhi	.L1522
	.p2align 3,,7
.L1520:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1520
	mov	x2, x0
	cmp	x1, x0
	bls	.L1520
	ret
.L1522:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE588:
	.size	vatomic64_await_lt, .-vatomic64_await_lt
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_acq, %function
vatomic64_await_lt_acq:
.LFB589:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bhi	.L1529
	.p2align 3,,7
.L1527:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1527
	mov	x2, x0
	cmp	x1, x0
	bls	.L1527
	ret
.L1529:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE589:
	.size	vatomic64_await_lt_acq, .-vatomic64_await_lt_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_rlx, %function
vatomic64_await_lt_rlx:
.LFB590:
	.cfi_startproc
	mov	x3, x0
	ldr	x2, [x0]
	cmp	x1, x2
	bhi	.L1536
	.p2align 3,,7
.L1534:
	ldr	x0, [x3]
	cmp	x0, x2
	beq	.L1534
	mov	x2, x0
	cmp	x1, x0
	bls	.L1534
	ret
.L1536:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE590:
	.size	vatomic64_await_lt_rlx, .-vatomic64_await_lt_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge, %function
vatomic64_await_ge:
.LFB591:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bls	.L1543
	.p2align 3,,7
.L1541:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1541
	mov	x2, x0
	cmp	x1, x0
	bhi	.L1541
	ret
.L1543:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE591:
	.size	vatomic64_await_ge, .-vatomic64_await_ge
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_acq, %function
vatomic64_await_ge_acq:
.LFB592:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bls	.L1550
	.p2align 3,,7
.L1548:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1548
	mov	x2, x0
	cmp	x1, x0
	bhi	.L1548
	ret
.L1550:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE592:
	.size	vatomic64_await_ge_acq, .-vatomic64_await_ge_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_rlx, %function
vatomic64_await_ge_rlx:
.LFB593:
	.cfi_startproc
	mov	x3, x0
	ldr	x2, [x0]
	cmp	x1, x2
	bls	.L1557
	.p2align 3,,7
.L1555:
	ldr	x0, [x3]
	cmp	x0, x2
	beq	.L1555
	mov	x2, x0
	cmp	x1, x0
	bhi	.L1555
	ret
.L1557:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE593:
	.size	vatomic64_await_ge_rlx, .-vatomic64_await_ge_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt, %function
vatomic64_await_gt:
.LFB594:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bcc	.L1564
	.p2align 3,,7
.L1562:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1562
	mov	x2, x0
	cmp	x1, x0
	bcs	.L1562
	ret
.L1564:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE594:
	.size	vatomic64_await_gt, .-vatomic64_await_gt
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_acq, %function
vatomic64_await_gt_acq:
.LFB595:
	.cfi_startproc
	mov	x3, x0
	ldar	x2, [x0]
	cmp	x1, x2
	bcc	.L1571
	.p2align 3,,7
.L1569:
	ldar	x0, [x3]
	cmp	x0, x2
	beq	.L1569
	mov	x2, x0
	cmp	x1, x0
	bcs	.L1569
	ret
.L1571:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE595:
	.size	vatomic64_await_gt_acq, .-vatomic64_await_gt_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_rlx, %function
vatomic64_await_gt_rlx:
.LFB596:
	.cfi_startproc
	mov	x3, x0
	ldr	x2, [x0]
	cmp	x1, x2
	bcc	.L1578
	.p2align 3,,7
.L1576:
	ldr	x0, [x3]
	cmp	x0, x2
	beq	.L1576
	mov	x2, x0
	cmp	x1, x0
	bcs	.L1576
	ret
.L1578:
	mov	x0, x2
	ret
	.cfi_endproc
.LFE596:
	.size	vatomic64_await_gt_rlx, .-vatomic64_await_gt_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_add, %function
vatomic32_await_le_add:
.LFB597:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1585:
	cmp	w1, w4
	bls	.L1586
	.p2align 3,,7
.L1583:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1583
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1583
	add	w2, w5, w0
.L1593:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1594
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1593
.L1594:
	cmp	w1, w0
	bne	.L1585
.L1590:
	ret
.L1586:
	mov	w0, w1
	add	w2, w5, w0
.L1591:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1592
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1591
.L1592:
	cmp	w1, w0
	bne	.L1585
	b	.L1590
	.cfi_endproc
.LFE597:
	.size	vatomic32_await_le_add, .-vatomic32_await_le_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_add_acq, %function
vatomic32_await_le_add_acq:
.LFB598:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1599:
	cmp	w1, w4
	bls	.L1600
	.p2align 3,,7
.L1597:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1597
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1597
	add	w2, w5, w0
.L1607:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1608
	stxr	w6, w2, [x3]
	cbnz	w6, .L1607
.L1608:
	cmp	w1, w0
	bne	.L1599
.L1604:
	ret
.L1600:
	mov	w0, w1
	add	w2, w5, w0
.L1605:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1606
	stxr	w6, w2, [x3]
	cbnz	w6, .L1605
.L1606:
	cmp	w1, w0
	bne	.L1599
	b	.L1604
	.cfi_endproc
.LFE598:
	.size	vatomic32_await_le_add_acq, .-vatomic32_await_le_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_add_rel, %function
vatomic32_await_le_add_rel:
.LFB599:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1613:
	cmp	w1, w4
	bls	.L1614
	.p2align 3,,7
.L1611:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1611
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1611
	add	w2, w5, w0
.L1621:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1622
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1621
.L1622:
	cmp	w1, w0
	bne	.L1613
.L1618:
	ret
.L1614:
	mov	w0, w1
	add	w2, w5, w0
.L1619:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1620
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1619
.L1620:
	cmp	w1, w0
	bne	.L1613
	b	.L1618
	.cfi_endproc
.LFE599:
	.size	vatomic32_await_le_add_rel, .-vatomic32_await_le_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_add_rlx, %function
vatomic32_await_le_add_rlx:
.LFB600:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1627:
	cmp	w1, w4
	bls	.L1628
	.p2align 3,,7
.L1625:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1625
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1625
	add	w2, w5, w0
.L1635:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1636
	stxr	w6, w2, [x3]
	cbnz	w6, .L1635
.L1636:
	cmp	w1, w0
	bne	.L1627
.L1632:
	ret
.L1628:
	mov	w0, w1
	add	w2, w5, w0
.L1633:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1634
	stxr	w6, w2, [x3]
	cbnz	w6, .L1633
.L1634:
	cmp	w1, w0
	bne	.L1627
	b	.L1632
	.cfi_endproc
.LFE600:
	.size	vatomic32_await_le_add_rlx, .-vatomic32_await_le_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_sub, %function
vatomic32_await_le_sub:
.LFB601:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1641:
	cmp	w1, w4
	bls	.L1642
	.p2align 3,,7
.L1639:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1639
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1639
	sub	w2, w0, w5
.L1649:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1650
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1649
.L1650:
	cmp	w1, w0
	bne	.L1641
.L1646:
	ret
.L1642:
	mov	w0, w1
	sub	w2, w0, w5
.L1647:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1648
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1647
.L1648:
	cmp	w1, w0
	bne	.L1641
	b	.L1646
	.cfi_endproc
.LFE601:
	.size	vatomic32_await_le_sub, .-vatomic32_await_le_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_sub_acq, %function
vatomic32_await_le_sub_acq:
.LFB602:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1655:
	cmp	w1, w4
	bls	.L1656
	.p2align 3,,7
.L1653:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1653
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1653
	sub	w2, w0, w5
.L1663:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1664
	stxr	w6, w2, [x3]
	cbnz	w6, .L1663
.L1664:
	cmp	w1, w0
	bne	.L1655
.L1660:
	ret
.L1656:
	mov	w0, w1
	sub	w2, w0, w5
.L1661:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1662
	stxr	w6, w2, [x3]
	cbnz	w6, .L1661
.L1662:
	cmp	w1, w0
	bne	.L1655
	b	.L1660
	.cfi_endproc
.LFE602:
	.size	vatomic32_await_le_sub_acq, .-vatomic32_await_le_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_sub_rel, %function
vatomic32_await_le_sub_rel:
.LFB603:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1669:
	cmp	w1, w4
	bls	.L1670
	.p2align 3,,7
.L1667:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1667
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1667
	sub	w2, w0, w5
.L1677:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1678
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1677
.L1678:
	cmp	w1, w0
	bne	.L1669
.L1674:
	ret
.L1670:
	mov	w0, w1
	sub	w2, w0, w5
.L1675:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1676
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1675
.L1676:
	cmp	w1, w0
	bne	.L1669
	b	.L1674
	.cfi_endproc
.LFE603:
	.size	vatomic32_await_le_sub_rel, .-vatomic32_await_le_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_sub_rlx, %function
vatomic32_await_le_sub_rlx:
.LFB604:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1683:
	cmp	w1, w4
	bls	.L1684
	.p2align 3,,7
.L1681:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1681
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1681
	sub	w2, w0, w5
.L1691:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1692
	stxr	w6, w2, [x3]
	cbnz	w6, .L1691
.L1692:
	cmp	w1, w0
	bne	.L1683
.L1688:
	ret
.L1684:
	mov	w0, w1
	sub	w2, w0, w5
.L1689:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1690
	stxr	w6, w2, [x3]
	cbnz	w6, .L1689
.L1690:
	cmp	w1, w0
	bne	.L1683
	b	.L1688
	.cfi_endproc
.LFE604:
	.size	vatomic32_await_le_sub_rlx, .-vatomic32_await_le_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_set, %function
vatomic32_await_le_set:
.LFB605:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldar	w1, [x0]
	.p2align 3,,7
.L1697:
	cmp	w1, w4
	bls	.L1698
	.p2align 3,,7
.L1695:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1695
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1695
.L1705:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1706
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1705
.L1706:
	cmp	w1, w0
	bne	.L1697
.L1702:
	ret
.L1698:
	mov	w0, w1
.L1703:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1704
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1703
.L1704:
	cmp	w1, w0
	bne	.L1697
	b	.L1702
	.cfi_endproc
.LFE605:
	.size	vatomic32_await_le_set, .-vatomic32_await_le_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_set_acq, %function
vatomic32_await_le_set_acq:
.LFB606:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1711:
	cmp	w1, w4
	bls	.L1712
	.p2align 3,,7
.L1709:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1709
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1709
.L1719:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1720
	stxr	w5, w2, [x3]
	cbnz	w5, .L1719
.L1720:
	cmp	w1, w0
	bne	.L1711
.L1716:
	ret
.L1712:
	mov	w0, w1
.L1717:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1718
	stxr	w5, w2, [x3]
	cbnz	w5, .L1717
.L1718:
	cmp	w1, w0
	bne	.L1711
	b	.L1716
	.cfi_endproc
.LFE606:
	.size	vatomic32_await_le_set_acq, .-vatomic32_await_le_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_set_rel, %function
vatomic32_await_le_set_rel:
.LFB607:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1725:
	cmp	w1, w4
	bls	.L1726
	.p2align 3,,7
.L1723:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1723
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1723
.L1733:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1734
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1733
.L1734:
	cmp	w1, w0
	bne	.L1725
.L1730:
	ret
.L1726:
	mov	w0, w1
.L1731:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1732
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1731
.L1732:
	cmp	w1, w0
	bne	.L1725
	b	.L1730
	.cfi_endproc
.LFE607:
	.size	vatomic32_await_le_set_rel, .-vatomic32_await_le_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_le_set_rlx, %function
vatomic32_await_le_set_rlx:
.LFB608:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1739:
	cmp	w1, w4
	bls	.L1740
	.p2align 3,,7
.L1737:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1737
	mov	w1, w0
	cmp	w4, w0
	bcc	.L1737
.L1747:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1748
	stxr	w5, w2, [x3]
	cbnz	w5, .L1747
.L1748:
	cmp	w1, w0
	bne	.L1739
.L1744:
	ret
.L1740:
	mov	w0, w1
.L1745:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1746
	stxr	w5, w2, [x3]
	cbnz	w5, .L1745
.L1746:
	cmp	w1, w0
	bne	.L1739
	b	.L1744
	.cfi_endproc
.LFE608:
	.size	vatomic32_await_le_set_rlx, .-vatomic32_await_le_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_add, %function
vatomic32_await_lt_add:
.LFB609:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1753:
	cmp	w1, w4
	bcc	.L1754
	.p2align 3,,7
.L1751:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1751
	mov	w1, w0
	cmp	w4, w0
	bls	.L1751
	add	w2, w5, w0
.L1761:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1762
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1761
.L1762:
	cmp	w1, w0
	bne	.L1753
.L1758:
	ret
.L1754:
	mov	w0, w1
	add	w2, w5, w0
.L1759:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1760
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1759
.L1760:
	cmp	w1, w0
	bne	.L1753
	b	.L1758
	.cfi_endproc
.LFE609:
	.size	vatomic32_await_lt_add, .-vatomic32_await_lt_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_add_acq, %function
vatomic32_await_lt_add_acq:
.LFB610:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1767:
	cmp	w1, w4
	bcc	.L1768
	.p2align 3,,7
.L1765:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1765
	mov	w1, w0
	cmp	w4, w0
	bls	.L1765
	add	w2, w5, w0
.L1775:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1776
	stxr	w6, w2, [x3]
	cbnz	w6, .L1775
.L1776:
	cmp	w1, w0
	bne	.L1767
.L1772:
	ret
.L1768:
	mov	w0, w1
	add	w2, w5, w0
.L1773:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1774
	stxr	w6, w2, [x3]
	cbnz	w6, .L1773
.L1774:
	cmp	w1, w0
	bne	.L1767
	b	.L1772
	.cfi_endproc
.LFE610:
	.size	vatomic32_await_lt_add_acq, .-vatomic32_await_lt_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_add_rel, %function
vatomic32_await_lt_add_rel:
.LFB611:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1781:
	cmp	w1, w4
	bcc	.L1782
	.p2align 3,,7
.L1779:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1779
	mov	w1, w0
	cmp	w4, w0
	bls	.L1779
	add	w2, w5, w0
.L1789:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1790
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1789
.L1790:
	cmp	w1, w0
	bne	.L1781
.L1786:
	ret
.L1782:
	mov	w0, w1
	add	w2, w5, w0
.L1787:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1788
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1787
.L1788:
	cmp	w1, w0
	bne	.L1781
	b	.L1786
	.cfi_endproc
.LFE611:
	.size	vatomic32_await_lt_add_rel, .-vatomic32_await_lt_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_add_rlx, %function
vatomic32_await_lt_add_rlx:
.LFB612:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1795:
	cmp	w1, w4
	bcc	.L1796
	.p2align 3,,7
.L1793:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1793
	mov	w1, w0
	cmp	w4, w0
	bls	.L1793
	add	w2, w5, w0
.L1803:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1804
	stxr	w6, w2, [x3]
	cbnz	w6, .L1803
.L1804:
	cmp	w1, w0
	bne	.L1795
.L1800:
	ret
.L1796:
	mov	w0, w1
	add	w2, w5, w0
.L1801:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1802
	stxr	w6, w2, [x3]
	cbnz	w6, .L1801
.L1802:
	cmp	w1, w0
	bne	.L1795
	b	.L1800
	.cfi_endproc
.LFE612:
	.size	vatomic32_await_lt_add_rlx, .-vatomic32_await_lt_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_sub, %function
vatomic32_await_lt_sub:
.LFB613:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1809:
	cmp	w1, w4
	bcc	.L1810
	.p2align 3,,7
.L1807:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1807
	mov	w1, w0
	cmp	w4, w0
	bls	.L1807
	sub	w2, w0, w5
.L1817:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1818
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1817
.L1818:
	cmp	w1, w0
	bne	.L1809
.L1814:
	ret
.L1810:
	mov	w0, w1
	sub	w2, w0, w5
.L1815:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1816
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1815
.L1816:
	cmp	w1, w0
	bne	.L1809
	b	.L1814
	.cfi_endproc
.LFE613:
	.size	vatomic32_await_lt_sub, .-vatomic32_await_lt_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_sub_acq, %function
vatomic32_await_lt_sub_acq:
.LFB614:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1823:
	cmp	w1, w4
	bcc	.L1824
	.p2align 3,,7
.L1821:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1821
	mov	w1, w0
	cmp	w4, w0
	bls	.L1821
	sub	w2, w0, w5
.L1831:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1832
	stxr	w6, w2, [x3]
	cbnz	w6, .L1831
.L1832:
	cmp	w1, w0
	bne	.L1823
.L1828:
	ret
.L1824:
	mov	w0, w1
	sub	w2, w0, w5
.L1829:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1830
	stxr	w6, w2, [x3]
	cbnz	w6, .L1829
.L1830:
	cmp	w1, w0
	bne	.L1823
	b	.L1828
	.cfi_endproc
.LFE614:
	.size	vatomic32_await_lt_sub_acq, .-vatomic32_await_lt_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_sub_rel, %function
vatomic32_await_lt_sub_rel:
.LFB615:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1837:
	cmp	w1, w4
	bcc	.L1838
	.p2align 3,,7
.L1835:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1835
	mov	w1, w0
	cmp	w4, w0
	bls	.L1835
	sub	w2, w0, w5
.L1845:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1846
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1845
.L1846:
	cmp	w1, w0
	bne	.L1837
.L1842:
	ret
.L1838:
	mov	w0, w1
	sub	w2, w0, w5
.L1843:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1844
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1843
.L1844:
	cmp	w1, w0
	bne	.L1837
	b	.L1842
	.cfi_endproc
.LFE615:
	.size	vatomic32_await_lt_sub_rel, .-vatomic32_await_lt_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_sub_rlx, %function
vatomic32_await_lt_sub_rlx:
.LFB616:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1851:
	cmp	w1, w4
	bcc	.L1852
	.p2align 3,,7
.L1849:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1849
	mov	w1, w0
	cmp	w4, w0
	bls	.L1849
	sub	w2, w0, w5
.L1859:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1860
	stxr	w6, w2, [x3]
	cbnz	w6, .L1859
.L1860:
	cmp	w1, w0
	bne	.L1851
.L1856:
	ret
.L1852:
	mov	w0, w1
	sub	w2, w0, w5
.L1857:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1858
	stxr	w6, w2, [x3]
	cbnz	w6, .L1857
.L1858:
	cmp	w1, w0
	bne	.L1851
	b	.L1856
	.cfi_endproc
.LFE616:
	.size	vatomic32_await_lt_sub_rlx, .-vatomic32_await_lt_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_set, %function
vatomic32_await_lt_set:
.LFB617:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldar	w1, [x0]
	.p2align 3,,7
.L1865:
	cmp	w1, w4
	bcc	.L1866
	.p2align 3,,7
.L1863:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1863
	mov	w1, w0
	cmp	w4, w0
	bls	.L1863
.L1873:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1874
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1873
.L1874:
	cmp	w1, w0
	bne	.L1865
.L1870:
	ret
.L1866:
	mov	w0, w1
.L1871:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1872
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1871
.L1872:
	cmp	w1, w0
	bne	.L1865
	b	.L1870
	.cfi_endproc
.LFE617:
	.size	vatomic32_await_lt_set, .-vatomic32_await_lt_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_set_acq, %function
vatomic32_await_lt_set_acq:
.LFB618:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1879:
	cmp	w1, w4
	bcc	.L1880
	.p2align 3,,7
.L1877:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1877
	mov	w1, w0
	cmp	w4, w0
	bls	.L1877
.L1887:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1888
	stxr	w5, w2, [x3]
	cbnz	w5, .L1887
.L1888:
	cmp	w1, w0
	bne	.L1879
.L1884:
	ret
.L1880:
	mov	w0, w1
.L1885:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1886
	stxr	w5, w2, [x3]
	cbnz	w5, .L1885
.L1886:
	cmp	w1, w0
	bne	.L1879
	b	.L1884
	.cfi_endproc
.LFE618:
	.size	vatomic32_await_lt_set_acq, .-vatomic32_await_lt_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_set_rel, %function
vatomic32_await_lt_set_rel:
.LFB619:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1893:
	cmp	w1, w4
	bcc	.L1894
	.p2align 3,,7
.L1891:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1891
	mov	w1, w0
	cmp	w4, w0
	bls	.L1891
.L1901:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1902
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1901
.L1902:
	cmp	w1, w0
	bne	.L1893
.L1898:
	ret
.L1894:
	mov	w0, w1
.L1899:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1900
	stlxr	w5, w2, [x3]
	cbnz	w5, .L1899
.L1900:
	cmp	w1, w0
	bne	.L1893
	b	.L1898
	.cfi_endproc
.LFE619:
	.size	vatomic32_await_lt_set_rel, .-vatomic32_await_lt_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_lt_set_rlx, %function
vatomic32_await_lt_set_rlx:
.LFB620:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L1907:
	cmp	w1, w4
	bcc	.L1908
	.p2align 3,,7
.L1905:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1905
	mov	w1, w0
	cmp	w4, w0
	bls	.L1905
.L1915:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1916
	stxr	w5, w2, [x3]
	cbnz	w5, .L1915
.L1916:
	cmp	w1, w0
	bne	.L1907
.L1912:
	ret
.L1908:
	mov	w0, w1
.L1913:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1914
	stxr	w5, w2, [x3]
	cbnz	w5, .L1913
.L1914:
	cmp	w1, w0
	bne	.L1907
	b	.L1912
	.cfi_endproc
.LFE620:
	.size	vatomic32_await_lt_set_rlx, .-vatomic32_await_lt_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_add, %function
vatomic32_await_ge_add:
.LFB621:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1921:
	cmp	w1, w4
	bcs	.L1922
	.p2align 3,,7
.L1919:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1919
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1919
	add	w2, w5, w0
.L1929:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1930
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1929
.L1930:
	cmp	w1, w0
	bne	.L1921
.L1926:
	ret
.L1922:
	mov	w0, w1
	add	w2, w5, w0
.L1927:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1928
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1927
.L1928:
	cmp	w1, w0
	bne	.L1921
	b	.L1926
	.cfi_endproc
.LFE621:
	.size	vatomic32_await_ge_add, .-vatomic32_await_ge_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_add_acq, %function
vatomic32_await_ge_add_acq:
.LFB622:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1935:
	cmp	w1, w4
	bcs	.L1936
	.p2align 3,,7
.L1933:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1933
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1933
	add	w2, w5, w0
.L1943:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1944
	stxr	w6, w2, [x3]
	cbnz	w6, .L1943
.L1944:
	cmp	w1, w0
	bne	.L1935
.L1940:
	ret
.L1936:
	mov	w0, w1
	add	w2, w5, w0
.L1941:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1942
	stxr	w6, w2, [x3]
	cbnz	w6, .L1941
.L1942:
	cmp	w1, w0
	bne	.L1935
	b	.L1940
	.cfi_endproc
.LFE622:
	.size	vatomic32_await_ge_add_acq, .-vatomic32_await_ge_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_add_rel, %function
vatomic32_await_ge_add_rel:
.LFB623:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1949:
	cmp	w1, w4
	bcs	.L1950
	.p2align 3,,7
.L1947:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1947
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1947
	add	w2, w5, w0
.L1957:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1958
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1957
.L1958:
	cmp	w1, w0
	bne	.L1949
.L1954:
	ret
.L1950:
	mov	w0, w1
	add	w2, w5, w0
.L1955:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1956
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1955
.L1956:
	cmp	w1, w0
	bne	.L1949
	b	.L1954
	.cfi_endproc
.LFE623:
	.size	vatomic32_await_ge_add_rel, .-vatomic32_await_ge_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_add_rlx, %function
vatomic32_await_ge_add_rlx:
.LFB624:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1963:
	cmp	w1, w4
	bcs	.L1964
	.p2align 3,,7
.L1961:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1961
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1961
	add	w2, w5, w0
.L1971:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1972
	stxr	w6, w2, [x3]
	cbnz	w6, .L1971
.L1972:
	cmp	w1, w0
	bne	.L1963
.L1968:
	ret
.L1964:
	mov	w0, w1
	add	w2, w5, w0
.L1969:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L1970
	stxr	w6, w2, [x3]
	cbnz	w6, .L1969
.L1970:
	cmp	w1, w0
	bne	.L1963
	b	.L1968
	.cfi_endproc
.LFE624:
	.size	vatomic32_await_ge_add_rlx, .-vatomic32_await_ge_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_sub, %function
vatomic32_await_ge_sub:
.LFB625:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L1977:
	cmp	w1, w4
	bcs	.L1978
	.p2align 3,,7
.L1975:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L1975
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1975
	sub	w2, w0, w5
.L1985:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1986
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1985
.L1986:
	cmp	w1, w0
	bne	.L1977
.L1982:
	ret
.L1978:
	mov	w0, w1
	sub	w2, w0, w5
.L1983:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1984
	stlxr	w6, w2, [x3]
	cbnz	w6, .L1983
.L1984:
	cmp	w1, w0
	bne	.L1977
	b	.L1982
	.cfi_endproc
.LFE625:
	.size	vatomic32_await_ge_sub, .-vatomic32_await_ge_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_sub_acq, %function
vatomic32_await_ge_sub_acq:
.LFB626:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L1991:
	cmp	w1, w4
	bcs	.L1992
	.p2align 3,,7
.L1989:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L1989
	mov	w1, w0
	cmp	w4, w0
	bhi	.L1989
	sub	w2, w0, w5
.L1999:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2000
	stxr	w6, w2, [x3]
	cbnz	w6, .L1999
.L2000:
	cmp	w1, w0
	bne	.L1991
.L1996:
	ret
.L1992:
	mov	w0, w1
	sub	w2, w0, w5
.L1997:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L1998
	stxr	w6, w2, [x3]
	cbnz	w6, .L1997
.L1998:
	cmp	w1, w0
	bne	.L1991
	b	.L1996
	.cfi_endproc
.LFE626:
	.size	vatomic32_await_ge_sub_acq, .-vatomic32_await_ge_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_sub_rel, %function
vatomic32_await_ge_sub_rel:
.LFB627:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2005:
	cmp	w1, w4
	bcs	.L2006
	.p2align 3,,7
.L2003:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2003
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2003
	sub	w2, w0, w5
.L2013:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2014
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2013
.L2014:
	cmp	w1, w0
	bne	.L2005
.L2010:
	ret
.L2006:
	mov	w0, w1
	sub	w2, w0, w5
.L2011:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2012
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2011
.L2012:
	cmp	w1, w0
	bne	.L2005
	b	.L2010
	.cfi_endproc
.LFE627:
	.size	vatomic32_await_ge_sub_rel, .-vatomic32_await_ge_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_sub_rlx, %function
vatomic32_await_ge_sub_rlx:
.LFB628:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2019:
	cmp	w1, w4
	bcs	.L2020
	.p2align 3,,7
.L2017:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2017
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2017
	sub	w2, w0, w5
.L2027:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2028
	stxr	w6, w2, [x3]
	cbnz	w6, .L2027
.L2028:
	cmp	w1, w0
	bne	.L2019
.L2024:
	ret
.L2020:
	mov	w0, w1
	sub	w2, w0, w5
.L2025:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2026
	stxr	w6, w2, [x3]
	cbnz	w6, .L2025
.L2026:
	cmp	w1, w0
	bne	.L2019
	b	.L2024
	.cfi_endproc
.LFE628:
	.size	vatomic32_await_ge_sub_rlx, .-vatomic32_await_ge_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_set, %function
vatomic32_await_ge_set:
.LFB629:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldar	w1, [x0]
	.p2align 3,,7
.L2033:
	cmp	w1, w4
	bcs	.L2034
	.p2align 3,,7
.L2031:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L2031
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2031
.L2041:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2042
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2041
.L2042:
	cmp	w1, w0
	bne	.L2033
.L2038:
	ret
.L2034:
	mov	w0, w1
.L2039:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2040
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2039
.L2040:
	cmp	w1, w0
	bne	.L2033
	b	.L2038
	.cfi_endproc
.LFE629:
	.size	vatomic32_await_ge_set, .-vatomic32_await_ge_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_set_acq, %function
vatomic32_await_ge_set_acq:
.LFB630:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2047:
	cmp	w1, w4
	bcs	.L2048
	.p2align 3,,7
.L2045:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2045
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2045
.L2055:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2056
	stxr	w5, w2, [x3]
	cbnz	w5, .L2055
.L2056:
	cmp	w1, w0
	bne	.L2047
.L2052:
	ret
.L2048:
	mov	w0, w1
.L2053:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2054
	stxr	w5, w2, [x3]
	cbnz	w5, .L2053
.L2054:
	cmp	w1, w0
	bne	.L2047
	b	.L2052
	.cfi_endproc
.LFE630:
	.size	vatomic32_await_ge_set_acq, .-vatomic32_await_ge_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_set_rel, %function
vatomic32_await_ge_set_rel:
.LFB631:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2061:
	cmp	w1, w4
	bcs	.L2062
	.p2align 3,,7
.L2059:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2059
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2059
.L2069:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2070
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2069
.L2070:
	cmp	w1, w0
	bne	.L2061
.L2066:
	ret
.L2062:
	mov	w0, w1
.L2067:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2068
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2067
.L2068:
	cmp	w1, w0
	bne	.L2061
	b	.L2066
	.cfi_endproc
.LFE631:
	.size	vatomic32_await_ge_set_rel, .-vatomic32_await_ge_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_ge_set_rlx, %function
vatomic32_await_ge_set_rlx:
.LFB632:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2075:
	cmp	w1, w4
	bcs	.L2076
	.p2align 3,,7
.L2073:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2073
	mov	w1, w0
	cmp	w4, w0
	bhi	.L2073
.L2083:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2084
	stxr	w5, w2, [x3]
	cbnz	w5, .L2083
.L2084:
	cmp	w1, w0
	bne	.L2075
.L2080:
	ret
.L2076:
	mov	w0, w1
.L2081:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2082
	stxr	w5, w2, [x3]
	cbnz	w5, .L2081
.L2082:
	cmp	w1, w0
	bne	.L2075
	b	.L2080
	.cfi_endproc
.LFE632:
	.size	vatomic32_await_ge_set_rlx, .-vatomic32_await_ge_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_add, %function
vatomic32_await_gt_add:
.LFB633:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L2089:
	cmp	w1, w4
	bhi	.L2090
	.p2align 3,,7
.L2087:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L2087
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2087
	add	w2, w5, w0
.L2097:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2098
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2097
.L2098:
	cmp	w1, w0
	bne	.L2089
.L2094:
	ret
.L2090:
	mov	w0, w1
	add	w2, w5, w0
.L2095:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2096
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2095
.L2096:
	cmp	w1, w0
	bne	.L2089
	b	.L2094
	.cfi_endproc
.LFE633:
	.size	vatomic32_await_gt_add, .-vatomic32_await_gt_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_add_acq, %function
vatomic32_await_gt_add_acq:
.LFB634:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2103:
	cmp	w1, w4
	bhi	.L2104
	.p2align 3,,7
.L2101:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2101
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2101
	add	w2, w5, w0
.L2111:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2112
	stxr	w6, w2, [x3]
	cbnz	w6, .L2111
.L2112:
	cmp	w1, w0
	bne	.L2103
.L2108:
	ret
.L2104:
	mov	w0, w1
	add	w2, w5, w0
.L2109:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2110
	stxr	w6, w2, [x3]
	cbnz	w6, .L2109
.L2110:
	cmp	w1, w0
	bne	.L2103
	b	.L2108
	.cfi_endproc
.LFE634:
	.size	vatomic32_await_gt_add_acq, .-vatomic32_await_gt_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_add_rel, %function
vatomic32_await_gt_add_rel:
.LFB635:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2117:
	cmp	w1, w4
	bhi	.L2118
	.p2align 3,,7
.L2115:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2115
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2115
	add	w2, w5, w0
.L2125:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2126
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2125
.L2126:
	cmp	w1, w0
	bne	.L2117
.L2122:
	ret
.L2118:
	mov	w0, w1
	add	w2, w5, w0
.L2123:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2124
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2123
.L2124:
	cmp	w1, w0
	bne	.L2117
	b	.L2122
	.cfi_endproc
.LFE635:
	.size	vatomic32_await_gt_add_rel, .-vatomic32_await_gt_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_add_rlx, %function
vatomic32_await_gt_add_rlx:
.LFB636:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2131:
	cmp	w1, w4
	bhi	.L2132
	.p2align 3,,7
.L2129:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2129
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2129
	add	w2, w5, w0
.L2139:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2140
	stxr	w6, w2, [x3]
	cbnz	w6, .L2139
.L2140:
	cmp	w1, w0
	bne	.L2131
.L2136:
	ret
.L2132:
	mov	w0, w1
	add	w2, w5, w0
.L2137:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2138
	stxr	w6, w2, [x3]
	cbnz	w6, .L2137
.L2138:
	cmp	w1, w0
	bne	.L2131
	b	.L2136
	.cfi_endproc
.LFE636:
	.size	vatomic32_await_gt_add_rlx, .-vatomic32_await_gt_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_sub, %function
vatomic32_await_gt_sub:
.LFB637:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldar	w1, [x0]
	.p2align 3,,7
.L2145:
	cmp	w1, w4
	bhi	.L2146
	.p2align 3,,7
.L2143:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L2143
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2143
	sub	w2, w0, w5
.L2153:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2154
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2153
.L2154:
	cmp	w1, w0
	bne	.L2145
.L2150:
	ret
.L2146:
	mov	w0, w1
	sub	w2, w0, w5
.L2151:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2152
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2151
.L2152:
	cmp	w1, w0
	bne	.L2145
	b	.L2150
	.cfi_endproc
.LFE637:
	.size	vatomic32_await_gt_sub, .-vatomic32_await_gt_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_sub_acq, %function
vatomic32_await_gt_sub_acq:
.LFB638:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2159:
	cmp	w1, w4
	bhi	.L2160
	.p2align 3,,7
.L2157:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2157
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2157
	sub	w2, w0, w5
.L2167:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2168
	stxr	w6, w2, [x3]
	cbnz	w6, .L2167
.L2168:
	cmp	w1, w0
	bne	.L2159
.L2164:
	ret
.L2160:
	mov	w0, w1
	sub	w2, w0, w5
.L2165:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2166
	stxr	w6, w2, [x3]
	cbnz	w6, .L2165
.L2166:
	cmp	w1, w0
	bne	.L2159
	b	.L2164
	.cfi_endproc
.LFE638:
	.size	vatomic32_await_gt_sub_acq, .-vatomic32_await_gt_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_sub_rel, %function
vatomic32_await_gt_sub_rel:
.LFB639:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2173:
	cmp	w1, w4
	bhi	.L2174
	.p2align 3,,7
.L2171:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2171
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2171
	sub	w2, w0, w5
.L2181:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2182
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2181
.L2182:
	cmp	w1, w0
	bne	.L2173
.L2178:
	ret
.L2174:
	mov	w0, w1
	sub	w2, w0, w5
.L2179:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2180
	stlxr	w6, w2, [x3]
	cbnz	w6, .L2179
.L2180:
	cmp	w1, w0
	bne	.L2173
	b	.L2178
	.cfi_endproc
.LFE639:
	.size	vatomic32_await_gt_sub_rel, .-vatomic32_await_gt_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_sub_rlx, %function
vatomic32_await_gt_sub_rlx:
.LFB640:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	mov	w5, w2
	ldr	w1, [x0]
	.p2align 3,,7
.L2187:
	cmp	w1, w4
	bhi	.L2188
	.p2align 3,,7
.L2185:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2185
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2185
	sub	w2, w0, w5
.L2195:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2196
	stxr	w6, w2, [x3]
	cbnz	w6, .L2195
.L2196:
	cmp	w1, w0
	bne	.L2187
.L2192:
	ret
.L2188:
	mov	w0, w1
	sub	w2, w0, w5
.L2193:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2194
	stxr	w6, w2, [x3]
	cbnz	w6, .L2193
.L2194:
	cmp	w1, w0
	bne	.L2187
	b	.L2192
	.cfi_endproc
.LFE640:
	.size	vatomic32_await_gt_sub_rlx, .-vatomic32_await_gt_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_set, %function
vatomic32_await_gt_set:
.LFB641:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldar	w1, [x0]
	.p2align 3,,7
.L2201:
	cmp	w1, w4
	bhi	.L2202
	.p2align 3,,7
.L2199:
	ldar	w0, [x3]
	cmp	w0, w1
	beq	.L2199
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2199
.L2209:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2210
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2209
.L2210:
	cmp	w1, w0
	bne	.L2201
.L2206:
	ret
.L2202:
	mov	w0, w1
.L2207:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2208
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2207
.L2208:
	cmp	w1, w0
	bne	.L2201
	b	.L2206
	.cfi_endproc
.LFE641:
	.size	vatomic32_await_gt_set, .-vatomic32_await_gt_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_set_acq, %function
vatomic32_await_gt_set_acq:
.LFB642:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2215:
	cmp	w1, w4
	bhi	.L2216
	.p2align 3,,7
.L2213:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2213
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2213
.L2223:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2224
	stxr	w5, w2, [x3]
	cbnz	w5, .L2223
.L2224:
	cmp	w1, w0
	bne	.L2215
.L2220:
	ret
.L2216:
	mov	w0, w1
.L2221:
	ldaxr	w1, [x3]
	cmp	w1, w0
	bne	.L2222
	stxr	w5, w2, [x3]
	cbnz	w5, .L2221
.L2222:
	cmp	w1, w0
	bne	.L2215
	b	.L2220
	.cfi_endproc
.LFE642:
	.size	vatomic32_await_gt_set_acq, .-vatomic32_await_gt_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_set_rel, %function
vatomic32_await_gt_set_rel:
.LFB643:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2229:
	cmp	w1, w4
	bhi	.L2230
	.p2align 3,,7
.L2227:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2227
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2227
.L2237:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2238
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2237
.L2238:
	cmp	w1, w0
	bne	.L2229
.L2234:
	ret
.L2230:
	mov	w0, w1
.L2235:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2236
	stlxr	w5, w2, [x3]
	cbnz	w5, .L2235
.L2236:
	cmp	w1, w0
	bne	.L2229
	b	.L2234
	.cfi_endproc
.LFE643:
	.size	vatomic32_await_gt_set_rel, .-vatomic32_await_gt_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_gt_set_rlx, %function
vatomic32_await_gt_set_rlx:
.LFB644:
	.cfi_startproc
	mov	x3, x0
	mov	w4, w1
	ldr	w1, [x0]
	.p2align 3,,7
.L2243:
	cmp	w1, w4
	bhi	.L2244
	.p2align 3,,7
.L2241:
	ldr	w0, [x3]
	cmp	w0, w1
	beq	.L2241
	mov	w1, w0
	cmp	w4, w0
	bcs	.L2241
.L2251:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2252
	stxr	w5, w2, [x3]
	cbnz	w5, .L2251
.L2252:
	cmp	w1, w0
	bne	.L2243
.L2248:
	ret
.L2244:
	mov	w0, w1
.L2249:
	ldxr	w1, [x3]
	cmp	w1, w0
	bne	.L2250
	stxr	w5, w2, [x3]
	cbnz	w5, .L2249
.L2250:
	cmp	w1, w0
	bne	.L2243
	b	.L2248
	.cfi_endproc
.LFE644:
	.size	vatomic32_await_gt_set_rlx, .-vatomic32_await_gt_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_add, %function
vatomic64_await_le_add:
.LFB645:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2257:
	cmp	x1, x4
	bls	.L2258
	.p2align 3,,7
.L2255:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2255
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2255
	add	x2, x5, x0
.L2265:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2266
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2265
.L2266:
	cmp	x1, x0
	bne	.L2257
.L2262:
	ret
.L2258:
	mov	x0, x1
	add	x2, x5, x0
.L2263:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2264
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2263
.L2264:
	cmp	x1, x0
	bne	.L2257
	b	.L2262
	.cfi_endproc
.LFE645:
	.size	vatomic64_await_le_add, .-vatomic64_await_le_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_add_acq, %function
vatomic64_await_le_add_acq:
.LFB646:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2271:
	cmp	x1, x4
	bls	.L2272
	.p2align 3,,7
.L2269:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2269
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2269
	add	x2, x5, x0
.L2279:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2280
	stxr	w6, x2, [x3]
	cbnz	w6, .L2279
.L2280:
	cmp	x1, x0
	bne	.L2271
.L2276:
	ret
.L2272:
	mov	x0, x1
	add	x2, x5, x0
.L2277:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2278
	stxr	w6, x2, [x3]
	cbnz	w6, .L2277
.L2278:
	cmp	x1, x0
	bne	.L2271
	b	.L2276
	.cfi_endproc
.LFE646:
	.size	vatomic64_await_le_add_acq, .-vatomic64_await_le_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_add_rel, %function
vatomic64_await_le_add_rel:
.LFB647:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2285:
	cmp	x1, x4
	bls	.L2286
	.p2align 3,,7
.L2283:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2283
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2283
	add	x2, x5, x0
.L2293:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2294
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2293
.L2294:
	cmp	x1, x0
	bne	.L2285
.L2290:
	ret
.L2286:
	mov	x0, x1
	add	x2, x5, x0
.L2291:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2292
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2291
.L2292:
	cmp	x1, x0
	bne	.L2285
	b	.L2290
	.cfi_endproc
.LFE647:
	.size	vatomic64_await_le_add_rel, .-vatomic64_await_le_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_add_rlx, %function
vatomic64_await_le_add_rlx:
.LFB648:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2299:
	cmp	x1, x4
	bls	.L2300
	.p2align 3,,7
.L2297:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2297
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2297
	add	x2, x5, x0
.L2307:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2308
	stxr	w6, x2, [x3]
	cbnz	w6, .L2307
.L2308:
	cmp	x1, x0
	bne	.L2299
.L2304:
	ret
.L2300:
	mov	x0, x1
	add	x2, x5, x0
.L2305:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2306
	stxr	w6, x2, [x3]
	cbnz	w6, .L2305
.L2306:
	cmp	x1, x0
	bne	.L2299
	b	.L2304
	.cfi_endproc
.LFE648:
	.size	vatomic64_await_le_add_rlx, .-vatomic64_await_le_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_sub, %function
vatomic64_await_le_sub:
.LFB649:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2313:
	cmp	x1, x4
	bls	.L2314
	.p2align 3,,7
.L2311:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2311
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2311
	sub	x2, x0, x5
.L2321:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2322
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2321
.L2322:
	cmp	x1, x0
	bne	.L2313
.L2318:
	ret
.L2314:
	mov	x0, x1
	sub	x2, x0, x5
.L2319:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2320
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2319
.L2320:
	cmp	x1, x0
	bne	.L2313
	b	.L2318
	.cfi_endproc
.LFE649:
	.size	vatomic64_await_le_sub, .-vatomic64_await_le_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_sub_acq, %function
vatomic64_await_le_sub_acq:
.LFB650:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2327:
	cmp	x1, x4
	bls	.L2328
	.p2align 3,,7
.L2325:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2325
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2325
	sub	x2, x0, x5
.L2335:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2336
	stxr	w6, x2, [x3]
	cbnz	w6, .L2335
.L2336:
	cmp	x1, x0
	bne	.L2327
.L2332:
	ret
.L2328:
	mov	x0, x1
	sub	x2, x0, x5
.L2333:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2334
	stxr	w6, x2, [x3]
	cbnz	w6, .L2333
.L2334:
	cmp	x1, x0
	bne	.L2327
	b	.L2332
	.cfi_endproc
.LFE650:
	.size	vatomic64_await_le_sub_acq, .-vatomic64_await_le_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_sub_rel, %function
vatomic64_await_le_sub_rel:
.LFB651:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2341:
	cmp	x1, x4
	bls	.L2342
	.p2align 3,,7
.L2339:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2339
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2339
	sub	x2, x0, x5
.L2349:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2350
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2349
.L2350:
	cmp	x1, x0
	bne	.L2341
.L2346:
	ret
.L2342:
	mov	x0, x1
	sub	x2, x0, x5
.L2347:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2348
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2347
.L2348:
	cmp	x1, x0
	bne	.L2341
	b	.L2346
	.cfi_endproc
.LFE651:
	.size	vatomic64_await_le_sub_rel, .-vatomic64_await_le_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_sub_rlx, %function
vatomic64_await_le_sub_rlx:
.LFB652:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2355:
	cmp	x1, x4
	bls	.L2356
	.p2align 3,,7
.L2353:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2353
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2353
	sub	x2, x0, x5
.L2363:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2364
	stxr	w6, x2, [x3]
	cbnz	w6, .L2363
.L2364:
	cmp	x1, x0
	bne	.L2355
.L2360:
	ret
.L2356:
	mov	x0, x1
	sub	x2, x0, x5
.L2361:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2362
	stxr	w6, x2, [x3]
	cbnz	w6, .L2361
.L2362:
	cmp	x1, x0
	bne	.L2355
	b	.L2360
	.cfi_endproc
.LFE652:
	.size	vatomic64_await_le_sub_rlx, .-vatomic64_await_le_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_set, %function
vatomic64_await_le_set:
.LFB653:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldar	x1, [x0]
	.p2align 3,,7
.L2369:
	cmp	x1, x4
	bls	.L2370
	.p2align 3,,7
.L2367:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2367
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2367
.L2377:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2378
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2377
.L2378:
	cmp	x1, x0
	bne	.L2369
.L2374:
	ret
.L2370:
	mov	x0, x1
.L2375:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2376
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2375
.L2376:
	cmp	x1, x0
	bne	.L2369
	b	.L2374
	.cfi_endproc
.LFE653:
	.size	vatomic64_await_le_set, .-vatomic64_await_le_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_set_acq, %function
vatomic64_await_le_set_acq:
.LFB654:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2383:
	cmp	x1, x4
	bls	.L2384
	.p2align 3,,7
.L2381:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2381
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2381
.L2391:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2392
	stxr	w5, x2, [x3]
	cbnz	w5, .L2391
.L2392:
	cmp	x1, x0
	bne	.L2383
.L2388:
	ret
.L2384:
	mov	x0, x1
.L2389:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2390
	stxr	w5, x2, [x3]
	cbnz	w5, .L2389
.L2390:
	cmp	x1, x0
	bne	.L2383
	b	.L2388
	.cfi_endproc
.LFE654:
	.size	vatomic64_await_le_set_acq, .-vatomic64_await_le_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_set_rel, %function
vatomic64_await_le_set_rel:
.LFB655:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2397:
	cmp	x1, x4
	bls	.L2398
	.p2align 3,,7
.L2395:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2395
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2395
.L2405:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2406
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2405
.L2406:
	cmp	x1, x0
	bne	.L2397
.L2402:
	ret
.L2398:
	mov	x0, x1
.L2403:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2404
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2403
.L2404:
	cmp	x1, x0
	bne	.L2397
	b	.L2402
	.cfi_endproc
.LFE655:
	.size	vatomic64_await_le_set_rel, .-vatomic64_await_le_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_le_set_rlx, %function
vatomic64_await_le_set_rlx:
.LFB656:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2411:
	cmp	x1, x4
	bls	.L2412
	.p2align 3,,7
.L2409:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2409
	mov	x1, x0
	cmp	x4, x0
	bcc	.L2409
.L2419:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2420
	stxr	w5, x2, [x3]
	cbnz	w5, .L2419
.L2420:
	cmp	x1, x0
	bne	.L2411
.L2416:
	ret
.L2412:
	mov	x0, x1
.L2417:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2418
	stxr	w5, x2, [x3]
	cbnz	w5, .L2417
.L2418:
	cmp	x1, x0
	bne	.L2411
	b	.L2416
	.cfi_endproc
.LFE656:
	.size	vatomic64_await_le_set_rlx, .-vatomic64_await_le_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_add, %function
vatomic64_await_lt_add:
.LFB657:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2425:
	cmp	x1, x4
	bcc	.L2426
	.p2align 3,,7
.L2423:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2423
	mov	x1, x0
	cmp	x4, x0
	bls	.L2423
	add	x2, x5, x0
.L2433:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2434
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2433
.L2434:
	cmp	x1, x0
	bne	.L2425
.L2430:
	ret
.L2426:
	mov	x0, x1
	add	x2, x5, x0
.L2431:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2432
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2431
.L2432:
	cmp	x1, x0
	bne	.L2425
	b	.L2430
	.cfi_endproc
.LFE657:
	.size	vatomic64_await_lt_add, .-vatomic64_await_lt_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_add_acq, %function
vatomic64_await_lt_add_acq:
.LFB658:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2439:
	cmp	x1, x4
	bcc	.L2440
	.p2align 3,,7
.L2437:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2437
	mov	x1, x0
	cmp	x4, x0
	bls	.L2437
	add	x2, x5, x0
.L2447:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2448
	stxr	w6, x2, [x3]
	cbnz	w6, .L2447
.L2448:
	cmp	x1, x0
	bne	.L2439
.L2444:
	ret
.L2440:
	mov	x0, x1
	add	x2, x5, x0
.L2445:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2446
	stxr	w6, x2, [x3]
	cbnz	w6, .L2445
.L2446:
	cmp	x1, x0
	bne	.L2439
	b	.L2444
	.cfi_endproc
.LFE658:
	.size	vatomic64_await_lt_add_acq, .-vatomic64_await_lt_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_add_rel, %function
vatomic64_await_lt_add_rel:
.LFB659:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2453:
	cmp	x1, x4
	bcc	.L2454
	.p2align 3,,7
.L2451:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2451
	mov	x1, x0
	cmp	x4, x0
	bls	.L2451
	add	x2, x5, x0
.L2461:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2462
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2461
.L2462:
	cmp	x1, x0
	bne	.L2453
.L2458:
	ret
.L2454:
	mov	x0, x1
	add	x2, x5, x0
.L2459:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2460
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2459
.L2460:
	cmp	x1, x0
	bne	.L2453
	b	.L2458
	.cfi_endproc
.LFE659:
	.size	vatomic64_await_lt_add_rel, .-vatomic64_await_lt_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_add_rlx, %function
vatomic64_await_lt_add_rlx:
.LFB660:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2467:
	cmp	x1, x4
	bcc	.L2468
	.p2align 3,,7
.L2465:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2465
	mov	x1, x0
	cmp	x4, x0
	bls	.L2465
	add	x2, x5, x0
.L2475:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2476
	stxr	w6, x2, [x3]
	cbnz	w6, .L2475
.L2476:
	cmp	x1, x0
	bne	.L2467
.L2472:
	ret
.L2468:
	mov	x0, x1
	add	x2, x5, x0
.L2473:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2474
	stxr	w6, x2, [x3]
	cbnz	w6, .L2473
.L2474:
	cmp	x1, x0
	bne	.L2467
	b	.L2472
	.cfi_endproc
.LFE660:
	.size	vatomic64_await_lt_add_rlx, .-vatomic64_await_lt_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_sub, %function
vatomic64_await_lt_sub:
.LFB661:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2481:
	cmp	x1, x4
	bcc	.L2482
	.p2align 3,,7
.L2479:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2479
	mov	x1, x0
	cmp	x4, x0
	bls	.L2479
	sub	x2, x0, x5
.L2489:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2490
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2489
.L2490:
	cmp	x1, x0
	bne	.L2481
.L2486:
	ret
.L2482:
	mov	x0, x1
	sub	x2, x0, x5
.L2487:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2488
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2487
.L2488:
	cmp	x1, x0
	bne	.L2481
	b	.L2486
	.cfi_endproc
.LFE661:
	.size	vatomic64_await_lt_sub, .-vatomic64_await_lt_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_sub_acq, %function
vatomic64_await_lt_sub_acq:
.LFB662:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2495:
	cmp	x1, x4
	bcc	.L2496
	.p2align 3,,7
.L2493:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2493
	mov	x1, x0
	cmp	x4, x0
	bls	.L2493
	sub	x2, x0, x5
.L2503:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2504
	stxr	w6, x2, [x3]
	cbnz	w6, .L2503
.L2504:
	cmp	x1, x0
	bne	.L2495
.L2500:
	ret
.L2496:
	mov	x0, x1
	sub	x2, x0, x5
.L2501:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2502
	stxr	w6, x2, [x3]
	cbnz	w6, .L2501
.L2502:
	cmp	x1, x0
	bne	.L2495
	b	.L2500
	.cfi_endproc
.LFE662:
	.size	vatomic64_await_lt_sub_acq, .-vatomic64_await_lt_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_sub_rel, %function
vatomic64_await_lt_sub_rel:
.LFB663:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2509:
	cmp	x1, x4
	bcc	.L2510
	.p2align 3,,7
.L2507:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2507
	mov	x1, x0
	cmp	x4, x0
	bls	.L2507
	sub	x2, x0, x5
.L2517:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2518
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2517
.L2518:
	cmp	x1, x0
	bne	.L2509
.L2514:
	ret
.L2510:
	mov	x0, x1
	sub	x2, x0, x5
.L2515:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2516
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2515
.L2516:
	cmp	x1, x0
	bne	.L2509
	b	.L2514
	.cfi_endproc
.LFE663:
	.size	vatomic64_await_lt_sub_rel, .-vatomic64_await_lt_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_sub_rlx, %function
vatomic64_await_lt_sub_rlx:
.LFB664:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2523:
	cmp	x1, x4
	bcc	.L2524
	.p2align 3,,7
.L2521:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2521
	mov	x1, x0
	cmp	x4, x0
	bls	.L2521
	sub	x2, x0, x5
.L2531:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2532
	stxr	w6, x2, [x3]
	cbnz	w6, .L2531
.L2532:
	cmp	x1, x0
	bne	.L2523
.L2528:
	ret
.L2524:
	mov	x0, x1
	sub	x2, x0, x5
.L2529:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2530
	stxr	w6, x2, [x3]
	cbnz	w6, .L2529
.L2530:
	cmp	x1, x0
	bne	.L2523
	b	.L2528
	.cfi_endproc
.LFE664:
	.size	vatomic64_await_lt_sub_rlx, .-vatomic64_await_lt_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_set, %function
vatomic64_await_lt_set:
.LFB665:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldar	x1, [x0]
	.p2align 3,,7
.L2537:
	cmp	x1, x4
	bcc	.L2538
	.p2align 3,,7
.L2535:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2535
	mov	x1, x0
	cmp	x4, x0
	bls	.L2535
.L2545:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2546
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2545
.L2546:
	cmp	x1, x0
	bne	.L2537
.L2542:
	ret
.L2538:
	mov	x0, x1
.L2543:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2544
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2543
.L2544:
	cmp	x1, x0
	bne	.L2537
	b	.L2542
	.cfi_endproc
.LFE665:
	.size	vatomic64_await_lt_set, .-vatomic64_await_lt_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_set_acq, %function
vatomic64_await_lt_set_acq:
.LFB666:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2551:
	cmp	x1, x4
	bcc	.L2552
	.p2align 3,,7
.L2549:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2549
	mov	x1, x0
	cmp	x4, x0
	bls	.L2549
.L2559:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2560
	stxr	w5, x2, [x3]
	cbnz	w5, .L2559
.L2560:
	cmp	x1, x0
	bne	.L2551
.L2556:
	ret
.L2552:
	mov	x0, x1
.L2557:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2558
	stxr	w5, x2, [x3]
	cbnz	w5, .L2557
.L2558:
	cmp	x1, x0
	bne	.L2551
	b	.L2556
	.cfi_endproc
.LFE666:
	.size	vatomic64_await_lt_set_acq, .-vatomic64_await_lt_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_set_rel, %function
vatomic64_await_lt_set_rel:
.LFB667:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2565:
	cmp	x1, x4
	bcc	.L2566
	.p2align 3,,7
.L2563:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2563
	mov	x1, x0
	cmp	x4, x0
	bls	.L2563
.L2573:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2574
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2573
.L2574:
	cmp	x1, x0
	bne	.L2565
.L2570:
	ret
.L2566:
	mov	x0, x1
.L2571:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2572
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2571
.L2572:
	cmp	x1, x0
	bne	.L2565
	b	.L2570
	.cfi_endproc
.LFE667:
	.size	vatomic64_await_lt_set_rel, .-vatomic64_await_lt_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_lt_set_rlx, %function
vatomic64_await_lt_set_rlx:
.LFB668:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2579:
	cmp	x1, x4
	bcc	.L2580
	.p2align 3,,7
.L2577:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2577
	mov	x1, x0
	cmp	x4, x0
	bls	.L2577
.L2587:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2588
	stxr	w5, x2, [x3]
	cbnz	w5, .L2587
.L2588:
	cmp	x1, x0
	bne	.L2579
.L2584:
	ret
.L2580:
	mov	x0, x1
.L2585:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2586
	stxr	w5, x2, [x3]
	cbnz	w5, .L2585
.L2586:
	cmp	x1, x0
	bne	.L2579
	b	.L2584
	.cfi_endproc
.LFE668:
	.size	vatomic64_await_lt_set_rlx, .-vatomic64_await_lt_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_add, %function
vatomic64_await_ge_add:
.LFB669:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2593:
	cmp	x1, x4
	bcs	.L2594
	.p2align 3,,7
.L2591:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2591
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2591
	add	x2, x5, x0
.L2601:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2602
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2601
.L2602:
	cmp	x1, x0
	bne	.L2593
.L2598:
	ret
.L2594:
	mov	x0, x1
	add	x2, x5, x0
.L2599:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2600
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2599
.L2600:
	cmp	x1, x0
	bne	.L2593
	b	.L2598
	.cfi_endproc
.LFE669:
	.size	vatomic64_await_ge_add, .-vatomic64_await_ge_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_add_acq, %function
vatomic64_await_ge_add_acq:
.LFB670:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2607:
	cmp	x1, x4
	bcs	.L2608
	.p2align 3,,7
.L2605:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2605
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2605
	add	x2, x5, x0
.L2615:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2616
	stxr	w6, x2, [x3]
	cbnz	w6, .L2615
.L2616:
	cmp	x1, x0
	bne	.L2607
.L2612:
	ret
.L2608:
	mov	x0, x1
	add	x2, x5, x0
.L2613:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2614
	stxr	w6, x2, [x3]
	cbnz	w6, .L2613
.L2614:
	cmp	x1, x0
	bne	.L2607
	b	.L2612
	.cfi_endproc
.LFE670:
	.size	vatomic64_await_ge_add_acq, .-vatomic64_await_ge_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_add_rel, %function
vatomic64_await_ge_add_rel:
.LFB671:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2621:
	cmp	x1, x4
	bcs	.L2622
	.p2align 3,,7
.L2619:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2619
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2619
	add	x2, x5, x0
.L2629:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2630
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2629
.L2630:
	cmp	x1, x0
	bne	.L2621
.L2626:
	ret
.L2622:
	mov	x0, x1
	add	x2, x5, x0
.L2627:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2628
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2627
.L2628:
	cmp	x1, x0
	bne	.L2621
	b	.L2626
	.cfi_endproc
.LFE671:
	.size	vatomic64_await_ge_add_rel, .-vatomic64_await_ge_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_add_rlx, %function
vatomic64_await_ge_add_rlx:
.LFB672:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2635:
	cmp	x1, x4
	bcs	.L2636
	.p2align 3,,7
.L2633:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2633
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2633
	add	x2, x5, x0
.L2643:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2644
	stxr	w6, x2, [x3]
	cbnz	w6, .L2643
.L2644:
	cmp	x1, x0
	bne	.L2635
.L2640:
	ret
.L2636:
	mov	x0, x1
	add	x2, x5, x0
.L2641:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2642
	stxr	w6, x2, [x3]
	cbnz	w6, .L2641
.L2642:
	cmp	x1, x0
	bne	.L2635
	b	.L2640
	.cfi_endproc
.LFE672:
	.size	vatomic64_await_ge_add_rlx, .-vatomic64_await_ge_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_sub, %function
vatomic64_await_ge_sub:
.LFB673:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2649:
	cmp	x1, x4
	bcs	.L2650
	.p2align 3,,7
.L2647:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2647
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2647
	sub	x2, x0, x5
.L2657:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2658
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2657
.L2658:
	cmp	x1, x0
	bne	.L2649
.L2654:
	ret
.L2650:
	mov	x0, x1
	sub	x2, x0, x5
.L2655:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2656
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2655
.L2656:
	cmp	x1, x0
	bne	.L2649
	b	.L2654
	.cfi_endproc
.LFE673:
	.size	vatomic64_await_ge_sub, .-vatomic64_await_ge_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_sub_acq, %function
vatomic64_await_ge_sub_acq:
.LFB674:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2663:
	cmp	x1, x4
	bcs	.L2664
	.p2align 3,,7
.L2661:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2661
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2661
	sub	x2, x0, x5
.L2671:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2672
	stxr	w6, x2, [x3]
	cbnz	w6, .L2671
.L2672:
	cmp	x1, x0
	bne	.L2663
.L2668:
	ret
.L2664:
	mov	x0, x1
	sub	x2, x0, x5
.L2669:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2670
	stxr	w6, x2, [x3]
	cbnz	w6, .L2669
.L2670:
	cmp	x1, x0
	bne	.L2663
	b	.L2668
	.cfi_endproc
.LFE674:
	.size	vatomic64_await_ge_sub_acq, .-vatomic64_await_ge_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_sub_rel, %function
vatomic64_await_ge_sub_rel:
.LFB675:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2677:
	cmp	x1, x4
	bcs	.L2678
	.p2align 3,,7
.L2675:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2675
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2675
	sub	x2, x0, x5
.L2685:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2686
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2685
.L2686:
	cmp	x1, x0
	bne	.L2677
.L2682:
	ret
.L2678:
	mov	x0, x1
	sub	x2, x0, x5
.L2683:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2684
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2683
.L2684:
	cmp	x1, x0
	bne	.L2677
	b	.L2682
	.cfi_endproc
.LFE675:
	.size	vatomic64_await_ge_sub_rel, .-vatomic64_await_ge_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_sub_rlx, %function
vatomic64_await_ge_sub_rlx:
.LFB676:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2691:
	cmp	x1, x4
	bcs	.L2692
	.p2align 3,,7
.L2689:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2689
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2689
	sub	x2, x0, x5
.L2699:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2700
	stxr	w6, x2, [x3]
	cbnz	w6, .L2699
.L2700:
	cmp	x1, x0
	bne	.L2691
.L2696:
	ret
.L2692:
	mov	x0, x1
	sub	x2, x0, x5
.L2697:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2698
	stxr	w6, x2, [x3]
	cbnz	w6, .L2697
.L2698:
	cmp	x1, x0
	bne	.L2691
	b	.L2696
	.cfi_endproc
.LFE676:
	.size	vatomic64_await_ge_sub_rlx, .-vatomic64_await_ge_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_set, %function
vatomic64_await_ge_set:
.LFB677:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldar	x1, [x0]
	.p2align 3,,7
.L2705:
	cmp	x1, x4
	bcs	.L2706
	.p2align 3,,7
.L2703:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2703
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2703
.L2713:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2714
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2713
.L2714:
	cmp	x1, x0
	bne	.L2705
.L2710:
	ret
.L2706:
	mov	x0, x1
.L2711:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2712
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2711
.L2712:
	cmp	x1, x0
	bne	.L2705
	b	.L2710
	.cfi_endproc
.LFE677:
	.size	vatomic64_await_ge_set, .-vatomic64_await_ge_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_set_acq, %function
vatomic64_await_ge_set_acq:
.LFB678:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2719:
	cmp	x1, x4
	bcs	.L2720
	.p2align 3,,7
.L2717:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2717
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2717
.L2727:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2728
	stxr	w5, x2, [x3]
	cbnz	w5, .L2727
.L2728:
	cmp	x1, x0
	bne	.L2719
.L2724:
	ret
.L2720:
	mov	x0, x1
.L2725:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2726
	stxr	w5, x2, [x3]
	cbnz	w5, .L2725
.L2726:
	cmp	x1, x0
	bne	.L2719
	b	.L2724
	.cfi_endproc
.LFE678:
	.size	vatomic64_await_ge_set_acq, .-vatomic64_await_ge_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_set_rel, %function
vatomic64_await_ge_set_rel:
.LFB679:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2733:
	cmp	x1, x4
	bcs	.L2734
	.p2align 3,,7
.L2731:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2731
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2731
.L2741:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2742
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2741
.L2742:
	cmp	x1, x0
	bne	.L2733
.L2738:
	ret
.L2734:
	mov	x0, x1
.L2739:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2740
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2739
.L2740:
	cmp	x1, x0
	bne	.L2733
	b	.L2738
	.cfi_endproc
.LFE679:
	.size	vatomic64_await_ge_set_rel, .-vatomic64_await_ge_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_ge_set_rlx, %function
vatomic64_await_ge_set_rlx:
.LFB680:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2747:
	cmp	x1, x4
	bcs	.L2748
	.p2align 3,,7
.L2745:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2745
	mov	x1, x0
	cmp	x4, x0
	bhi	.L2745
.L2755:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2756
	stxr	w5, x2, [x3]
	cbnz	w5, .L2755
.L2756:
	cmp	x1, x0
	bne	.L2747
.L2752:
	ret
.L2748:
	mov	x0, x1
.L2753:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2754
	stxr	w5, x2, [x3]
	cbnz	w5, .L2753
.L2754:
	cmp	x1, x0
	bne	.L2747
	b	.L2752
	.cfi_endproc
.LFE680:
	.size	vatomic64_await_ge_set_rlx, .-vatomic64_await_ge_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_add, %function
vatomic64_await_gt_add:
.LFB681:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2761:
	cmp	x1, x4
	bhi	.L2762
	.p2align 3,,7
.L2759:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2759
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2759
	add	x2, x5, x0
.L2769:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2770
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2769
.L2770:
	cmp	x1, x0
	bne	.L2761
.L2766:
	ret
.L2762:
	mov	x0, x1
	add	x2, x5, x0
.L2767:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2768
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2767
.L2768:
	cmp	x1, x0
	bne	.L2761
	b	.L2766
	.cfi_endproc
.LFE681:
	.size	vatomic64_await_gt_add, .-vatomic64_await_gt_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_add_acq, %function
vatomic64_await_gt_add_acq:
.LFB682:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2775:
	cmp	x1, x4
	bhi	.L2776
	.p2align 3,,7
.L2773:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2773
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2773
	add	x2, x5, x0
.L2783:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2784
	stxr	w6, x2, [x3]
	cbnz	w6, .L2783
.L2784:
	cmp	x1, x0
	bne	.L2775
.L2780:
	ret
.L2776:
	mov	x0, x1
	add	x2, x5, x0
.L2781:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2782
	stxr	w6, x2, [x3]
	cbnz	w6, .L2781
.L2782:
	cmp	x1, x0
	bne	.L2775
	b	.L2780
	.cfi_endproc
.LFE682:
	.size	vatomic64_await_gt_add_acq, .-vatomic64_await_gt_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_add_rel, %function
vatomic64_await_gt_add_rel:
.LFB683:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2789:
	cmp	x1, x4
	bhi	.L2790
	.p2align 3,,7
.L2787:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2787
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2787
	add	x2, x5, x0
.L2797:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2798
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2797
.L2798:
	cmp	x1, x0
	bne	.L2789
.L2794:
	ret
.L2790:
	mov	x0, x1
	add	x2, x5, x0
.L2795:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2796
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2795
.L2796:
	cmp	x1, x0
	bne	.L2789
	b	.L2794
	.cfi_endproc
.LFE683:
	.size	vatomic64_await_gt_add_rel, .-vatomic64_await_gt_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_add_rlx, %function
vatomic64_await_gt_add_rlx:
.LFB684:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2803:
	cmp	x1, x4
	bhi	.L2804
	.p2align 3,,7
.L2801:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2801
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2801
	add	x2, x5, x0
.L2811:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2812
	stxr	w6, x2, [x3]
	cbnz	w6, .L2811
.L2812:
	cmp	x1, x0
	bne	.L2803
.L2808:
	ret
.L2804:
	mov	x0, x1
	add	x2, x5, x0
.L2809:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2810
	stxr	w6, x2, [x3]
	cbnz	w6, .L2809
.L2810:
	cmp	x1, x0
	bne	.L2803
	b	.L2808
	.cfi_endproc
.LFE684:
	.size	vatomic64_await_gt_add_rlx, .-vatomic64_await_gt_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_sub, %function
vatomic64_await_gt_sub:
.LFB685:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldar	x1, [x0]
	.p2align 3,,7
.L2817:
	cmp	x1, x4
	bhi	.L2818
	.p2align 3,,7
.L2815:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2815
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2815
	sub	x2, x0, x5
.L2825:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2826
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2825
.L2826:
	cmp	x1, x0
	bne	.L2817
.L2822:
	ret
.L2818:
	mov	x0, x1
	sub	x2, x0, x5
.L2823:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2824
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2823
.L2824:
	cmp	x1, x0
	bne	.L2817
	b	.L2822
	.cfi_endproc
.LFE685:
	.size	vatomic64_await_gt_sub, .-vatomic64_await_gt_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_sub_acq, %function
vatomic64_await_gt_sub_acq:
.LFB686:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2831:
	cmp	x1, x4
	bhi	.L2832
	.p2align 3,,7
.L2829:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2829
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2829
	sub	x2, x0, x5
.L2839:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2840
	stxr	w6, x2, [x3]
	cbnz	w6, .L2839
.L2840:
	cmp	x1, x0
	bne	.L2831
.L2836:
	ret
.L2832:
	mov	x0, x1
	sub	x2, x0, x5
.L2837:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2838
	stxr	w6, x2, [x3]
	cbnz	w6, .L2837
.L2838:
	cmp	x1, x0
	bne	.L2831
	b	.L2836
	.cfi_endproc
.LFE686:
	.size	vatomic64_await_gt_sub_acq, .-vatomic64_await_gt_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_sub_rel, %function
vatomic64_await_gt_sub_rel:
.LFB687:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2845:
	cmp	x1, x4
	bhi	.L2846
	.p2align 3,,7
.L2843:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2843
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2843
	sub	x2, x0, x5
.L2853:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2854
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2853
.L2854:
	cmp	x1, x0
	bne	.L2845
.L2850:
	ret
.L2846:
	mov	x0, x1
	sub	x2, x0, x5
.L2851:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2852
	stlxr	w6, x2, [x3]
	cbnz	w6, .L2851
.L2852:
	cmp	x1, x0
	bne	.L2845
	b	.L2850
	.cfi_endproc
.LFE687:
	.size	vatomic64_await_gt_sub_rel, .-vatomic64_await_gt_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_sub_rlx, %function
vatomic64_await_gt_sub_rlx:
.LFB688:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	mov	x5, x2
	ldr	x1, [x0]
	.p2align 3,,7
.L2859:
	cmp	x1, x4
	bhi	.L2860
	.p2align 3,,7
.L2857:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2857
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2857
	sub	x2, x0, x5
.L2867:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2868
	stxr	w6, x2, [x3]
	cbnz	w6, .L2867
.L2868:
	cmp	x1, x0
	bne	.L2859
.L2864:
	ret
.L2860:
	mov	x0, x1
	sub	x2, x0, x5
.L2865:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2866
	stxr	w6, x2, [x3]
	cbnz	w6, .L2865
.L2866:
	cmp	x1, x0
	bne	.L2859
	b	.L2864
	.cfi_endproc
.LFE688:
	.size	vatomic64_await_gt_sub_rlx, .-vatomic64_await_gt_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_set, %function
vatomic64_await_gt_set:
.LFB689:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldar	x1, [x0]
	.p2align 3,,7
.L2873:
	cmp	x1, x4
	bhi	.L2874
	.p2align 3,,7
.L2871:
	ldar	x0, [x3]
	cmp	x0, x1
	beq	.L2871
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2871
.L2881:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2882
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2881
.L2882:
	cmp	x1, x0
	bne	.L2873
.L2878:
	ret
.L2874:
	mov	x0, x1
.L2879:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2880
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2879
.L2880:
	cmp	x1, x0
	bne	.L2873
	b	.L2878
	.cfi_endproc
.LFE689:
	.size	vatomic64_await_gt_set, .-vatomic64_await_gt_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_set_acq, %function
vatomic64_await_gt_set_acq:
.LFB690:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2887:
	cmp	x1, x4
	bhi	.L2888
	.p2align 3,,7
.L2885:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2885
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2885
.L2895:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2896
	stxr	w5, x2, [x3]
	cbnz	w5, .L2895
.L2896:
	cmp	x1, x0
	bne	.L2887
.L2892:
	ret
.L2888:
	mov	x0, x1
.L2893:
	ldaxr	x1, [x3]
	cmp	x1, x0
	bne	.L2894
	stxr	w5, x2, [x3]
	cbnz	w5, .L2893
.L2894:
	cmp	x1, x0
	bne	.L2887
	b	.L2892
	.cfi_endproc
.LFE690:
	.size	vatomic64_await_gt_set_acq, .-vatomic64_await_gt_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_set_rel, %function
vatomic64_await_gt_set_rel:
.LFB691:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2901:
	cmp	x1, x4
	bhi	.L2902
	.p2align 3,,7
.L2899:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2899
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2899
.L2909:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2910
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2909
.L2910:
	cmp	x1, x0
	bne	.L2901
.L2906:
	ret
.L2902:
	mov	x0, x1
.L2907:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2908
	stlxr	w5, x2, [x3]
	cbnz	w5, .L2907
.L2908:
	cmp	x1, x0
	bne	.L2901
	b	.L2906
	.cfi_endproc
.LFE691:
	.size	vatomic64_await_gt_set_rel, .-vatomic64_await_gt_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_gt_set_rlx, %function
vatomic64_await_gt_set_rlx:
.LFB692:
	.cfi_startproc
	mov	x3, x0
	mov	x4, x1
	ldr	x1, [x0]
	.p2align 3,,7
.L2915:
	cmp	x1, x4
	bhi	.L2916
	.p2align 3,,7
.L2913:
	ldr	x0, [x3]
	cmp	x0, x1
	beq	.L2913
	mov	x1, x0
	cmp	x4, x0
	bcs	.L2913
.L2923:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2924
	stxr	w5, x2, [x3]
	cbnz	w5, .L2923
.L2924:
	cmp	x1, x0
	bne	.L2915
.L2920:
	ret
.L2916:
	mov	x0, x1
.L2921:
	ldxr	x1, [x3]
	cmp	x1, x0
	bne	.L2922
	stxr	w5, x2, [x3]
	cbnz	w5, .L2921
.L2922:
	cmp	x1, x0
	bne	.L2915
	b	.L2920
	.cfi_endproc
.LFE692:
	.size	vatomic64_await_gt_set_rlx, .-vatomic64_await_gt_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_add, %function
vatomic32_await_neq_add:
.LFB693:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2926:
	ldar	w3, [x4]
	cmp	w1, w3
	beq	.L2926
	add	w5, w2, w3
.L2930:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2931
	stlxr	w6, w5, [x4]
	cbnz	w6, .L2930
.L2931:
	cmp	w0, w3
	bne	.L2926
	ret
	.cfi_endproc
.LFE693:
	.size	vatomic32_await_neq_add, .-vatomic32_await_neq_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_add_acq, %function
vatomic32_await_neq_add_acq:
.LFB694:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2933:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2933
	add	w5, w2, w3
.L2937:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2938
	stxr	w6, w5, [x4]
	cbnz	w6, .L2937
.L2938:
	cmp	w0, w3
	bne	.L2933
	ret
	.cfi_endproc
.LFE694:
	.size	vatomic32_await_neq_add_acq, .-vatomic32_await_neq_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_add_rel, %function
vatomic32_await_neq_add_rel:
.LFB695:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2940:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2940
	add	w5, w2, w3
.L2944:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L2945
	stlxr	w6, w5, [x4]
	cbnz	w6, .L2944
.L2945:
	cmp	w0, w3
	bne	.L2940
	ret
	.cfi_endproc
.LFE695:
	.size	vatomic32_await_neq_add_rel, .-vatomic32_await_neq_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_add_rlx, %function
vatomic32_await_neq_add_rlx:
.LFB696:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2947:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2947
	add	w5, w2, w3
.L2951:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L2952
	stxr	w6, w5, [x4]
	cbnz	w6, .L2951
.L2952:
	cmp	w0, w3
	bne	.L2947
	ret
	.cfi_endproc
.LFE696:
	.size	vatomic32_await_neq_add_rlx, .-vatomic32_await_neq_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_sub, %function
vatomic32_await_neq_sub:
.LFB697:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2954:
	ldar	w3, [x4]
	cmp	w1, w3
	beq	.L2954
	sub	w5, w3, w2
.L2958:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2959
	stlxr	w6, w5, [x4]
	cbnz	w6, .L2958
.L2959:
	cmp	w0, w3
	bne	.L2954
	ret
	.cfi_endproc
.LFE697:
	.size	vatomic32_await_neq_sub, .-vatomic32_await_neq_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_sub_acq, %function
vatomic32_await_neq_sub_acq:
.LFB698:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2961:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2961
	sub	w5, w3, w2
.L2965:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2966
	stxr	w6, w5, [x4]
	cbnz	w6, .L2965
.L2966:
	cmp	w0, w3
	bne	.L2961
	ret
	.cfi_endproc
.LFE698:
	.size	vatomic32_await_neq_sub_acq, .-vatomic32_await_neq_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_sub_rel, %function
vatomic32_await_neq_sub_rel:
.LFB699:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2968:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2968
	sub	w5, w3, w2
.L2972:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L2973
	stlxr	w6, w5, [x4]
	cbnz	w6, .L2972
.L2973:
	cmp	w0, w3
	bne	.L2968
	ret
	.cfi_endproc
.LFE699:
	.size	vatomic32_await_neq_sub_rel, .-vatomic32_await_neq_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_sub_rlx, %function
vatomic32_await_neq_sub_rlx:
.LFB700:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2975:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2975
	sub	w5, w3, w2
.L2979:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L2980
	stxr	w6, w5, [x4]
	cbnz	w6, .L2979
.L2980:
	cmp	w0, w3
	bne	.L2975
	ret
	.cfi_endproc
.LFE700:
	.size	vatomic32_await_neq_sub_rlx, .-vatomic32_await_neq_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_set, %function
vatomic32_await_neq_set:
.LFB701:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2982:
	ldar	w3, [x4]
	cmp	w1, w3
	beq	.L2982
.L2986:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2987
	stlxr	w5, w2, [x4]
	cbnz	w5, .L2986
.L2987:
	cmp	w0, w3
	bne	.L2982
	ret
	.cfi_endproc
.LFE701:
	.size	vatomic32_await_neq_set, .-vatomic32_await_neq_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_set_acq, %function
vatomic32_await_neq_set_acq:
.LFB702:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2989:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2989
.L2993:
	ldaxr	w0, [x4]
	cmp	w0, w3
	bne	.L2994
	stxr	w5, w2, [x4]
	cbnz	w5, .L2993
.L2994:
	cmp	w0, w3
	bne	.L2989
	ret
	.cfi_endproc
.LFE702:
	.size	vatomic32_await_neq_set_acq, .-vatomic32_await_neq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_set_rel, %function
vatomic32_await_neq_set_rel:
.LFB703:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L2996:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L2996
.L3000:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L3001
	stlxr	w5, w2, [x4]
	cbnz	w5, .L3000
.L3001:
	cmp	w0, w3
	bne	.L2996
	ret
	.cfi_endproc
.LFE703:
	.size	vatomic32_await_neq_set_rel, .-vatomic32_await_neq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_neq_set_rlx, %function
vatomic32_await_neq_set_rlx:
.LFB704:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3003:
	ldr	w3, [x4]
	cmp	w1, w3
	beq	.L3003
.L3007:
	ldxr	w0, [x4]
	cmp	w0, w3
	bne	.L3008
	stxr	w5, w2, [x4]
	cbnz	w5, .L3007
.L3008:
	cmp	w0, w3
	bne	.L3003
	ret
	.cfi_endproc
.LFE704:
	.size	vatomic32_await_neq_set_rlx, .-vatomic32_await_neq_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_add, %function
vatomic64_await_neq_add:
.LFB705:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3010:
	ldar	x3, [x4]
	cmp	x1, x3
	beq	.L3010
	add	x5, x2, x3
.L3014:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3015
	stlxr	w6, x5, [x4]
	cbnz	w6, .L3014
.L3015:
	cmp	x0, x3
	bne	.L3010
	ret
	.cfi_endproc
.LFE705:
	.size	vatomic64_await_neq_add, .-vatomic64_await_neq_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_add_acq, %function
vatomic64_await_neq_add_acq:
.LFB706:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3017:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3017
	add	x5, x2, x3
.L3021:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3022
	stxr	w6, x5, [x4]
	cbnz	w6, .L3021
.L3022:
	cmp	x0, x3
	bne	.L3017
	ret
	.cfi_endproc
.LFE706:
	.size	vatomic64_await_neq_add_acq, .-vatomic64_await_neq_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_add_rel, %function
vatomic64_await_neq_add_rel:
.LFB707:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3024:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3024
	add	x5, x2, x3
.L3028:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3029
	stlxr	w6, x5, [x4]
	cbnz	w6, .L3028
.L3029:
	cmp	x0, x3
	bne	.L3024
	ret
	.cfi_endproc
.LFE707:
	.size	vatomic64_await_neq_add_rel, .-vatomic64_await_neq_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_add_rlx, %function
vatomic64_await_neq_add_rlx:
.LFB708:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3031:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3031
	add	x5, x2, x3
.L3035:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3036
	stxr	w6, x5, [x4]
	cbnz	w6, .L3035
.L3036:
	cmp	x0, x3
	bne	.L3031
	ret
	.cfi_endproc
.LFE708:
	.size	vatomic64_await_neq_add_rlx, .-vatomic64_await_neq_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_sub, %function
vatomic64_await_neq_sub:
.LFB709:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3038:
	ldar	x3, [x4]
	cmp	x1, x3
	beq	.L3038
	sub	x5, x3, x2
.L3042:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3043
	stlxr	w6, x5, [x4]
	cbnz	w6, .L3042
.L3043:
	cmp	x0, x3
	bne	.L3038
	ret
	.cfi_endproc
.LFE709:
	.size	vatomic64_await_neq_sub, .-vatomic64_await_neq_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_sub_acq, %function
vatomic64_await_neq_sub_acq:
.LFB710:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3045:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3045
	sub	x5, x3, x2
.L3049:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3050
	stxr	w6, x5, [x4]
	cbnz	w6, .L3049
.L3050:
	cmp	x0, x3
	bne	.L3045
	ret
	.cfi_endproc
.LFE710:
	.size	vatomic64_await_neq_sub_acq, .-vatomic64_await_neq_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_sub_rel, %function
vatomic64_await_neq_sub_rel:
.LFB711:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3052:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3052
	sub	x5, x3, x2
.L3056:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3057
	stlxr	w6, x5, [x4]
	cbnz	w6, .L3056
.L3057:
	cmp	x0, x3
	bne	.L3052
	ret
	.cfi_endproc
.LFE711:
	.size	vatomic64_await_neq_sub_rel, .-vatomic64_await_neq_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_sub_rlx, %function
vatomic64_await_neq_sub_rlx:
.LFB712:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3059:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3059
	sub	x5, x3, x2
.L3063:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3064
	stxr	w6, x5, [x4]
	cbnz	w6, .L3063
.L3064:
	cmp	x0, x3
	bne	.L3059
	ret
	.cfi_endproc
.LFE712:
	.size	vatomic64_await_neq_sub_rlx, .-vatomic64_await_neq_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_set, %function
vatomic64_await_neq_set:
.LFB713:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3066:
	ldar	x3, [x4]
	cmp	x1, x3
	beq	.L3066
.L3070:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3071
	stlxr	w5, x2, [x4]
	cbnz	w5, .L3070
.L3071:
	cmp	x0, x3
	bne	.L3066
	ret
	.cfi_endproc
.LFE713:
	.size	vatomic64_await_neq_set, .-vatomic64_await_neq_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_set_acq, %function
vatomic64_await_neq_set_acq:
.LFB714:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3073:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3073
.L3077:
	ldaxr	x0, [x4]
	cmp	x0, x3
	bne	.L3078
	stxr	w5, x2, [x4]
	cbnz	w5, .L3077
.L3078:
	cmp	x0, x3
	bne	.L3073
	ret
	.cfi_endproc
.LFE714:
	.size	vatomic64_await_neq_set_acq, .-vatomic64_await_neq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_set_rel, %function
vatomic64_await_neq_set_rel:
.LFB715:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3080:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3080
.L3084:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3085
	stlxr	w5, x2, [x4]
	cbnz	w5, .L3084
.L3085:
	cmp	x0, x3
	bne	.L3080
	ret
	.cfi_endproc
.LFE715:
	.size	vatomic64_await_neq_set_rel, .-vatomic64_await_neq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_neq_set_rlx, %function
vatomic64_await_neq_set_rlx:
.LFB716:
	.cfi_startproc
	mov	x4, x0
	.p2align 3,,7
.L3087:
	ldr	x3, [x4]
	cmp	x1, x3
	beq	.L3087
.L3091:
	ldxr	x0, [x4]
	cmp	x0, x3
	bne	.L3092
	stxr	w5, x2, [x4]
	cbnz	w5, .L3091
.L3092:
	cmp	x0, x3
	bne	.L3087
	ret
	.cfi_endproc
.LFE716:
	.size	vatomic64_await_neq_set_rlx, .-vatomic64_await_neq_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_set, %function
vatomicptr_await_neq_set:
.LFB717:
	.cfi_startproc
	mov	x3, x0
	.p2align 3,,7
.L3094:
	ldar	x0, [x3]
	cmp	x1, x0
	beq	.L3094
.L3098:
	ldaxr	x4, [x3]
	cmp	x4, x0
	bne	.L3099
	stlxr	w5, x2, [x3]
	cbnz	w5, .L3098
.L3099:
	cmp	x0, x4
	bne	.L3094
	ret
	.cfi_endproc
.LFE717:
	.size	vatomicptr_await_neq_set, .-vatomicptr_await_neq_set
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_set_acq, %function
vatomicptr_await_neq_set_acq:
.LFB718:
	.cfi_startproc
	mov	x3, x0
	.p2align 3,,7
.L3101:
	ldr	x0, [x3]
	cmp	x1, x0
	beq	.L3101
.L3105:
	ldaxr	x4, [x3]
	cmp	x4, x0
	bne	.L3106
	stxr	w5, x2, [x3]
	cbnz	w5, .L3105
.L3106:
	cmp	x0, x4
	bne	.L3101
	ret
	.cfi_endproc
.LFE718:
	.size	vatomicptr_await_neq_set_acq, .-vatomicptr_await_neq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_set_rel, %function
vatomicptr_await_neq_set_rel:
.LFB719:
	.cfi_startproc
	mov	x3, x0
	.p2align 3,,7
.L3108:
	ldr	x0, [x3]
	cmp	x1, x0
	beq	.L3108
.L3112:
	ldxr	x4, [x3]
	cmp	x4, x0
	bne	.L3113
	stlxr	w5, x2, [x3]
	cbnz	w5, .L3112
.L3113:
	cmp	x0, x4
	bne	.L3108
	ret
	.cfi_endproc
.LFE719:
	.size	vatomicptr_await_neq_set_rel, .-vatomicptr_await_neq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_neq_set_rlx, %function
vatomicptr_await_neq_set_rlx:
.LFB720:
	.cfi_startproc
	mov	x3, x0
	.p2align 3,,7
.L3115:
	ldr	x0, [x3]
	cmp	x1, x0
	beq	.L3115
.L3119:
	ldxr	x4, [x3]
	cmp	x4, x0
	bne	.L3120
	stxr	w5, x2, [x3]
	cbnz	w5, .L3119
.L3120:
	cmp	x0, x4
	bne	.L3115
	ret
	.cfi_endproc
.LFE720:
	.size	vatomicptr_await_neq_set_rlx, .-vatomicptr_await_neq_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_add, %function
vatomic32_await_eq_add:
.LFB721:
	.cfi_startproc
	add	w3, w1, w2
	.p2align 3,,7
.L3122:
	ldar	w2, [x0]
	cmp	w1, w2
	bne	.L3122
.L3126:
	ldaxr	w2, [x0]
	cmp	w2, w1
	bne	.L3127
	stlxr	w4, w3, [x0]
	cbnz	w4, .L3126
.L3127:
	cmp	w1, w2
	bne	.L3122
	mov	w0, w1
	ret
	.cfi_endproc
.LFE721:
	.size	vatomic32_await_eq_add, .-vatomic32_await_eq_add
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_add_acq, %function
vatomic32_await_eq_add_acq:
.LFB722:
	.cfi_startproc
	add	w3, w1, w2
	.p2align 3,,7
.L3129:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3129
.L3133:
	ldaxr	w2, [x0]
	cmp	w2, w1
	bne	.L3134
	stxr	w4, w3, [x0]
	cbnz	w4, .L3133
.L3134:
	cmp	w1, w2
	bne	.L3129
	mov	w0, w1
	ret
	.cfi_endproc
.LFE722:
	.size	vatomic32_await_eq_add_acq, .-vatomic32_await_eq_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_add_rel, %function
vatomic32_await_eq_add_rel:
.LFB723:
	.cfi_startproc
	add	w3, w1, w2
	.p2align 3,,7
.L3136:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3136
.L3140:
	ldxr	w2, [x0]
	cmp	w2, w1
	bne	.L3141
	stlxr	w4, w3, [x0]
	cbnz	w4, .L3140
.L3141:
	cmp	w1, w2
	bne	.L3136
	mov	w0, w1
	ret
	.cfi_endproc
.LFE723:
	.size	vatomic32_await_eq_add_rel, .-vatomic32_await_eq_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_add_rlx, %function
vatomic32_await_eq_add_rlx:
.LFB724:
	.cfi_startproc
	add	w3, w1, w2
	.p2align 3,,7
.L3143:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3143
.L3147:
	ldxr	w2, [x0]
	cmp	w2, w1
	bne	.L3148
	stxr	w4, w3, [x0]
	cbnz	w4, .L3147
.L3148:
	cmp	w1, w2
	bne	.L3143
	mov	w0, w1
	ret
	.cfi_endproc
.LFE724:
	.size	vatomic32_await_eq_add_rlx, .-vatomic32_await_eq_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_sub, %function
vatomic32_await_eq_sub:
.LFB725:
	.cfi_startproc
	sub	w3, w1, w2
	.p2align 3,,7
.L3150:
	ldar	w2, [x0]
	cmp	w1, w2
	bne	.L3150
.L3154:
	ldaxr	w2, [x0]
	cmp	w2, w1
	bne	.L3155
	stlxr	w4, w3, [x0]
	cbnz	w4, .L3154
.L3155:
	cmp	w1, w2
	bne	.L3150
	mov	w0, w1
	ret
	.cfi_endproc
.LFE725:
	.size	vatomic32_await_eq_sub, .-vatomic32_await_eq_sub
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_sub_acq, %function
vatomic32_await_eq_sub_acq:
.LFB726:
	.cfi_startproc
	sub	w3, w1, w2
	.p2align 3,,7
.L3157:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3157
.L3161:
	ldaxr	w2, [x0]
	cmp	w2, w1
	bne	.L3162
	stxr	w4, w3, [x0]
	cbnz	w4, .L3161
.L3162:
	cmp	w1, w2
	bne	.L3157
	mov	w0, w1
	ret
	.cfi_endproc
.LFE726:
	.size	vatomic32_await_eq_sub_acq, .-vatomic32_await_eq_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_sub_rel, %function
vatomic32_await_eq_sub_rel:
.LFB727:
	.cfi_startproc
	sub	w3, w1, w2
	.p2align 3,,7
.L3164:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3164
.L3168:
	ldxr	w2, [x0]
	cmp	w2, w1
	bne	.L3169
	stlxr	w4, w3, [x0]
	cbnz	w4, .L3168
.L3169:
	cmp	w1, w2
	bne	.L3164
	mov	w0, w1
	ret
	.cfi_endproc
.LFE727:
	.size	vatomic32_await_eq_sub_rel, .-vatomic32_await_eq_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_sub_rlx, %function
vatomic32_await_eq_sub_rlx:
.LFB728:
	.cfi_startproc
	sub	w3, w1, w2
	.p2align 3,,7
.L3171:
	ldr	w2, [x0]
	cmp	w1, w2
	bne	.L3171
.L3175:
	ldxr	w2, [x0]
	cmp	w2, w1
	bne	.L3176
	stxr	w4, w3, [x0]
	cbnz	w4, .L3175
.L3176:
	cmp	w1, w2
	bne	.L3171
	mov	w0, w1
	ret
	.cfi_endproc
.LFE728:
	.size	vatomic32_await_eq_sub_rlx, .-vatomic32_await_eq_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_set, %function
vatomic32_await_eq_set:
.LFB729:
	.cfi_startproc
	mov	x4, x0
	mov	w0, w1
	.p2align 3,,7
.L3178:
	ldar	w3, [x4]
	cmp	w0, w3
	bne	.L3178
.L3182:
	ldaxr	w1, [x4]
	cmp	w1, w0
	bne	.L3183
	stlxr	w3, w2, [x4]
	cbnz	w3, .L3182
.L3183:
	cmp	w0, w1
	bne	.L3178
	ret
	.cfi_endproc
.LFE729:
	.size	vatomic32_await_eq_set, .-vatomic32_await_eq_set
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_set_acq, %function
vatomic32_await_eq_set_acq:
.LFB730:
	.cfi_startproc
	mov	x4, x0
	mov	w0, w1
	.p2align 3,,7
.L3185:
	ldr	w3, [x4]
	cmp	w0, w3
	bne	.L3185
.L3189:
	ldaxr	w1, [x4]
	cmp	w1, w0
	bne	.L3190
	stxr	w3, w2, [x4]
	cbnz	w3, .L3189
.L3190:
	cmp	w0, w1
	bne	.L3185
	ret
	.cfi_endproc
.LFE730:
	.size	vatomic32_await_eq_set_acq, .-vatomic32_await_eq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_set_rel, %function
vatomic32_await_eq_set_rel:
.LFB731:
	.cfi_startproc
	mov	x4, x0
	mov	w0, w1
	.p2align 3,,7
.L3192:
	ldr	w3, [x4]
	cmp	w0, w3
	bne	.L3192
.L3196:
	ldxr	w1, [x4]
	cmp	w1, w0
	bne	.L3197
	stlxr	w3, w2, [x4]
	cbnz	w3, .L3196
.L3197:
	cmp	w0, w1
	bne	.L3192
	ret
	.cfi_endproc
.LFE731:
	.size	vatomic32_await_eq_set_rel, .-vatomic32_await_eq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic32_await_eq_set_rlx, %function
vatomic32_await_eq_set_rlx:
.LFB732:
	.cfi_startproc
	mov	x4, x0
	mov	w0, w1
	.p2align 3,,7
.L3199:
	ldr	w3, [x4]
	cmp	w0, w3
	bne	.L3199
.L3203:
	ldxr	w1, [x4]
	cmp	w1, w0
	bne	.L3204
	stxr	w3, w2, [x4]
	cbnz	w3, .L3203
.L3204:
	cmp	w0, w1
	bne	.L3199
	ret
	.cfi_endproc
.LFE732:
	.size	vatomic32_await_eq_set_rlx, .-vatomic32_await_eq_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_add, %function
vatomic64_await_eq_add:
.LFB733:
	.cfi_startproc
	add	x3, x1, x2
	.p2align 3,,7
.L3206:
	ldar	x2, [x0]
	cmp	x1, x2
	bne	.L3206
.L3210:
	ldaxr	x2, [x0]
	cmp	x2, x1
	bne	.L3211
	stlxr	w4, x3, [x0]
	cbnz	w4, .L3210
.L3211:
	cmp	x1, x2
	bne	.L3206
	mov	x0, x1
	ret
	.cfi_endproc
.LFE733:
	.size	vatomic64_await_eq_add, .-vatomic64_await_eq_add
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_add_acq, %function
vatomic64_await_eq_add_acq:
.LFB734:
	.cfi_startproc
	add	x3, x1, x2
	.p2align 3,,7
.L3213:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3213
.L3217:
	ldaxr	x2, [x0]
	cmp	x2, x1
	bne	.L3218
	stxr	w4, x3, [x0]
	cbnz	w4, .L3217
.L3218:
	cmp	x1, x2
	bne	.L3213
	mov	x0, x1
	ret
	.cfi_endproc
.LFE734:
	.size	vatomic64_await_eq_add_acq, .-vatomic64_await_eq_add_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_add_rel, %function
vatomic64_await_eq_add_rel:
.LFB735:
	.cfi_startproc
	add	x3, x1, x2
	.p2align 3,,7
.L3220:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3220
.L3224:
	ldxr	x2, [x0]
	cmp	x2, x1
	bne	.L3225
	stlxr	w4, x3, [x0]
	cbnz	w4, .L3224
.L3225:
	cmp	x1, x2
	bne	.L3220
	mov	x0, x1
	ret
	.cfi_endproc
.LFE735:
	.size	vatomic64_await_eq_add_rel, .-vatomic64_await_eq_add_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_add_rlx, %function
vatomic64_await_eq_add_rlx:
.LFB736:
	.cfi_startproc
	add	x3, x1, x2
	.p2align 3,,7
.L3227:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3227
.L3231:
	ldxr	x2, [x0]
	cmp	x2, x1
	bne	.L3232
	stxr	w4, x3, [x0]
	cbnz	w4, .L3231
.L3232:
	cmp	x1, x2
	bne	.L3227
	mov	x0, x1
	ret
	.cfi_endproc
.LFE736:
	.size	vatomic64_await_eq_add_rlx, .-vatomic64_await_eq_add_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_sub, %function
vatomic64_await_eq_sub:
.LFB737:
	.cfi_startproc
	sub	x3, x1, x2
	.p2align 3,,7
.L3234:
	ldar	x2, [x0]
	cmp	x1, x2
	bne	.L3234
.L3238:
	ldaxr	x2, [x0]
	cmp	x2, x1
	bne	.L3239
	stlxr	w4, x3, [x0]
	cbnz	w4, .L3238
.L3239:
	cmp	x1, x2
	bne	.L3234
	mov	x0, x1
	ret
	.cfi_endproc
.LFE737:
	.size	vatomic64_await_eq_sub, .-vatomic64_await_eq_sub
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_sub_acq, %function
vatomic64_await_eq_sub_acq:
.LFB738:
	.cfi_startproc
	sub	x3, x1, x2
	.p2align 3,,7
.L3241:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3241
.L3245:
	ldaxr	x2, [x0]
	cmp	x2, x1
	bne	.L3246
	stxr	w4, x3, [x0]
	cbnz	w4, .L3245
.L3246:
	cmp	x1, x2
	bne	.L3241
	mov	x0, x1
	ret
	.cfi_endproc
.LFE738:
	.size	vatomic64_await_eq_sub_acq, .-vatomic64_await_eq_sub_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_sub_rel, %function
vatomic64_await_eq_sub_rel:
.LFB739:
	.cfi_startproc
	sub	x3, x1, x2
	.p2align 3,,7
.L3248:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3248
.L3252:
	ldxr	x2, [x0]
	cmp	x2, x1
	bne	.L3253
	stlxr	w4, x3, [x0]
	cbnz	w4, .L3252
.L3253:
	cmp	x1, x2
	bne	.L3248
	mov	x0, x1
	ret
	.cfi_endproc
.LFE739:
	.size	vatomic64_await_eq_sub_rel, .-vatomic64_await_eq_sub_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_sub_rlx, %function
vatomic64_await_eq_sub_rlx:
.LFB740:
	.cfi_startproc
	sub	x3, x1, x2
	.p2align 3,,7
.L3255:
	ldr	x2, [x0]
	cmp	x1, x2
	bne	.L3255
.L3259:
	ldxr	x2, [x0]
	cmp	x2, x1
	bne	.L3260
	stxr	w4, x3, [x0]
	cbnz	w4, .L3259
.L3260:
	cmp	x1, x2
	bne	.L3255
	mov	x0, x1
	ret
	.cfi_endproc
.LFE740:
	.size	vatomic64_await_eq_sub_rlx, .-vatomic64_await_eq_sub_rlx
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_set, %function
vatomic64_await_eq_set:
.LFB741:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3262:
	ldar	x3, [x4]
	cmp	x0, x3
	bne	.L3262
.L3266:
	ldaxr	x1, [x4]
	cmp	x1, x0
	bne	.L3267
	stlxr	w3, x2, [x4]
	cbnz	w3, .L3266
.L3267:
	cmp	x0, x1
	bne	.L3262
	ret
	.cfi_endproc
.LFE741:
	.size	vatomic64_await_eq_set, .-vatomic64_await_eq_set
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_set_acq, %function
vatomic64_await_eq_set_acq:
.LFB742:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3269:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3269
.L3273:
	ldaxr	x1, [x4]
	cmp	x1, x0
	bne	.L3274
	stxr	w3, x2, [x4]
	cbnz	w3, .L3273
.L3274:
	cmp	x0, x1
	bne	.L3269
	ret
	.cfi_endproc
.LFE742:
	.size	vatomic64_await_eq_set_acq, .-vatomic64_await_eq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_set_rel, %function
vatomic64_await_eq_set_rel:
.LFB743:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3276:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3276
.L3280:
	ldxr	x1, [x4]
	cmp	x1, x0
	bne	.L3281
	stlxr	w3, x2, [x4]
	cbnz	w3, .L3280
.L3281:
	cmp	x0, x1
	bne	.L3276
	ret
	.cfi_endproc
.LFE743:
	.size	vatomic64_await_eq_set_rel, .-vatomic64_await_eq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomic64_await_eq_set_rlx, %function
vatomic64_await_eq_set_rlx:
.LFB744:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3283:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3283
.L3287:
	ldxr	x1, [x4]
	cmp	x1, x0
	bne	.L3288
	stxr	w3, x2, [x4]
	cbnz	w3, .L3287
.L3288:
	cmp	x0, x1
	bne	.L3283
	ret
	.cfi_endproc
.LFE744:
	.size	vatomic64_await_eq_set_rlx, .-vatomic64_await_eq_set_rlx
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_set, %function
vatomicptr_await_eq_set:
.LFB745:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3290:
	ldar	x3, [x4]
	cmp	x0, x3
	bne	.L3290
.L3294:
	ldaxr	x1, [x4]
	cmp	x1, x0
	bne	.L3295
	stlxr	w3, x2, [x4]
	cbnz	w3, .L3294
.L3295:
	cmp	x0, x1
	bne	.L3290
	ret
	.cfi_endproc
.LFE745:
	.size	vatomicptr_await_eq_set, .-vatomicptr_await_eq_set
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_set_acq, %function
vatomicptr_await_eq_set_acq:
.LFB746:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3297:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3297
.L3301:
	ldaxr	x1, [x4]
	cmp	x1, x0
	bne	.L3302
	stxr	w3, x2, [x4]
	cbnz	w3, .L3301
.L3302:
	cmp	x0, x1
	bne	.L3297
	ret
	.cfi_endproc
.LFE746:
	.size	vatomicptr_await_eq_set_acq, .-vatomicptr_await_eq_set_acq
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_set_rel, %function
vatomicptr_await_eq_set_rel:
.LFB747:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3304:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3304
.L3308:
	ldxr	x1, [x4]
	cmp	x1, x0
	bne	.L3309
	stlxr	w3, x2, [x4]
	cbnz	w3, .L3308
.L3309:
	cmp	x0, x1
	bne	.L3304
	ret
	.cfi_endproc
.LFE747:
	.size	vatomicptr_await_eq_set_rel, .-vatomicptr_await_eq_set_rel
	.align	2
	.p2align 4,,11
	.type	vatomicptr_await_eq_set_rlx, %function
vatomicptr_await_eq_set_rlx:
.LFB748:
	.cfi_startproc
	mov	x4, x0
	mov	x0, x1
	.p2align 3,,7
.L3311:
	ldr	x3, [x4]
	cmp	x0, x3
	bne	.L3311
.L3315:
	ldxr	x1, [x4]
	cmp	x1, x0
	bne	.L3316
	stxr	w3, x2, [x4]
	cbnz	w3, .L3315
.L3316:
	cmp	x0, x1
	bne	.L3311
	ret
	.cfi_endproc
.LFE748:
	.size	vatomicptr_await_eq_set_rlx, .-vatomicptr_await_eq_set_rlx
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
