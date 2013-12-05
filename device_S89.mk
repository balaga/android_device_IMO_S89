$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/IMO/S89/S89-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/IMO/S89/overlay

LOCAL_PATH := device/IMO/S89
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sec.ko:recovery/root/sec.ko 

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_S89
PRODUCT_DEVICE := S89
