#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RY1202 device
$(call inherit-product, device/qualcomm/RY1202/device.mk)

PRODUCT_DEVICE := RY1202
PRODUCT_NAME := twrp_RY1202
PRODUCT_BRAND := Royole
PRODUCT_MODEL := Royole FlexPai 2
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="FlexPai2-user 10 QKQ1.200920.002 A000112101023 release-keys"

BUILD_FINGERPRINT := Royole/FlexPai2/RY1202:10/QKQ1.200920.002/A000112101023:user/release-keys
