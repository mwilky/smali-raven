.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;
    }
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Fingerprint21"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field private final mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPowerbuttonFps:Z

.field private final mIsUdfps:Z

.field private final mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field private final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

.field private final mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

.field private mTestHalEnabled:Z

.field private mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$3B_1tGkFnbIG99VYPsEb1LbVYtk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V
    .locals 7

    const-string v0, "Fingerprint21"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    iget v3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    iget v3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    iget v3, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    move v4, v5

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;)V

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-direct {v3, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {p7, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Unable to register user switch observer"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/app/ActivityTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    return-void
.end method

.method private getCurrentUser()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    .locals 14

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I

    move-result v1

    const-string v2, "Fingerprint21"

    move-object/from16 v3, p5

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    move-object/from16 v1, p2

    iget v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v12, p0

    move-object/from16 v13, p3

    invoke-direct {v11, v2, p0, v13, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object v8, v0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V

    return-object v2
.end method

.method private scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleLoadAuthenticatorIds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(IZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    move v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;ILjava/util/function/Supplier;ZLjava/util/Map;Z)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public containsSensor(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 8

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    move-object v0, v7

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V

    return-object v7
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .locals 11

    const-string v0, "Fingerprint21"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "isUdfps"

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "isPowerbuttonFps"

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "id"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "count"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "accept"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "reject"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "acquire"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "lockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "permanentLockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "acceptCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v9, "rejectCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "acquireCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v4, "prints"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "dump formatting failure"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL deaths since last reboot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x20b00000001L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    invoke-virtual {v2, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v11}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const-wide v12, 0x10500000002L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10b00000003L

    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v11

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v11

    const-wide v12, 0x10500000003L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v11

    const-wide v12, 0x10500000004L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v11

    const-wide v12, 0x10500000005L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v12, 0x10b00000004L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v13

    invoke-virtual {v2, v9, v10, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v9

    const-wide v13, 0x10500000002L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v9

    const-wide v13, 0x10500000003L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v9, 0x0

    const-wide v13, 0x10500000004L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000005L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->clear()V

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10e00000002L

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v7, 0x20e00000008L

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    const-wide v7, 0x10500000003L

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10b00000004L

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move/from16 v9, p3

    invoke-virtual {v4, v9}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const-wide v10, 0x20b00000005L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    invoke-virtual {v1, v5, v6, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000002L

    iget v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v14}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_1
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "Fingerprint21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "Fingerprint21"

    const-string v2, "Failed to get fingerprint HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Fingerprint21"

    const-string v2, "NoSuchElementException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "Fingerprint21"

    const-string v2, "Fingerprint HAL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_5
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-interface {v0, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v4, v6

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    const-string v6, "Fingerprint21"

    const-string v7, "Failed to set callback for fingerprint HAL"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    :goto_1
    const-string v0, "Fingerprint21"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fingerprint HAL ready, HAL ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleLoadAuthenticatorIds()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    goto :goto_2

    :cond_3
    const-string v0, "Fingerprint21"

    const-string v2, "Unable to set callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnrolledFingerprints(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    return v0
.end method

.method public getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object v0
.end method

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

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v0
.end method

.method public isHardwareDetected(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$cancelAuthentication$11$Fingerprint21(Landroid/os/IBinder;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method public synthetic lambda$cancelEnrollment$7$Fingerprint21(Landroid/os/IBinder;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method public synthetic lambda$new$0$Fingerprint21()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return-void
.end method

.method public synthetic lambda$rename$15$Fingerprint21(IILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$scheduleAuthenticate$9$Fingerprint21(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v17, p11

    move/from16 v22, p12

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v24

    move/from16 v16, v24

    new-instance v25, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v15, v14, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v20, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v21, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v23}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleEnroll$6$Fingerprint21(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v17, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p5

    invoke-direct {v7, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v13, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    const/16 v16, 0x3c

    move-object/from16 v1, v17

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v8, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v15, v18

    move/from16 v16, p8

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILandroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleFingerDetect$8$Fingerprint21(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v1

    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v11, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object v2, v15

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p6

    move v13, v1

    move/from16 v14, p7

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILandroid/hardware/fingerprint/IUdfpsOverlayController;ZI)V

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleGenerateChallenge$4$Fingerprint21(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 9

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v7, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v0, v8

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleInternalCleanup$14$Fingerprint21(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v10

    move v4, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;ILjava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleLoadAuthenticatorIds$2$Fingerprint21()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$scheduleRemove$12$Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v13, p3

    invoke-direct {v5, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v12

    move-object/from16 v4, p2

    move/from16 v6, p4

    move v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleRemoveAll$13$Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v13, p3

    invoke-direct {v5, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v4, p2

    move v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleResetLockout$3$Fingerprint21(II)V
    .locals 7

    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object v0, v6

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleRevokeChallenge$5$Fingerprint21(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v0, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$serviceDied$1$Fingerprint21()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v2, 0x94

    const/4 v4, -0x1

    invoke-static {v2, v3, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method public synthetic lambda$startPreparedClient$10$Fingerprint21(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public onPointerDown(IIIFF)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerDown received during client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerDown(IIFF)V

    return-void
.end method

.method public onPointerUp(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFingerDown received during client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerUp()V

    return-void
.end method

.method public onUiReady(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUiReady received during client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onUiReady()V

    return-void
.end method

.method public rename(IIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J
    .locals 17

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide v9, v15

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    return-wide v15
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v15, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-wide/from16 v4, p9

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move/from16 v9, p11

    move-object/from16 v10, p8

    move/from16 v11, p6

    move/from16 v12, p12

    move-object v14, v13

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .locals 15

    move-object v10, p0

    iget-object v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    iget-object v13, v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-wide v4, v11

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v11
.end method

.method public scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .locals 14

    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    iget-object v12, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    move-wide v4, v10

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v10
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 4

    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p3}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fingerprint21"

    const-string v2, "Failed to complete InvalidateAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceDied(J)V
    .locals 2

    const-string v0, "Fingerprint21"

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    return-void
.end method

.method setTestHalEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-void
.end method

.method public startPreparedClient(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
