.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->lambda$onAcquired$1$FingerprintEnrollClient(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method
