.class public abstract Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "ConnectivityHelperBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;
    }
.end annotation


# instance fields
.field private mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

.field private final mDefaultValue:Z

.field private final mDeviceSupport:Z

.field private mIsCarrierAllowed:Z

.field private mIsChecked:Z

.field private final mLogTag:Ljava/lang/String;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$h2dXzOZ0gPWTM5oJvpmCWBzMeTQ(Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->lambda$onStart$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$zpzFk6BNxHj9mFsF9wnLqF39nhU(Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->lambda$onStart$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->getLogTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mLogTag:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->getDefaultValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mDefaultValue:Z

    iput-boolean p2, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsChecked:Z

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->getDeviceSupport()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mDeviceSupport:Z

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->getConnectivityHelperSettingsContract()Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeviceSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "mIsChecked: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsChecked:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->refreshPreference()V

    return-void
.end method

.method private synthetic lambda$onStart$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->updateStateFromContentProvider()V

    new-instance v0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mDeviceSupport:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsCarrierAllowed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method getConnectivityHelperSettingsContract()Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;
    .locals 3

    new-instance v0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->getKeyName()Ljava/lang/String;

    move-result-object v2

    iget-boolean p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mDefaultValue:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public abstract getDefaultValue()Z
.end method

.method public abstract getDeviceSupport()Z
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public abstract getKeyName()Ljava/lang/String;
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsChecked:Z

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshPreference()V
    .locals 2

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop refresh. CurrentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;->setSettingsValue(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mLogTag:Ljava/lang/String;

    const-string p1, "setChecked fails"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method updateStateFromContentProvider()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    invoke-virtual {v0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;->queryStateFromContentProvider()V

    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    invoke-virtual {v0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;->isFeatureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsCarrierAllowed:Z

    iget-object v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mConnectivityHelperSettingsContract:Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;

    invoke-virtual {v0}, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController$ConnectivityHelperSettingsContract;->getSettingsValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/network/ConnectivityHelperBasePreferenceController;->mIsChecked:Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
