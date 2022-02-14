.class final Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;
.super Ljava/lang/Object;
.source "ContentCapturePerUserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCapturePerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebindServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;


# direct methods
.method private constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$402(Lcom/android/server/contentcapture/ContentCapturePerUserService;Ljava/time/Instant;)Ljava/time/Instant;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$508(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService$RebindServiceRunnable;->this$0:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
