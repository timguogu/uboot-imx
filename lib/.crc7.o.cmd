cmd_lib/crc7.o := arm-none-linux-gnueabihf-gcc -Wp,-MD,lib/.crc7.o.d  -nostdinc -isystem /home/peter/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/bin/../lib/gcc/arm-none-linux-gnueabihf/9.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -fmacro-prefix-map=./= -g -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Werror=date-time -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a    -D"KBUILD_STR(s)=$(pound)s" -D"KBUILD_BASENAME=KBUILD_STR(crc7)"  -D"KBUILD_MODNAME=KBUILD_STR(crc7)" -c -o lib/crc7.o lib/crc7.c

source_lib/crc7.o := lib/crc7.c

deps_lib/crc7.o := \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  /home/peter/gcc-arm-9.2-2019.12-x86_64-arm-none-linux-gnueabihf/lib/gcc/arm-none-linux-gnueabihf/9.2.1/include/stdbool.h \
  include/linux/crc7.h \

lib/crc7.o: $(deps_lib/crc7.o)

$(deps_lib/crc7.o):
