.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceGetFeatureClient"


# instance fields
.field private final mFaceId:I

.field private final mFeature:I

.field private mValue:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;III)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    move-object v12, p0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    move/from16 v0, p8

    iput v0, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    move/from16 v1, p9

    iput v1, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->startHalOperation()V

    return-void
.end method

.method protected startHalOperation()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [Z

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    aput v5, v3, v0

    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    aput-boolean v5, v4, v0

    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    iput-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    iget v6, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FaceGetFeatureClient"

    const-string v3, "Unable to getFeature"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v2, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1
    return-void
.end method

.method public unableToStart()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceGetFeatureClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
