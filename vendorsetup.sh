# nuke
rm -rf device/realme/RM6785
rm -rf vendor/realme
rm -rf kernel/realme/mt6785
rm -rf realme/realme-firmware
rm -rf device/mediatek/sepolicy_vndr
rm -rf hardware/mediatek 

#clone 
git clone https://github.com/iamthecloverly/local_manifests.git --depth 1 -b aex .repo/local_manifests

# patch for external/faceunlock
cd external/faceunlock && wget https://pastebin.com/raw/EbesA2Wm && patch -p1  < EbesA2Wm

#patch for brightness slider 
cd frameworks/base && wget https://raw.githubusercontent.com/sarthakroy2002/random-stuff/main/Patches/Fix-brightness-slider-curve-for-some-devices-a12l.patch
patch -p1 < *.patch && cd -
