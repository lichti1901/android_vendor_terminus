# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/terminus/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := terminus_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY47Z/1849464:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY47Z 1849464 release-keys"

# Inherit media effect blobs
-include vendor/terminus/products/common_media_effects.mk

# Bootanimation
PRODUCT_BOOTANIMATION := vendor/terminus/proprietary/common/hammerhead/system/media/bootanimation.zip
