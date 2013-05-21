# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/anzu/anzu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/anzu/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.semc.rc:root/init.recovery.semc.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/msm_pmic_pwr_key.kl:system/usr/keylayout/msm_pmic_pwr_key.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pm8058-keypad.kl:system/usr/keylayout/pm8058-keypad.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/rootdir/system/etc/tiwlan.ini:system/etc/tiwlan.ini

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
