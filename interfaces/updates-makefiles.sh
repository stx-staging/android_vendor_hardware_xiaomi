#!/bin/bash

source $ANDROID_BUILD_TOP/system/tools/hidl/update-makefiles-helper.sh

do_makefiles_update \
  "vendor.goodix:vendor/hardware/xiaomi/interfaces/goodix"

do_makefiles_update \
  "vendor.xiaomi:vendor/hardware/xiaomi/interfaces/xiaomi"
