#ifndef SLOTHY_H
#define SLOTHY_H

#include <stdint.h>

#define N(x, y) x##y
#define SLOTHY_NAMESPACE(s) N(s, _opt_m7)

#define ntt_fast SLOTHY_NAMESPACE(ntt_fast)
#define invntt_fast SLOTHY_NAMESPACE(invntt_fast)
#define asm_barrett_reduce SLOTHY_NAMESPACE(asm_barrett_reduce)
#define basemul_asm SLOTHY_NAMESPACE(basemul_asm)
#define basemul_asm_acc SLOTHY_NAMESPACE(basemul_asm_acc)
#define asm_fromplant SLOTHY_NAMESPACE(asm_fromplant)
#define pointwise_add SLOTHY_NAMESPACE(pointwise_add)
#define pointwise_sub SLOTHY_NAMESPACE(pointwise_sub)
#define __matacc_asm SLOTHY_NAMESPACE(matacc_asm)
#define __matacc_asm_acc SLOTHY_NAMESPACE(matacc_asm_acc)

#endif
