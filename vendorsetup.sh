echo 'Starting to clone stuffs needed to build for cheetah'

# Device common
echo 'Cloning common device tree'

git clone https://github.com/kenway214/device_google_gs201.git -b blaze-14 device/google/gs201
git clone https://github.com/kenway214/device_google_gs101.git -b blaze-14 device/google/gs101
git clone https://github.com/kenway214/device_google_gs-common.git -b derp-14 device/google/gs-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 --recursive https://github.com/kenway214/kernel_google_gs201.git -b lineage-21-ksu kernel/google/gs201/private/gs-google

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/kenway214/proprietary_vendor_google_cheetah.git -b aosp-14 vendor/google/cheetah

# pixel_parts
echo 'Cloning pixelparts'
git clone https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b udc packages/apps/PixelParts

# BCR
echo 'Cloning bcr'
git clone --depth=1 https://github.com/Evolution-X/vendor_bcr.git -b udc vendor/bcr

# VoNR
echo 'Add Kernel Patch'
cd vendor/blaze
wget https://github.com/kenway214/vendor_blaze/commit/1e9149c1e4648be0a40d537e2e7684da23ab1263.patch
patch -p1 <1e9149c1e4648be0a40d537e2e7684da23ab1263.patch
cd ../..

rm -rf system/core && git clone https://github.com/banana-cheetah/blaze_system_core.git -b 14 system/core

rm -rf device/google/pantah/vendorsetup.sh