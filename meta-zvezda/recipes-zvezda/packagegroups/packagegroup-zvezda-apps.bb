SUMMARY = "OpenBMC for Zvezda - Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
        ${PN}-extras \
        ${PN}-fans \
        ${PN}-flash \
        ${PN}-system \
        "
PROVIDES += "virtual/obmc-chassis-mgmt"
PROVIDES += "virtual/obmc-fan-mgmt"
PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES:${PN}-chassis += "virtual-obmc-chassis-mgmt"
RPROVIDES:${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES:${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES:${PN}-system += "virtual-obmc-system-mgmt"

SUMMARY:${PN}-chassis = "Zvezda Chassis"
RDEPENDS:${PN}-chassis = " \
        pwr-ctrl \                
        "

SUMMARY:${PN}-fans = "Zvedza Fans"
RDEPENDS:${PN}-fans = ""

SUMMARY:${PN}-flash = "Zvezda Flash"
RDEPENDS:${PN}-flash = " \
        phosphor-software-manager \
        "

SUMMARY:${PN}-system = "Zvezda System"
RDEPENDS:${PN}-system = " \
	phosphor-hwmon \
	webui-vue \
	libpeci \
        entity-manager \
        fan-control \
        set-gpios \
        set-version \
        boardinfo \
        ipmitool \
        phosphor-hostlogger \
        phosphor-sel-logger \
        phosphor-post-code-manager \
        phosphor-host-postd \
        intel-ipmi-oem \
        snmpctl \
        msmtp \
        peci-pcie \
        smbios-mdr \
        phosphor-misc-http-redirect-awk \
        iio-hwmon \
        "
