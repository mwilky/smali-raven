.class public Lcom/android/server/storage/AppCollector;
.super Ljava/lang/Object;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppCollector$BackgroundHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

.field private mStats:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AppCollector"

    sput-object v0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/storage/AppCollector$BackgroundHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/UserManager;

    const-string v0, "storagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/StorageStatsManager;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/storage/AppCollector$BackgroundHandler;-><init>(Lcom/android/server/storage/AppCollector;Landroid/os/Looper;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/app/usage/StorageStatsManager;)V

    iput-object v7, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method


# virtual methods
.method public getPackageStats(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    iget-object v0, p0, Lcom/android/server/storage/AppCollector;->mBackgroundHandler:Lcom/android/server/storage/AppCollector$BackgroundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppCollector$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/storage/AppCollector;->mStats:Ljava/util/concurrent/CompletableFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string v3, "AppCollector timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/storage/AppCollector;->TAG:Ljava/lang/String;

    const-string v3, "An exception occurred while getting app storage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
