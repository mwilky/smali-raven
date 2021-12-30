.class public final Lcom/google/android/libraries/hats20/NetworkExecutor;
.super Ljava/lang/Object;
.source "NetworkExecutor.java"


# static fields
.field private static volatile networkExecutor:Ljava/util/concurrent/Executor;

.field private static final networkExecutorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public static getNetworkExecutor()Ljava/util/concurrent/Executor;
    .locals 10

    sget-object v0, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/google/android/libraries/hats20/NetworkExecutor$1;

    invoke-direct {v9}, Lcom/google/android/libraries/hats20/NetworkExecutor$1;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/libraries/hats20/NetworkExecutor;->networkExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
