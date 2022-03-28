SUMMARY = "Control for UID led"
DESCRIPTION = "Control for UID led"

SRC_URI = "git://github.com/niikitta/uidled-set;branch=dev0;protocol=https"
SRCREV = "3d5fc1fff99b5f576819eb47eed6978ffbdbd0ce"

PV = "1.0+git${SRCPV}"

S = "${WORKDIR}/git"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

inherit cmake systemd
inherit obmc-phosphor-dbus-service

SYSTEMD_SERVICE:${PN} = "uidled.service"
SYSTEMD_AUTO_ENBALE = "enable"

DEPENDS += " \ 
        boost \
        sdbusplus \
        libgpiod \
        "



#FILES:${PN}  += "${systemd_system_unitdir}/uidled.service"
