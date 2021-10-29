.class public abstract Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "GenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenerateChallengeClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->startHalOperation()V

    return-void
.end method

.method public unableToStart()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;->getTargetUserId()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GenerateChallengeClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
