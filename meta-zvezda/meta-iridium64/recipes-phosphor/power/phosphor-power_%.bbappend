FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
inherit obmc-phosphor-systemd

SRC_URI += "file://psu_config.json \		
           "

do_install:append() {
     install -d ${D}/usr/share/phosphor-psu-monitor/iridium64
     install -D ${WORKDIR}/psu_config.json ${D}${datadir}/phosphor-psu-monitor/iridium64/psu_config.json
}

FILES:${PN} += "${datadir}/phosphor-psu-monitor/iridium64/psu_config.json"
