# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit some common stuff
$(call inherit-product, vendor/nougat/config/common.mk)

# Inherit some phone stuff
$(call inherit-product, vendor/nougat/config/common_full_phone.mk)

# Override build properties

PRODUCT_NAME := nougat_angler
PRODUCT_BRAND := Google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Device fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 7.0 NBD91K 3318877 release-keys" \
    BUILD_FINGERPRINT=google/angler/angler:7.0/NBD91K/3318877:user/release-keys

