## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ef39s

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef39s/device_ef39s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef39s
PRODUCT_NAME := full_ef39s
PRODUCT_BRAND := Pantech
PRODUCT_MODEL := SKY IM-A800S
PRODUCT_MANUFACTURER := Pantech
