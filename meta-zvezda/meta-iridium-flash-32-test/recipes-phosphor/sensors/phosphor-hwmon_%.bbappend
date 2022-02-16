FILESEXTRAPATHS:prepend:iridium := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:iridium = " -Dnegative-errno-on-fail=true"

CHIPS = " \
        bus@1e78a000/i2c-bus@100/lm95241@19 \
        bus@1e78a000/i2c-bus@100/lm95241@2a \
        bus@1e78a000/i2c-bus@100/lm95241@2b \
        pwm-tacho-controller@1e786000 \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

ITEMS += "iio-hwmon.conf"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:iridium := "${@compose_list(d, 'ENVS', 'ITEMS')}"

