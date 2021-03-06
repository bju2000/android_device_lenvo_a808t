DEVICE_FOLDER := device/lenovo/a808t
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/a808t/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := a808t
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6592
#TARGET_BOARD_PLATFORM_GPU := mali-450

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lenovo/a808t/kernel


#CWM Recovery
#TARGET_RECOVERY_INITRC := device/lenovo/a808t/rootdir/etc/init.recovery.a808t.rc
TARGET_RECOVERY_FSTAB := device/lenovo/a808t/rootdir/etc/cwm_recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/a808t/kernel

#Make Recovery
#TOOLS_DIR := device/lenovo/a808t/tools
#RECOVERY_ROOT_DIR := out/target/product/a808t/recovery/root
#BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/a808t/mkbootimg.mk

#Common Recovery
RECOVERY_FSTAB_VERSION := 2

#Cwm Recovery
RECOVERY_VARIANT := philz
BOARD_RECOVERY_MTK := true
#BOARD_USE_MTK_LAYOUT := true
#BOARD_MTK_BOOT_LABEL := /recovery

#BOARD_HAS_MTK := true

# MTK Partitions Defines
#MTK_BOOT_DEVICE_NAME := /dev/bootimg
#MTK_BOOT_DEVICE_SIZE := 10485760
#MTK_RECOVERY_DEVICE_NAME := /dev/recovery
#MTK_RECOVERY_DEVICE_SIZE := 10485760
#MTK_UBOOT_DEVICE_NAME := /dev/uboot
#MTK_UBOOT_DEVICE_SIZE := 393216

#Font
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_18x48.h\"
DEVICE_RESOLUTION := 720x1280
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
#BORAD_UI_CHINESE := true

BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# LCD
TARGET_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_MAX_BRIGHTNESS := 255
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565″

# NO misc
# BOARD_HAS_NO_MISC_PARTITION := true

#ext4
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# NO select
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SLOW_STORAGE := true

#touch
BOARD_RECOVERY_SWIPE := true

#recovery virtual key
#RECOVERY_USE_VIRTUAL_KEY := true

#quick wipe
#BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#KERNEL_EXFAT_MODULE_NAME := "exfat"

#/data/media/
#RECOVERY_SDCARD_ON_DATA:= true
#BOARD_HAS_NO_REAL_SDCARD:= true

# TWRP
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_HAS_DOWNLOAD_MODE := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/a808t/custombootimg.mk

#Miui recovery
#TARGET_RECOVERY_INITRC := $(DEVICE_FOLDER)/recovery/init.miui.rc
#MIUI_DEVICE_CONF := ../../../device/lenovo/a808t/recovery/device.conf
#MIUI_INIT_CONF := ../../../device/lenovo/a808t/recovery/init.conf
#FIX_MTK_PLATFORM_SDCARD_SOFT_LINK := true
#BOARD_HAS_REMOVABLE_STORAGE := true

# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
persist.mtk.aee.aed=on \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=EXT4
