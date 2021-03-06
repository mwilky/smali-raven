.class public abstract Lcom/android/server/policy/WakeGestureListener;
.super Ljava/lang/Object;
.source "WakeGestureListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeGestureListener"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTriggerRequested:Z

.field private final mWakeUpRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/policy/WakeGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    new-instance v0, Lcom/android/server/policy/WakeGestureListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/WakeGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/WakeGestureListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mWakeUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancelWakeUpTrigger()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

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

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WakeGestureListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mTriggerRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onWakeUp()V
.end method

.method public requestWakeUpTrigger()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/WakeGestureListener;->mTriggerRequested:Z

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/WakeGestureListener;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

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
