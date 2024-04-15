#
# Copyright (C) 2024 StatiXOS
# SPDX-License-Identifier: Apache-2.0
#

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service.xiaomi-libperfmgr

# sendhint utility
PRODUCT_PACKAGES += \
    sendhint

# Enable adpf cpu hint session for SurfaceFlinger and HWUI
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.sf.enable_adpf_cpu_hint=true \
    debug.hwui.use_hint_manager=true

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += vendor/hardware/xiaomi/sepolicy/power-libperfmgr
