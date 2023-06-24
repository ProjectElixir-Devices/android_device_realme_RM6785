# nuke
rm -rf device/realme/RM6785
rm -rf vendor/realme
rm -rf kernel/realme/mt6785
rm -rf realme/realme-firmware
rm -rf device/mediatek/sepolicy_vndr
rm -rf hardware/mediatek 

# DT
git clone https://github.com/ProjectElixir-Devices/android_device_realme_RM6785 -b 13.0 device/realme/RM6785
# vendor
git clone https://github.com/realme-mt6785-devs/proprietary_vendor_realme.git vendor/realme
# Kernel
git clone https://github.com/realme-mt6785-devs/android_kernel_realme_mt6785.git kernel/realme/mt6785
# realme-firmware
git clone https://github.com/realme-mt6785-devs/proprietary_vendor_realme-firmware realme/realme-firmware
# mediatek/sepolicy_vndr
git clone https://github.com/realme-mt6785-devs/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
# RM6785-kernel
git clone https://github.com/realme-mt6785-devs/android_device_realme_RM6785-kernel.git device/realme/RM6785-kernel
# hardware/mediatek
git clone https://github.com/realme-mt6785-devs/android_hardware_mediatek hardware/mediatek

# patch for external/faceunlock
cd external/faceunlock && wget https://pastebin.com/raw/EbesA2Wm && patch -p1  < EbesA2Wm

#patch for brightness slider 
cd frameworks/base && wget https://raw.githubusercontent.com/sarthakroy2002/random-stuff/main/Patches/Fix-brightness-slider-curve-for-some-devices-a12l.patch
patch -p1 < *.patch && cd -
