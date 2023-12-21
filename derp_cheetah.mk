#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Derpfest stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# PixelParts
include packages/apps/PixelParts/device.mk

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := derp_cheetah

TARGET_GAPPS_ARCH := arm64
WITH_GMS := true
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
DERP_BUILDTYPE := UNOfficial
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_7 := true
TARGET_PIXEL_STAND_SUPPORTED = true
TARGET_FACE_UNLOCK_SUPPORTED = true

# Enable quick tap
TARGET_SUPPORTS_QUICK_TAP := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
