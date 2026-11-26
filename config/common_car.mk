# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

SYSTEM_OPTIMIZE_JAVA := false

# Inherit LMODroid car device tree
$(call inherit-product, device/lmodroid/car/lmodroid_car.mk)
