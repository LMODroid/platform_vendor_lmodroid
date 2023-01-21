include vendor/lmodroid/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/lmodroid/config/BoardConfigQcom.mk
endif

include vendor/lmodroid/config/BoardConfigSoong.mk

include $(CUSTOMER_VENDOR_DIR)/build/BoardConfig.mk
