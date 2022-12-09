FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

inherit obmc-phosphor-systemd
SYSTEMD_SERVICE:${PN}:iridium64 = "phosphor-pid-control.service"
EXTRA_OECONF:iridium64 = "--enable-configure-dbus=yes"
