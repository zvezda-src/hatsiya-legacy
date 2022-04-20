SUMMARY = "Server power control with on/off functionality"
DESCRIPTION = "Server power control with on/off functionality"

SRC_URI = "git://github.com/niikitta/pwr-ctrl;branch=dev0;protocol=https"
SRCREV = "216c4c9d3476209b16eba587e7c7247362069995"

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
        "
