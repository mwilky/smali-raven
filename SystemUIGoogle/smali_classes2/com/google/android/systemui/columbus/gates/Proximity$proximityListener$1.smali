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
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/Proximity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/Proximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Proximity$proximityListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/Proximity;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/Proximity;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/Proximity;)V

    return-void
.end method
