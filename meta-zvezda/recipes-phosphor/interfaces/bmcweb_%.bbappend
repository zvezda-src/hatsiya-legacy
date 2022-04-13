FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append = " \
     -Dredfish-bmc-journal=enabled \
     -Dredfish-cpu-log=enabled \
     -Dredfish-dump-log=enabled \
     -Dredfish-dbus-log=enabled \
     -Dredfish-host-logger=enabled \
     "
