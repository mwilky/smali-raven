.class public Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
.super Ljava/lang/Object;
.source "GestureAvailabilityDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureAvailabilityTracker"


# instance fields
.field private final mActiveSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isAnySensorActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    return v0
.end method

.method public markSensorActive(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying gesture availability, active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GestureAvailabilityTracker"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->notifyClientActiveCallbacks(Z)V

    :cond_2
    return-void
.end method

.method registerCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method removeCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
