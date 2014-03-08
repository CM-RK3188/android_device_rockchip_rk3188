ifeq ($(strip $(NAND_UPDATE)),true)
 PRODUCT_COPY_FILES += \
	device/rockchip/common/nand/lib/upate/rk292xnand_ko.ko:root/rk292xnand_ko.ko
else
 PRODUCT_COPY_FILES += \
    device/rockchip/common/nand/lib/rk292xnand_ko.ko:root/rk292xnand_ko.ko
endif
