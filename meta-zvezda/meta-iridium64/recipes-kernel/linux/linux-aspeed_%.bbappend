FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
KERNEL_VERSION_SANITY_SKIP="1"
SRC_URI += "\
        file://aspeed-bmc-zvezda-iridium64.dts \
        file://openbmc-flash-layout-64.dtsi \
	file://iridium64.cfg \
    	file://0001-pass-through-modifications-for-GPIOD-group.patch \
	"

do_patch:append(){
        for DTB in "${KERNEL_DEVICETREE}"; do
                DT=`basename ${DTB} .dtb`
                if [ -r "${WORKDIR}/${DT}.dts" ]; then
                        echo "debug: ${STAGING_KERNEL_DIR}"
                        cp ${WORKDIR}/aspeed-bmc-zvezda-iridium64.dts \
                                ${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts
                        cp ${WORKDIR}/openbmc-flash-layout-64.dtsi \
				${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts
                fi
        done
}
