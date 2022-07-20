SUMMARY = "Little buttons control demon supports on/off server and uid led"
DESCRIPTION = "Little buttons control demon supports on/off server and uid led"

SRC_URI = "git://github.com/niikitta/buttons-ctrl;branch=dev2;protocol=https"
SRCREV = "cbf5c7e69ab4c0c17afdf76c56ed9aa8ee4f82f5"

PV = "1.0+git${SRCPV}"

S = "${WORKDIR}/git"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

inherit cmake systemd
inherit obmc-phosphor-dbus-service

SYSTEMD_SERVICE:${PN} = "buttons-ctrl.service"
SYSTEMD_AUTO_ENBALE = "enable"

DEPENDS += " \ 
        boost \
        sdbusplus \
        libgpiod \
        "
