.class public Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HapticsSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDependenciesSettingObserver:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;

.field mIsAvailable:Z

.field mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field mRingerModeSilencedBefore:Z

.field private mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

.field private mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$FCnr_PrpO0RXkQbVAphic5SaJf0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    new-instance p2, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$2;-><init>(Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;)V

    iput-object p2, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mDependenciesSettingObserver:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;

    new-instance p2, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-direct {p2, p1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    return-void
.end method

.method private enablePreferenceSetting(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static isAllSettingDependenciesOff(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_intensity"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_vibration_intensity"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "ring_vibration_intensity"

    invoke-static {p0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    move p0, v2

    goto :goto_3

    :cond_3
    move p0, v1

    :goto_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    return v2
.end method

.method private static synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private showSwitch(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->hide()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f04005f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->showSwitch(Z)V

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {p1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->updatePreferenceOnDependencyChange()V

    :cond_0
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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
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

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mDependenciesSettingObserver:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->getPrimarySwitchOffTriggerReason()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v1, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isTriggerReasonAcknowledged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v1, "vibrate_for_calls_trigger_reason_acknowledged"

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isTriggerReasonAcknowledged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mDependenciesSettingObserver:Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->enablePreferenceSetting(Z)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->isAllSettingDependenciesOff(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 p1, 0x0

    const-string p2, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected updatePreference()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/settings/accessibility/HapticsUtils;->isVibrationPrimarySwitchOn(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->showSwitch(Z)V

    iget-boolean v3, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mIsAvailable:Z

    xor-int/2addr v3, v0

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mRingerModeSilencedBefore:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->enablePreferenceSetting(Z)V

    iget-object v2, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-direct {p0, v4}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->enablePreferenceSetting(Z)V

    iget-object v4, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mRingerModeSilencedBefore:Z

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "vibrate_for_calls_trigger_reason_acknowledged"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v2, "ring_vibration_trigger_reason_acknowledged"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mIsAvailable:Z

    return-void
.end method

.method protected updatePreferenceOnDependencyChange()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->isAllSettingDependenciesOff(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->enablePreferenceSetting(Z)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;->isAllSettingDependenciesOff(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
