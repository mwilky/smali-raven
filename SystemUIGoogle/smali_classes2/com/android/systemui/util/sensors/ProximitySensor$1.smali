.class Lcom/android/systemui/util/sensors/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$000(Lcom/android/systemui/util/sensors/ProximitySensor;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$200(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$400(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v2}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$200(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/util/sensors/ProximitySensor$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/systemui/util/sensors/ProximitySensor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor;)V

    const-wide/16 v4, 0x1388

    invoke-interface {v1, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$302(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$302(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Secondary sensor event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$500(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    if-nez v0, :cond_4

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$600(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    :cond_4
    return-void
.end method
