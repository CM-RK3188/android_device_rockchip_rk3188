CUR_PATH := device/rockchip/rk3188/common/app
PRODUCT_PACKAGES += \
	MediaFloat \
	RkApkinstaller \
	RkExplorer \
	RkVideoPlayer \
        StressTest 
PRODUCT_COPY_FILES += \
	$(CUR_PATH)/apk/flashplayer:system/app/flashplayer 
