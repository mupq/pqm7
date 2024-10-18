# SPDX-License-Identifier: Apache-2.0 or CC0-1.0
DEVICE=stm32f767zi
OPENCM3_TARGET=lib/stm32/f7

EXCLUDED_SCHEMES = \
	mupq/pqclean/crypto_kem/mceliece% \
	mupq/pqclean/crypto_kem/hqc% \
	mupq/pqclean/crypto_sign/falcon% \
	mupq/pqclean/crypto_sign/sphincs% \
	mupq/crypto_kem/bike% \
	mupq/crypto_sign/aimer% \
	mupq/crypto_sign/ascon% \
	mupq/crypto_sign/biscuit% \
	mupq/crypto_sign/cross% \
	mupq/crypto_sign/falcon% \
	mupq/crypto_sign/haetae% \
	mupq/crypto_sign/hawk% \
	mupq/crypto_sign/mayo% \
	mupq/crypto_sign/meds% \
	mupq/crypto_sign/mirith% \
	mupq/crypto_sign/mqom% \
	mupq/crypto_sign/ov-Ip% \
	mupq/crypto_sign/perk% \
	mupq/crypto_sign/snova% \
	mupq/crypto_sign/sphincs% \
	mupq/crypto_sign/tuov%

include mk/opencm3.mk

elf/boardtest.elf: CPPFLAGS+=-DSRAM_TIMING_TEST -DHAS_SRAM2 -DHAS_CCM
elf/boardtest-fast.elf: CPPFLAGS+=-DSRAM_TIMING_TEST -DHAS_SRAM2 -DHAS_CCM
