FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"
SRC_URI:append = " file://zvezda-baseboard.json"
do_install:append() {
     rm -f ${D}/usr/share/entity-manager/configurations/*.json
     install -d ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/zvezda-baseboard.json ${D}/usr/share/entity-manager/configurations
}
