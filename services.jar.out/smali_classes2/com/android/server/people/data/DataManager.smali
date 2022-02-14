.class public Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$Injector;,
        Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;,
        Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;,
        Lcom/android/server/people/data/DataManager$NotificationListener;,
        Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;,
        Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;,
        Lcom/android/server/people/data/DataManager$CallLogContentObserver;,
        Lcom/android/server/people/data/DataManager$ContactsContentObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_CACHED_RECENT_SHORTCUTS:I = 0x1e

.field private static final QUERY_EVENTS_MAX_AGE_MS:J = 0x493e0L

.field private static final RECENT_NOTIFICATIONS_MAX_AGE_MS:J = 0x337f9800L

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final USAGE_STATS_QUERY_INTERVAL_SEC:J = 0x78L


# instance fields
.field private final mBroadcastReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogContentObserver:Landroid/database/ContentObserver;

.field private final mContactsContentObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mConversationsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/PeopleService$ConversationsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mMmsSmsContentObserver:Landroid/database/ContentObserver;

.field private final mNotificationListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/DataManager$NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

.field private final mUsageStatsQueryFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mUserDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {p2}, Lcom/android/server/people/data/DataManager$Injector;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/people/data/DataManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cleanupCachedShortcuts(II)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    new-instance v3, Ljava/util/PriorityQueue;

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v7}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    if-le v6, v2, :cond_3

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_3
    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v6, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v11, 0x4000

    move v6, p1

    move v10, p1

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private cleanupUser(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v3}, Lcom/android/server/people/data/DataManager$NotificationListener;->unregisterAsSystemService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_4
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_5
    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    :cond_6
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_7

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    :cond_7
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/people/data/DataMaintenanceService;->cancelJob(Landroid/content/Context;I)V

    monitor-exit v0

    return-void

    :cond_8
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/UserData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/UserData;

    invoke-virtual {v2}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string v3, "DataManager"

    const-string v4, " Shortcut no longer found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v14

    iget-object v4, v0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v15

    iget-object v4, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v15, v5}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v16

    const/4 v4, 0x0

    if-eqz v16, :cond_2

    iget-object v5, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v15, v6}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_0

    :cond_2
    move-object/from16 v17, v4

    :goto_0
    new-instance v18, Landroid/app/people/ConversationChannel;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v9

    invoke-direct {v0, v2, v14, v3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v4, v18

    move-object/from16 v5, p1

    move v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v4 .. v13}, Landroid/app/people/ConversationChannel;-><init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V

    return-object v18

    :cond_3
    :goto_1
    return-object v2
.end method

.method private getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v1

    return-object v1
.end method

.method private getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Conversation does not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No conversations exist for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No settings exist for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)",
            "Lcom/android/server/people/data/PackageData;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    nop

    invoke-virtual {v3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v3
.end method

.method private getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    const/16 v14, 0xc13

    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, v0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move v10, v14

    move/from16 v11, p2

    invoke-virtual/range {v1 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/ConversationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getParentNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$cleanupCachedShortcuts$13(Landroid/util/Pair;)J
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$pruneUninstalledPackageData$10(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$pruneUninstalledPackageData$9(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, v0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupUser(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    move-object v4, v0

    if-nez v4, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/people/data/UserData;->loadUserData()V

    invoke-direct {v1, v4}, Lcom/android/server/people/data/DataManager;->updateDefaultDialer(Lcom/android/server/people/data/UserData;)V

    invoke-direct {v1, v4}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    iget-object v5, v1, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    const/4 v12, 0x0

    invoke-direct {v6, v1, v2, v12}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x78

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    move-object v14, v0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v6, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v14

    move-object v9, v13

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v0, v1, v6, v12}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0, v9, v2}, Lcom/android/server/people/data/DataManager$NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v0, v1, v12}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v0, v9, v12, v10, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v2, :cond_1

    new-instance v9, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-direct {v9, v1, v10, v12}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    iput-object v9, v1, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v8, v11, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v8, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v8, v1, v9, v12}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    iput-object v8, v1, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    iget-object v8, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v15, v10, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v8, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/people/ConversationChannel;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    nop

    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4, v0, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/people/ConversationChannel;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateDefaultDialer(Lcom/android/server/people/data/UserData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    return-void
.end method

.method private updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultSmsApp(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/android/server/people/PeopleService$ConversationsListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    nop

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    nop

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    :goto_0
    nop

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    aget-object v5, v6, v5

    invoke-virtual {v5}, Landroid/app/Person;->isImportant()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v5}, Landroid/app/Person;->isBot()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v5}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    iget-object v8, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/people/data/ContactsQueryHelper;->query(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    move v6, p2

    move-object v7, p1

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->scheduleExpiration(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)V

    :cond_0
    return-void
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method forPackagesInProfile(ILjava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBackupPayload(I)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->getBackupPayload()[B

    move-result-object v1

    return-object v1
.end method

.method getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getConversationInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getNotificationListenerServiceForTesting(I)Lcom/android/server/people/data/DataManager$NotificationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    return-object v0
.end method

.method public getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method public getRecentConversations(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 2

    nop

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/people/data/DataManager;->getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    new-instance v0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$cleanupCachedShortcuts$11$DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$cleanupCachedShortcuts$12$DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$getRecentConversations$2$DataManager(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v2

    invoke-direct {p0, v1, v2, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$getRecentConversations$3$DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$notifyConversationsListeners$14$DataManager(Ljava/util/List;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/PeopleService$ConversationsListener;

    invoke-interface {v2, p1}, Lcom/android/server/people/PeopleService$ConversationsListener;->onConversationsUpdate(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public synthetic lambda$onUserStopping$1$DataManager(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupUser(I)V

    return-void
.end method

.method public synthetic lambda$onUserUnlocked$0$DataManager(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->setupUser(I)V

    return-void
.end method

.method public synthetic lambda$pruneDataForUser$8$DataManager(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->pruneOldEvents()V

    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->pruneOrphanEvents()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneExpiredConversationStatuses(IJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method public synthetic lambda$pruneExpiredConversationStatuses$6$DataManager(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 8

    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0, p5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/people/ConversationStatus;

    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v4

    invoke-direct {p0, p3, v2, v3, v4}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$pruneExpiredConversationStatuses$7$DataManager(JLcom/android/server/people/data/PackageData;)V
    .locals 8

    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    new-instance v7, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p3, v7}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$pruneOldRecentConversations$4$DataManager(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 5

    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p6}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x337f9800

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-direct {p0, p3, p4, v0}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$pruneOldRecentConversations$5$DataManager(JILcom/android/server/people/data/PackageData;)V
    .locals 17

    move-object/from16 v7, p0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v16

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v8, v7, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, v7, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x4000

    move/from16 v9, p3

    move-object v11, v15

    move-object v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method public mimeTypeToShareEventType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x7

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    return v0
.end method

.method notifyConversationsListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopping(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserStopped()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUserUnlocked(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/people/data/UserData;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, p1, v3}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserUnlocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public pruneExpiredConversationStatuses(IJ)V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/DataManager;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public pruneOldRecentConversations(IJ)V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeAllRecentConversations(I)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move v2, p4

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method public reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "direct_share"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chooser_target"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    :goto_0
    new-instance v5, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v3, v5}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public restore(I[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->restore([B)V

    return-void
.end method
