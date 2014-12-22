# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/terminus/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := terminus_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.0.2/LRX22G/1602158:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.0.2 LRX22G 1602158 release-keys"

# Inherit media effect blobs
-include vendor/terminus/products/common_media_effects.mk

# Enable tethering
PRODUCT_PROPERTY_OVERRIDES += \
net.tethering.noprovisioning=true
