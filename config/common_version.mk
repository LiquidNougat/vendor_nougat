# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=N2G47J BUILD_ID=N2G47J BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

# ROM name
ROM_NAME := liquid_nougat
export ROM_NAME

ROM_DATE := $(shell date +%Y%m%d-%H%M)
ROM_VERSION := $(ROM_DATE)-$(TARGET_DEVICE)
export ROM_VERSION

PRODUCT_PROPERTY_OVERRIDES += \
  ro.nougat.version=$(ROM_NAME)-$(ROM_VERSION) \
  ro.modversion=$(ROM_NAME)-$(ROM_VERSION)

