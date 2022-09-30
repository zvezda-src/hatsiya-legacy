FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

#EXTRA_OEMESON:iridium64 += "-Dchassis-system-reset=enabled"
#EXTRA_OEMESON:iridium64 += "-Duse-acboot=enabled"

SRC_URI:append:iridium64 = " file://enable_power_reset_button.patch \
			      file://disable_sio_lines.patch \
	"
