FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

PACKAGECONFIG:append:iridium64 += "dynamic-sensors"

SRC_URI:append = " file://0001-fru-edit-changes.patch \
			  "

