.class public final Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogcatManagerServiceInternal"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approveAccessForClient(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public declineAccessForClient(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p1}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p2}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    invoke-static {p0}, Lcom/android/server/logcat/LogcatManagerService;->-$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
