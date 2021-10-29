.class final Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;
.super Ljava/lang/Object;
.source "GestureSensorImpl.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getTap$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/TapRT;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v10, 0x1

    aget v4, v2, v10

    const/4 v11, 0x2

    aget v5, v2, v11

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSamplingIntervalNs$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)J

    move-result-wide v8

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$isRunningInLowSamplingRate$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Z

    move-result v12

    move v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/systemui/columbus/sensors/TapRT;->updateData(IFFFJJZ)V

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getTap$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/TapRT;

    move-result-object v0

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/columbus/sensors/TapRT;->checkDoubleTapTiming(J)I

    move-result p1

    if-eq p1, v10, :cond_2

    if-eq p1, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getHandler$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getHandler$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setListening(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getAccelerometer$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getGyroscope$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorManager$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorEventListener$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getAccelerometer$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getHandler$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorManager$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorEventListener$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getGyroscope$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {v2}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getHandler$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->setListening(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorManager$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->access$getSensorEventListener$p(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;->setListening(Z)V

    :goto_0
    return-void
.end method
