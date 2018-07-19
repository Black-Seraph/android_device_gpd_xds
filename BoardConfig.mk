LOCAL_PATH := device/gpd/xds
include device/mediatek/mt8173-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true
TARGET_PROVIDES_INIT_RC := true

# MTK Hardware
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))

COMMON_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
COMMON_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

# Kernel
TARGET_KERNEL_SOURCE := kernel/gpd/xds
TARGET_KERNEL_CONFIG := mt8176_defconfig

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# make_ext4fs requires numbers in dec format
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26251096064
BOARD_CACHEIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# System properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
