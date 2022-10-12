FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " file://zvezda-elizium-board.json \
                   file://acbel_psu.json \
               "

do_install:append() {
#     rm -f ${D}/usr/share/entity-manager/configurations/*.json
     install -d ${D}/usr/share/entity-manager/configurations	
     install -m 0444 ${WORKDIR}/zvezda-elizium-board.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/acbel_psu.json ${D}/usr/share/entity-manager/configurations
}
