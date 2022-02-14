.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.source "Fingerprint21UdfpsMock.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
    }
.end annotation


# static fields
.field private static final CONFIG_AUTH_DELAY_PT1:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

.field private static final CONFIG_AUTH_DELAY_PT2:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

.field private static final CONFIG_AUTH_DELAY_RANDOMNESS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

.field public static final CONFIG_ENABLE_TEST_UDFPS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

.field private static final DEFAULT_AUTH_DELAY_PT1_MS:I = 0x12c

.field private static final DEFAULT_AUTH_DELAY_PT2_MS:I = 0x190

.field private static final DEFAULT_AUTH_DELAY_RANDOMNESS_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Fingerprint21UdfpsMock"


# instance fields
.field private final mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

.field private final mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

.field private final mRandom:Ljava/util/Random;

.field private final mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

.field private final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private final mUserHasTrust:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0067

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    new-instance v7, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v9, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget-object v12, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    invoke-virtual/range {p3 .. p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getAllLocations()Ljava/util/List;

    move-result-object v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v8, v7

    move v11, v6

    invoke-direct/range {v8 .. v15}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZLjava/util/List;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    const-class v7, Landroid/app/trust/TrustManager;

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/trust/TrustManager;

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v7, v0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$1;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-direct {v7, v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$1;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-direct {v7, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)V

    iput-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object v0
.end method

.method private getMatchingDuration()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

    const/16 v2, 0x190

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getNewCaptureDuration()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

    const/16 v2, 0x12c

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

    const/16 v4, 0x64

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v2

    add-int v4, v1, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
    .locals 11

    const-string v0, "Fingerprint21UdfpsMock"

    const-string v1, "Creating Fingerprint23Mock!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-direct {v2, v0, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    move-object v0, v2

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    iget v2, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v10, v2, p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, v1

    move-object v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;)V

    return-object v2
.end method

.method private setDebugMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Fingerprint21UdfpsMock"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDebugMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v1, v2, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->setDebugMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception when sending message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getSensorProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public synthetic lambda$onPointerDown$0$Fingerprint21UdfpsMock()V
    .locals 11

    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->getLastAuthenticatedClient()Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Not authenticating"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    instance-of v5, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;->isKeyguard()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getNewCaptureDuration()I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getMatchingDuration()I

    move-result v5

    add-int v6, v3, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    instance-of v7, v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->setSimulationTime(JI)V

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;->setSimulationTime(JI)V

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    int-to-long v9, v6

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public synthetic lambda$onPointerUp$1$Fingerprint21UdfpsMock()V
    .locals 6

    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->onAcquired(JII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->onAcquired(JII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPointerDown(IIIFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPointerUp(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 0

    return-void
.end method
