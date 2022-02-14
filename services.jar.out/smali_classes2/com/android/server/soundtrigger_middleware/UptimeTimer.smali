.class Lcom/android/server/soundtrigger_middleware/UptimeTimer;
.super Ljava/lang/Object;
.source "UptimeTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;,
        Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$ZE1MMCABBeh29z-r6ev-_ww3od4(Lcom/android/server/soundtrigger_middleware/UptimeTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->threadFunc()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/UptimeTimer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/UptimeTimer;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private threadFunc()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
    .locals 2

    new-instance v0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method
