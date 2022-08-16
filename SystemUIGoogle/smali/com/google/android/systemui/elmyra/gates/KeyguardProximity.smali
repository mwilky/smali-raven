.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "KeyguardProximity.java"


# instance fields
.field public final mGateListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;

.field public mIsListening:Z

.field public final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field public mProximityBlocked:Z

.field public final mProximityThreshold:F

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mGateListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;-><init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

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

    const v3, 0x7f0c0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityThreshold:F

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iput-object v0, v1, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final isBlocked()Z
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

.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :cond_0
    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
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

.method public final updateProximityListener()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mProximityBlocked:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mSensorListener:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->mIsListening:Z

    :cond_2
    :goto_0
    return-void
.end method
