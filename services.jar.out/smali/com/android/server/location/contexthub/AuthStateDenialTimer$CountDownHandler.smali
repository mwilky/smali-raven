.class Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;
.super Landroid/os/Handler;
.source "AuthStateDenialTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/AuthStateDenialTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountDownHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-static {v1}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->access$000(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-static {v1}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->access$100(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-virtual {v3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->onFinish()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
