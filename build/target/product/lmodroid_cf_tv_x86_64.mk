# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, device/google/cuttlefish/vsoc_x86_64/tv/aosp_cf.mk)

include vendor/lmodroid/build/target/product/lmodroid_generic_tv_target.mk

TARGET_NO_KERNEL_OVERRIDE := true

# Overrides
PRODUCT_NAME := lmodroid_cf_tv_x86_64
PRODUCT_MODEL := LMODroid Cuttlefish TV built for x86_64
