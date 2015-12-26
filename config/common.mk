# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true

# Other property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=20 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.substratum.verified=true \
    ro.opa.eligible_device=true \
    ro.adb.secure=1

# APN config
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera effects
ifneq ($(filter nougat_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/nougat/prebuilt/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/nougat/prebuilt/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# Included packages
PRODUCT_PACKAGES += \
    Busybox \
    ThemeInterfacer

# Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Prebuilt packages
PRODUCT_PACKAGES += \
    NexusLauncher \
    Substratum \
    Turbo

# Exclude SystemUI tests
EXCLUDE_SYSTEMUI_TESTS := true

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/nougat/overlay/common

# Inherit build prop overrides
-include vendor/nougat/config/common_version.mk

# Squisher Location
SQUISHER_SCRIPT := vendor/nougat/tools/squisher
