.class public final Lcom/google/android/systemui/elmyra/gates/VrMode;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "VrMode.java"


# instance fields
.field public mInVrMode:Z

.field public final mVrManager:Landroid/service/vr/IVrManager;

.field public final mVrStateCallbacks:Lcom/google/android/systemui/elmyra/gates/VrMode$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/VrMode$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/VrMode$1;-><init>(Lcom/google/android/systemui/elmyra/gates/VrMode;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrStateCallbacks:Lcom/google/android/systemui/elmyra/gates/VrMode$1;

    const-string/jumbo p1, "vrmanager"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    return p0
.end method

.method public final onActivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrStateCallbacks:Lcom/google/android/systemui/elmyra/gates/VrMode$1;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Elmyra/VrMode"

    const-string v2, "Could not register IVrManager listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mVrStateCallbacks:Lcom/google/android/systemui/elmyra/gates/VrMode$1;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Elmyra/VrMode"

    const-string v2, "Could not unregister IVrManager listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    :cond_0
    :goto_0
    return-void
.end method
