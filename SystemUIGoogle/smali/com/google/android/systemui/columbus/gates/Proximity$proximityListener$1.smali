.class public final Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;
.super Ljava/lang/Object;
.source "Proximity.kt"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/Proximity;-><init>(Landroid/content/Context;Lcom/android/systemui/util/sensors/ProximitySensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/Proximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/Proximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/Proximity;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/Proximity;->proximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-interface {p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
