SUMMARY = "RPi core class"

IMAGE_LINGUAS = "en-us"

require rpi-core.inc

inherit core-image
#inherit rm_work

# use the assignment operator so local configurations cannot override the
# production settings
IMAGE_INSTALL = "packagegroup-core-boot packagegroup-base-extended packagegroup-rpi-core"

ROOTFS_POSTPROCESS_COMMAND += " \
	configure_profile; \
	configure_systemd_networking; \
"
