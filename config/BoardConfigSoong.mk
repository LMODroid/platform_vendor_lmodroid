PATH_OVERRIDE_SOONG := $(shell echo $(TOOLS_PATH_OVERRIDE))

# Add variables that we wish to make available to soong here.
EXPORT_TO_SOONG := \
    KERNEL_ARCH \
    KERNEL_BUILD_OUT_PREFIX \
    KERNEL_CROSS_COMPILE \
    KERNEL_MAKE_CMD \
    KERNEL_MAKE_FLAGS \
    PATH_OVERRIDE_SOONG \
    TARGET_KERNEL_CONFIG \
    TARGET_KERNEL_SOURCE

$(call add_soong_config_namespace,lmodroidVarsPlugin)
$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call add_soong_config_var,lmodroidVarsPlugin,$(v))))

SOONG_CONFIG_NAMESPACES += lmodroidGlobalVars
SOONG_CONFIG_lmodroidGlobalVars += \
    target_libcameraservice_ext_lib

SOONG_CONFIG_NAMESPACES += lmodroidMtkVars
SOONG_CONFIG_lmodroidMtkVars += \
    has_mtk_surfaceflinger

# Soong bool variables
SOONG_CONFIG_lmodroidMtkVars_has_mtk_surfaceflinger := $(TARGET_HAS_MTK_SURFACEFLINGER)

# Set default values
TARGET_CAMERA_SERVICE_EXT_LIB ?= libcameraservice_ext_lib

# Soong value variables
SOONG_CONFIG_lmodroidGlobalVars_target_libcameraservice_ext_lib := $(TARGET_CAMERA_SERVICE_EXT_LIB)

# Camera
ifneq ($(TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED),)
    $(call soong_config_set,camera,override_format_from_reserved,$(TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED))
endif

# Libui
ifneq ($(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS),)
    $(call soong_config_set,libui,additional_gralloc_10_usage_bits,$(TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS))
endif

# Lineage Health HAL
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH),)
    $(call soong_config_set,lineage_health,charging_control_charging_path,$(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_DEADLINE_PATH),)
    $(call soong_config_set,lineage_health,charging_control_deadline_path,$(TARGET_HEALTH_CHARGING_CONTROL_DEADLINE_PATH))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED),)
    $(call soong_config_set,lineage_health,charging_control_charging_enabled,$(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED),)
    $(call soong_config_set,lineage_health,charging_control_charging_disabled,$(TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_BYPASS),)
    $(call soong_config_set,lineage_health,charging_control_supports_bypass,$(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_BYPASS))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_DEADLINE),)
    $(call soong_config_set,lineage_health,charging_control_supports_deadline,$(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_DEADLINE))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_LIMIT),)
    $(call soong_config_set,lineage_health,charging_control_supports_limit,$(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_LIMIT))
endif
ifneq ($(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_TOGGLE),)
    $(call soong_config_set,lineage_health,charging_control_supports_toggle,$(TARGET_HEALTH_CHARGING_CONTROL_SUPPORTS_TOGGLE))
endif

# Surfaceflinger
ifneq ($(TARGET_SURFACEFLINGER_UDFPS_LIB),)
    $(call soong_config_set,surfaceflinger,udfps_lib,$(TARGET_SURFACEFLINGER_UDFPS_LIB))
endif

# Vendor init
ifneq ($(TARGET_INIT_VENDOR_LIB),)
    $(call soong_config_set,libinit,vendor_init_lib,$(TARGET_INIT_VENDOR_LIB))
endif
