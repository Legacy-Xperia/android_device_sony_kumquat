$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_kumquat
PRODUCT_DEVICE := kumquat
