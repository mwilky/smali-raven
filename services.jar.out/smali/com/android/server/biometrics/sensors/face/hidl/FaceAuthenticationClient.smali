.class Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAuthenticationClient"


# instance fields
.field private final mBiometricPromptIgnoreList:[I

.field private final mBiometricPromptIgnoreListVendor:[I

.field private final mKeyguardIgnoreList:[I

.field private final mKeyguardIgnoreListVendor:[I

.field private mLastAcquire:I

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZIZI",
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v15, p14

    move-object/from16 v17, p15

    move/from16 v18, p17

    move/from16 v20, p18

    const/16 v16, 0x4

    move/from16 v14, v16

    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZIILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v3, 0x1070049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v3, 0x1070048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v3, 0x107004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    return-void
.end method

.method private getAcquireIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_0
    return-object v0
.end method

.method private getAcquireVendorIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_0
    return-object v0
.end method

.method private shouldSend(II)Z
    .locals 1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected handleLifecycleAfterAuth(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->shouldSend(II)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    return-void
.end method

.method public onError(II)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mState:I

    return-void
.end method

.method protected startHalOperation()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting auth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public wasUserDetected()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;
    .locals 5

    new-instance v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
