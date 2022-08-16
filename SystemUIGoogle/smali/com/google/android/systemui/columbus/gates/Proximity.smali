.class public final Lcom/google/android/systemui/columbus/gates/Proximity;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "Proximity.kt"


# instance fields
.field public final proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

.field public final proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/Proximity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    const-string p0, "Columbus/Proximity"

    invoke-interface {p2, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximityListener:Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method
