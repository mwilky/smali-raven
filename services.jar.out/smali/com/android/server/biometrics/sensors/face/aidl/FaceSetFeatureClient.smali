.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceSetFeatureClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# instance fields
.field public final mEnabled:Z

.field public final mFeature:I

.field public final mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "IZ[B)V"
        }
    .end annotation

    move-object v11, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move/from16 v0, p10

    iput v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    move/from16 v0, p11

    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-static/range {p12 .. p12}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public onError(II)V
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p2

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "FaceSetFeatureClient"

    const-string v1, "Remote exception"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onFeatureSet(Z)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FaceSetFeatureClient"

    const-string v1, "Remote exception"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/face/ISession;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceSetFeatureClient"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public unableToStart()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FaceSetFeatureClient"

    const-string v1, "Unable to send error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
