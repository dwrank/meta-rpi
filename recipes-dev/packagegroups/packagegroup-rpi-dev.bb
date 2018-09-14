SUMMARY = "Custom dev package group for rpi"
DESCRIPTION = "This package group adds packages to help develop software on the RPi"

inherit packagegroup

PACKAGES = "packagegroup-rpi-dev"

RDEPENDS_packagegroup-rpi-dev = " \
	coreutils \
	cscope \
	ctags \
	expect \
	git \
	iftop \
	iperf3 \
	less \
	net-tools \
	tmux \
	tzdata \
	util-linux-lsblk \
	vim \
"
