.class Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "FaceInternalCleanupClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/InternalCleanupClient<",
        "Landroid/hardware/face/Face;",
        "Landroid/hardware/biometrics/face/ISession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;ILjava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;IILjava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected getEnumerateClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;I)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;I)",
            "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalEnumerateClient;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalEnumerateClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;I)V

    return-object v9
.end method

.method protected getRemovalClient(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/server/biometrics/sensors/RemovalClient<",
            "Landroid/hardware/face/Face;",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;"
        }
    .end annotation

    new-instance v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput p4, v5, v0

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)V

    return-object v11
.end method
