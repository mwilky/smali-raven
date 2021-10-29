.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCollector;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKGROUND_OBSERVER_DELAY:J = 0x2710L

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"

.field private static final TOO_MANY_OBSERVERS_THRESHOLD:I = 0x3e8

.field private static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "Landroid/database/IContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverLeakDetectedUid:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9

    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    new-instance v1, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/internal/os/BinderDeathDispatcher;
    .locals 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .locals 4

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds being rounded up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enforceNonFullCrossUserPermission(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .locals 6

    if-eqz p2, :cond_0

    nop

    const-string/jumbo v0, "v_exemption"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eq v2, v1, :cond_0

    return v2

    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v3

    const/4 v4, 0x2

    if-le v2, v4, :cond_5

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    if-le v2, v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_5
    :goto_1
    return v4
.end method

.method private getSyncExemptionForCaller(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .locals 4

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .locals 8

    const/4 v0, -0x2

    if-ne p6, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    :cond_0
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-ltz p6, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    if-eqz p5, :cond_4

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_1

    :cond_4
    nop

    :goto_1
    move-object v1, v7

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    return p6

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :goto_2
    return-void
.end method

.method private static normalizeSyncable(I)I
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Invalid extras specified."

    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_0
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Account must not be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p3, :cond_2

    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-wide v14, v4

    :try_start_2
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_1

    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v11, p1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p3

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_4
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    move-object/from16 v6, v17

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v6

    goto :goto_1

    :cond_2
    move-object/from16 v6, v17

    new-instance v5, Lcom/android/server/content/ContentService$2;

    invoke-direct {v5, v1, v6}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "  pid "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " observers"

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "Total number of nodes: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string v5, "Total number of observers: "

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    sget-object v5, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    nop

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    sget-object v4, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_3
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge v0, v5, :cond_4

    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :try_start_a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :goto_4
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_3
    move-exception v0

    move-object/from16 v16, v10

    :goto_5
    :try_start_10
    monitor-exit v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_12
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .locals 5

    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    const/4 v2, -0x1

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMasterSyncAutomatically()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-object v4

    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const/4 v4, 0x0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public synthetic lambda$new$0$ContentService(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyChange([Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    new-instance v29, Lcom/android/server/content/ContentService$ObserverCollector;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    array-length v0, v9

    const/16 v30, 0x0

    move/from16 v10, v30

    :goto_0
    if-ge v10, v0, :cond_4

    aget-object v11, v9, v10

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, v19

    move v4, v15

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x1a

    move/from16 v5, p6

    if-ge v5, v4, :cond_1

    const-string v4, "Failed to find provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "ContentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notify for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v5, p6

    :goto_1
    invoke-direct {v8, v11, v1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v5, p6

    :goto_2
    iget-object v3, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v3

    :try_start_0
    invoke-static {v11}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v23

    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/16 v24, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v25, p2

    move/from16 v26, p3

    move/from16 v27, p4

    move/from16 v28, v1

    invoke-virtual/range {v21 .. v29}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    monitor-exit v3

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move/from16 v5, p6

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/content/ContentService$ObserverCollector;->dispatch()V

    const/4 v0, 0x0

    move v3, v0

    :goto_4
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v11, 0x0

    invoke-direct {v8, v15}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v10, v0

    move/from16 v12, v20

    move v13, v15

    move-object/from16 v21, v14

    move-object v14, v4

    move/from16 v22, v15

    move/from16 v15, v16

    move/from16 v16, v22

    move/from16 v17, v19

    move-object/from16 v18, p7

    :try_start_2
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object/from16 v21, v14

    move/from16 v22, v15

    goto :goto_5

    :cond_6
    move-object/from16 v21, v14

    move/from16 v22, v15

    :goto_5
    iget-object v10, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    array-length v0, v9

    move/from16 v11, v30

    :goto_6
    if-ge v11, v0, :cond_8

    aget-object v12, v9, v11

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-direct {v8, v6, v7, v12}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_8
    monitor-exit v10

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v21

    move/from16 v15, v22

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_9
    move-object/from16 v21, v14

    move/from16 v22, v15

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v21, v14

    move/from16 v22, v15

    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method onBootPhase(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    :goto_0
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x226
        :pswitch_0
    .end packed-switch
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method onStartUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    :cond_0
    return-void
.end method

.method onStopUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    :cond_0
    return-void
.end method

.method onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    :cond_0
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceNonFullCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 6

    nop

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_3

    if-eqz v15, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_1

    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring content changes for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 v3, p5

    :goto_0
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    :try_start_0
    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v13

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_1
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    move v5, v14

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_3
    move/from16 v3, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const/4 v0, 0x1

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v17

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v18

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v8, -0x2

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v14

    move v5, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, v17

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .locals 3

    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 15

    move-object v1, p0

    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to set the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    move v4, p1

    move v5, p2

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v10, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-direct {v1, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v13

    move v8, v11

    move v9, v12

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v13, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v23

    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v10, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    :try_start_2
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v17, v2

    invoke-direct {v1, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v16

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_1

    :cond_1
    nop

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v8, -0x2

    move-object v2, v0

    move/from16 v4, p2

    move v5, v14

    move-object v7, v12

    move/from16 v9, v23

    move-wide/from16 v16, v10

    move v10, v14

    move v11, v15

    move-object/from16 v18, v12

    move-object/from16 v12, p3

    :try_start_4
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v18, v12

    :goto_1
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
