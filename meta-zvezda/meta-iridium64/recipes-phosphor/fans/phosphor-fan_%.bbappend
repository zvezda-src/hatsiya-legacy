FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

PACKAGECONFIG:append = " json"

SRC_URI:prepend:iridium64 = " file://presence/config.json \
			       file://monitor/config.json \
			       file://fans.json \
			       file://groups.json \
			       file://events.json \
			       file://zones.json \
			       file://phosphor-fan-control@.service.in.patch \
               "

do_install:prepend:iridium64() {
     install -d ${S}/presence/config_files/iridium64
     install -m 0444 ${WORKDIR}/presence/config.json ${S}/presence/config_files/iridium64/config.json
     install -d ${S}/monitor/config_files/iridium64
     install -m 0444 ${WORKDIR}/monitor/config.json ${S}/monitor/config_files/iridium64/config.json
     install -d ${S}/control/config_files/iridium64
     install -m 0444 ${WORKDIR}/fans.json ${S}/control/config_files/iridium64/fans.json
     install -m 0444 ${WORKDIR}/groups.json ${S}/control/config_files/iridium64/groups.json
     install -m 0444 ${WORKDIR}/events.json ${S}/control/config_files/iridium64/events.json
     install -m 0444 ${WORKDIR}/zones.json ${S}/control/config_files/iridium64/zones.json
}

