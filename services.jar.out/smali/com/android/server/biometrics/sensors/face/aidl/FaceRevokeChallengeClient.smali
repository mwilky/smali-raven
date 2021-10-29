.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;
.super Lcom/android/server/biometrics/sensors/RevokeChallengeClient;
.source "FaceRevokeChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/RevokeChallengeClient<",
        "Landroid/hardware/biometrics/face/ISession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceRevokeChallengeClient"


# instance fields
.field private final mChallenge:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "Landroid/hardware/biometrics/face/ISession;",
            ">;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/RevokeChallengeClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;I)V

    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    return-void
.end method


# virtual methods
.method onChallengeRevoked(IIJ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method protected startHalOperation()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/ISession;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mChallenge:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceRevokeChallengeClient"

    const-string v2, "Unable to revokeChallenge"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_0
    return-void
.end method
