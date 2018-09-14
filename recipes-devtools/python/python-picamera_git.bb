SUMMARY = "This package provides a pure Python interface to the Raspberry Pi camera module"
HOMEPAGE = "https://picamera.readthedocs.io/en/release-1.13"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=4de8aab427192e4a8322a71375d20e21"

FILESEXTRAPATHS_prepend := "${THISDIR}/python-picamera:"

SRC_URI = " \
	git://git@github.com/EchoLaboratories/picamera;protocol=ssh \
	file://0001-Remove-install-on-RPi-requirement.patch \
"

SRCREV = "1be976f24a15b3ec4e3e437e24b803f57618dc86"

S = "${WORKDIR}/git"

PYPI_PACKAGE = "picamera"

inherit setuptools

BBCLASSEXTEND = "native nativesdk"
