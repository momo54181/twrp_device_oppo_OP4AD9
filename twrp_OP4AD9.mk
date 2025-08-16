#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from OP4AD9 device
$(call inherit-product, device/oppo/OP4AD9/device.mk)

PRODUCT_DEVICE := OP4AD9
PRODUCT_NAME := twrp_OP4AD9
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := OPPO Ace2
PRODUCT_MANUFACTURER := oppo

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Keystore
PRODUCT_PACKAGES += \
    android.system.keystore2

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0

PRODUCT_PROPERTY_OVERRIDES += \
    keymaster_ver=4.0