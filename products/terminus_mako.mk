# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/terminus/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := terminus_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# FIngerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:5.0.2/LRX22G/1649326:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 5.0.2 LRX22G 1649326 release-keys"

# Inherit media effect blobs
-include vendor/terminus/products/common_media_effects.mk
