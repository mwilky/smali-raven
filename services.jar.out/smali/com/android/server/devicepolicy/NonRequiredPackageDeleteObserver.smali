.class final Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "NonRequiredPackageDeleteObserver.java"


# static fields
.field private static final PACKAGE_DELETE_TIMEOUT_SEC:I = 0x1e


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSuccess:Z


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public awaitPackagesDeletion()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "Interrupted while waiting for package deletion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mSuccess:Z

    return v0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DevicePolicyManager"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mPackageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mSuccess:Z

    const-string v1, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
