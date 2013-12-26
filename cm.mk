# Copyright (C) 2013 The Android Open Source Project
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
#
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sony/c1905/c1905.mk)

#Screen resoultion in Pixels
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Torch
PRODUCT_PACKAGES := \
    Torch

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := c1905
PRODUCT_NAME := cm_c1905
PRODUCT_BRAND := sony
PRODUCT_MODEL := C1905
PRODUCT_MANUFACTURER := sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C1905 \
    BUILD_FINGERPRINT="Sony/C1904_1274-3899/C1904:4.1.2/15.1.C.1.17/3bt96g:user/release-keys" \
    PRIVATE_BUILD_DESC="C1904-user 4.1.2 2.11.J.1.34 3bt96g test-keys"

# Release name
PRODUCT_RELEASE_NAME := Xperiam
