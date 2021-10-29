.class Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;Lcom/google/android/systemui/autorotate/AutorotateDataService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x3

    const/16 v5, 0x258

    const-wide/32 v6, 0xf4240

    const/4 v8, 0x0

    const/16 v9, 0x1b

    if-ne v2, v9, :cond_2

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    float-to-int v2, v2

    if-ltz v2, :cond_1

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    new-array v5, v5, [Lcom/google/android/systemui/autorotate/SensorData;

    invoke-static {v4, v5}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$102(Lcom/google/android/systemui/autorotate/AutorotateDataService;[Lcom/google/android/systemui/autorotate/SensorData;)[Lcom/google/android/systemui/autorotate/SensorData;

    iget-object v4, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v4, v8}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$602(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I

    iget-object v4, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v4}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$700(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v4

    new-instance v5, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;

    iget-object v8, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v9, v6

    invoke-direct {v5, v8, v2, v9, v10}, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;-><init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;IJ)V

    const-wide/16 v6, 0x8fc

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    iget-object v1, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$800(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$500(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v1

    if-ne v2, v1, :cond_5

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$900(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    goto/16 :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v9, 0x1000c

    const/4 v10, 0x1

    if-ne v2, v9, :cond_4

    iget-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v2}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$600(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v2

    if-ge v2, v5, :cond_3

    iget-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v2}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)[Lcom/google/android/systemui/autorotate/SensorData;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v3}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$600(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    move-result v3

    new-instance v5, Lcom/google/android/systemui/autorotate/SensorData;

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v12, v9, v8

    aget v13, v9, v10

    const/4 v8, 0x2

    aget v14, v9, v8

    aget v4, v9, v4

    float-to-int v15, v4

    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long v16, v8, v6

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/android/systemui/autorotate/SensorData;-><init>(FFFIJ)V

    aput-object v5, v2, v3

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$608(Lcom/google/android/systemui/autorotate/AutorotateDataService;)I

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0, v8}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$602(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I

    goto :goto_1

    :cond_4
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v4, 0x10011

    if-ne v2, v4, :cond_5

    iget-object v2, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v2}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$800(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    float-to-int v2, v2

    iget-object v4, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v4}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$900(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v3, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v3, v2}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$502(Lcom/google/android/systemui/autorotate/AutorotateDataService;I)I

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorListener;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object v0

    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    div-long/2addr v3, v6

    invoke-virtual {v0, v3, v4, v2, v10}, Lcom/google/android/systemui/autorotate/DataLogger;->pushDeviceRotatedEvent(JII)V

    :cond_5
    :goto_1
    return-void
.end method
