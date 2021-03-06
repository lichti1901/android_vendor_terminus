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
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LVY48E/2128181:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LVY48E 2128181 release-keys"

# Inherit media effect blobs
-include vendor/terminus/products/common_media_effects.mk

# Enable tethering
PRODUCT_PROPERTY_OVERRIDES += \
net.tethering.noprovisioning=true

# Bootanimation
PRODUCT_BOOTANIMATION := vendor/terminus/proprietary/common/shamu/system/media/bootanimation.zip
