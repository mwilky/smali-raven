.class Lcom/android/server/wm/DisplayHashController$Handler;
.super Landroid/os/Handler;
.source "DisplayHashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# static fields
.field static final MSG_SERVICE_SHUTDOWN_TIMEOUT:I = 0x1

.field static final SERVICE_SHUTDOWN_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayHashController;->access$400(Lcom/android/server/wm/DisplayHashController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayHashController;->access$500(Lcom/android/server/wm/DisplayHashController;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayHashController;->access$600(Lcom/android/server/wm/DisplayHashController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-static {v2}, Lcom/android/server/wm/DisplayHashController;->access$500(Lcom/android/server/wm/DisplayHashController;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayHashController;->access$502(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;)Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

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
    return-void
.end method

.method resetTimeoutMessage()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayHashController$Handler;->removeMessages(I)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayHashController$Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
