.class public Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherMaximizeCompatibilityPreferenceController.java"


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->isMaximizeCompatibilityEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    return-void
.end method

.method private is5GhzBandSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_maximize_compatibility"

    return-object p0
.end method

.method isMaximizeCompatibilityEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p0

    const-string v2, "WifiTetherMaximizeCompatibilityPref"

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabled()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBridgedModeOpportunisticShutdownEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr p0, v3

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBand:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v3, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setupMaximizeCompatibility(Landroid/net/wifi/SoftApConfiguration$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p0

    const/4 v1, 0x1

    const-string v2, "WifiTetherMaximizeCompatibilityPref"

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-virtual {p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBridgedModeOpportunisticShutdownEnabled:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBridgedModeOpportunisticShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBand:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method public updateDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->is5GhzBandSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f041660

    goto :goto_0

    :cond_1
    const p0, 0x7f041661

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
