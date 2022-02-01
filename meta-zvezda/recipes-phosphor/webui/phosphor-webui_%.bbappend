FILESEXTRAPATHS:prepend:zvezda := "${THISDIR}/${PN}:"

SRC_URI:append:zvezda = " file://favicon.ico \
			  file://logo.svg \
			  file://0001-Visual-changes.patch \
			  "

do_compile:prepend:zvezda() {
	cp ${WORKDIR}/favicon.ico ${S}/app/assets/images/
	cp ${WORKDIR}/logo.svg ${S}/app/assets/images/
}
