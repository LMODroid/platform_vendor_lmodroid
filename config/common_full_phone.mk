# Inherit mobile full common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile_full.mk)

# UDFPS Animation effects
PRODUCT_PACKAGES += \
    UdfpsAnimations

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/lmodroid/config/telephony.mk)
