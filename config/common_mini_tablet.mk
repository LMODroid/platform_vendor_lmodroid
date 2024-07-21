# Inherit mobile mini common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile_mini.mk)

# Inherit tablet common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/tablet.mk)

$(call inherit-product, vendor/lmodroid/config/telephony.mk)
