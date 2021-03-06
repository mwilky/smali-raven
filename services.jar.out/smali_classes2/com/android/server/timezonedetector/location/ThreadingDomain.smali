.class abstract Lcom/android/server/timezonedetector/location/ThreadingDomain;
.super Ljava/lang/Object;
.source "ThreadingDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
    }
.end annotation


# instance fields
.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$postAndWait$0(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method assertCurrentThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method assertNotCurrentThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
    .locals 1

    new-instance v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-object v0
.end method

.method getLockObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method abstract getThread()Ljava/lang/Thread;
.end method

.method abstract post(Ljava/lang/Runnable;)V
.end method

.method abstract postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final postAndWait(Ljava/lang/Runnable;J)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method abstract postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
.end method

.method abstract removeQueuedRunnables(Ljava/lang/Object;)V
.end method
