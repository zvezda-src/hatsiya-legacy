SUMMARY = "Button Control Script"
PR = "r1"
LICENSE = "CLOSED"


inherit obmc-phosphor-systemd

S = "${WORKDIR}"
SRC_URI += "file://button_ctrl.sh \
            file://button-ctrl@.service \	
	"

do_install() {
        install -d ${D}${bindir}
        install -m 0755 ${WORKDIR}/button_ctrl.sh \
            ${D}${bindir}/button_ctrl.sh
}

TMPL = "button-ctrl@.service"
INSTFMT = "button-ctrl@{0}.service"
TGT = "multi-user.target"
FMT = "../${TMPL}:${TGT}.wants/${INSTFMT}"

SYSTEMD_SERVICE:${PN} += "button-ctrl@.service"
SYSTEMD_LINK:${PN} += "${@compose_list(d, 'FMT', 'OBMC_CHASSIS_INSTANCES')}"
