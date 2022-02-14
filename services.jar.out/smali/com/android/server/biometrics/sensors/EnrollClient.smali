.class public abstract Lcom/android/server/biometrics/sensors/EnrollClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "EnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/EnrollClient"


# instance fields
.field protected final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field private mEnrollmentStartTimeMs:J

.field protected final mHardwareAuthToken:[B

.field private final mHasEnrollmentsBeforeStarting:Z

.field protected final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIIZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "IIIZ)V"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v14, p6

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZIII)V

    move-object/from16 v0, p8

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    array-length v1, v14

    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    move/from16 v1, p9

    iput v1, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v2

    iput-boolean v2, v13, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    return-void
.end method


# virtual methods
.method protected getOverlayReasonFromEnrollReason(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProtoEnum()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasEnrollmentStateChanged()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEnrollments()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract hasReachedEnrollmentLimit()Z
.end method

.method public interruptsPrecedingClients()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mShouldVibrate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->vibrateSuccess()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Biometrics/EnrollClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/EnrollClient;->logOnEnrolled(IJZ)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->notifyUserActivity()V

    return-void
.end method

.method public onError(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->logOnEnrolled(IJZ)V

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasReachedEnrollmentLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Biometrics/EnrollClient"

    const-string v1, "Reached enrollment limit"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->startHalOperation()V

    return-void
.end method
