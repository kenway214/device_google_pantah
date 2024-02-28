#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Blaze stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Blaze Specific
BLAZE_MAINTAINER := Phoenix241
WITH_GAPPS := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/panther/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := panther
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := blaze_panther
PRODUCT_MANUFACTURER := Google

# Define bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# PixelParts
include packages/apps/PixelParts/device.mk

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blurs
TARGET_SUPPORTS_BLUR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
