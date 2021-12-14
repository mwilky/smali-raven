.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$3:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$3:J

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;->f$6:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleFingerDetect$8$Fingerprint21(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    return-void
.end method
