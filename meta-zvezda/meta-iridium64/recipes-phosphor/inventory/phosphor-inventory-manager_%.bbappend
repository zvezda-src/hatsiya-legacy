FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"
PACKAGECONFIG:append:iridium64 = " associations"
SRC_URI:append:iridium64 = " file://associations.json"

DEPENDS:append:iridium64 = " iridium64-inventory-cleanup"

do_install:append:iridium64() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
