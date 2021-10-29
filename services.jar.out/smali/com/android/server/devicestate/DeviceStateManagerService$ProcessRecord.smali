.class final Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProcessRecord"
.end annotation


# instance fields
.field private final mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

.field private final mPid:I

.field private final mRequestRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Landroid/hardware/devicestate/IDeviceStateManagerCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mRequestRecords:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    iput p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mRequestRecords:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->access$1100(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that device state changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyRequestActiveAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$600(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestActive(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that request state changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyRequestCanceledAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$600(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestCanceled(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that request state changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyRequestSuspendedAsync(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;->access$600(Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestSuspended(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that request state changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceStateManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
