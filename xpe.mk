$(call inherit-product, device/xiaomi/ferrari/full_ferrari.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/XPe/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := xpe_ferrari
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := ferrari

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := ferrari
TARGET_VENDOR_DEVICE_NAME := ferrari
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=ferrari PRODUCT_NAME=ferrari

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
      BUILD_FINGERPRINT=Xiaomi/ferrari/ferrari:5.1.1/LMY48B:userdebug/test-keys \
    PRIVATE_BUILD_DESC="ferrari-userdebug 5.1.1 LMY48B test-keys"
endif
