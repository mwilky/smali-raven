.class public Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;
.super Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.source "CdmaSystemSelectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "roaming_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->setCdmaRoamingMode(I)V

    return-void
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->setCdmaRoamingMode(I)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "roaming_settings"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaRoamingMode()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;->resetCdmaRoamingModeToDefault()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    long-to-int p0, v3

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
