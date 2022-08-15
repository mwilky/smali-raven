.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
.super Ljava/lang/Object;
.source "UserAwareBiometricScheduler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientFinishedCallback"
.end annotation


# instance fields
.field public final mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;


# direct methods
.method public static synthetic $r8$lambda$__6iHNTMW8e8Wd2Tw0aaNJQ1AaE(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-void
.end method

.method private synthetic lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Client finished] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", success: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "operation is already null or different (reset?): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->startNextOperationIfIdle()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
