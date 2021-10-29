.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FingerprintAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/FingerprintAuthClient"


# instance fields
.field private final mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe<",
            "Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPointerDown:Z

.field private final mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZIZI",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "Z",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    const/16 v19, 0x1

    move/from16 v14, v19

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZIILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    return-void
.end method

.method private resetFailedAttempts(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method


# virtual methods
.method public handleFailedAttempt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->addFailedAttemptForUser(I)V

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v0

    return v0
.end method

.method protected handleLifecycleAfterAuth(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method

.method public isPointerDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->resetFailedAttempts(I)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mLockoutFrameworkImpl:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint locked out, lockoutMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Biometrics/FingerprintAuthClient"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onErrorInternal(IIZ)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->cancel()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->enable()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onPointerUp()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->disable()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onUiReady()V
    .locals 0

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mState:I

    :goto_0
    return-void
.end method

.method protected startHalOperation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getUdfpsAuthReason(Lcom/android/server/biometrics/sensors/AuthenticationClient;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mOperationId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting auth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Biometrics/FingerprintAuthClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public wasUserDetected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 4

    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
