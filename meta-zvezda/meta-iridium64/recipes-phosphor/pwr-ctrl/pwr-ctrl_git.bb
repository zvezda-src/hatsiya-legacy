SUMMARY = "Little buttons control demon supports on/off server and uid led"
DESCRIPTION = "Little buttons control demon supports on/off server and uid led"

SRC_URI = "git://github.com/niikitta/buttons-ctrl;branch=dev2;protocol=https"
SRCREV = "6833d6cffe7e3ebf12427a190d9d9143f41d1ae3"

PV = "1.0+git${SRCPV}"

S = "${WORKDIR}/git"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

inherit cmake systemd
inherit obmc-phosphor-dbus-service

SYSTEMD_SERVICE:${PN} = "pwr-ctrl.service"
SYSTEMD_AUTO_ENBALE = "enable"

DEPENDS += " \ 
        boost \
        sdbusplus \
        libgpiod \
        "
