FILESEXTRAPATHS:prepend:zvezda := "${THISDIR}/${PN}:"

SRC_URI:append:zvezda = " file://encore/favicon.ico \
			  file://encore/login-company-logo.svg \
			  file://encore/logo-header.svg \
			  file://encore/built-on-openbmc-logo.svg \
			  file://0001-locale-virtual-media-settings.patch \
			  file://0002-remote-logs-changes.patch \
			  file://0003-video-recorder-changes.patch \
			  file://0004-bmc-info-changes.patch \
			  file://0005-browser-header-change.patch \
			  "

do_compile:prepend:zvezda() {
	cp ${WORKDIR}/encore/favicon.ico ${S}/public/
	cp ${WORKDIR}/encore/login-company-logo.svg ${S}/src/assets/images/
	cp ${WORKDIR}/encore/logo-header.svg ${S}/src/assets/images/
	cp ${WORKDIR}/encore/built-on-openbmc-logo.svg ${S}/src/assets/images/
}

