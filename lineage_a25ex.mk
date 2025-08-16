#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a25ex device
$(call inherit-product, device/samsung/a25ex/device.mk)

PRODUCT_DEVICE := a25ex
PRODUCT_NAME := lineage_a25ex
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A253Q
PRODUCT_DEFAULT_LANGUAGE := ja
PRODUCT_DEFAULT_REGION   := JP
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a25exjpn-user 15 AP3A.240905.015.A2 A253QOPU1AYC1 release-keys"

BUILD_FINGERPRINT := samsung/a25exjpn/a25ex:15/AP3A.240905.015.A2/A253QOPU1AYC1:user/release-keys
