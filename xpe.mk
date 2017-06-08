$(call inherit-product, device/xiaomi/ferrari/full_ferrari.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/xpe/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ferrari
PRODUCT_NAME := xpe_ferrari
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 4i
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ferrari" \
    PRODUCT_NAME="ferrari" \
    BUILD_FINGERPRINT="Xiaomi/ferrari/ferrari:5.1.1/LMY48B:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="ferrari-userdebug 5.1.1 LMY48B test-keys"
