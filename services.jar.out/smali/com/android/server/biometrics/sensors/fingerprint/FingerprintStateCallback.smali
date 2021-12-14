.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;
.super Ljava/lang/Object;
.source "FingerprintStateCallback.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# instance fields
.field private mFingerprintState:I

.field private final mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    return-void
.end method

.method private notifyFingerprintStateListeners(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintStateListener;

    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Remote exception in fingerprint state change"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFingerprintState()I
    .locals 1

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    return v0
.end method

.method notifyAllFingerprintEnrollmentStateChanged(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintStateListener;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintEnrollmentStateChanged(Landroid/hardware/fingerprint/IFingerprintStateListener;IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method notifyFingerprintEnrollmentStateChanged(Landroid/hardware/fingerprint/IFingerprintStateListener;IIZ)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client finished, fps state updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enrollment state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyAllFingerprintEnrollmentStateChanged(IIZ)V

    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintStateListeners(I)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "FingerprintService"

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    :goto_0
    goto :goto_1

    :cond_2
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other authentication client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fps state updated from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintState:I

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->notifyFingerprintStateListeners(I)V

    return-void
.end method

.method public registerFingerprintStateListener(Landroid/hardware/fingerprint/IFingerprintStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintStateCallback;->mFingerprintStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
