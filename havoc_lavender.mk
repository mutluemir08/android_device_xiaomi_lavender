#
# Copyright (C) 2019 The HavocOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common HavocOS stuff.
$(call inherit-product, vendor/havoc/config/common.mk)

# Official
export export HAVOC_BUILD_TYPE=Official

PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=DarkDroidDev

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "xiaomi/lavender/lavender:9/PKQ1.180904.001/V10.3.5.0.PFGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V10.3.5.0.PFGMIXM release-keys" \
    PRODUCT_NAME="lavender" \
    TARGET_DEVICE="lavender"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
