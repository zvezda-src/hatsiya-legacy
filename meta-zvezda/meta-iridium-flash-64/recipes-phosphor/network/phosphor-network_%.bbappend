FILESEXTRAPATHS:prepend:zvezda := "${THISDIR}/${PN}:"

SRC_URI:append:zvezda = " file://0001-Static-IP-address-for-testing.patch "

do_compile:prepend:zvezda() {
	cp ${WORKDIR}/0001-Static-IP-address-for-testing.patch ${S}/src/
}
