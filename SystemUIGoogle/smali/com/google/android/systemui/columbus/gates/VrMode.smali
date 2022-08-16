.class public final Lcom/google/android/systemui/columbus/gates/VrMode;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "VrMode.kt"


# instance fields
.field public inVrMode:Z

.field public final vrManager:Landroid/service/vr/IVrManager;

.field public final vrStateCallbacks:Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "vrmanager"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrManager:Landroid/service/vr/IVrManager;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/gates/VrMode;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrManager:Landroid/service/vr/IVrManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->inVrMode:Z

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;

    invoke-interface {v0, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Columbus/VrMode"

    const-string v3, "Could not register IVrManager listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->inVrMode:Z

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->inVrMode:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrManager:Landroid/service/vr/IVrManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->vrStateCallbacks:Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Columbus/VrMode"

    const-string v2, "Could not unregister IVrManager listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/VrMode;->inVrMode:Z

    return-void
.end method
