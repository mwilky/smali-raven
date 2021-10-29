.class final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputMonitorHost"
.end annotation


# instance fields
.field private mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public pilferPointers()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$2000(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$2200(JLandroid/os/IBinder;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal call to pilferPointers after InputMonitorHost is disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
