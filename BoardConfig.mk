#
# Copyright (C) 2012 The CyanogenMod Project
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_BOARD_PLATFORM := rk31board
TARGET_BOARD_HARDWARE := rk30board

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_INFO_FILE := $(LOCAL_PATH)/board-info.txt

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/custombootimg.mk
# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc

#Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 20

#Touch screen
BOARD_USE_LEGACY_TOUCHSCREEN := true

#HDMI
TARGET_HAVE_HDMI_OUT := true
BOARD_USES_HDMI := true

#Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Partitons
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 482344960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1572864000
TARGET_USERIMAGES_USE_EXT4 := true

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./$(LOCAL_PATH)/releasetools/rk31xx_ota_from_target_files

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/config/egl.cfg
USE_OPENGL_RENDERER := true

#BOARD_USES_HGL := true
USE_OPENGL_RENDERER := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
ENABLE_WEBGL := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_USES_ION := true


#COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE -DNO_RGBX_8888 -DMISSING_GRALLOC_BUFFERS

# HWComposer
BOARD_USES_HWCOMPOSER := true
SMALLER_FONT_FOOTPRINT := true

# Wifi stuff

# WLAN
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/rkwifi.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"

# Graphics
BOARD_EGL_CFG := device/rockchip/rk3188/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_ION := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/rockchip/rk3188/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/rockchip/rk3188/bluetooth/vnd_rockchip.txt

# Camera Setup
USE_CAMERA_STUB := true

# Misc display settings
BOARD_USE_SKIA_LCDTEXT := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Sensors
BOARD_SENSOR_ST := true

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/rockchip/rk31board/recovery/recovery_keys.c
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

