#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lisa

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := lisa

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_lisa
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_lisa

# Kernel
TARGET_KERNEL_CONFIG := vendor/lisa-qgki_defconfig

# Kernel modules
BOOT_KERNEL_MODULES := \
    hwid.ko \
    goodix_core.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lisa,lisa_in,lisa_global

# Partition
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/lisa/BoardConfigVendor.mk
