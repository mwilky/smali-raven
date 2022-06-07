.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$OperationState;
    }
.end annotation


# static fields
.field private static final CANCEL_WATCHDOG_DELAY_MS:I = 0xbb8

.field protected static final STATE_FINISHED:I = 0x5

.field protected static final STATE_STARTED:I = 0x2

.field protected static final STATE_STARTED_CANCELING:I = 0x3

.field protected static final STATE_WAITING_FOR_COOKIE:I = 0x4

.field protected static final STATE_WAITING_IN_QUEUE:I = 0x0

.field protected static final STATE_WAITING_IN_QUEUE_CANCELING:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "BiometricSchedulerOperation"


# instance fields
.field final mCancelWatchdog:Ljava/lang/Runnable;

.field private final mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

.field private final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return p1
.end method

.method private varargs checkInState(Ljava/lang/String;[I)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": illegal state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs checkNotInState(Ljava/lang/String;[I)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-eq v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": illegal state= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private doStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "BiometricSchedulerOperation"

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Operation marked for cancellation, cancelling now: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v2, v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "monitor cancelled but does not implement ErrorConsumer"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isUnstartableHalOperation()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v1, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return v3

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "started: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getWrappedCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    return-object v0
.end method

.method private getWrappedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 5

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    new-instance v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v1
.end method

.method private isHalOperation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    return v0
.end method

.method private isUnstartableHalOperation()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, "cannot abort a non-pending operation"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->checkInState(Ljava/lang/String;[I)V

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isHalOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    const-string v2, "cancel"

    invoke-direct {p0, v2, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->checkNotInState(Ljava/lang/String;[I)V

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v2

    const-string v3, "BiometricSchedulerOperation"

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cancel - operation not interruptable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cancel - already invoked for operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling] Current client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/Interruptable;->cancel()V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancelling] Current client (without start): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    check-cast v0, Lcom/android/server/biometrics/sensors/Interruptable;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/biometrics/sensors/Interruptable;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getClientMonitor()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-object v0
.end method

.method public getProtoEnum()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v0

    return v0
.end method

.method public getSensorId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    return v0
.end method

.method public getTargetUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    return v0
.end method

.method public isAcquisitionOperation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    return v0
.end method

.method public isAuthenticateOperation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    return v0
.end method

.method public isAuthenticationOrDetectionOperation()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

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

.method public isCanceling()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnrollOperation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/EnrollClient;

    return v0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterruptable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    instance-of v0, v0, Lcom/android/server/biometrics/sensors/Interruptable;

    return v0
.end method

.method public isMarkedCanceling()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMatchingRequestId(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

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

.method public isMatchingToken(Landroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadyToStart()I
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    :cond_2
    return v0
.end method

.method public isStarted()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$BiometricSchedulerOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Watchdog Triggered]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    return-void
.end method

.method public markCanceling()Z
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string/jumbo v1, "start"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->checkInState(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "operation requires cookie"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public startWithCookie(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;I)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string/jumbo v1, "start"

    invoke-direct {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->checkInState(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatched cookie for operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSchedulerOperation"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
