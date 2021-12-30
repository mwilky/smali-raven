.class public abstract Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/zen/ZenModeSettingsBase;Lcom/android/settings/notification/zen/ZenModeSettingsBase$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)Landroid/content/ContentResolver;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/zen/ZenModeSettingsBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method private updateZenMode(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZenMode mZenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenModeSettings"

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->unregister()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->register()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    return-void
.end method

.method updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "Cannot find preference with key %s in Controller %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
