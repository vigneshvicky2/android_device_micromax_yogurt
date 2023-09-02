#
# Copyright (C) 2022 The Sparkos Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/Spark/config/common_full_phone.mk)


TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
# Inherit from E7746 device
$(call inherit-product, device/micromax/yogurt/device.mk)

PRODUCT_DEVICE := yogurt
PRODUCT_NAME := Spark_yogurt
PRODUCT_BRAND := Micromax
PRODUCT_MODEL := IN_Note1
PRODUCT_MANUFACTURER := micromax

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k69v1_64-user 10 QP1A.190711.020 1620836268 release-keys"

BUILD_FINGERPRINT := Micromax/E7746/E7746:10/QP1A.190711.020/1620836268:user/release-keys
