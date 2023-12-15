#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from TECNO-KG5j device
$(call inherit-product, device/tecno/TECNO-KG5j/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TECNO-KG5j
PRODUCT_NAME := omni_TECNO-KG5j
PRODUCT_BRAND := tecno
PRODUCT_MODEL := TECNO-KG5j
PRODUCT_MANUFACTURER := Tecno Mobile Limited
PRODUCT_RELEASE_NAME := Tecno Spark 8C (TECNO-KG5j)

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1612
MAINTAINER := "kelexine"
