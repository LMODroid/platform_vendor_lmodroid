# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
