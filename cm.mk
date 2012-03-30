## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := LT18i

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/anzu/device_anzu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := anzu
PRODUCT_NAME := cm_anzu
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia Arc

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT18i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT15i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"
