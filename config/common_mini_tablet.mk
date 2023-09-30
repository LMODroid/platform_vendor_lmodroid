# Inherit mini common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/lmodroid/config/telephony.mk)
