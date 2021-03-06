PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8992 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.default

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes_drc.xml:system/vendor/etc/audio_policy_volumes_drc.xml \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# fluence multi-mic solution
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.audiorec=false \
    persist.audio.fluence.speaker=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicecomm=true \
    persist.audio.fluence.voicerec=false \
    persist.speaker.prot.enable=true \
    ro.config.vc_call_vol_steps=7 \
    persist.audio.calfile0=/etc/acdbdata/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/acdbdata/General_cal.acdb \
    persist.audio.calfile2=/etc/acdbdata/Global_cal.acdb \
    persist.audio.calfile3=/etc/acdbdata/Handset_cal.acdb \
    persist.audio.calfile4=/etc/acdbdata/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/acdbdata/Headset_cal.acdb \
    persist.audio.calfile6=/etc/acdbdata/Speaker_cal.acdb
