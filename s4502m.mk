$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/dns/s4502m/s4502m-vendor.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/dns/s4502m/overlay

PRODUCT_PACKAGES += \
	gps.msm7x27a

PRODUCT_PACKAGES += \
	lights.s4502m

PRODUCT_PACKAGES +=\
	power.msm7x27a

PRODUCT_PACKAGES += \
	copybit.msm7x27a \
	gralloc.msm7x27a \
	hwcomposer.msm7x27a \
	libtilerenderer 

PRODUCT_PACKAGES += \
	libmm-omxcore \
	libOmxCore \
	libstagefrighthw

PRODUCT_PACKAGES +=\
	Torch \
	telephony-msim

LOCAL_PATH := device/dns/s4502m
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/dns/s4502m/ramdisk,root)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/dns/s4502m/recovery,recovery/root)
	
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/dns/s4502m/prebuilt/system,system)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PROPERTY_OVERRIDES +=\
	ro.cwm.enable_key_repeat=true

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s4502m
PRODUCT_DEVICE := s4502m
PRODUCT_MANUFACTER := DNS
PRODUCT_MODEL := S4502M
