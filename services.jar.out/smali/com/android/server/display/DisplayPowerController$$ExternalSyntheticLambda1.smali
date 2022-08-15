.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/display/DisplayDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/DisplayDevice;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/DisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->$r8$lambda$YhNQr5r_v5UVNYZowUSLSDCyGBk(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    return-void
.end method
