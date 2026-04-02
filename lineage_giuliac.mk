#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from giuliac device
$(call inherit-product, device/oneplus/giuliac/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# MistOs Flags
MISTOS_MAINTAINER := ShivaOP
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
MIST_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_ACCORD := false
TARGET_EXCLUDE_BACKUPTOOL := true

PRODUCT_NAME := lineage_giuliac
PRODUCT_DEVICE := giuliac
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKG110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1767889607989 release-keys" \
    BuildFingerprint=OnePlus/PKG110/OP5D2BL1:16/UKQ1.231108.001/V.1f672c7_296bea_2963ce:user/release-keys \
    DeviceName=OP5D2BL1 \
    DeviceProduct=PKG110 \
    SystemDevice=OP5D2BL1 \
    SystemName=PKG110
