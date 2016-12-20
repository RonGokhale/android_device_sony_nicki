# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# Platform specific overlays
DEVICE_PACKAGE_OVERLAYS := device/sony/nicki/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/root/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/root/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/rootdir/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.baseband.sh:system/etc/init.qcom.baseband.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/thermald-8930.conf:system/etc/thermald-8930.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keychars/fih_gpio-keys.kcm:system/usr/keychars/fih_gpio-keys.kcm \
    $(LOCAL_PATH)/rootdir/system/usr/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/fih_gpio-keys.kl:system/usr/keylayout/fih_gpio-keys.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/msm8930-sitar-snd-card_Button_Jack.kl:system/usr/keylayout/msm8930-sitar-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/sbin/wait4tad_static:root/sbin/wait4tad_static \
    $(LOCAL_PATH)/rootdir/root/sbin/tad_static:root/sbin/tad_static

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/system/etc/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/rootdir/system/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libtinyxml

PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFC FW
PRODUCT_PACKAGES += \
    libpn544_fw

ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/sony/nicki/rootdir/system/etc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/sony/nicki/rootdir/system/etc/nfcee_access_debug.xml
endif

PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_PACKAGES += \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    libqdMetaData \
    memtrack.msm8960

# Camera wrapper
PRODUCT_PACKAGES += \
    camera.qcom

# Lights wrapper
PRODUCT_PACKAGES += \
    lights.qcom

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.qcom

PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

PRODUCT_PACKAGES += \
    gps.msm8960 \
    gps.conf \
    sap.conf \
    izat.conf

PRODUCT_PACKAGES += \
    wcnss_service \
    libQWiFiSoftApCfg \
    libqsap_sdk \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libemoji

PRODUCT_PACKAGES += \
    libsony

PRODUCT_PACKAGES += \
    WallpaperPicker \
    Stk

# Wlan
PRODUCT_PROPERTY_OVERRIDES += \
    wlan.driver.ath=0 \
    wifi.interface=wlan0

# QCRIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM

# Ringer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# System props for telephony System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0

# QC Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0 \
    persist.hwc.mdpcomp.enable=true \
    debug.composition.type=dyn

# Property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# Property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.virtual=0

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.dualmic.config=endfire \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicecomm=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    use.dedicated.device.for.voip=true \
    media.aac_51_output_enabled=true \
    audio.offload.disable=0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x5 \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1

# OpenGL ES 3.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-swap=false

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# System prop for NFC DT
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C

PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES += \
    libtime_genoff \
    com.google.widevine.software.drm \
    TimeService

# Product attributes
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product-if-exists, $(SNPATH)/device-extra.mk)
