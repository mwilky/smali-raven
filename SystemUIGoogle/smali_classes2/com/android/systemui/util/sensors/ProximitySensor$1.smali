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
.method public static synthetic $r8$lambda$_2Fh_p5A1lCjb44ms4zT2Kz93XU(Lcom/android/systemui/util/sensors/ProximitySensor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/sensors/ProximitySensor$1;->lambda$onThresholdCrossed$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onThresholdCrossed$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$700(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$800(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    return-void
.end method


# virtual methods
.method public onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$000(Lcom/android/systemui/util/sensors/ProximitySensor;)Z

    move-result v0

    if-nez v0, :cond_4

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

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$200(Lcom/android/systemui/util/sensors/ProximitySensor;)V

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

    new-instance v2, Lcom/android/systemui/util/sensors/ProximitySensor$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor$1;)V

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$302(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$300(Lcom/android/systemui/util/sensors/ProximitySensor;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    invoke-static {p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$300(Lcom/android/systemui/util/sensors/ProximitySensor;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$302(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_3
    return-void

    :cond_4
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

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->access$600(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    :cond_5
    return-void
.end method
