FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

PACKAGECONFIG:append:iridium64 = " monitor-operational-status \
				    use-json \
				     "

SRC_URI:prepend:iridium64 = " file://led-group-config.json \
               "

do_install:prepend:iridium64() {
	rm -rf ${S}/configs/ibm,everest
	rm -rf ${S}/configs/ibm,rainier-1s4u
	rm -rf ${S}/configs/ibm,rainier-2u
	rm -rf ${S}/configs/ibm,rainier-4u
	install -d ${S}/configs/
	install -m 0444 ${WORKDIR}/led-group-config.json ${S}/configs/led-group-config.json
}

