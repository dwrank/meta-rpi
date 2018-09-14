SUMMARY = "RPi development image"
DESCRIPTION = "RPi core image + serial port access + ssh access + dev tools"

inherit rpi-core-access

IMAGE_INSTALL += "packagegroup-rpi-dev"
IMAGE_FEATURES += "package-management"

export IMAGE_BASENAME = "rpi-dev"
