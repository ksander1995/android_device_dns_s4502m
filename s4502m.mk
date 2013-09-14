$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/dns/s4502m/s4502m-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/dns/s4502m/overlay

PRODUCT_PACKAGES += \
	copybit.msm7x27a \
	gralloc.msm7x27a \
	hwcomposer.msm7x27a \
	libtilerenderer 

PRODUCT_PACKAGES += \
	libmm-omxcore \
	libOmxCore \
	libstagefrighthw


LOCAL_PATH := device/dns/s4502m
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	device/dns/s4502m/recovery/sbin/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
	device/dns/s4502m/recovery/sbin/charger:recovery/root/sbin/charger

PRODUCT_COPY_FILES += \
	device/dns/s4502m/ramdisk/fstab.qcom:root/fstab.qcom \
	device/dns/s4502m/ramdisk/init.qcom.rc:root/init.qcom.rc \
	device/dns/s4502m/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/dns/s4502m/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/dns/s4502m/prebuilt/system,system)



$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s4502m
PRODUCT_DEVICE := s4502m
