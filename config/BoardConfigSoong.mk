PATH_OVERRIDE_SOONG := $(shell echo $(TOOLS_PATH_OVERRIDE))

# Add variables that we wish to make available to soong here.
EXPORT_TO_SOONG := \
    KERNEL_ARCH \
    KERNEL_BUILD_OUT_PREFIX \
    KERNEL_CROSS_COMPILE \
    KERNEL_MAKE_CMD \
    KERNEL_MAKE_FLAGS \
    KERNEL_PATH \
    PATH_OVERRIDE_SOONG \
    TARGET_KERNEL_CONFIG \
    TARGET_KERNEL_SOURCE \
    TARGET_KERNEL_PLATFORM_TARGET \
    TARGET_MAX_PAGE_SIZE_SUPPORTED \
    TARGET_PREBUILT_KERNEL_HEADERS

$(call add_soong_config_namespace,lmodroidVarsPlugin)
$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call add_soong_config_var,lmodroidVarsPlugin,$(v))))

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES ?= false
$(call soong_config_set,lmodroid_bootanimation,height,$(TARGET_SCREEN_HEIGHT))
$(call soong_config_set,lmodroid_bootanimation,width,$(TARGET_SCREEN_WIDTH))
$(call soong_config_set,lmodroid_bootanimation,half_res,$(TARGET_BOOTANIMATION_HALF_RES))

ifneq ($(TARGET_BOOTANIMATION),)
$(call soong_config_set,lmodroid_bootanimation,prebuilt_file,$(TARGET_BOOTANIMATION))
endif

# Charger
lmodroid_charger_density := mdpi
ifneq (,$(TARGET_SCREEN_DENSITY))
lmodroid_charger_density := $(strip \
  $(or $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 560))),1),xxxhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 400))),1),xxhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 280))),1),xhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 200))),1),hdpi,mdpi)))
else ifneq (,$(filter mdpi hdpi xhdpi xxhdpi xxxhdpi,$(PRODUCT_AAPT_PREF_CONFIG)))
# If PRODUCT_AAPT_PREF_CONFIG includes a dpi bucket, then use that value.
lmodroid_charger_density := $(PRODUCT_AAPT_PREF_CONFIG)
endif
$(call soong_config_set,lmodroid_charger,density,$(lmodroid_charger_density))

# Libui
ifneq ($(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS),)
    $(call soong_config_set,libui,additional_gralloc_10_usage_bits,$(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS))
endif
