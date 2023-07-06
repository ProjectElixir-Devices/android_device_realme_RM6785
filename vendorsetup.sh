# nuke
rm -rf device/realme/RM6785
rm -rf vendor/realme
rm -rf kernel/realme/mt6785
rm -rf realme/realme-firmware
rm -rf device/mediatek/sepolicy_vndr
rm -rf hardware/mediatek 

#clone 
git clone https://github.com/iamthecloverly/local_manifests.git --depth 1 -b aex .repo/local_manifests
