LOCAL_PATH := device/gpd/xds

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := xds

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport

# Lights
PRODUCT_PACKAGES += \
    lights.mt8173

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    # Will be updated after cleanup
	
# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Common stuff
$(call inherit-product, device/mediatek/mt8173-common)

# Vendor
$(call inherit-product, vendor/gpd/xds/xds-vendor.mk)
