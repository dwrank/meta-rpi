SUMMARY = "Unofficial Python-wrapped version of Gordon Henderson's WiringPi version 2."
HOMEPAGE = "https://github.com/WiringPi/WiringPi-Python"
LICENSE = "LGPL"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=e6a600fd5e1d9cbde2d983680233ad02"

SRC_URI[sha256sum] = "1be697c3a97274effcf09d6bf978a795734aaa0080f9d09b080c6a263f1ac31d"

PYPI_PACKAGE = "wiringpi"

inherit pypi setuptools

BBCLASSEXTEND = "native nativesdk"
