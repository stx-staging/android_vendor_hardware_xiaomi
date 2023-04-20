#
# Copyright (C) 2023 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

ifneq ($(TARGET_USES_XIAOMI_SENSOR_HAL_1_0),true)
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1-service.xiaomi-multihal
else
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-service \
    android.hardware.sensors@1.0-impl-xiaomi
endif

BOARD_VENDOR_SEPOLICY_DIRS += vendor/hardware/xiaomi/sepolicy/sensors
