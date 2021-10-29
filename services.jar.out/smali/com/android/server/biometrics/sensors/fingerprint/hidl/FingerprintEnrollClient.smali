.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FingerprintEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollClient"


# instance fields
.field private final mEnrollReason:I

.field private mIsPointerDown:Z

.field private final mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

.field private final mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILandroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;II",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            "I)V"
        }
    .end annotation

    move-object v13, p0

    move/from16 v14, p13

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIIZ)V

    move-object/from16 v0, p11

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v1, p12

    iput-object v1, v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    iput v14, v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->setShouldLog(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected hasReachedEnrollmentLimit()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many fingerprints registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintEnrollClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isPointerDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    return v0
.end method

.method public onAcquired(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onAcquired(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->isValidAcquisitionMessage(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onEnrollmentHelp(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    :cond_0
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onEnrollmentProgress(IILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;->hideOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V

    :cond_0
    return-void
.end method

.method public onError(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;->hideOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mIsPointerDown:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    return-void
.end method

.method public onUiReady()V
    .locals 0

    return-void
.end method

.method protected startHalOperation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mEnrollReason:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->getReasonFromEnrollReason(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;->showOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelBadCalibrationNotification(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mHardwareAuthToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getTargetUserId()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mTimeoutSec:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;->hideOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SidefpsHelper;->hideOverlay(Landroid/hardware/fingerprint/ISidefpsController;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 5

    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
