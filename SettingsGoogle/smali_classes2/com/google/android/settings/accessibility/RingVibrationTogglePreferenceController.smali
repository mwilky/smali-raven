.class public Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;
.super Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;
.source "RingVibrationTogglePreferenceController.java"


# static fields
.field static final APPLY_RAMPING_RINGER_KEY:Ljava/lang/String; = "apply_ramping_ringer"

.field static final VIBRATE_WHEN_RINGING_KEY:Ljava/lang/String; = "vibrate_when_ringing"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ring_vibration_intensity"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isRampingRingerEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "apply_ramping_ringer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isVibrateWhenRingingOn()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
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

    iget-object p0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->mVibrator:Landroid/os/Vibrator;

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

.method protected getVibrationEnabledSetting()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->isRampingRingerEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "apply_ramping_ringer"

    return-object p0

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

.method protected isVibrationEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->getVibrationEnabledSetting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->onStart()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;->setIntensityFromPrimarySwitchTriggerReason()V

    :cond_0
    return-void
.end method

.method protected setSettingValue()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->isVibrateWhenRingingOn()Z

    move-result v0

    const-string v1, "ring_vibration_intensity"

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->isRampingRingerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/RingVibrationTogglePreferenceController;->getDefaultIntensity()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
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
