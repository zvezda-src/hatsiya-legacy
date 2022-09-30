SUMMARY = "OpenBMC for Zvezda - Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
        ${PN}-chassis \
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
	x86-power-control \
	obmc-host-failure-reboots \ 
        "

SUMMARY:${PN}-fans = "Zvedza Fans"
RDEPENDS:${PN}-fans = " \
	"

SUMMARY:${PN}-flash = "Zvezda Flash"
RDEPENDS:${PN}-flash = " \
        phosphor-software-manager \
        "

SUMMARY:${PN}-system = "Zvezda System"
RDEPENDS:${PN}-system = " \
	phosphor-hwmon \
	webui-vue \
	libpeci \
	button-ctrl \
	entity-manager \
	boardinfo \
	ipmitool \
	phosphor-hostlogger \
	phosphor-sel-logger \
	phosphor-post-code-manager \
	phosphor-host-postd \
	phosphor-ipmi-host \
	phosphor-ipmi-ipmb \
	snmpctl \
	msmtp \
	peci-pcie \
	smbios-mdr \
	phosphor-misc-http-redirect-awk \
	iio-hwmon \
	phosphor-power-systemd-links-monitor \
	phosphor-power-utils \
	phosphor-power \
	phosphor-power-psu-monitor \
	        "
