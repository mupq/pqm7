# SPDX-License-Identifier: Apache-2.0
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

ARCH_FLAGS += -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16

CFLAGS += \
	$(ARCH_FLAGS) \
	--specs=nosys.specs

CPPFLAGS += -DMPS2 -DMPS2_AN500

LDFLAGS += \
	--specs=nosys.specs \
	-Wl,--wrap=_sbrk \
	-Wl,--wrap=_open \
	-Wl,--wrap=_close \
	-Wl,--wrap=_isatty \
	-Wl,--wrap=_kill \
	-Wl,--wrap=_lseek \
	-Wl,--wrap=_read \
	-Wl,--wrap=_write \
	-Wl,--wrap=_fstat \
	-Wl,--wrap=_getpid \
	-Wl,--no-warn-rwx-segments \
	-ffreestanding \
	-T$(LDSCRIPT) \
	$(ARCH_FLAGS)

MBED_OS_TARGET_DIR = $(MBED_OS_DIR)/targets/TARGET_ARM_SSG/TARGET_MPS2/TARGET_MPS2_M7/device

include mk/mbed-os.mk
