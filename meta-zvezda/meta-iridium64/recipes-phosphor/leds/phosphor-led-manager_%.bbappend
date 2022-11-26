FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

PACKAGECONFIG:append:iridium64 = " monitor-operational-status"

SRC_URI:prepend:iridium64 = " file://iridium-led-config.json \
               "

do_install:prepend:iridium64() {
	rm -rf ${S}/configs/ibm,everest
	rm -rf ${S}/configs/ibm,rainier-1s4u
	rm -rf ${S}/configs/ibm,rainier-2u
	rm -rf ${S}/configs/ibm,rainier-4u
	install -d ${S}/configs/iridium64
	install -m 0444 ${WORKDIR}/iridium-led-config.json ${S}/configs/iridium64/iridium-led-config.json
}

