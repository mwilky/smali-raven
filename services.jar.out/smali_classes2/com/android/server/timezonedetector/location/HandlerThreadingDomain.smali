.class final Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;
.super Lcom/android/server/timezonedetector/location/ThreadingDomain;
.source "HandlerThreadingDomain.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$postAndWait$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 5
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

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertNotCurrentThread()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->post(Ljava/lang/Runnable;)V

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Timed out"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method removeQueuedRunnables(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
