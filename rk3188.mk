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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

LOCAL_PATH := device/rockchip/rk3188

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/init:root/init \
	$(LOCAL_PATH)/ramdisk/init.rk30board.rc:root/init.rk30board.rc \
	$(LOCAL_PATH)/ramdisk/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.rk30board.rc:root/ueventd.rk30board.rc \
	$(LOCAL_PATH)/ramdisk/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+ \


# Recovery-Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/ramdisk/rk30xxnand_ko.ko.3.0.36+:recovery/root/rk30xxnand_ko.ko.3.0.36+ \
    $(LOCAL_PATH)/ramdisk/init.rk30board.rc:recovery/root/init.rk30board.rc \
    $(LOCAL_PATH)/ramdisk/init.rk30board.usb.rc:recovery/root/init.rk30board.usb.rc \
    $(LOCAL_PATH)/ramdisk/misc.img:recovery/root/misc.img \
    $(LOCAL_PATH)/ramdisk/ueventd.rk30board.rc:recovery/root/ueventd.rk30board.rc

#Unifique prebuilt 
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/rk3188/prebuilt,system)	

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/media_profiles_default.xml:system/etc/media_profiles_default.xml \
    $(LOCAL_PATH)/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl


#Tablet composer

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

# other kernel modules not in ramdisk
PRODUCT_COPY_FILES += $(foreach module,\
	$(filter-out $(RAMDISK_MODULES),$(wildcard device/rockchip/rk3188/modules/*.ko)),\
	$(module):system/lib/modules/$(notdir $(module)))


# Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    NoiseField \
    PhaseBeam \
    librs_jni \
    libjni_pinyinime \
    hostapd_rtl

# HAL
PRODUCT_PACKAGES += \
    power.$(TARGET_BOARD_PLATFORM) \
    sensors.$(TARGET_BOARD_HARDWARE) \
    gralloc.$(TARGET_BOARD_HARDWARE) \
    hwcomposer.$(TARGET_BOARD_HARDWARE) \
    lights.$(TARGET_BOARD_HARDWARE) \
    camera.$(TARGET_BOARD_HARDWARE) \
    gpu.$(TARGET_BOARD_HARDWARE) \
    libMcClient \
    mcDriverDaemon \
    keystore.$(TARGET_BOARD_PLATFORM) \
    Camera \
    akmd 

# charge
PRODUCT_PACKAGES += \
    charger \
    charger_res_images 


PRODUCT_CHARACTERISTICS := tablet

# audio lib
PRODUCT_PACKAGES += \
    audio_policy.$(TARGET_BOARD_HARDWARE) \
    audio.primary.$(TARGET_BOARD_HARDWARE) \
    audio.a2dp.default\
    audio.r_submix.default\
    audio.usb.default

# Filesystem management tools
# EXT3/4 support
PRODUCT_PACKAGES += \
    mke2fs \
    e2fsck \
    tune2fs \
    resize2fs \
    mkdosfs
# NTFS support
PRODUCT_PACKAGES += \
    ntfs-3g

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# audio lib
PRODUCT_PACKAGES += \
    libasound \
    alsa.default \
    acoustics.default \
    libtinyalsa

PRODUCT_PACKAGES += \
	alsa.audio.primary.$(TARGET_BOARD_HARDWARE)\
	alsa.audio_policy.$(TARGET_BOARD_HARDWARE)

$(call inherit-product-if-exists, device/rockchip/rk3188/external/alsa-lib/copy.mk)
$(call inherit-product-if-exists, device/rockchip/rk3188/external/alsa-utils/copy.mk)

PRODUCT_PROPERTY_OVERRIDES += \
		ro.factory.hasUMS=true \
		persist.sys.usb.config=mass_storage,adb 
#bluetooth
    PRODUCT_PROPERTY_OVERRIDES += ro.rk.btchip=mt6622


# for data clone
include device/rockchip/rk3188/common/data_clone/packdata.mk

$(call inherit-product, device/rockchip/rk3188/external/wlan_loader/wifi-firmware.mk)

#wifi
$(call inherit-product, hardware/mediatek/config/mt5931_6622/product_package.mk)

#include
include device/rockchip/rk3188/common/gpu/rk30xx_gpu.mk  
include device/rockchip/rk3188/common/vpu/rk30_vpu.mk
include device/rockchip/rk3188/common/wifi/rk30_wifi.mk
include device/rockchip/rk3188/common/nand/rk30_nand.mk
include device/rockchip/rk3188/common/ipp/rk29_ipp.mk
include device/rockchip/rk3188/common/ion/rk30_ion.mk
include device/rockchip/rk3188/common/bin/rk30_bin.mk
include device/rockchip/rk3188/common/webkit/rk31_webkit.mk
include device/rockchip/rk3188/common/bluetooth/rk30_bt.mk
include device/rockchip/rk3188/common/gps/rk30_gps.mk
include device/rockchip/rk3188/common/app/rkupdateservice.mk
include device/rockchip/rk3188/common/etc/adblock.mk
include device/rockchip/rk3188/common/phone/rk30_phone.mk
include device/rockchip/rk3188/common/features/rk-core.mk
include device/rockchip/rk3188/common/features/rk-camera.mk
include device/rockchip/rk3188/common/features/rk-camera-front.mk
include device/rockchip/rk3188/common/features/rk-gms.mk

PRODUCT_PROPERTY_OVERRIDES += \
        ro.vendor.sw.version=100k4
