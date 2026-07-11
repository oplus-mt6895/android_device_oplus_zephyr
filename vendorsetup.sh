#!/bin/bash

echo "Clonning IMS"
git clone -b android-16-qpr2 https://github.com/Adarsh0127-Elite/android_vendor_mediatek_ims.git vendor/mediatek/ims

echo "Applying frameworks/native patches"
cd frameworks/native
git fetch https://github.com/oplus-mt6895/android_frameworks_native.git
git cherry-pick 5ae7b13cc9e7359261d15ab185ee4aaeb512f754
cd ../..

