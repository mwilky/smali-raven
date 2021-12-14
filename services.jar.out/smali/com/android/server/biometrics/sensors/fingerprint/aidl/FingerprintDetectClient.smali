.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "FingerprintDetectClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "Landroid/hardware/biometrics/fingerprint/ISession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/DetectionConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintDetectClient"


# instance fields
.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mIsStrongBiometric:Z

.field private final mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILandroid/hardware/fingerprint/IUdfpsOverlayController;ZI)V
    .locals 14
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
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            "ZI)V"
        }
    .end annotation

    move-object v13, p0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v8, p9

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZIII)V

    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->setRequestId(J)V

    move/from16 v2, p11

    iput-boolean v2, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    move-object/from16 v3, p10

    iput-object v3, v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInteractionDetected()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->vibrateSuccess()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getTargetUserId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mIsStrongBiometric:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onDetected(IIZ)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when sending onDetected"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->startHalOperation()V

    return-void
.end method

.method protected startHalOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayController;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception when requesting finger detect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->getSensorId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;->hideUdfpsOverlay(ILandroid/hardware/fingerprint/IUdfpsOverlayController;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDetectClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method
