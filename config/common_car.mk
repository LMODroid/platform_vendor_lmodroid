# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

# Inherit LMODroid car device tree
$(call inherit-product, device/lmodroid/car/lmodroid_car.mk)
