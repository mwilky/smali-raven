.class public Lcom/android/server/location/contexthub/AuthStateDenialTimer;
.super Ljava/lang/Object;
.source "AuthStateDenialTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;
    }
.end annotation


# static fields
.field public static final TIMEOUT_MS:J


# instance fields
.field public mCancelled:Z

.field public final mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

.field public final mHandler:Landroid/os/Handler;

.field public final mNanoAppId:J

.field public mStopTimeInFuture:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCancelled(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStopTimeInFuture(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iput-wide p2, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    new-instance p1, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;

    invoke-direct {p1, p0, p4}, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;-><init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    iget-object v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mClient:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-wide v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mNanoAppId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->handleAuthStateTimerExpiry(J)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mCancelled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->TIMEOUT_MS:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mStopTimeInFuture:J

    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
