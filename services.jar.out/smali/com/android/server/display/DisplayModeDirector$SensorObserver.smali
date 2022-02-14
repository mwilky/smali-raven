.class final Lcom/android/server/display/DisplayModeDirector$SensorObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SensorObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mIsProxActive:Z

.field private final mProximitySensorName:Ljava/lang/String;

.field private final mProximitySensorType:Ljava/lang/String;

.field private final mSensorObserverLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v0, "android.sensor.proximity"

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorType:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    return-void
.end method

.method private recalculateVotesLocked()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v7, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v8, "android.sensor.proximity"

    invoke-virtual {v6, v4, v7, v8}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v8, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v7, v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    :cond_0
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v7, 0xb

    invoke-interface {v6, v4, v7, v5}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "  SensorObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsProxActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    mDozeStateByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public observe()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v8, v5}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x7

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDisplayChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProximityActive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
