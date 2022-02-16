FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
KERNEL_VERSION_SANITY_SKIP="1"
SRC_URI += "\
        file://aspeed-bmc-zvezda-iridium32.dts \
        file://iridium32.cfg \
        "

do_patch:append(){
        for DTB in "${KERNEL_DEVICETREE}"; do
                DT=`basename ${DTB} .dtb`
                if [ -r "${WORKDIR}/${DT}.dts" ]; then
                        echo "debug: ${STAGING_KERNEL_DIR}"
                        cp ${WORKDIR}/aspeed-bmc-zvezda-iridium32.dts \
                                ${STAGING_KERNEL_DIR}/arch/${ARCH}/boot/dts
                fi
        done
}
