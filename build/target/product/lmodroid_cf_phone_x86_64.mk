# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, device/google/cuttlefish/vsoc_x86_64/phone/aosp_cf.mk)

include vendor/lmodroid/build/target/product/lmodroid_generic_target.mk

TARGET_NO_KERNEL_OVERRIDE := true

# Overrides
PRODUCT_NAME := lmodroid_cf_phone_x86_64
PRODUCT_MODEL := LMODroid Cuttlefish phone built for x86_64
