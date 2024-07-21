# Inherit mobile full common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile_full.mk)

# Inherit full tablet common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/full_tablet.mk)

$(call inherit-product, vendor/lmodroid/config/wifionly.mk)
