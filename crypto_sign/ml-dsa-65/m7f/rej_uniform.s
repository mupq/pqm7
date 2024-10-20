.syntax unified
.thumb
// asm_rej_uniform(int32_t *a,unsigned int len,const unsigned char *buf, unsigned int buflen);
.global pqcrystals_dilithium_asm_rej_uniform
.type pqcrystals_dilithium_asm_rej_uniform, %function
.align 2
pqcrystals_dilithium_asm_rej_uniform:
    push.w {r4-r6}
    push.w {r1}
    // Store Q-1 in r12.
    movw r12,#:lower16:8380416
    movt r12,#:upper16:8380416

    add.w r6, r0, r1, lsl #2
    add.w r3, r2, r3
    sub.w r3, r3, #2

1:
    // If there are less than 3 bytes available, return.
    cmp.w r3, r2
    ble.w end

    ldr r5, [r2], #3
    ubfx r5, r5, #0, #23

    cmp.n r5, r12
    it le
    strle r5, [r0], #4

    cmp.n r0, r6
    bne.n 1b

end:
    pop.w {r5}

    sub.w r0, r6, r0
    sub.w r0, r5, r0, lsr #2
    pop.w {r4-r6}
    bx lr
.size pqcrystals_dilithium_asm_rej_uniform, .-pqcrystals_dilithium_asm_rej_uniform
