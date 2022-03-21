.class public Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;
.super Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;
.source "RingVibrationIntensitySliderPreferenceController.java"


# static fields
.field static final FAKE_RING_VIBRATION_INTENSITY_KEY:Ljava/lang/String; = "ring_vibration_intensity_FAKE"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field static final VIBRATE_WHEN_RINGING_KEY:Ljava/lang/String; = "vibrate_when_ringing"


# instance fields
.field private final mVibrateWhenRingingSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v3, "ring_vibration_intensity"

    const-string v4, "vibrate_when_ringing"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController$1;

    const-string p2, "vibrate_when_ringing"

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->mVibrateWhenRingingSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->updateSliderPositionOnVibrateWhenRingingMode()V

    return-void
.end method

.method private restoreFakePreference()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSettingValue()I

    move-result p0

    const-string v1, "ring_vibration_intensity_FAKE"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private saveFakePreference(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ring_vibration_intensity_FAKE"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateSliderPositionOnVibrateWhenRingingMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->restoreFakePreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSliderPosition()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->savePreference()I

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->setSliderPositionFromPrimarySwitchTriggerReason()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultIntensity()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method protected getVibrationEnabledSetting()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "apply_ramping_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "vibrate_when_ringing"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->updateSliderPositionOnVibrateWhenRingingMode()V

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->registerSettingsObservers()V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->mVibrateWhenRingingSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->mVibrateWhenRingingSettingsContentObserver:Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->onStop()V

    return-void
.end method

.method protected setSliderPositionFromPrimarySwitchTriggerReason()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isSwitchOffTriggerReasonDependencies()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v1, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isTriggerReasonAcknowledged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->restorePreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->getDefaultIntensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPosition:I

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->restorePreference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setSliderPosition(I)Z

    :goto_0
    return-void
.end method

.method protected toggleEnable()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSliderPosition()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->setSliderPositionFromPrimarySwitchTriggerReason()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->getSliderPosition()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->savePreference()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ring_vibration_intensity"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v1}, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->setFakeSliderPosition(I)V

    invoke-direct {p0, v1}, Lcom/google/android/settings/accessibility/RingVibrationIntensitySliderPreferenceController;->saveFakePreference(I)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationIntensitySliderPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected updateSetting(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ring_vibration_intensity"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
