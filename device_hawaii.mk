$(call inherit-product-if-exists, vendor/samsung/hawaii/hawaii-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/hawaii/overlay

LOCAL_PATH := device/samsung/hawaii

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.hawaii_ss_logan:root/fstab.hawaii_ss_logan \
    $(LOCAL_PATH)/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
    $(LOCAL_PATH)/init.hawaii_ss_logan.rc:root/init.hawaii_ss_logan.rc \
    $(LOCAL_PATH)/init.log.rc:root/init.log.rc \
    $(LOCAL_PATH)/ueventd.hawaii_ss_logan.rc:root/ueventd.hawaii_ss_logan.rc \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/init.bt.rc:root/init.bt.rc \
    $(LOCAL_PATH)/lpm.rc:root/lpm.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Charger
PRODUCT_PACKAGES += \
        charger \
        charger_res_images

# Audio
PRODUCT_PACKAGES += \
        audio.a2dp.default

# NFC packages
PRODUCT_PACKAGES += \
        libnfc-nci \
        libnfc_nci_jni \
        NfcNci \
        Tag \
        com.android.nfc_extras

# Device-specific packages
PRODUCT_PACKAGES += \
        SamsungServiceMode

$(call inherit-product, build/target/product/generic_no_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_hawaii
PRODUCT_DEVICE := hawaii
