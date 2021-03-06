.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
    }
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x4b

.field private static final GENERATE_CHALLENGE_COUNTER_TTL_MILLIS:I = 0x927c0

.field private static final GENERATE_CHALLENGE_REUSE_INTERVAL_MILLIS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Face10"

.field public static sSystemClock:Ljava/time/Clock;


# instance fields
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

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field private mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

.field private final mGeneratedChallengeCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field private final mHandler:Landroid/os/Handler;

.field private final mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field private final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field private mTestHalEnabled:Z

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$6EXGDHCffNwBBbOYR6Fryo3Io64(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 4

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const-string v1, "Face10"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 10

    const-string v0, "Face10"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iput v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-direct {v8}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;-><init>()V

    iput-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget v4, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    move-object v3, v2

    move-object v5, p1

    move-object v7, p4

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to register user switch observer"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    return-void
.end method

.method private decrementChallengeCount()I
    .locals 4

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private declared-synchronized getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "Face10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "Face10"

    const-string v2, "Failed to get face HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Face10"

    const-string v2, "NoSuchElementException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "Face10"

    const-string v2, "Face HAL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_5
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-interface {v0, v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v6, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v4, v6

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    const-string v6, "Face10"

    const-string v7, "Failed to set callback for face HAL"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    :goto_1
    const-string v0, "Face10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face HAL ready, HAL ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleLoadAuthenticatorIds()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "Face10"

    const-string v2, "Unable to set callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private incrementChallengeCount()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private isGeneratedChallengeCacheValid()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$decrementChallengeCount$2(JLjava/lang/Long;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleLoadAuthenticatorIds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(I)V
    .locals 9

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;IZLjava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsSensor(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 7

    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V

    return-object v6
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ro.face.disable_debug_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "persist.face.disable_debug_data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    new-instance v3, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    new-array v5, v1, [I

    invoke-direct {v3, v4, v5, v1}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    move-object v1, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Face10"

    const-string v4, "error while reading face debugging data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :cond_2
    :goto_2
    throw v1

    :cond_3
    :goto_3
    return-void

    :cond_4
    :goto_4
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .locals 11

    const-string v0, "Face10"

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

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

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

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

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .locals 0

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10e00000002L

    const/4 v4, 0x2

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    const-wide v8, 0x10b00000004L

    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    const-wide v10, 0x20b00000005L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000002L

    iget v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v14}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

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

.method public getEnrolledFaces(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->getLockoutModeForUser(I)I

    move-result v0

    return v0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object v0
.end method

.method public getSensorProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isHardwareDetected(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$cancelAuthentication$8$Face10(Landroid/os/IBinder;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method public synthetic lambda$cancelEnrollment$6$Face10(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;)V

    return-void
.end method

.method public synthetic lambda$new$0$Face10()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method public synthetic lambda$scheduleAuthenticate$7$Face10(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZZ)V
    .locals 24

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

    move/from16 v20, p12

    move/from16 v21, p13

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v22

    move/from16 v16, v22

    new-instance v23, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget v15, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    move-object/from16 v18, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v19, v14

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleEnroll$5$Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;[ILandroid/view/Surface;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v6, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p3

    invoke-direct {v6, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v10

    iget v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    const/16 v12, 0x4b

    move-object v2, v1

    move-object/from16 v5, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;I)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleGenerateChallenge$3$Face10(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->incrementChallengeCount()V

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isGeneratedChallengeCacheValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Face10"

    const-string v1, "Current challenge is cached and will be reused"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    move-object v1, v0

    move-object v4, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleGetFeature$13$Face10(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .locals 15

    move-object v0, p0

    move/from16 v11, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v9, p6

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;III)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;

    move/from16 v4, p6

    invoke-direct {v3, p0, v4, v1, v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleInternalCleanup$14$Face10(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v10

    move v4, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;ILjava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleLoadAuthenticatorIds$16$Face10()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$scheduleRemove$9$Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v13, p3

    invoke-direct {v5, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v11, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v12

    move-object/from16 v4, p2

    move/from16 v6, p4

    move v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleRemoveAll$10$Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v13, p3

    invoke-direct {v5, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v11, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v4, p2

    move v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILjava/util/Map;)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleResetLockout$11$Face10(II[B)V
    .locals 9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring lockout reset, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object v2, v0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;ILjava/lang/String;I[B)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$scheduleRevokeChallenge$4$Face10(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->decrementChallengeCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Face10"

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "scheduleRevokeChallenge executing - no active clients"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object v2, v1

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public synthetic lambda$scheduleSetFeature$12$Face10(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {v0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v15

    new-instance v16, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v12, p4

    invoke-direct {v5, v12}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    move-object/from16 v1, v16

    move-object/from16 v4, p3

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZ[BI)V

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public synthetic lambda$serviceDied$1$Face10()V
    .locals 6

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

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

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v2, 0x94

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {v2, v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    return-void
.end method

.method public synthetic lambda$startPreparedClient$15$Face10(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J
    .locals 18

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, v16

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    return-wide v16
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V
    .locals 17

    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;

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

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v16, v15

    move-object v15, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)V
    .locals 12

    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p4

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;[ILandroid/view/Surface;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .locals 11

    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    move v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 13

    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceDied(J)V
    .locals 2

    const-string v0, "Face10"

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setTestHalEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    return-void
.end method

.method public startPreparedClient(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
