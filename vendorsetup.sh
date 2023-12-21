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

rm -rf device/google/pantah/vendorsetup.sh
