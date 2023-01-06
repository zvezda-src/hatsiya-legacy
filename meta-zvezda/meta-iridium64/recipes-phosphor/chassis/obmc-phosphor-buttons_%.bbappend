FILESEXTRAPATHS:append:iridium64 := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:iridium64= " -Did-led-group=enclosure_identify"

#SRC_URI += "file://gpio_defs.json"

#do_install:append:iridium64() {
#        install -d ${D}${sysconfdir}/default/obmc/gpio/
#        install -m 0644 ${WORKDIR}/gpio_defs.json ${D}/${sysconfdir}/default/obmc/gpio/
#}
#
#FILES:${PN}-signals:append = " ${sysconfdir}/default/obmc/gpio/gpio_defs.json"
