# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# UBER property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=20 \
    pm.sleep.mode=1 \
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
    ro.adb.secure=1 \
    ro.substratum.verified=true

# APN config
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup script
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/nougat/prebuilt/addon.d/50-nougat.sh:system/addon.d/50-nougat.sh \
    vendor/nougat/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Gestures libraries
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/nougat/prebuilt/lib64/libjni_keyboarddecoder.so:system/lib64/libjni_keyboarddecoder \
    vendor/nougat/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so

# Init.d support
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/bin/sysinit:system/bin/sysinit

# Ramdisk config
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/etc/init.nougat.rc:root/init.nougat.rc \
    vendor/nougat/prebuilt/etc/init.special.sh:root/init.special.sh

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/etc/init.d/99supersu:system/etc/init.d/99supersu \
    vendor/nougat/prebuilt/addon.d/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip

# Userinit support
PRODUCT_COPY_FILES += \
    vendor/nougat/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Include packages
PRODUCT_PACKAGES += \
    AOSPLinks \
    Busybox \
    Gallery2 \
    Launcher3 \
    masquerade

# Exclude SystemUI tests
EXCLUDE_SYSTEMUI_TESTS := true

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/nougat/overlay/common

# Inherit build prop overrides
-include vendor/nougat/config/common_version.mk

# Squisher script
SQUISHER_SCRIPT := vendor/nougat/tools/squisher
