echo 'Starting to clone stuffs needed to build for Spartan'

# Kernel
echo 'Cloning kernel tree [1/3]'
rm -rf kernel/realme/sm8250 && git clone --depth=1 https://github.com/rohanvirus/android_kernel_realme_sm8250 -b lineage-20 kernel/realme/sm8250

# Vendor
echo 'vendor tree [2/3]'
rm -rf vendor/realme/spartan && git clone https://github.com/rohanvirus/proprietary_vendor_realme_spartan -b 13 vendor/realme/spartan

# Hardware
echo 'Cloning hardware realme [3/3]'
rm -rf hardware/oplus && git clone https://github.com/RealmeGTNeo3T-Devs/android_hardware_oplus -b 13 hardware/oplus

# Brightness fix
cd frameworks/base
wget https://github.com/DerpFest-AOSP/frameworks_base/commit/0f70b4190d69b48e510a67bdc3bdf6a83ac009eb.patch
patch -p1 <0f70b4190d69b48e510a67bdc3bdf6a83ac009eb.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'