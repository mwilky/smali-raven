.class public Lcom/android/settings/network/WifiSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiSwitchPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/WifiSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "main_toggle_wifi"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/widget/GenericSwitchController;

    invoke-direct {v3, v0}, Lcom/android/settings/widget/GenericSwitchController;-><init>(Lcom/android/settingslib/RestrictedSwitchPreference;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v1, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/WifiSwitchPreferenceController;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    :cond_0
    return-void
.end method
