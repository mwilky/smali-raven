.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$2:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$3:Landroid/hardware/face/IFaceServiceReceiver;

    iput p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$4:I

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$2:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$3:Landroid/hardware/face/IFaceServiceReceiver;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$4:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleRemove$9$Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    return-void
.end method
