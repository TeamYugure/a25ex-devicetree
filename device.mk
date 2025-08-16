#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a25ex
PRODUCT_CHARACTERISTICS := phone

PRODUCT_USE_DYNAMIC_PARTITIONS := true
#PRODUCT_TARGET_VNDK_VERSION := 35
PRODUCT_EXTRA_VNDK_VERSIONS := 35
PRODUCT_SHIPPING_API_LEVEL := 35
PRODUCT_FIRST_API_LEVEL := 32

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := phone

# Rootdir
PRODUCT_PACKAGES += \
    init.insmod.sh \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.mt6835 \
    factory_init.connectivity.common.rc \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.audio.samsung.rc \
    init.cgroup.rc \
    init.connectivity.common.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6835.rc \
    init.mt6835.usb.rc \
    init.mtkgki.rc \
    init.project.rc \
    init.sec.rc \
    init_connectivity.rc \
    meta_init.connectivity.common.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    meta_init.vendor.rc \
    multi_init.rc \
    init.recovery.mt6835.rc \
    init.recovery.samsung.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6835:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6835

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a25ex/a25ex-vendor.mk)
