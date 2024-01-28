#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/infinix/X6833B/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X6833B
PRODUCT_DEVICE := X6833B
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6833B

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_infinix-user 13 TP1A.220624.014 515935 release-keys" \
    PRODUCT_NAME=X6833B-GL

BUILD_FINGERPRINT := Infinix/X6833B-GL/Infinix-X6833B:13/TP1A.220624.014/240103V3275:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
