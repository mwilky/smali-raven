.class public Lcom/android/server/biometrics/sensors/BiometricScheduler;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;,
        Lcom/android/server/biometrics/sensors/BiometricScheduler$SensorType;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "BiometricScheduler"

.field protected static final LOG_NUM_RECENT_OPERATIONS:I = 0x32

.field public static final SENSOR_TYPE_FACE:I = 0x1

.field public static final SENSOR_TYPE_FP_OTHER:I = 0x3

.field public static final SENSOR_TYPE_UDFPS:I = 0x2

.field public static final SENSOR_TYPE_UNKNOWN:I


# instance fields
.field private final mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field protected final mBiometricTag:Ljava/lang/String;

.field private final mCoexCoordinator:Lcom/android/server/biometrics/sensors/CoexCoordinator;

.field private final mCrashStates:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

.field private final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field protected final mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

.field final mPendingOperations:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentOperationsLimit:I

.field private final mSensorType:I

.field private mTotalOperationsHandled:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .locals 8

    nop

    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v7

    const/16 v6, 0x32

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILcom/android/server/biometrics/sensors/CoexCoordinator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILcom/android/server/biometrics/sensors/CoexCoordinator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    iput p5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCoexCoordinator:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/CoexCoordinator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCoexCoordinator:Lcom/android/server/biometrics/sensors/CoexCoordinator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    return v0
.end method

.method private static canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;Landroid/os/IBinder;J)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->isAuthenticationOrDetectionOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->isMatchingRequestId(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelInternal invoked on non-current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation not interruptable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel already invoked for operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping cancellation for non-started operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cancelling] Current client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    iput v1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CancellationWatchdog;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static isAuthenticationOrDetectionOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private static isMatchingRequestId(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public static sensorTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UnknownUnknown"

    return-object v0

    :pswitch_0
    const-string v0, "OtherFp"

    return-object v0

    :pswitch_1
    const-string v0, "Udfps"

    return-object v0

    :pswitch_2
    const-string v0, "Face"

    return-object v0

    :pswitch_3
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthenticationOrDetection, requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stack size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;Landroid/os/IBinder;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->canCancelAuthOperation(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;Landroid/os/IBinder;J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as STATE_WAITING_IN_QUEUE_CANCELING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to cancel enrollment, null operation"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/EnrollClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not cancelling enrollment, isEnrolling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tokenMatches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of BiometricScheduler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending operations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crash State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public dumpProtoState(Z)[B
    .locals 5

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide v3, 0x10e00000001L

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide v3, 0x20e00000003L

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method public getCurrentPendingCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method protected getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordCrashState()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v3, v1, v4, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recorded crash state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void
.end method

.method public scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v2, v2, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New client incoming, marking pending client as canceling: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Added] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling Interruptable]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelInternal(Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    return-void
.end method

.method protected startNextOperationIfIdle()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No operations, returning to idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Polled] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Now Cancelling] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mis-implemented client or scheduler, trying to cancel non-interruptable operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    move v1, v2

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isUnstartableHalOperation()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v2, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Unable To Start] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Last pending operation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v6, v6, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v6, v6, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v7, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v6, v7, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_6
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_a

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null operation, index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", expected length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isHalOperation()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v8, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v8}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    :cond_8
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v9, v7, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v8, v9, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Aborted Operation] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Starting] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    goto :goto_4

    :cond_c
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception when contacting BiometricService"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for cookie before starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    :goto_4
    return-void
.end method

.method public startPreparedClient(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current operation is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation was marked for cancellation, cancelling now: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation is in the wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", expected STATE_WAITING_FOR_COOKIE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched cookie for operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->isUnstartableHalOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Unable To Start] Prepared client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Starting] Prepared client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$Operation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    :goto_0
    return-void
.end method
