.class Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/face/ISession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/LockoutConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAuthenticationClient"


# instance fields
.field private final mBiometricPromptIgnoreList:[I

.field private final mBiometricPromptIgnoreListVendor:[I

.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mKeyguardIgnoreList:[I

.field private final mKeyguardIgnoreListVendor:[I

.field private mLastAcquire:I

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZILcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZIZI",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
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

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v20, p18

    const/16 v16, 0x4

    move/from16 v14, v16

    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZIZIILandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    const/16 v0, 0x17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v2, p16

    iput-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    const-class v3, Landroid/app/NotificationManager;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1070046

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v5, 0x1070049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v5, 0x1070048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v5, 0x107004b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    return-void
.end method

.method private getAcquireIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_0
    return-object v0
.end method

.method private getAcquireVendorIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_0
    return-object v0
.end method

.method private shouldSendAcquiredMessage(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method


# virtual methods
.method protected handleLifecycleAfterAuth(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onAcquired(II)V
    .locals 1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

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

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 7

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "FaceAuthenticationClient"

    const-string v6, "Failed to send authentication frame"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(II)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void
.end method

.method public onLockoutPermanent()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->logOnError(Landroid/content/Context;III)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getCookie()I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FaceAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onLockoutTimed(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->logOnError(Landroid/content/Context;III)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getCookie()I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FaceAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mState:I

    return-void
.end method

.method protected startHalOperation()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/ISession;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
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

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method protected stopHalOperation()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
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

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public wasUserDetected()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

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

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->createALSCallback(Z)Lcom/android/server/biometrics/sensors/LoggableMonitor$CallbackWithProbe;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    return-object v0
.end method
