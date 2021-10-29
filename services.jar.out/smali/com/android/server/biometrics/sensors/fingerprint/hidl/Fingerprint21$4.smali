.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleEnroll$6$Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field final synthetic val$fingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->val$fingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->val$fingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->access$800(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IZ)V

    :cond_0
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;->val$fingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
