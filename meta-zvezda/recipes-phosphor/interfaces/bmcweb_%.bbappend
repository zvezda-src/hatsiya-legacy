FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

SRC_URI:append = " file://0001-remote-logs-changes.patch \
			  "

EXTRA_OEMESON:append = " \
     -Dredfish-bmc-journal=enabled \
     -Dredfish-cpu-log=enabled \
     -Dredfish-dump-log=enabled \
     -Dredfish-host-logger=enabled \
     "

#     -Dredfish-dbus-log=enabled \
#

DEPENDS += " \ 
        boost \
        sdbusplus \
        phosphor-logging \
        phosphor-snmp \
        "

