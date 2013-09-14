## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := s4502m

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/dns/s4502m/s4502m.mk)

TARGET_BOOTANIMATION_NAME := vertical-540x960

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4502m
PRODUCT_NAME := cm_s4502m
PRODUCT_BRAND := DNS
PRODUCT_MODEL := S4502M
PRODUCT_MANUFACTURER := DNS
PRODUCT_RELEASE_NAME := S4502M
