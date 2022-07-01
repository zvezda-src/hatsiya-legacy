SUMMARY = "Set configuration gpios"
DESCRIPTION = "Set configuration gpios"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

RDEPENDS:${PN} += "bash"

inherit allarch

SRC_URI = "\
    file://set-gpios \
    file://set-gpios.service \
    "

inherit obmc-phosphor-systemd

SYSTEMD_SERVICE:${PN} += "set-gpios.service"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/set-gpios ${D}${bindir}
}
