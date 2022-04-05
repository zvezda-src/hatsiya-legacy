OBMC_MACHINE_FEATURES += "\
        obmc-bmc-state-mgmt \
        obmc-chassis-state-mgmt \
        obmc-host-ipmi \
        obmc-host-state-mgmt \
        obmc-phosphor-chassis-mgmt \
        obmc-phosphor-fan-mgmt \
        obmc-phosphor-flash-mgmt \
        "

VIRTUAL-RUNTIME_skeleton_workbook = "${MACHINE}-config"
VIRTUAL-RUNTIME_obmc-host-state-manager ?= "pwr-ctrl"
VIRTUAL-RUNTIME_obmc-chassis-state-manager ?= "pwr-ctrl"


PREFERRED_PROVIDER:virtual/obmc-chassis-mgmt = "packagegroup-zvezda-apps"
PREFERRED_PROVIDER:virtual/obmc-fan-mgmt = "packagegroup-zvezda-apps"
PREFERRED_PROVIDER:virtual/obmc-flash-mgmt = "packagegroup-zvezda-apps"
PREFERRED_PROVIDER:virtual/obmc-inventory-data ?= "${VIRTUAL-RUNTIME_skeleton_workbook}"
PREFERRED_PROVIDER:virtual/obmc-system-mgmt = "packagegroup-zvezda-apps"

OVERRIDES .= ":zvezda"
