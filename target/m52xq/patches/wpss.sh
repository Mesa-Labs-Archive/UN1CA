#====================================================
# FILE:         wpss.sh
# AUTHOR:       Simon1511
# DESCRIPTION:  Add support for all the bootloader
#               revisions
#====================================================

set -e

# [
SRC_DIR="$(git rev-parse --show-toplevel)"
OUT_DIR="$SRC_DIR/out"
WORK_DIR="$OUT_DIR/work_dir"
# ]

echo "Add custom wpss firmware mount"

[[ -d "$WORK_DIR/vendor/firmware/wlan/m526b" ]] && exit 0

cp -a --preserve=all "$SRC_DIR/target/m52xq/patches/wpss/"* "$WORK_DIR/vendor"
{
    echo "/vendor/etc/init/wifi_firmware\.rc u:object_r:vendor_configs_file:s0"
    echo "/vendor/firmware/wpss\.b00 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b02 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b03 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b04 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b05 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b06 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.b07 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b00 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b02 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b03 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b04 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b05 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b06 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.b07 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev2/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b00 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b02 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b03 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b04 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b05 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b06 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.b07 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526b/rev3/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev1 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev1/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev1/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev2 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev2/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev2/wpss\.mdt u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev3 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev3/wpss\.b01 u:object_r:vendor_firmware_file:s0"
    echo "/vendor/firmware/wlan/m526br/rev3/wpss\.mdt u:object_r:vendor_firmware_file:s0"
} >> "$WORK_DIR/configs/file_context-vendor"
{
    echo "vendor/etc/init/wifi_firmware.rc 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b00 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b02 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b03 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b04 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b05 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b06 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.b07 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wpss.mdt 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b00 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b02 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b03 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b04 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b05 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b06 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.b07 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev2/wpss.mdt 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b00 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b02 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b03 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b04 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b05 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b06 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.b07 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526b/rev3/wpss.mdt 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev1 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev1/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev1/wpss.mdt 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev2 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev2/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev2/wpss.mdt 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev3 0 2000 755 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev3/wpss.b01 0 0 644 capabilities=0x0"
    echo "vendor/firmware/wlan/m526br/rev3/wpss.mdt 0 0 644 capabilities=0x0"
} >> "$WORK_DIR/configs/fs_config-vendor"
echo "(allow init_30_0 vendor_firmware_file (file (mounton)))" >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"

exit 0
