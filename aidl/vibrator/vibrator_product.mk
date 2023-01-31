#
# Copyright (C) 2023 StatiXOS
# SPDX-License-Identifer: Apache-2.0
#

# Product definition for Xiaomi AWINIC Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.xiaomi-awinic

BOARD_VENDOR_SEPOLICY_DIRS += vendor/hardware/xiaomi/sepolicy/vibrator
