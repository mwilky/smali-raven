.class public Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "KeyguardProximity.java"


# instance fields
.field private final mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field private mIsListening:Z

.field private final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field private mProximityBlocked:Z

.field private final mProximityThreshold:F

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    const-class v1, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityThreshold:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    const-string p0, "Elmyra/KeyguardProximity"

    const-string p1, "Could not find any Sensor.TYPE_PROXIMITY"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->elmyra_keyguard_proximity_threshold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityThreshold:F

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityThreshold:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    return p1
.end method

.method private updateProximityListener()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :cond_0
    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mIsListening -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
