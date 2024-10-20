#ifndef SLOTHY_H
#define SLOTHY_H

#include <stdint.h>

#define NNN(x, y) x##y
#define SLOTHY_NAMESPACE(s) NNN(s, _opt_m7)

#define small_ntt_asm_769 SLOTHY_NAMESPACE(small_ntt_asm_769)
#define small_invntt_asm_769 SLOTHY_NAMESPACE(small_invntt_asm_769)
#define small_pointmul_asm_769 SLOTHY_NAMESPACE(small_pointmul_asm_769)
#define small_asymmetric_mul_asm_769 SLOTHY_NAMESPACE(small_asymmetric_mul_asm_769)


#define __asm_fnt_257 SLOTHY_NAMESPACE(__asm_fnt_257)
#define __asm_ifnt_257 SLOTHY_NAMESPACE(__asm_ifnt_257)
#define __asm_asymmetric_mul_257_16 SLOTHY_NAMESPACE(__asm_asymmetric_mul_257_16)
#define __asm_point_mul_257_16 SLOTHY_NAMESPACE(__asm_point_mul_257_16)



#define pqcrystals_dilithium_ntt SLOTHY_NAMESPACE(pqcrystals_dilithium_ntt)
#define pqcrystals_dilithium_invntt_tomont SLOTHY_NAMESPACE(pqcrystals_dilithium_invntt_tomont)
#define pqcrystals_dilithium_asm_pointwise_acc_montgomery SLOTHY_NAMESPACE(pqcrystals_dilithium_asm_pointwise_acc_montgomery)
#define pqcrystals_dilithium_asm_pointwise_montgomery SLOTHY_NAMESPACE(pqcrystals_dilithium_asm_pointwise_montgomery)



#define pqcrystals_dilithium_asm_caddq SLOTHY_NAMESPACE(pqcrystals_dilithium_asm_caddq)
#define pqcrystals_dilithium_asm_reduce32 SLOTHY_NAMESPACE(pqcrystals_dilithium_asm_reduce32)



#endif
