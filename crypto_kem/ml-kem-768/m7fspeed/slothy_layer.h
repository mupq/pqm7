#ifndef SLOTHY_H
#define SLOTHY_H

#include <stdint.h>

#define N(x, y) x##y
#define SLOTHY_NAMESPACE(s) N(s, _opt_m7)

#define ntt_fast SLOTHY_NAMESPACE(ntt_fast)
#define invntt_fast SLOTHY_NAMESPACE(invntt_fast)
#define asm_barrett_reduce SLOTHY_NAMESPACE(asm_barrett_reduce)
#define frombytes_mul_asm_acc_32_16                                            \
  SLOTHY_NAMESPACE(frombytes_mul_asm_acc_32_16)
#define frombytes_mul_asm_acc_32_32                                            \
  SLOTHY_NAMESPACE(frombytes_mul_asm_acc_32_32)
#define frombytes_mul_asm_16_32 SLOTHY_NAMESPACE(frombytes_mul_asm_16_32)
#define frombytes_mul_asm_32_32 SLOTHY_NAMESPACE(frombytes_mul_asm_32_32)
#define basemul_asm_opt_16_32 SLOTHY_NAMESPACE(basemul_asm_opt_16_32)
#define basemul_asm_opt_32_32 SLOTHY_NAMESPACE(basemul_asm_opt_32_32)
#define basemul_asm_opt_32_16 SLOTHY_NAMESPACE(basemul_asm_opt_32_16)
#define basemul_asm_acc_opt_32_16 SLOTHY_NAMESPACE(basemul_asm_acc_opt_32_16)
#define basemul_asm_acc_opt_32_32 SLOTHY_NAMESPACE(basemul_asm_acc_opt_32_32)
#define asm_fromplant SLOTHY_NAMESPACE(asm_fromplant)
#define pointwise_add SLOTHY_NAMESPACE(pointwise_add)
#define pointwise_sub SLOTHY_NAMESPACE(pointwise_sub)

#endif
