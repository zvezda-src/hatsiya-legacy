FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

SRC_URI:append:iridium64 = " file://0001-Static-IP-address-for-testing.patch "

do_compile:prepend:iridium64() {
	cp ${WORKDIR}/0001-Static-IP-address-for-testing.patch ${S}/src/
}
