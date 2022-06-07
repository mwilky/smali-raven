.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "UserAwareBiometricScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;,
        Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "UaBiometricScheduler"


# instance fields
.field private final mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

.field private mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/StopUserClient<",
            "*>;"
        }
    .end annotation
.end field

.field private final mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .locals 9

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;Lcom/android/server/biometrics/sensors/CoexCoordinator;)V
    .locals 9

    move-object v8, p0

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILcom/android/server/biometrics/sensors/CoexCoordinator;)V

    move-object v0, p6

    iput-object v0, v8, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    move-object/from16 v1, p7

    iput-object v1, v8, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaBiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUserStopped()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected onUserStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnUserStopped]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-void
.end method

.method protected startNextOperationIfIdle()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No operations, returning to idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getTargetUserId()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto/16 :goto_0

    :cond_2
    const/16 v2, -0x2710

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    invoke-interface {v2, v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    move-result-object v2

    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Starting User] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Waiting for StopUser] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    move-object v2, v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stopping User] current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/StopUserClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    :goto_0
    return-void
.end method
