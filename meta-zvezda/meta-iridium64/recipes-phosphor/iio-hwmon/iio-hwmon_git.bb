SUMMARY = "iio-hwmon implemetation"
DESCRIPTION = "iio-hwmon implemetation"

SRC_URI = "git://github.com/niikitta/iio-hwmon;branch=master;protocol=https"
SRCREV = "2a8c5eeabc1b971a5f323b84a8d6e231a1e41a46"

PV = "1.0+git${SRCPV}"

S = "${WORKDIR}/git"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

inherit cmake systemd
inherit obmc-phosphor-dbus-service

SYSTEMD_SERVICE:${PN} = "iio-hwmon.service"
SYSTEMD_AUTO_ENBALE = "enable"

DEPENDS += " \ 
        boost \
        sdbusplus \
        "
        
FILES:${PN}  += "${systemd_system_unitdir}/iio-hwmon.service"
