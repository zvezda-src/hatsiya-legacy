FILESEXTRAPATHS:prepend:iridium64 := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:iridium64 = " -Dnegative-errno-on-fail=true"

CHIPS = " \
        bus@1e78a140/i2c-bus@140/lm95241@32 \
        bus@1e78a140/i2c-bus@140/lm95241@54 \
        bus@1e78a140/i2c-bus@140/lm95241@56 \
        pwm-tacho-controller@1e786000 \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

ITEMS += "iio-hwmon.conf"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:iridium64 := "${@compose_list(d, 'ENVS', 'ITEMS')}"

