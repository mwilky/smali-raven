.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda3;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->lambda$notifyRequestSuspendedAsync$2$DeviceStateManagerService$ProcessRecord(Landroid/os/IBinder;)V

    return-void
.end method
