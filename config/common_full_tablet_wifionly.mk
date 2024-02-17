$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lmodroid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lmodroid/overlay/dictionaries

$(call inherit-product, vendor/lmodroid/config/wifionly.mk)
