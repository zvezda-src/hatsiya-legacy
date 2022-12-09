FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " file://zvezda-elizium-baseboard.json \
                   file://zvezda-iridium-chassis.json \
                   file://acbel_psu.json \
                   file://0001-power-supply-changes.patch \
               "

do_install:append() {
#     rm -f ${D}/usr/share/entity-manager/configurations/*.json
     install -d ${D}/usr/share/entity-manager/configurations	
     install -m 0444 ${WORKDIR}/zvezda-elizium-baseboard.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/zvezda-iridium-chassis.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/acbel_psu.json ${D}/usr/share/entity-manager/configurations
}
