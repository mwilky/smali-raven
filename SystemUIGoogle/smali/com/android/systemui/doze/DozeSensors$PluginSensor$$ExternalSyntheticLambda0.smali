.class public final synthetic Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

.field public final synthetic f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors$PluginSensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;

    sget v1, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-wide v3, v3, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    iget-wide v5, v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    const-string v2, "DozeSensors"

    if-gez v1, :cond_0

    const-string/jumbo v0, "onSensorEvent dropped: "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline2;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onSensorEvent: "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline2;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v1, v1, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    iget v0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {p0}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object p0

    const/high16 v2, -0x40800000    # -1.0f

    check-cast v1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0, v2, v2, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->onSensorPulse(IFF[F)V

    :goto_0
    return-void
.end method
