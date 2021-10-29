.class public Lcom/android/server/notification/NotificationHistoryManager;
.super Ljava/lang/Object;
.source "NotificationHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "notification_history"

.field private static final TAG:Ljava/lang/String; = "NotificationHistory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHistoryEnabled:Landroid/util/SparseBooleanArray;

.field private final mLock:Ljava/lang/Object;

.field final mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

.field private final mUserPendingPackageRemovals:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/notification/NotificationHistoryDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserUnlockedStates:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationHistoryManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationHistoryManager;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->disableHistory()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-string v1, "NotificationHistory"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "History disabled for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v0, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "notification_history"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/server/notification/NotificationHistoryDatabaseFactory;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    const-string v5, "Attempted to initialize service for stopped or removed user "

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v6, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    throw v4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 1

    new-instance v0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public deleteConversations(Ljava/lang/String;ILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    nop

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "NotificationHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to remove conversation for locked/gone/disabled user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v2, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteConversations(Ljava/lang/String;Ljava/util/Set;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    nop

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "NotificationHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to remove channel for locked/gone/disabled user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v2, p1, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    nop

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "NotificationHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to remove notif for locked/gone/disabled user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->deleteNotificationHistoryItem(Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doesHistoryExistForUser(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPendingPackageRemovalsForUser(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isHistoryEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUserUnlocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$addNotification$0$NotificationHistoryManager(Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "NotificationHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add notif for locked/gone/disabled user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationHistoryDatabase;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onBootPhaseAppsCanStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->observe()V

    return-void
.end method

.method onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->stopObserving()V

    return-void
.end method

.method onHistoryEnabledChanged(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    nop

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserStopped(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserUnlocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    nop

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "NotificationHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to unlock gone/disabled user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->onPackageRemoved(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(Lcom/android/server/notification/NotificationHistoryDatabase;I)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readFilteredNotificationHistory(ILjava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "NotificationHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to read history for locked/gone/disabled user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/NotificationHistory;

    invoke-direct {v2}, Landroid/app/NotificationHistory;-><init>()V

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationHistory;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readNotificationHistory([I)Landroid/app/NotificationHistory;
    .locals 9

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    if-nez p1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    nop

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "NotificationHistory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to read history for locked/gone/disabled user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory()Landroid/app/NotificationHistory;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method replaceNotificationHistoryDatabase(ILcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public triggerWriteToDisk()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationHistoryDatabase;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->forceWriteToDisk()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
