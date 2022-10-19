FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:iridium64 = " -Dupdate-functional-on-fail=true -Dnegative-errno-on-fail=true"

SRC_URI:prepend = "file://errno_on_fail_return_zero.patch \
                 "

CHIPS = " \
        bus@1e78a000/i2c-bus@100/lm95241@19 \
        bus@1e78a000/i2c-bus@100/lm95241@2a \
        bus@1e78a000/i2c-bus@100/lm95241@2b \
        bus@1e78a000/i2c-bus@180/pca9541a@77/i2c-arb/psu@58 \
        bus@1e78a000/i2c-bus@180/pca9541a@77/i2c-arb/psu@59 \
        pwm-tacho-controller@1e786000 \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

ITEMS:append:iridium64 += " iio-hwmon-pvccin-cpu1.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvccin-cpu2.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvccio-cpu1.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvccio-cpu2.conf"
ITEMS:append:iridium64 += " iio-hwmon-vbat.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvddq-abcd-cpu1.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvddq-abcd-cpu2.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvddq-efgh-cpu1.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvddq-efgh-cpu2.conf"
ITEMS:append:iridium64 += " iio-hwmon-p1v05-pch-aux.conf"
ITEMS:append:iridium64 += " iio-hwmon-pvnn-pch-aux.conf"
ITEMS:append:iridium64 += " iio-hwmon-p1v8-pch-aux.conf"
ITEMS:append:iridium64 += " iio-hwmon-12v.conf"
ITEMS:append:iridium64 += " iio-hwmon-5v.conf"
ITEMS:append:iridium64 += " iio-hwmon-3v.conf"
ITEMS:append:iridium64 += " iio-hwmon-pgppa-aux.conf"


ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:iridium64 := "${@compose_list(d, 'ENVS', 'ITEMS')}"

PECINAMES = " \
        peci-0/0-30/peci-cputemp.0 \
        peci-0/0-30/peci-dimmtemp.0 \
        peci-0/0-31/peci-cputemp.1 \
        peci-0/0-31/peci-dimmtemp.1 \
        "
PECIITEMSFMT = "devices/platform/ahb/ahb--apb/ahb--apb--bus@1e78b000/1e78b000.peci-bus/{0}.conf"
PECIITEMS = "${@compose_list(d, 'PECIITEMSFMT', 'PECINAMES')}"
PECIENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:iridium64 = " ${@compose_list(d, 'PECIENVS', 'PECIITEMS')}"
