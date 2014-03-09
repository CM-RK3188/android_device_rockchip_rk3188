PRODUCT_COPY_FILES += \
    device/rockchip/rk3188/common/gpu/libmali_smp/libMali.so:system/lib/libMali.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libMali.so:obj/lib/libMali.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libUMP.so:system/lib/libUMP.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libUMP.so:obj/lib/libUMP.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    device/rockchip/rk3188/common/gpu/libmali_smp/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    device/rockchip/rk3188/common/gpu/libmali/mali.ko:system/lib/modules/mali.ko \
    device/rockchip/rk3188/common/gpu/libmali/ump.ko:system/lib/modules/ump.ko \
    device/rockchip/rk3188/common/gpu/gpu_performance/performance_info.xml:system/etc/performance_info.xml \
    device/rockchip/rk3188/common/gpu/gpu_performance/packages-compat.xml:system/etc/packages-compat.xml \
    device/rockchip/rk3188/common/gpu/gpu_performance/performance:system/bin/performance \
    device/rockchip/rk3188/common/gpu/gpu_performance/libperformance_runtime.so:system/lib/libperformance_runtime.so \
    device/rockchip/rk3188/common/gpu/gpu_performance/gpu.$(TARGET_BOARD_HARDWARE).so:system/lib/hw/gpu.$(TARGET_BOARD_HARDWARE).so
