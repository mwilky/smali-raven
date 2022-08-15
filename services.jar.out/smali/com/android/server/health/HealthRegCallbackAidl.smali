.class public Lcom/android/server/health/HealthRegCallbackAidl;
.super Ljava/lang/Object;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
    }
.end annotation


# instance fields
.field public final mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

.field public final mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    return-void
.end method

.method public static registerCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    .locals 1

    const-string v0, "HealthRegCallbackAidl"

    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "health: cannot update after registering health info callback"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catch_1
    move-exception p0

    const-string p1, "health: cannot register callback, framework may cease to receive updates on health / battery info!"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static unregisterCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HealthRegCallbackAidl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x80000

    const-string v2, "HealthUnregisterCallbackAidl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    invoke-static {p1, v2}, Lcom/android/server/health/HealthRegCallbackAidl;->unregisterCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const-string p1, "HealthRegisterCallbackAidl"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Landroid/hardware/health/IHealthInfoCallback;

    invoke-static {p2, p0}, Lcom/android/server/health/HealthRegCallbackAidl;->registerCallback(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealthInfoCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
