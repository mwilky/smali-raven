.class public final Lcom/google/android/systemui/autorotate/AutorotateDataService;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;,
        Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;
    }
.end annotation


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public mDebugSensor:Landroid/hardware/Sensor;

.field public final mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

.field public mLastPreIndication:I

.field public mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mPreindicationSensor:Landroid/hardware/Sensor;

.field public mRawSensorLoggingEnabled:Z

.field public mRotationPreindicationEnabled:Z

.field public final mScreenEventBroadcastReceiver:Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

.field public mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

.field public mSensorDataIndex:I

.field public final mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

.field public final mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mServiceRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/google/android/systemui/autorotate/DataLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mLastPreIndication:I

    const/16 v1, 0x258

    new-array v1, v1, [Lcom/google/android/systemui/autorotate/SensorData;

    iput-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    iput v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataIndex:I

    new-instance v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$1;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iput-object p2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p4, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDeviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance p1, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    return-void
.end method


# virtual methods
.method public final readFlagsToControlSensorLogging()V
    .locals 9

    const-string/jumbo v0, "window_manager"

    const-string v1, "log_raw_sensor_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    const-string v1, "log_rotation_preindication"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRotationPreindicationEnabled:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    const/16 v3, 0x2771

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/StatsManager;->clearPullAtomCallback(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-boolean v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-object v1, v0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v4, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;

    invoke-direct {v4, v0}, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;-><init>(Lcom/google/android/systemui/autorotate/DataLogger;)V

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const-string v0, "Autorotate-DataLogger"

    const-string v1, "Registered to statsd for pull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mScreenEventBroadcastReceiver:Lcom/google/android/systemui/autorotate/AutorotateDataService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mServiceRunning:Z

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->registerRequiredSensors()V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDebugSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRotationPreindicationEnabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_8
    return-void
.end method

.method public final registerRequiredSensors()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRawSensorLoggingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1000c

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mDebugSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mRotationPreindicationEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10011

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mPreindicationSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorListener:Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method
