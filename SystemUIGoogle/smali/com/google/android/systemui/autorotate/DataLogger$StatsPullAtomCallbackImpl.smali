.class public final Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "DataLogger.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/DataLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/autorotate/DataLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/autorotate/DataLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;->this$0:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move/from16 v0, p1

    const/16 v1, 0x2771

    if-ne v0, v1, :cond_7

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;->this$0:Lcom/google/android/systemui/autorotate/DataLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Autorotate-DataLogger"

    const-string v3, "Received pull request from statsd."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/systemui/autorotate/SensorData;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    array-length v4, v2

    if-eqz v4, :cond_6

    aget-object v4, v2, v3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    new-instance v4, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;

    invoke-direct {v4}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;-><init>()V

    new-instance v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    invoke-direct {v5}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;-><init>()V

    aget-object v6, v2, v3

    iget-wide v6, v6, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    iput-wide v6, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;->timestampBase:J

    iput-object v5, v4, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    array-length v6, v2

    new-array v6, v6, [Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    move v7, v3

    :goto_0
    array-length v8, v2

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-ge v7, v8, :cond_2

    new-instance v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-direct {v8}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;-><init>()V

    aget-object v11, v2, v7

    iget-wide v12, v11, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    iget-wide v14, v5, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;->timestampBase:J

    sub-long/2addr v12, v14

    long-to-int v12, v12

    iput v12, v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    iget v12, v11, Lcom/google/android/systemui/autorotate/SensorData;->mSensorIdentifier:I

    if-ne v12, v9, :cond_1

    goto :goto_1

    :cond_1
    move v10, v12

    :goto_1
    iput v10, v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    iget v9, v11, Lcom/google/android/systemui/autorotate/SensorData;->mValueX:F

    iput v9, v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    iget v9, v11, Lcom/google/android/systemui/autorotate/SensorData;->mValueY:F

    iput v9, v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    iget v9, v11, Lcom/google/android/systemui/autorotate/SensorData;->mValueZ:F

    iput v9, v8, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iput-object v6, v4, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-static {v4}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v10, :cond_4

    if-eq v0, v4, :cond_5

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v10

    goto :goto_2

    :cond_4
    move v9, v4

    :cond_5
    :goto_2
    invoke-static {v1, v2, v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return v3

    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown tagId: "

    invoke-static {v2, v0}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
