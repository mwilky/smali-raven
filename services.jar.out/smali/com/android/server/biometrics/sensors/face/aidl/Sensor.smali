.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;,
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;
    }
.end annotation


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

.field private mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

.field private final mHandler:Landroid/os/Handler;

.field private final mLazySession:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field private final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field private final mTag:Ljava/lang/String;

.field private mTestHalEnabled:Z

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    new-instance v0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    new-instance v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    invoke-direct {v6, p0, p6, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    return-object p1
.end method


# virtual methods
.method createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 7

    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-object v0, v6

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    return-object v6
.end method

.method dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10e00000002L

    const/4 v4, 0x2

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    const-wide v8, 0x10b00000004L

    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

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

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v14, v14, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    invoke-static {v14}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getAuthenticatorIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method getLazySession()Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;

    return-object v0
.end method

.method getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    return-object v0
.end method

.method getScheduler()Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    return-object v0
.end method

.method getSensorProperties()Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object v0
.end method

.method getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;->access$900(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$new$0$Sensor()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;->access$900(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, -0x2710

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$1$Sensor()Landroid/hardware/biometrics/face/ISession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;->access$1000(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onBinderDied()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->recordCrashState()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    return-void
.end method

.method setTestHalEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    if-eq p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;->access$1000(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v1, "Closing old session"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;->access$1000(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;)Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTag:Ljava/lang/String;

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$Session;

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mTestHalEnabled:Z

    return-void
.end method
