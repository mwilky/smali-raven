.class final Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;
.super Ljava/lang/Object;
.source "Fingerprint21UdfpsMock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestartAuthRunnable"
.end annotation


# instance fields
.field private final mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

.field private mLastAuthConsumer:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    instance-of v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    const-string v3, "Fingerprint21UdfpsMock"

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-FingerprintAuthenticationClient client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mLastAuthConsumer:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not match mLastAuthConsumer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mLastAuthConsumer:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting auth, current: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    const-string v3, "Auth timed out"

    invoke-static {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->getOperationId()J

    move-result-wide v16

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v18

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v19

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v20

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->isRestricted()Z

    move-result v22

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getStatsClient()I

    move-result v23

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->isKeyguard()Z

    move-result v24

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->access$500(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v4

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v5, v15

    move-wide/from16 v6, v16

    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J

    return-void
.end method

.method setLastAuthReference(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->mLastAuthConsumer:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    return-void
.end method
