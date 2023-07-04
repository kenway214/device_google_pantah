#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Horizondroid stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# PixelParts
include packages/apps/PixelParts/device.mk

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp-horizon_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/panther/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := aosp_panther

# Horizondroid Flags
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BUILD_VIMUSIC := true

# Horizondroid
HORIZON_BUILD_TYPE= UNOFFICIAL
HORIZON_MAINTAINER := Phoenix241

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
