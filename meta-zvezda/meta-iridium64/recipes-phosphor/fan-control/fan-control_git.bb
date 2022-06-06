SUMMARY = "Server fans control"
DESCRIPTION = "Server fans control"

SRC_URI = "git://github.com/niikitta/fan-control;branch=master;protocol=https"
SRCREV = "79dd192f24995bee4592dd2acd4a9ffcc9e981f2"

PV = "1.0+git${SRCPV}"

S = "${WORKDIR}/git"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

inherit cmake 

SYSTEMD_SERVICE:${PN} = "fan-control.service"
SYSTEMD_AUTO_ENBALE = "enable"

DEPENDS += " \ 
        boost \
        libgpiod \
        "