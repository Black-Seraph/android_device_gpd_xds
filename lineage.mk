$(call inherit-product, device/gpd/xds/xds.mk)

# Common CM stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="GPD/GPD/gpd_en:7.0/NRD90M/1522664419:user/test-keys" PRIVATE_BUILD_DESC="full_wisky8176_tb_n-user 7.0 NRD90M 1522664419 test-keys"

PRODUCT_NAME := lineage_xds
PRODUCT_DEVICE := xds
PRODUCT_BRAND := GPD
PRODUCT_MANUFACTURER := GPD
PRODUCT_MODEL := xds

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="xds"
