FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

SRC_URI:append = " file://0001-remote-logs-changes.patch \
                   file://0002-video-recorder-changes.patch \
                   file://0003-bmc-info-changes.patch \
                   file://0004-system-name-changes.patch \
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

