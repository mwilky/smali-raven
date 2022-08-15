.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

.field public final synthetic f$1:Landroid/hardware/devicestate/DeviceStateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/devicestate/DeviceStateInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-static {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->$r8$lambda$CwW07WXYvf61Ol5nJ8YZUiNBSUo(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/hardware/devicestate/DeviceStateInfo;)V

    return-void
.end method
