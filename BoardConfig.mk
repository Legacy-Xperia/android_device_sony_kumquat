USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/kumquat/BoardConfigVendor.mk


TARGET_SPECIFIC_HEADER_PATH := device/sony/kumquat/include
TARGET_SPECIFIC_HEADER_PATH += device/sony/kumquat/hardware
TARGET_SPECIFIC_HEADER_PATH += hardware/semc/bluetooth/glib
TARGET_SPECIFIC_HEADER_PATH += hardware/semc/bluetooth/bluez/lib

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := montblanc
BOARD_USES_STE_HARDWARE := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_STE := true
COMMON_GLOBAL_CFLAGS += -DSTE_BT
BOARD_BLUEDROID_VENDOR_CONF := device/sony/kumquat/hardware/bluetooth/vnd_u8500.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/kumquat/hardware/bluetooth/include

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DSTE_AUDIO
# hack for audio
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DMR1_AUDIO_BLOB
# seems needed for sink latency
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
# kitkat
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# WIFI
BOARD_WLAN_DEVICE := cw1200
WPA_SUPPLICANT_VERSION := VER_0_8_X
CONFIG_DRIVER_NL80211 := true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
USES_TI_MAC80211 := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211 -DCONFIG_DRIVER_NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := private_lib_nl80211_cmd
BOARD_HOSTAPD_PRIVATE_LIB := private_lib_nl80211_cmd

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/sony/kumquat/prebuilt/system/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DSTE_HARDWARE

# libutils backward compatibility for hals
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# jb camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# surfaceflinger support for Xperia Sola,Go...
BOARD_EGL_NEEDS_LEGACY_FB := true
COMMON_GLOBAL_CFLAGS += -DEGL_NEEDS_FNW

# Fm Radio
#BOARD_USES_STE_FM := true
#COMMON_GLOBAL_CFLAGS += -DSTE_FM

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# ril implementation
BOARD_RIL_CLASS := ../../../device/sony/kumquat/telephony-common/

# Custom boot
TARGET_PROVIDES_INIT_RC := true
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_BOOTIMG_MK := device/sony/kumquat/custombootimg.mk
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/sony/kumquat/releasetools/semc_ota_from_target_files

# Partition flags for CWM/TWRP
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# cwm specific
RECOVERY_NAME := CWM-KUMQUAT
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/sony/kumquat/recovery/recovery-keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"lucidaconsole_10x18.h\"
TARGET_RECOVERY_FSTAB = device/sony/kumquat/prebuilt/root/fstab.st-ericsson
RECOVERY_FSTAB_VERSION := 2

# uncoment to enable back button in cwm (only if you commented XPERIA_CWM_TOUCH)
#BOARD_HAS_NO_SELECT_BUTTON := true
# coment this if you no want xperia touch enabled cwm
COMMON_GLOBAL_CFLAGS += -DXPERIA_CWM_TOUCH

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun%d/file"

# Kernel information
TARGET_KERNEL_CONFIG := xperiau_defconfig
TARGET_KERNEL_SOURCE := kernel/sony/u8500
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_BASE := 0x40200000
BOARD_RECOVERY_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := cachepolicy=writealloc noinitrd init=init board_id=1 logo.nologo root=/dev/ram0 rw rootwait console=null androidboot.console=null androidboot.hardware=st-ericsson mem=96M@0 mem_mtrace=15M@96M mem_mshared=1M@111M mem_modem=16M@112M mem=32M@128M mem_issw=1M@160M hwmem=71M@161M mem=280M@232M mpcore_wdt.mpcore_margin=359 end
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 16

# partition size is dec=16777216 hex=01000000 so 0x01000000 is correct one!
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATA_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

COMMON_GLOBAL_CFLAGS += -DNEW_NOTIFICATION

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p14

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST25i_1262-1120 BUILD_FINGERPRINT=SEMC/ST25i_1262-1120/ST25i:4.0.4/6.1.1.B.1.10/9bt3zw:user/release-keys PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.10 9bt3zw test-keys"

TARGET_OTA_ASSERT_DEVICE := ST25i,ST25a,kumquat
