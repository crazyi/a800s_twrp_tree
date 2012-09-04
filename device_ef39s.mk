$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef39s/ef39s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef39s/overlay

LOCAL_PATH := device/pantech/ef39s
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ef39s
PRODUCT_DEVICE := ef39s
PRODUCT_MODEL := SKY IM-A800S
PRODUCT_MANUFACTURER := Pantech
PRODUCT_COPY_FILES := device/pantech/ef39s/runatboot.sh:recovery/root/sbin/runatboot.sh
