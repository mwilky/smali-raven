.class final Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceStateProviderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$400(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSupportedDeviceStatesChanged([Lcom/android/server/devicestate/DeviceState;)V
    .locals 2

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$300(Lcom/android/server/devicestate/DeviceStateManagerService;[Lcom/android/server/devicestate/DeviceState;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supported device states must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
