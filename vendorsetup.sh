echo 'Starting to clone stuffs needed to build for cheetah'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/kenway214/device_google_gs201.git -b derp-14 device/google/gs201
git clone https://github.com/kenway214/device_google_gs101.git -b derp-14 device/google/gs101
git clone https://github.com/kenway214/device_google_gs-common.git -b derp-14 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 --recursive https://github.com/kenway214/kernel_google_gs201.git -b lineage-21 kernel/google/gs201/private/gs-google

# Vendor
echo 'Cloning vendor tree'
git clone https://gitlab.com/pixel_cheetah/vendor_google_cheetah.git -b lineage-21 vendor/google/cheetah

# pixel_parts
echo 'Cloning hardware xiaomi'
git clone https://github.com/kenway214/packages_apps_PixelParts.git -b lineage-21 packages/apps/PixelParts

# BCR
echo 'Cloning bcr'
git clone --depth=1 https://github.com/kenway214/vendor_bcr.git -b main vendor/bcr

rm -rf hardware/google/pixel && git clone https://github.com/LineageOS/android_hardware_google_pixel -b lineage-21.0 hardware/google/pixel

rm -rf hardware/google/graphics/common && git clone https://github.com/LineageOS/android_hardware_google_graphics_common -b lineage-21.0 hardware/google/graphics/common

rm -rf hardware/google/pixel-sepolicy && git clone https://github.com/LineageOS/android_hardware_google_pixel-sepolicy -b lineage-21.0 hardware/google/pixel-sepolicy

rm -rf hardware/google/gchips && git clone https://github.com/LineageOS/android_hardware_google_gchips -b lineage-21.0 hardware/google/gchips

rm -rf system/core && git clone https://github.com/kenway214/derp_system_core.git -b 14-pixel system/core

rm -rf device/derp/sepolicy && git clone https://github.com/kenway214/device_derp_sepolicy.git -b 14-pixel device/derp/sepolicy

rm -rf vendor/google/pixel && git clone https://gitlab.com/pixel_cheetah/derp_vendor_google_pixel.git -b 14-pixel vendor/google/pixel

rm -rf device/google/pantah/vendorsetup.sh
