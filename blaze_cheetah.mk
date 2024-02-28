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
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah
PRODUCT_MANUFACTURER := Google

# PixelParts
include packages/apps/PixelParts/device.mk

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# Define bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blurs
TARGET_SUPPORTS_BLUR := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
