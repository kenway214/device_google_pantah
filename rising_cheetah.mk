#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit risingOS vendor configs
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/rising/config/rising.mk)

# Call the BCR setup
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := cheetah
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := rising_cheetah

# RisingOS variables
RISING_MAINTAINER := Phoenix241
RISING_CHIPSET := GS201

# Gms variables
WITH_GMS := true

# Set Pixel launcher as default launcher
TARGET_PREBUILT_PIXEL_LAUNCHER := true

# Ship Pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true

# Use Google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true

# Ship Google Camera 
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
