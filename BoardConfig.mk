# inherit from the proprietary version
-include vendor/dns/s4502m/BoardConfigVendor.mk


TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a5

ARCH_ARM_HAVE_TLS_REGISTER := true
#ARGET_CORTEX_CACHE_LINE_32 := true
#ARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
#RCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
TARGET_USES_ION := true
BOARD_USES_QCOM_HARDWARE := true

#Graphics
BOARD_EGL_CFG := device/dns/s4502m/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

#Video
TARGET_QCOM_LEGACY_OMX := true
TARGET_QCOM_MEDIA_VARIANT := legacy
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK

TARGET_BOOTLOADER_BOARD_NAME := s4502m

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_SPECIFIC_HEADER_PATH := device/dns/s4502m/include
TARGET_OTA_ASSERT_DEVICE := s4502m,msm8625_d9

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096



BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"


TARGET_ARCH_LOWMEM := true

BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/dns/s4502m/include/bluetooth

#BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
#BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x27a

ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true



# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 13901824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13901824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 471859200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9849593640
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/dns/s4502m/kernel.d9
TARGET_RECOVERY_FSTAB := device/dns/s4502m/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/dns/s4502m/recovery/init.rc
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
