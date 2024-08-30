MCU_VARIANT = D6

CFLAGS += \
  -DSYSCLK_FREQ_144MHz_HSE=144000000 \
  -DCH32_FLASH_ENHANCE_READ_MODE=1 \
  -DCFG_EXAMPLE_MSC_DUAL_READONLY \

# 64KB zero-wait, 224KB total flash
LDFLAGS += \
  -Wl,--defsym=__FLASH_SIZE=224K \
  -Wl,--defsym=__RAM_SIZE=20K \