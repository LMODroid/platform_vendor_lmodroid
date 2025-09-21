LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := LMORemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Gramophone F-Droid OrganicMaps UdfpsAnimations
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := LMORemovePackagesMinimal
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Gramophone F-Droid F-DroidPrivilegedExtension UdfpsAnimations NumberHub FontAlbertSansOverlay FontVazirmatnOverlay Backgrounds GameSpace ParallelSpace LMOPdfViewer OpenEUICC Ripple QuickSearchBox Recorder TouchGestures Glimpse Etar LMODynamicWallpaper LMOSystemUIClock OrganicMaps
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
