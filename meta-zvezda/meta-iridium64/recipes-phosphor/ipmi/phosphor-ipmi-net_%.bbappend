ALT_RMCPP_IFACE:iridium64 = "eth1"
SYSTEMD_SERVICE:${PN}:append:iridium64 += " \
    ${PN}@${ALT_RMCPP_IFACE}.service \
    ${PN}@${ALT_RMCPP_IFACE}.socket \
    "
