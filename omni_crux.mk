#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from crux device
$(call inherit-product, device/xiaomi/crux/device.mk)

PRODUCT_DEVICE := crux
PRODUCT_NAME := omni_crux
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi9 Pro 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_crux-eng 99.87.36 SP2A.220405.004 eng.runner.20251203.001518 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_crux/crux:99.87.36/SP2A.220405.004/runner12030012:eng/test-keys
