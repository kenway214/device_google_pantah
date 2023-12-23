#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# PixelParts
include packages/apps/PixelParts/device.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# GAPPS
WITH_GMS := true
WITH_GAPPS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Debugging
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := true

#Matrixx Maintainer Info
MATRIXX_MAINTAINER := Kenway
MATRIXX_CHIPSET := Tensor G2
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 3120x1440
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
