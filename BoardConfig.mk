#
# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/rockchip/rk3188

TARGET_BOARD_PLATFORM := rk30xx
TARGET_BOARD_PLATFORM_GPU := mali400
TARGET_BOARD_HARDWARE := rk30board
BOARD_USE_LCDC_COMPOSER := true
BOARD_USE_LOW_MEM := false
TARGET_NO_BOOTLOADER := true
TARGET_CPU_VARIANT := cortex-a9
TARGET_RELEASETOOLS_EXTENSIONS := device/rockchip/rk3188/common


TARGET_BOARD_INFO_FILE := $(LOCAL_PATH)/board-info.txt

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/custombootimg.mk

BOARD_EGL_CFG := device/rockchip/rk3188/common/gpu/libmali_smp/egl.cfg


TARGET_PROVIDES_INIT_RC ?= true
TARGET_NO_KERNEL ?= false
TARGET_NO_RECOVERY ?= false

# to flip screen in recovery 
BOARD_HAS_FLIPPED_SCREEN := false

# To use bmp as kernel logo, uncomment the line below to use bgra 8888 in recovery
#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_ROCKCHIP_PCBATEST := false
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_BOARD_ID := false
TARGET_CPU_SMP := true
BOARD_USES_GENERIC_AUDIO := true

//MAX-SIZE=512M, for generate out/.../system.img
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072


TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Enable NEON feature
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

#BOARD_LIB_DUMPSTATE := libdumpstate.$(TARGET_BOARD_PLATFORM)

USE_OPENGL_RENDERER := true

# rk30sdk uses Cortex A9
TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))

# sensors
#BOARD_SENSOR_ST := true
BOARD_SENSOR_NORMAL :=true
#BOARD_SENSOR_COMPASS_AK8963 := true    #if use akm8963
#BOARD_SENSOR_ANGLE := true		#if need calculation angle between two gsensors
#BOARD_SENSOR_CALIBRATION := true	#if need calibration

TARGET_BOOTLOADER_BOARD_NAME := rk30sdk

# readahead files to improve boot time
# BOARD_BOOT_READAHEAD ?= true

BOARD_BP_AUTO := true

#phone pad codec list
BOARD_CODEC_WM8994 := false
BOARD_CODEC_RT5625_SPK_FROM_SPKOUT := false
BOARD_CODEC_RT5625_SPK_FROM_HPOUT := false
BOARD_CODEC_RT3261 := false
BOARD_CODEC_RT3224 := true
BOARD_CODEC_RT5631 := false
BOARD_CODEC_RK616 := false

#if set to true m-user would be disabled and UMS enabled, if set to disable UMS would be disabled and m-user enabled
BUILD_WITH_UMS := true

# for drmservice
BUILD_WITH_DRMSERVICE :=true

# for tablet encryption
BUILD_WITH_CRYPTO := false

# for update nand 2.1
NAND_UPDATE :=true

# define tablet support NTFS 
BOARD_IS_SUPPORT_NTFS := true

#WIFI 
BOARD_CONNECTIVITY_VENDOR := Mediatek
MT6622_BT_SUPPORT := true
BOARD_CONNECTIVITY_MODULE := mt5931_6622
FORCE_WIFI_WORK_AS_ANDROID4_2 := false
BUILD_MEDIATEK_RFTEST_TOOL := false
combo_config := hardware/mediatek/config/mt5931_6622/board_config.mk
include $(combo_config)
BOARD_HAVE_BLUETOOTH ?= true
BOARD_HAVE_BLUETOOTH_BCM ?= false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= hardware/mediatek/bt/mt5931_6622/
