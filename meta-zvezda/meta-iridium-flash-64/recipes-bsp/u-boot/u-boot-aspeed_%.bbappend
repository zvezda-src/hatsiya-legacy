FILESEXTRAPATHS:prepend:iridium := "${THISDIR}/${PN}:"
SRC_URI:append:iridium = " file://0001-Change-settings-for-use-64MiB-image.patch \
			   file://0002-Set-default-ip-address.patch \
			"
