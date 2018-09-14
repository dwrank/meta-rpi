SUMMARY = "Custom core package group for rpi"
DESCRIPTION = "This package group adds the packages required to run core software the on rpi"

inherit packagegroup

PACKAGES = "packagegroup-rpi-core"

RDEPENDS_packagegroup-rpi-core = " \
	python-modules \
	python-picamera \
	python-setuptools \
	python-wiringpi \
	rsyslog \
	sudo \
	userland \
	wiringpi \
"
