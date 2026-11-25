# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

# car-frameworks-service follows services in the system_server classpath and implements its interfaces: R8 on
# services.jar made LaunchParamsModifier.flushLog() abstract and system_server died at boot (AbstractMethodError).
# AOSP itself turns it off when services isn't the last system_server jar; common.mk forces it on.
SYSTEM_OPTIMIZE_JAVA := false

# Inherit LMODroid car device tree
$(call inherit-product, device/lmodroid/car/lmodroid_car.mk)
