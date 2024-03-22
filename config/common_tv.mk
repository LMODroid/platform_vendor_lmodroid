# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

# Include AOSP audio files
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioTv.mk)

# Inherit LMODroid atv device tree
$(call inherit-product, device/lmodroid/atv/lmodroid_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/lmodroid/overlay/tv
