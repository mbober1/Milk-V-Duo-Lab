DESCRIPTION = "Test image"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit core-image


IMAGE_INSTALL = " \
	packagegroup-core-boot \
    kernel \
    kernel-devicetree \
	kernel-modules \
	nano \
	htop \
	openssh \
	e2fsprogs \
"

EXTRA_IMAGE_FEATURES = " \
    debug-tweaks \
"