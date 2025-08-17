#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a25ex
PRODUCT_CHARACTERISTICS := phone

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_TARGET_VNDK_VERSION := 36
PRODUCT_EXTRA_VNDK_VERSIONS := 35
PRODUCT_EXTRA_VNDK_VERSIONS := 33 34 35
PRODUCT_SHIPPING_API_LEVEL := 35
PRODUCT_FIRST_API_LEVEL := 33


PRODUCT_PACKAGES += \
    FrameworksResOverlayLancelot \
    SystemUIOverlayLancelot

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

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag 

# Audio
PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.stub

PRODUCT_PACKAGES += \
    android.hardware.audio@5.0.vendor \
    android.hardware.audio.common@5.0-util.vendor \
    android.hardware.soundtrigger@2.2 \
    android.hardware.soundtrigger@2.2.vendor

PRODUCT_PACKAGES += \
    libaudiopreprocessing \
    libtinycompress \
    libtinyxml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.a2dp@1.0.vendor \
    android.hardware.bluetooth@1.0.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0.vendor \
    android.hardware.camera.device@1.0.vendor \
    android.hardware.camera.device@3.2.vendor \
    android.hardware.camera.device@3.3.vendor \
    android.hardware.camera.device@3.4.vendor \
    android.hardware.camera.device@3.5.vendor \
    android.hardware.camera.provider@2.4.vendor \
    android.hardware.camera.provider@2.5.vendor

PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey

PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor

PRODUCT_PACKAGES += \
    libdrmclearkeyplugin \
    libmockdrmcryptoplugin

# Display
PRODUCT_PACKAGES += \
    libhwc2on1adapter \
    libhwc2onfbadapter

# SamsungAdvancedDisplay
PRODUCT_PACKAGES += \
    AdvancedDisplay \

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze \

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.face@1.0.vendor \
    android.hardware.biometrics.fingerprint@2.1.vendor \

PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-service-samsung \
    android.hardware.keymaster@3.0-impl \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl

# Libxml2
PRODUCT_PACKAGES += \
    libxml2.vendor

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0.vendor

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0.vendor \
    android.hardware.power@1.1.vendor \
    android.hardware.power@1.2.vendor \
    android.hardware.power@1.3.vendor

# Renderscript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0.vendor \
    android.hardware.broadcastradio@1.1.vendor \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor

# Public Libraries
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=false \
    bpf.progs_loaded=1

PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0.vendor

PRODUCT_PACKAGES += \
    libsensorndkbridge

PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0.vendor

PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.3.vendor \
    android.hardware.wifi.supplicant@1.2.vendor \
    android.hardware.wifi.hostapd@1.1.vendor

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(LOCAL_PATH)/firmware/BT_FW.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/BT_FW.cfg \
    $(LOCAL_PATH)/firmware/SetMultiCal.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/SetMultiCal.bin \
    $(LOCAL_PATH)/firmware/SoundBoosterParam.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/SoundBoosterParam.bin \
    $(LOCAL_PATH)/firmware/WIFI:$(TARGET_COPY_OUT_VENDOR)/firmware/WIFI \
    $(LOCAL_PATH)/firmware/WMT_SOC.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/WMT_SOC.cfg \
    $(LOCAL_PATH)/firmware/aw882xx_acf.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/aw882xx_acf.bin \
    $(LOCAL_PATH)/firmware/connsys_mt6835_mt6631:$(TARGET_COPY_OUT_VENDOR)/firmware/connsys_mt6835_mt6631 \
    $(LOCAL_PATH)/firmware/fm_cust.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/fm_cust.cfg \
    $(LOCAL_PATH)/firmware/mt6627_fm_channel_param.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6627_fm_channel_param.dat \
    $(LOCAL_PATH)/firmware/mt6627_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6627_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6627_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6627_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v2_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v2_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v2_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v2_patch.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v2_patch_tx.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v2_patch_tx.bin \
    $(LOCAL_PATH)/firmware/mt6630_fm_v2_coeff_tx.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6630_fm_v2_coeff_tx.bin \
    $(LOCAL_PATH)/firmware/mt6631_fm_channel_param.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6631_fm_channel_param.dat \
    $(LOCAL_PATH)/firmware/mt6631_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6631_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6631_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6631_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/mt6632_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6632_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6632_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6632_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/mt6635_fm_channel_param.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6635_fm_channel_param.dat \
    $(LOCAL_PATH)/firmware/mt6635_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6635_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/mt6635_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mt6635_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/nt36528a_a25ex_tianma.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nt36528a_a25ex_tianma.bin \
    $(LOCAL_PATH)/firmware/nt36528a_a25ex_tianma_mp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nt36528a_a25ex_tianma_mp.bin \
    $(LOCAL_PATH)/firmware/nt36672_a25ex_tianma.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nt36672_a25ex_tianma.bin \
    $(LOCAL_PATH)/firmware/nt36672_a25ex_tianma_mp.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nt36672_a25ex_tianma_mp.bin \
    $(LOCAL_PATH)/firmware/remoteproc_scp:$(TARGET_COPY_OUT_VENDOR)/firmware/remoteproc_scp \
    $(LOCAL_PATH)/firmware/soc_fm_v1_coeff.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc_fm_v1_coeff.bin \
    $(LOCAL_PATH)/firmware/soc_fm_v1_patch.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/soc_fm_v1_patch.bin \
    $(LOCAL_PATH)/firmware/wifi.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/wifi.cfg \
    $(LOCAL_PATH)/firmware/wlan-connection-roaming-backup:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan-connection-roaming-backup \
    $(LOCAL_PATH)/firmware/wlan-connection-roaming.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan-connection-roaming.ini \
    $(LOCAL_PATH)/firmware/nfc/sec_s3nsen6_firmware.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/nfc/sec_s3nsen6_firmware.bin
    $(LOCAL_PATH)/nfc/sec_s3nsen6_swreg.bin:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/sec_s3nsen6_swreg.bin \
    $(LOCAL_PATH)/nfc/sec_s3nsen6_hwreg.bin:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/sec_s3nsen6_hwreg.bin \
    $(LOCAL_PATH)/apdb/APDB_MT6835___W2450:$(TARGET_COPY_OUT_VENDOR)/etc/apdb/APDB_MT6835___W2450 \
    $(LOCAL_PATH)/apdb/APDB_MT6835___W2450_ENUM:$(TARGET_COPY_OUT_VENDOR)/etc/apdb/APDB_MT6835___W2450_ENUM \
    $(LOCAL_PATH)/displayconfig/display_id_4627039422300187648:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4627039422300187648 \
    $(LOCAL_PATH)/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/firmware/txpowerctrl.cfg:$(TARGET_COPY_OUT_VENDOR)/firmware/txpowerctrl.cfg \
    $(LOCAL_PATH)/AbnormalDisplayLog_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/AbnormalDisplayLog_dynamic.xml \
    $(LOCAL_PATH)/dolby/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/dolby/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml


# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Rootdir
PRODUCT_PACKAGES += \
    init.insmod.sh \
    install-recovery.sh

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
    init.recovery.samsung.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6835:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6835

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a25ex/a25ex-vendor.mk)
