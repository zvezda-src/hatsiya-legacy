SUMMARY = "Server power control with on/off functionality"
DESCRIPTION = "Server power control with on/off functionality"

SRC_URI = "git://github.com/niikitta/pwr-ctrl;branch=main;protocol=https"
SRCREV = "e9300b22551cec94234f638bbec5905d06118f92"

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
