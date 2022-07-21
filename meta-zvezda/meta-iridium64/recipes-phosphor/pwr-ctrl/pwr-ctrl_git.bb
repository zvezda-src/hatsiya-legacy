SUMMARY = "Little buttons control demon supports on/off server and uid led"
DESCRIPTION = "Little buttons control demon supports on/off server and uid led"

SRC_URI = "git://github.com/niikitta/buttons-ctrl;branch=dev3;protocol=https"
SRCREV = "2a330408b6ba6f757b0c75cdf5968db178a14cf7"

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
