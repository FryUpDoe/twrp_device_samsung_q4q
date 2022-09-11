#
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/q4q
TARGET_SOC := sm8475

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOOTLOADER_BOARD_NAME := lahaina
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Allow building with minimal manifest 
ALLOW_MISSING_DEPENDENCIES := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := lahaina
TARGET_BOARD_PLATFORM_GPU := qcom-adreno730
QCOM_BOARD_PLATFORMS += lahaina
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone20/temp

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb/dtb.dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_KERNEL_ARCH := arm64

# Boot
BOARD_BOOT_HEADER_VERSION := 3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=a600000.dwc3 swiotlb=2048 loop.max_part=7 cgroup.memory=nokmem,nosocket firmware_class.path=/vendor/firmware_mnt/image printk.devkmsg=on pcie_ports=compat
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SECOND_OFFSET := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_DTB_OFFSET := 0x01f000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION) --pagesize $(BOARD_KERNEL_PAGESIZE) --board "SRPUC12A001"
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB) --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/bootimg.mk

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 9836578860
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 4914095126
BOARD_SUPER_PARTITION_ERROR_LIMIT := 9312290860
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# System as root
BOARD_ROOT_EXTRA_FOLDERS := cache carrier data_mirror efs keyrefuge linkerconfig metadata omr optics prism spu
BOARD_SUPPRESS_SECURE_ERASE := true

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

AB_OTA_UPDATER := false

# Crypto
PLATFORM_SECURITY_PATCH := 2022-09-01
VENDOR_SECURITY_PATCH := 2022-09-01
PLATFORM_VERSION := 12
PLATFORM_VERSION_LAST_STABLE := 12
BOARD_USES_METADATA_PARTITION := true

# TWRP Specific Flags
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false
TW_THEME := portrait_hdpi
TW_ROTATION := 270
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 510
TW_DEFAULT_BRIGHTNESS := 200
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
