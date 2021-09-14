# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from joyeuse device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := joyeuse
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_joyeuse
PRODUCT_MODEL := Redmi Note 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := joyeuse
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 RKQ1.200826.002 V12.5.3.0.RJZMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/joyeuse_global/joyeuse:11/RKQ1.200826.002/V12.5.3.0.RJZMIXM:user/release-keys
