## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := S89

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/IMO/S89/device_S89.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := S89
PRODUCT_NAME := cm_S89
PRODUCT_BRAND := IMO
PRODUCT_MODEL := S89
PRODUCT_MANUFACTURER := IMO
