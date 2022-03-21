.class Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;
.super Lcom/android/systemui/util/sensors/ProximitySensorImpl;
.source "PostureDependentProximitySensor.java"


# instance fields
.field private final mDevicePostureCallback:Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

.field private final mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private final mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;


# direct methods
.method public static synthetic $r8$lambda$EkbBSAHIKbZJAod7j02n2Q_kbDs(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->lambda$new$0(I)V

    return-void
.end method

.method constructor <init>([Lcom/android/systemui/util/sensors/ThresholdSensor;[Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;Lcom/android/systemui/statusbar/policy/DevicePostureController;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v0, p2, v0

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;)V

    new-instance p3, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;)V

    iput-object p3, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mDevicePostureCallback:Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    iput-object p1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p5}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->getDevicePosture()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-interface {p5, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    return-void
.end method

.method private chooseSensors()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    iget-object v1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToPrimaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->mPostureToSecondaryProxSensorMap:[Lcom/android/systemui/util/sensors/ThresholdSensor;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, v1, v0

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eq v0, v2, :cond_4

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register new proximity sensors newPosture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregisterInternal()V

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mInitializedListeners:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->registerInternal()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported devicePosture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PostureDependentProxSensor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DevicePostureController;->devicePostureToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{posture=%s, proximitySensor=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
