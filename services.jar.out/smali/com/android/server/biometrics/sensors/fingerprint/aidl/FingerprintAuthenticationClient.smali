.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FingerprintAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/fingerprint/ISession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/fingerprint/Udfps;",
        "Lcom/android/server/biometrics/sensors/LockoutConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintAuthenticationClient"


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

.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private mIsPointerDown:Z

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutCache;Landroid/hardware/fingerprint/IUdfpsOverlayController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/ISession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZIZI",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
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

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move/from16 v13, p15

    move/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move/from16 v18, p20

    const/16 v19, 0x1

    move/from16 v14, v19

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZIILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->setRequestId(J)V

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    return-void
.end method


# virtual methods
.method protected handleLifecycleAfterAuth(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method

.method public isPointerDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    return v0
.end method

.method public onAcquired(II)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->onAcquiredGood(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 2
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

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    :goto_0
    return-void
.end method

.method public onError(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    return-void
.end method

.method public onLockoutPermanent()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->logOnError(Landroid/content/Context;III)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getCookie()I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getTargetUserId()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->logOnError(Landroid/content/Context;III)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getCookie()I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onPointerDown(IIFF)V
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->enable()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPointerUp()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mIsPointerDown:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;->getProbe()Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/LoggableMonitor$Probe;->disable()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUiReady()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mState:I

    :goto_0
    return-void
.end method

.method protected startHalOperation()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getUdfpsAuthReason(Lcom/android/server/biometrics/sensors/AuthenticationClient;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const-string v1, "FingerprintAuthenticationClient"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "cancellation signal was null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
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

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
