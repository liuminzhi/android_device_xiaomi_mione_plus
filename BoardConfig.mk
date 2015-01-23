# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

TARGET_SPECIFIC_HEADER_PATH := device/xiaomi/mione_plus/include

# Bootloader
BOARD_VENDOR := xiaomi
TARGET_BOOTLOADER_BOARD_NAME := mione
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/mione_plus
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=mione kgsl.mmutype=gpummu vmalloc=400M
BOARD_KERNEL_PAGE_SIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01200000
TARGET_KERNEL_CONFIG := mione-debug_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/xiaomi/mione_plus/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/xiaomi/mione_plus/bluetooth/vnd_mione_plus.txt

# Display
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854

# RIL
BOARD_RIL_NO_CELLINFOLIST := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mione
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 518435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354048
BOARD_FLASH_BLOCK_SIZE := 32768
BOARD_VOLD_MAX_PARTITIONS := 28
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
BOARD_RECOVERY_SWIPE := true
BOARD_NATIVE_DUALBOOT := true
BOARD_NATIVE_DUALBOOT_SINGLEDATA := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/xiaomi/mione_plus/recovery/kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/xiaomi/mione_plus/recovery/graphics.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_CUSTOM_RECOVERY_UI := \
    ../../device/xiaomi/mione_plus/recovery/dualboot.c \
    ../../device/xiaomi/mione_plus/recovery/recovery_ui.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_RECOVERY_FSTAB := device/xiaomi/mione_plus/ramdisk/fstab.mione
RECOVERY_FSTAB_VERSION := 2
USE_SET_METADATA := false

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_USE_MHEAP_SCREENSHOT := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_NO_HW_VSYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := device/xiaomi/mione_plus/configs/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
