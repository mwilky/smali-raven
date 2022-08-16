.class public abstract Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColumbusTogglePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColumbusTogglePreference"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingObserver(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetCOLUMBUS_ENABLED_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "columbus_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mActivityManager:Landroid/app/IActivityManager;

    new-instance p2, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;)V

    iput-object p2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0, p3}, Lcom/android/settings/core/BasePreferenceController;->setMetricsCategory(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p1, p0, v0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f040d8d

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onStart()V
    .locals 3

    const-string v0, "ColumbusTogglePreference"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to register user switch observer"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->register()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ColumbusTogglePreference"

    const-string v2, "Failed  to unregister user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSettingObserver:Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController$SettingObserver;->unregister()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, p0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusPreferenceController;->isColumbusEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
