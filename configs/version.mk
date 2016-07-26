# Versioning System
PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 6
ifdef MALLOW_BUILD_EXTRA
    MALLOW_POSTFIX := -$(MALLOW_BUILD_EXTRA)
endif
ifndef MALLLOW_BUILD_TYPE
    MALLOW_BUILD_TYPE := STABLE
    MALLOW_POSTFIX := $(shell date +"%Y%m%d-%H%M")
endif

MALLOW_DEVICE_SHORT := $(MALLOW_DEVICE)
MALLOW_DEVICE_SHORT := $(subst mallow_,,$(MALLOW_DEVICE_SHORT))

# Set all versions
MALLOW_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(MALLOW_BUILD_TYPE)-$(MALLOW_POSTFIX)
MALLOW_MOD_VERSION := mallow-$(MALLOW_DEVICE_SHORT)-$(MALLOW_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.ota.version=$(PRODUCT_VERSION_MAJOR)-$(MALLOW_POSTFIX) \
    ro.mallow.version=$(MALLOW_VERSION) \
    ro.modversion=$(MALLOW_MOD_VERSION) \
    ro.mallow.buildtype=$(MALLOW_BUILD_TYPE)

# DragonTC info
DRAGONTC_VERSION := 4.0
export $(DRAGONTC_VERSION)

DTC_PATH := prebuilts/clang/linux-x86/host/$(DRAGONTC_VERSION)
DTC_VER := $(shell cat $(DTC_PATH)/VERSION)
export $(DTC_VER)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dtc.version=$(DTC_VER)
