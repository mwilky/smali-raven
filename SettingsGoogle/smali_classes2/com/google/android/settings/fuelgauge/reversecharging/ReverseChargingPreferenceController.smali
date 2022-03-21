.class public Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingPreferenceController;
.super Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;
.source "ReverseChargingPreferenceController.java"


# instance fields
.field mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingPreferenceController;->mPreference:Landroidx/preference/Preference;

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

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

.method public updateState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->getThresholdLevel()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isReverseChargingOn()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isOverheat()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041075

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v2}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isOnWirelessCharge()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f04107b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f04107c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_5

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f041076

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    const v0, 0x7f041070

    goto :goto_0

    :cond_6
    const v0, 0x7f04106d

    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
