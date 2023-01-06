FILESEXTRAPATHS:prepend:zvezda := "${THISDIR}/${PN}:"

SRC_URI:append:zvezda = " file://zvezda/favicon.ico \
			  file://zvezda/login-company-logo.svg \
			  file://zvezda/logo-header.svg \
			  file://zvezda/built-on-openbmc-logo.svg \
			  file://0001-locale-virtual-media-settings.patch \
			  file://0002-remote-logs-changes.patch \
			  file://0003-video-recorder-changes.patch \
			  file://0004-bmc-info-changes.patch \
			  file://0005-browser-header-change.patch \
			  "

do_compile:prepend:zvezda() {
	cp ${WORKDIR}/zvezda/favicon.ico ${S}/public/
	cp ${WORKDIR}/zvezda/login-company-logo.svg ${S}/src/assets/images/
	cp ${WORKDIR}/zvezda/logo-header.svg ${S}/src/assets/images/
	cp ${WORKDIR}/zvezda/built-on-openbmc-logo.svg ${S}/src/assets/images/
}

