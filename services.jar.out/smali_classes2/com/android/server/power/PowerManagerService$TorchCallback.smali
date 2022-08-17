.class Lcom/android/server/power/PowerManagerService$TorchCallback;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$TorchCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$TorchCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->getTorchEnabled(Lcom/android/server/power/PowerManagerService;)Z

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$TorchCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p2}, Lcom/android/server/power/PowerManagerService;->setTorchEnabled(Lcom/android/server/power/PowerManagerService;Z)Z

    :cond_1
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$TorchCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTorchEnabled(Lcom/android/server/power/PowerManagerService;Z)Z

    return-void
.end method
