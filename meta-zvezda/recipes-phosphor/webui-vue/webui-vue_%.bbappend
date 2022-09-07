FILESEXTRAPATHS:prepend:zvezda := "${THISDIR}/${PN}:"

SRC_URI:append:zvezda = " file://favicon.ico \
			  file://login-company-logo.svg \
			  file://logo-header.svg \
			  file://built-on-openbmc-logo.svg \
			  file://0001-WebUI-changes-temporary.patch \
			  file://0001-locale-virtual-media-settings.patch \
			  file://0001-power-operation-changes.patch \
			  file://0002-remote-logs-changes.patch \
			  "

do_compile:prepend:zvezda() {
	cp ${WORKDIR}/favicon.ico ${S}/public/
	cp ${WORKDIR}/login-company-logo.svg ${S}/src/assets/images/
	cp ${WORKDIR}/logo-header.svg ${S}/src/assets/images/
	cp ${WORKDIR}/built-on-openbmc-logo.svg ${S}/src/assets/images/
}

