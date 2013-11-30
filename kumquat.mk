#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit the proprietary counterpart
$(call inherit-product-if-exists, vendor/sony/kumquat/kumquat-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/kumquat/overlay

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Hostapd
PRODUCT_PACKAGES += \
    hostapd_cli \
    hostapd

# Netlink
PRODUCT_PACKAGES += \
    libnl_2

# Dbus
PRODUCT_PACKAGES += \
    libdbus

# lib_net_iface_cmd
PRODUCT_PACKAGES += \
    libnetcmdiface

# Glib
PRODUCT_PACKAGES += \
    libglib

# Hcidump
PRODUCT_PACKAGES += \
    hcidump

# Libasound
PRODUCT_PACKAGES += \
    libasound

# Bluez
PRODUCT_PACKAGES += \
    sap \
    libsap_pts \
    bluetoothd \
    hstest \
    l2test \
    rctest \
    scotest \
    agent \
    attest \
    avtest \
    bdaddr \
    lmptest \
    sdptest \
    hidpts \
    avinfo \
    hciconfig \
    hcitool \
    l2ping \
    hciattach \
    rfcomm \
    btiotest

# BT A2DP
PRODUCT_PACKAGES += \
    libasound_module_ctl_bluetooth \
    libasound_module_pcm_bluetooth

# libbt-vendor
PRODUCT_PACKAGES += \
    libbt-vendor

# bluedroid, a2dp, BluetoothExt
PRODUCT_PACKAGES += \
    bluetooth.default \
    audio.a2dp.default \
    BluetoothExt

# libaudioparameter
PRODUCT_PACKAGES += \
    libaudioparameter

# light package
PRODUCT_PACKAGES += \
    lights.montblanc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Fmradio
#PRODUCT_PACKAGES += \
#    FmRadioReceiver

# b2r2lib
PRODUCT_PACKAGES += \
    libblt_hw

# libomxil-bellagio
PRODUCT_PACKAGES += \
    libomxil-bellagio

# libtinyalsa & audio.usb.default
PRODUCT_PACKAGES += \
    tinyalsa \
    libtinyalsa \
    audio_policy.default \
    audio.usb.default
	
# WiFi config utility
PRODUCT_PACKAGES += \
    iw

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/dbus.conf:system/etc/dbus.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/sysmon.cfg:system/etc/sysmon.cfg \
    $(LOCAL_PATH)/prebuilt/system/etc/dash.conf:system/etc/dash.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/hw_config.sh:system/etc/hw_config.sh \
    $(LOCAL_PATH)/prebuilt/system/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/init.d/01stesetup:system/etc/init.d/01stesetup \
    $(LOCAL_PATH)/prebuilt/system/etc/init.d/10dhcpcd:system/etc/init.d/10dhcpcd \
    $(LOCAL_PATH)/prebuilt/system/etc/init.d/10hostapd:system/etc/init.d/10hostapd \
    $(LOCAL_PATH)/prebuilt/system/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel \
    $(LOCAL_PATH)/prebuilt/system/media/LMprec_508.emd:system/media/LMprec_508.emd \
    $(LOCAL_PATH)/prebuilt/system/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Custom init / uevent
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/prebuilt/root/fstab.st-ericsson:root/fstab.st-ericsson \
    $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.rc:root/init.st-ericsson.rc \
    $(LOCAL_PATH)/prebuilt/root/ueventd.st-ericsson.rc:root/ueventd.st-ericsson.rc

# Recovery bootstrap script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec:root/sbin/bootrec \
    $(LOCAL_PATH)/recovery/usbid_init.sh:root/sbin/usbid_init.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:root/sbin/postrecoveryboot.sh


# HW Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/omxloaders:system/etc/omxloaders \
    $(LOCAL_PATH)/prebuilt/system/etc/ril_config:system/etc/ril_config \
    $(LOCAL_PATH)/prebuilt/system/bin/install_wlan:system/bin/install_wlan \
    $(LOCAL_PATH)/prebuilt/system/etc/ste_modem.sh:system/etc/ste_modem.sh



# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilt/system/etc/suplcert/cacert.txt:system/etc/suplcert/cacert.txt

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Ramdisk scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.device.rc:root/init.st-ericsson.device.rc \
   $(LOCAL_PATH)/prebuilt/logo-480x854.rle:root/logo.rle

# fake script needed for recovery
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh

# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/root/init.st-ericsson.usb.rc:root/init.st-ericsson.usb.rc

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/AB8500_Hs_Button.kl:system/usr/keylayout/AB8500_Hs_Button.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/simple_remote_appkey.kl:system/usr/keylayout/simple_remote_appkey.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/cyttsp_key.kl:system/usr/keylayout/cyttsp_key.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/STMPE-keypad.kl:system/usr/keylayout/STMPE-keypad.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/tc3589x-keypad.kl:system/usr/keylayout/tc3589x-keypad.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/ux500-ske-keypad.kl:system/usr/keylayout/ux500-ske-keypad.kl.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/keylayout/ux500-ske-keypad-qwertz.kl:system/usr/keylayout/ux500-ske-keypad-qwertz.kl \
   $(LOCAL_PATH)/prebuilt/system/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
   $(LOCAL_PATH)/prebuilt/system/usr/idc/synaptics_rmi4_i2c.idc:system/usr/idc/synaptics_rmi4_i2c.idc \
   $(LOCAL_PATH)/prebuilt/system/usr/idc/sensor00_f11_sensor0.idc:system/usr/idc/sensor00_f11_sensor0.idc

# Misc configuration files
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/etc/cflashlib.cfg:system/etc/cflashlib.cfg \
   $(LOCAL_PATH)/prebuilt/system/etc/flashled_param_config.cfg:system/etc/flashled_param_config.cfg

# Vendor libs
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
   $(LOCAL_PATH)/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   $(LOCAL_PATH)/prebuilt/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
   $(LOCAL_PATH)/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

# Bootanimation
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/../../../vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

# patched JB cn_binary needed for mobile network for CM10.2 only
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/prebuilt/system/bin/cn_server:system/bin/cn_server

# Copy the Bluetooth permissions file. The permissions file also enables Bluetooth menu in Settings?
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Barometar permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml

# This device is mdpi.  However the platform doesn't
# currently contain all of the bitmaps at mdpi density so
# we do this little trick to fall back to the mdpi version
# if the mdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/sony/kumquat/kumquat-vendor.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    sys.mem.max_hidden_apps=10 \
    persist.sys.usb.config=mtp \
    wifi.interface=wlan0 \
    ro.sf.lcd_density=240

#512MB ram devices(https://source.android.com/devices/low-ram.html)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true
