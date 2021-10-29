.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;
.super Lcom/android/server/biometrics/sensors/StartUserClient;
.source "FingerprintStartUserClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/StartUserClient<",
        "Landroid/hardware/biometrics/fingerprint/IFingerprint;",
        "Landroid/hardware/biometrics/fingerprint/ISession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintStartUserClient"


# instance fields
.field private final mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILandroid/hardware/biometrics/fingerprint/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/fingerprint/IFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "II",
            "Landroid/hardware/biometrics/fingerprint/ISessionCallback;",
            "Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback<",
            "Landroid/hardware/biometrics/fingerprint/ISession;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/StartUserClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-void
.end method


# virtual methods
.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/StartUserClient;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->startHalOperation()V

    return-void
.end method

.method protected startHalOperation()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getTargetUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->mSessionCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/IFingerprint;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->mUserStartedCallback:Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;->onUserStarted(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintStartUserClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;->getCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method

.method public unableToStart()V
    .locals 0

    return-void
.end method
