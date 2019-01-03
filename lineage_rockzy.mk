# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/generalmobile/rockzy/rockzy.mk)

PRODUCT_NAME := lineage_rockzy
PRODUCT_DEVICE := rockzy
PRODUCT_BRAND := GM
PRODUCT_MODEL := Elite
PRODUCT_MANUFACTURER := GM

$(call inherit-product-if-exists, vendor/generalmobile/rockzy/rockzy-vendor.mk)

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := Rockzyrain

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.2 KVT49L eng.jenkins.20150227.055834 release-keys"

BUILD_FINGERPRINT := GM/GM/GM:4.4.2/KVT49L/:user/release-keys