#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FORCE_32_BIT := true
DEVICE_PATH := device/haier/G151

# Architecture
TARGET_BOARD_SUFFIX := _32
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

TARGET_BOARD_PLATFORM := msm8909
TARGET_BOARD_PLATFORM_GPU := qcom-adreno304
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8909
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(DEVICE_PATH)/prebuilt/dt.img

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 265289728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5037359104

# Assert
TARGET_OTA_ASSERT_DEVICE := A16C3H,g151,G151

# Crypto
TW_INCLUDE_CRYPTO := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
PLATFORM_SECURITY_PATCH := 2099-12-31

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# LZMA ramdisk compression
LZMA_RAMDISK_TARGETS := recovery
LZMA_COMPRESSION := -9

# TWRP specific build flags
TW_DEFAULT_LANGUAGE := en-US
TW_NO_USB_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_REMOVABLE_STORAGE := true
TW_MAX_BRIGHTNESS := 100
TW_DEFAULT_BRIGHTNESS := "70"
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_USE_TOOLBOX := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_CRYPTO_USE_SBIN_VOLD := true
TW_THEME := portrait_mdpi
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_PYTHON := true
TW_HAS_EDL_MODE := true

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
