echo 'Starting to clone stuffs needed to build for cheetah'

# pixel_parts
echo 'Cloning pixelparts'
git clone https://github.com/Evolution-X-Devices/packages_apps_PixelParts.git -b udc packages/apps/PixelParts

rm -rf device/google/pantah/vendorsetup.sh