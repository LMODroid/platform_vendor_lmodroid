$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit mini common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
