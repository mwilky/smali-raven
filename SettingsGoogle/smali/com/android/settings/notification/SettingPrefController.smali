.class public abstract Lcom/android/settings/notification/SettingPrefController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SettingPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field protected mPreference:Lcom/android/settings/notification/SettingPref;

.field protected mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPrefController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;-><init>(Lcom/android/settings/notification/SettingPrefController;)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void
.end method
