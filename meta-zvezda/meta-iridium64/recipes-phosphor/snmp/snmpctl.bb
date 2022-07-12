SUMMARY = "SNMP control utility"
DESCRIPTION = "SNMP control utility"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

RDEPENDS:${PN} += "bash"

inherit allarch

SRC_URI = "\
    file://snmpctl \
    "

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/snmpctl ${D}${bindir}
}
