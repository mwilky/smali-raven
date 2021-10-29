.class Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;
.super Ljava/lang/Object;
.source "KeyguardProximity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->access$100(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->access$200(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->access$300(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-static {p1, v0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->access$302(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$2;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
