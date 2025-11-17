# Inherit common LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {GoogleSansFlex,Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/google-sans-flex/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)
$(call inherit-product-if-exists, external/libremobileos-fonts/AlbertSans/fonts.mk)
$(call inherit-product-if-exists, external/libremobileos-fonts/Vazirmatn/fonts.mk)

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontAlbertSansOverlay \
    FontGoogleSansFlexOverlay \
    FontLatoOverlay \
    FontRubikOverlay \
    FontVazirmatnOverlay

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Include LMODroid LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lmodroid/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lmodroid/overlay/dictionaries
