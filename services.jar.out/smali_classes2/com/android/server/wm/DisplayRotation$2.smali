.class public Lcom/android/server/wm/DisplayRotation$2;
.super Landroid/view/IDisplayWindowRotationCallback$Stub;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public static synthetic $r8$lambda$HRnOc5B33L_wXNCdOaZiBpzHkBk(Ljava/lang/Object;ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation$2;->lambda$continueRotateDisplay$0(Ljava/lang/Object;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Landroid/view/IDisplayWindowRotationCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$continueRotateDisplay$0(Ljava/lang/Object;ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    check-cast p0, Lcom/android/server/wm/DisplayRotation;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mcontinueRotation(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method public continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/DisplayRotation$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayRotation$2$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
