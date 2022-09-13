# Inherit common mobile LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

# Apps
PRODUCT_PACKAGES += \
    Glimpse \
    LatinIME

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    SystemUIGo \
    Launcher3QuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUIGo \
    Launcher3QuickStepGo
else
PRODUCT_PACKAGES += \
    Launcher3QuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LMODROID_CHARGER),false)
PRODUCT_PACKAGES += \
    lmodroid_charger_animation \
    lmodroid_charger_animation_vendor
endif

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarNoHintOverlay \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay \
    NavigationBarMode2ButtonOverlay

# DesktopMode
ifneq ($(TARGET_WITHOUT_DESKTOPMODE), true)
PRODUCT_PACKAGES += \
    DesktopMode

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml

$(call inherit-product-if-exists, packages/services/VncFlinger/product.mk)
endif

# FaceUnlock
ifneq ($(TARGET_FACE_UNLOCK_OPTOUT), true)
PRODUCT_PACKAGES += \
    LMOFaceUnlock

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/LMOFaceUnlock/LMOFaceUnlock.apk \
    system/app/LMOFaceUnlock/oat/%/LMOFaceUnlock.odex \
    system/app/LMOFaceUnlock/oat/%/LMOFaceUnlock.vdex \
    system/app/LMOFaceUnlock/lib/%/libtensorflowlite_jni.so \
    system/etc/face/detect-class1.tflite \
    system/etc/face/detect-class1.txt \
    system/etc/face/mobile_face_net.tflite \
    system/etc/face/mobile_face_net.txt \
    system/etc/permissions/android.hardware.biometrics.face.xml \
    system/lib%/libtensorflowlite_jni.so
endif

# FaceUnlock - Settings RRO
PRODUCT_PACKAGES += \
    FaceUnlockSettingsOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# Themes
PRODUCT_PACKAGES += \
    LMODroidBlackTheme \
    ThemePicker \
    ThemesStub
