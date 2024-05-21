FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
	file://onewire.cfg \
	file://sensors.cfg \
	file://custom.dts \
"

KERNEL_DEVICETREE ?= "cvitek/cv1800b_milkv_duo_sd.dtb"

do_configure:append() {

	# Add custom DT
	cp ${WORKDIR}/custom.dts ${S}/arch/arm/boot/dts/cv1800b_milkv_duo_sd.dts
	echo "dtb-$(CONFIG_SOC_IMX6UL) += starsbc-6ull-custom.dtb" >> ${S}/arch/arm/boot/dts/cvitek/Makefile
}