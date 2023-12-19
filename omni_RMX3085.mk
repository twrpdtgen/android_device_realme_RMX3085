#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from RMX3085 device
$(call inherit-product, device/realme/RMX3085/device.mk)

PRODUCT_DEVICE := RMX3085
PRODUCT_NAME := omni_RMX3085
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3085
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_RMX3085-eng 16.1.0 RQ1A.210205.004 eng.root.20211121.182036 test-keys"

BUILD_FINGERPRINT := realme/twrp_RMX3085/RMX3085:16.1.0/RQ1A.210205.004/root11211818:eng/test-keys
