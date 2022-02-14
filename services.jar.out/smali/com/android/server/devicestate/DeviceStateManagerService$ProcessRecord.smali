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
    accessFlags = 0x1a
    name = "ProcessRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$RequestStatus;,
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;
    }
.end annotation


# static fields
.field private static final STATUS_ACTIVE:I = 0x0

.field private static final STATUS_CANCELED:I = 0x2

.field private static final STATUS_SUSPENDED:I = 0x1


# instance fields
.field private final mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

.field private final mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotifiedStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I


# direct methods
.method constructor <init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

    invoke-interface {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;->onProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public synthetic lambda$notifyDeviceStateInfoAsync$0$DeviceStateManagerService$ProcessRecord(Landroid/hardware/devicestate/DeviceStateInfo;)V
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

.method public synthetic lambda$notifyRequestActiveAsync$1$DeviceStateManagerService$ProcessRecord(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestActive(Landroid/os/IBinder;)V
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

.method public synthetic lambda$notifyRequestCanceledAsync$3$DeviceStateManagerService$ProcessRecord(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestCanceled(Landroid/os/IBinder;)V
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

.method public synthetic lambda$notifyRequestSuspendedAsync$2$DeviceStateManagerService$ProcessRecord(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestSuspended(Landroid/os/IBinder;)V
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

.method public notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/hardware/devicestate/DeviceStateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRequestActiveAsync(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRequestCanceledAsync(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRequestSuspendedAsync(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
