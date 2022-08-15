.class public abstract Lcom/android/server/timezonedetector/location/ThreadingDomain;
.super Ljava/lang/Object;
.source "ThreadingDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
    }
.end annotation


# instance fields
.field public final mLockObject:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$iOR7YTmPe6qb-H0s8Z-0RjW50g8(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->lambda$postAndWait$0(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$postAndWait$0(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public assertCurrentThread()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public assertNotCurrentThread()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
    .locals 1

    new-instance v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-object v0
.end method

.method public getLockObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract getThread()Ljava/lang/Thread;
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
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

.method public final postAndWait(Ljava/lang/Runnable;J)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
.end method

.method public abstract removeQueuedRunnables(Ljava/lang/Object;)V
.end method
