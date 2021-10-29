.class public abstract Lcom/android/server/biometrics/sensors/StopUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "StopUserClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;IILcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "II",
            "Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public onUserStopped()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;->onUserStopped()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/StopUserClient;->getCallback()Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
