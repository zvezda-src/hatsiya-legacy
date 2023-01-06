FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " file://zvezda-elizium-baseboard.json \
                   file://zvezda-pegas-110-chassis.json \
                   file://zvezda-pegas-212-chassis.json \
                   file://zvezda-pegas-224-chassis.json \
                   file://0001-power-supply-changes.patch \
               "

do_install:append() {
     rm -f ${D}/usr/share/entity-manager/configurations/*.json
     install -d ${D}/usr/share/entity-manager/configurations	
     install -m 0444 ${WORKDIR}/zvezda-elizium-baseboard.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/zvezda-pegas-110-chassis.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/zvezda-pegas-212-chassis.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/zvezda-pegas-224-chassis.json ${D}/usr/share/entity-manager/configurations
}
