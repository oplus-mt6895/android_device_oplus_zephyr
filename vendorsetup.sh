#!/bin/bash

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Clonning Private keys"
git clone https://github.com/Adarsh0127-Elite/android_vendor_lineage-priv_keys-template.git -b master vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
echo "no" | ./generate.sh
cd ../../..

echo "Unlock 4K60FPS"
cd packages/apps/Aperture
if ! git merge-base --is-ancestor 9509277efc852ad8bdcce204e0d9cfe104b6d190 HEAD 2>/dev/null; then
    git fetch https://github.com/Adarsh0127-Elite/android_packages_apps_Aperture.git
    git cherry-pick 9509277efc852ad8bdcce204e0d9cfe104b6d190
fi

echo "Cloning ViPER4AndroidFX"
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX
