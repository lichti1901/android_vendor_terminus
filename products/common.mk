# Generic product
PRODUCT_NAME := terminus
PRODUCT_BRAND := terminus
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything
    
# Launcher3 supported devices
ifneq ($(filter terminus_mako terminus_hammerhead terminus_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    Launcher3
# Auto-rotate
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/terminus/overlay/Launcher3
endif

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/terminus/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# STK: overlay common to all devices with telephony
ifneq ($(filter terminus_mako terminus_hammerhead terminus_shamu,$(TARGET_PRODUCT)),)
# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk
endif

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/terminus/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Ad blocker
PRODUCT_COPY_FILES += \
    vendor/terminus/prebuilt/common/etc/hosts.alt:system/etc/hosts.alt \
    vendor/terminus/prebuilt/common/etc/hosts.og:system/etc/hosts.og

# stock ui sounds
PRODUCT_COPY_FILES += \
    vendor/terminus/proprietary/common/system/media/audio/ui/audio_end.ogg:system/media/audio/ui/audio_end.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/audio_initiate.ogg:system/media/audio/ui/audio_initiate.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/NFCFailure.ogg:system/media/audio/ui/NFCFailure.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/NFCInitiated.ogg:system/media/audio/ui/NFCInitiated.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/NFCSuccess.ogg:system/media/audio/ui/NFCSuccess.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/NFCTransferComplete.ogg:system/media/audio/ui/NFCTransferComplete.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/NFCTransferInitiated.ogg:system/media/audio/ui/NFCTransferInitiated.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Trusted.ogg:system/media/audio/ui/Trusted.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/VideoStop.ogg:system/media/audio/ui/VideoStop.ogg \
    vendor/terminus/proprietary/common/system/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg
