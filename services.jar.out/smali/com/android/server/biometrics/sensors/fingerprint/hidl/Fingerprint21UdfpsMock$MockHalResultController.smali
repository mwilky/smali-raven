.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockHalResultController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;
    }
.end annotation


# static fields
.field private static final AUTH_VALIDITY_MS:I = 0x2710


# instance fields
.field private mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

.field private mLastAuthArgs:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;

.field private mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mLastAuthArgs:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;

    return-object v0
.end method


# virtual methods
.method getLastAuthenticatedClient()Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mLastAuthArgs:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    return-void
.end method

.method public synthetic lambda$onAuthenticated$0$Fingerprint21UdfpsMock$MockHalResultController(IJILjava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    instance-of v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fingerprint21UdfpsMock"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    const-string v4, "Finger accepted"

    invoke-static {v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    const-string v4, "Finger rejected"

    invoke-static {v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V

    :goto_1
    move-object v3, v1

    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;

    move-object v4, v11

    move-object v5, v3

    move-wide v6, p2

    move v8, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;JIILjava/util/ArrayList;)V

    iput-object v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mLastAuthArgs:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;->setLastAuthReference(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;)V

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;IJILjava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method sendAuthenticated(JIILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Fingerprint21UdfpsMock"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Udfps match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->access$100(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method
