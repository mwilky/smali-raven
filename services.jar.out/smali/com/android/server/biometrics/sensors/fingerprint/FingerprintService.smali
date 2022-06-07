.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

.field private final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mSensorProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastAllAuthenticatorsRegistered()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Landroid/util/Pair;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object v0
.end method

.method private broadcastAllAuthenticatorsRegistered()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticatorsRegisteredCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    :try_start_1
    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "FingerprintService"

    const-string v6, "Remote exception in onAllAuthenticatorsRegistered"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :try_start_2
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "mSensorProps is empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastCurrentEnrollmentState(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 16

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object v10, v1

    iget v1, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v7, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    move-result-object v1

    move-object v11, v1

    invoke-virtual {v8}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    move-object v13, v1

    iget v1, v10, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v11, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_2
    move v6, v1

    iget-object v14, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Rejecting "

    const-string v4, "FingerprintService"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not a current user or profile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-direct {p0, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; permission denied"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p3, p4}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not in foreground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v2
.end method

.method private checkAppOps(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private getEnrolledFingerprintsDeprecated(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSingleProvider()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getProviderForSensor(I)Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSensorProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mSensorProps:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSingleProvider()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FingerprintService"

    if-eqz v1, :cond_0

    const-string v1, "No providers found"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v5, v1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->containsSensor(I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v4, "Provider not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public synthetic lambda$broadcastCurrentEnrollmentState$0$FingerprintService(Landroid/hardware/fingerprint/IFingerprintStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintEnrollmentStateChanged(Landroid/hardware/fingerprint/IFingerprintStateListener;IIZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    iget v2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1, v2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyAllFingerprintEnrollmentStateChanged(IIZ)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintStateCallback:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->broadcastCurrentEnrollmentState(Landroid/hardware/fingerprint/IFingerprintStateListener;)V

    return-void
.end method
