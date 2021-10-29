.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceSetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceSetFeatureClient"


# instance fields
.field private final mEnabled:Z

.field private final mFaceId:I

.field private final mFeature:I

.field private final mHardwareAuthToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZ[BI)V
    .locals 14
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
            "IIZ[BI)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    move/from16 v0, p8

    iput v0, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    move/from16 v1, p9

    iput-boolean v1, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    move/from16 v2, p11

    iput v2, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    array-length v3, v13

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v13, v4

    iget-object v6, v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->startHalOperation()V

    return-void
.end method

.method protected startHalOperation()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceSetFeatureClient"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v2, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1
    return-void
.end method

.method public unableToStart()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceSetFeatureClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
