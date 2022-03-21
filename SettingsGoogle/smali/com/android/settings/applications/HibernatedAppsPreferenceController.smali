.class public final Lcom/android/settings/applications/HibernatedAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HibernatedAppsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_UNUSED_THRESHOLD_MS:J

.field private static final PROPERTY_HIBERNATION_UNUSED_THRESHOLD_MILLIS:Ljava/lang/String; = "auto_revoke_unused_threshold_millis2"

.field private static final TAG:Ljava/lang/String; = "HibernatedAppsPrefController"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mLoadedUnusedCount:Z

.field private mLoadingUnusedApps:Z

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mUnusedCount:I


# direct methods
.method public static synthetic $r8$lambda$6B072qAj2B-BuFrIeXVHvQW9Ork(Lcom/android/settings/applications/HibernatedAppsPreferenceController;Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->lambda$loadUnusedCount$2(Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0VtmPU9IwveVsQaxCT2TW3-qDk(Lcom/android/settings/applications/HibernatedAppsPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->lambda$updatePreference$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$waad5E2tNImZDIOwcszxu_OxaFc(Lcom/android/settings/applications/HibernatedAppsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->lambda$updatePreference$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->DEFAULT_UNUSED_THRESHOLD_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mUnusedCount:I

    iput-object p3, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private getUnusedCount()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/apphibernation/AppHibernationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/apphibernation/AppHibernationManager;

    invoke-virtual {v2}, Landroid/apphibernation/AppHibernationManager;->getHibernatingPackagesForUser()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-wide v6, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->DEFAULT_UNUSED_THRESHOLD_MS:J

    const-string v4, "permissions"

    const-string v8, "auto_revoke_unused_threshold_millis2"

    invoke-static {v4, v8, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    sub-long v7, v11, v13

    const/4 v6, 0x2

    move-wide v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    iget-object v7, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v4, 0x1200

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getLastTimeAnyComponentUsed()J

    move-result-wide v15

    sub-long v15, v11, v15

    cmp-long v15, v15, v13

    if-ltz v15, :cond_1

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getLastTimeVisible()J

    move-result-wide v15

    sub-long v15, v11, v15

    cmp-long v10, v15, v13

    if-gez v10, :cond_2

    :cond_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_4

    if-nez v10, :cond_4

    array-length v10, v8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_4

    aget-object v6, v8, v15

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v6, v9, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    const/high16 v6, 0x20000

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    goto :goto_3

    :cond_4
    move-object/from16 v17, v2

    :goto_4
    move-object/from16 v2, v17

    goto :goto_1

    :cond_5
    add-int/2addr v3, v7

    return v3
.end method

.method private static isHibernationEnabled()Z
    .locals 3

    const-string v0, "app_hibernation"

    const-string v1, "app_hibernation_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$loadUnusedCount$2(Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->getUnusedCount()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;->onUnusedCountLoaded(I)V

    return-void
.end method

.method private synthetic lambda$updatePreference$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$updatePreference$1(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mUnusedCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mLoadingUnusedApps:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mLoadedUnusedCount:Z

    iget-object p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/HibernatedAppsPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadUnusedCount(Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/applications/HibernatedAppsPreferenceController;Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mLoadingUnusedApps:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/HibernatedAppsPreferenceController;)V

    invoke-direct {p0, v0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->loadUnusedCount(Lcom/android/settings/applications/HibernatedAppsPreferenceController$UnusedCountLoadedCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mLoadingUnusedApps:Z

    :cond_1
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

    iput-object p1, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->isHibernationEnabled()Z

    move-result p0

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mLoadedUnusedCount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120057

    iget p0, p0, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->mUnusedCount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
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

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/applications/HibernatedAppsPreferenceController;->updatePreference()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
