.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    check-cast p1, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->lambda$onAcquired$0$FingerprintAuthenticationClient(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method
