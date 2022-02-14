.class Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;->authenticateWithPrompt(JLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownAcquiredCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception in onAuthenticationAcquired()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception in onAuthenticationError()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception in onAuthenticationFailed()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 5

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v1, v2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper$1;->val$userId:I

    invoke-interface {v2, v0, v3, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Remote exception in onAuthenticationSucceeded()"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
