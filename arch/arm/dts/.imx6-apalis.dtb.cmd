cmd_arch/arm/dts/imx6-apalis.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/imx6-apalis.dts; ) > arch/arm/dts/.imx6-apalis.dtb.pre.tmp; arm-none-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/dts/.imx6-apalis.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.imx6-apalis.dtb.dts.tmp arch/arm/dts/.imx6-apalis.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/imx6-apalis.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths  -d arch/arm/dts/.imx6-apalis.dtb.d.dtc.tmp arch/arm/dts/.imx6-apalis.dtb.dts.tmp || (echo "Check /home/peter/uboot-imx/arch/arm/dts/.imx6-apalis.dtb.pre.tmp for errors" && false) ; cat arch/arm/dts/.imx6-apalis.dtb.d.pre.tmp arch/arm/dts/.imx6-apalis.dtb.d.dtc.tmp > arch/arm/dts/.imx6-apalis.dtb.d ; sed -i "s:arch/arm/dts/.imx6-apalis.dtb.pre.tmp:arch/arm/dts/imx6-apalis.dts:" arch/arm/dts/.imx6-apalis.dtb.d

source_arch/arm/dts/imx6-apalis.dtb := arch/arm/dts/imx6-apalis.dts

deps_arch/arm/dts/imx6-apalis.dtb := \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/imx6q.dtsi \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/imx6q-pinfunc.h \
  arch/arm/dts/imx6qdl.dtsi \
  arch/arm/dts/include/dt-bindings/clock/imx6qdl-clock.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \

arch/arm/dts/imx6-apalis.dtb: $(deps_arch/arm/dts/imx6-apalis.dtb)

$(deps_arch/arm/dts/imx6-apalis.dtb):
