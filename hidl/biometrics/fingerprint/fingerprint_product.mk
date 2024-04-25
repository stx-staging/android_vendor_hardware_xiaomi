#
# Copyright (C) 2024 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

# Fingerprint split product makefile

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.xiaomi

BOARD_VENDOR_SEPOLICY_DIRS += vendor/hardware/xiaomi/sepolicy/fingerprint
