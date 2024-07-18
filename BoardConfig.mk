#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lisa

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := lisa

# Matrixx
MATRIXX_CHIPSET := SM8350
MATRIXX_MAINTAINER := ComradeWave
MATRIXX_BATTERY := 4250mah
MATRIXX_DISPLAY := 1080x2400
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true
WITH_GMS := true

# Bootloader
TARGET_BOOT_ANIMATION_RES := 1080

# Kernel
TARGET_KERNEL_CONFIG += vendor/lisa_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
    goodix_core.ko \
    hwid.ko \
    msm_drm.ko \
    xiaomi_touch.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Include proprietary files
include vendor/xiaomi/lisa/BoardConfigVendor.mk
