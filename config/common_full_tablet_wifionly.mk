# Inherit mobile full common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile_full.mk)

# Inherit tablet common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/tablet.mk)

$(call inherit-product, vendor/lmodroid/config/wifionly.mk)
