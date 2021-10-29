.class final Lcom/google/android/systemui/autorotate/DataLogger;
.super Ljava/lang/Object;
.source "DataLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;
    }
.end annotation


# instance fields
.field private mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/systemui/autorotate/SensorData;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastPullTimeNanos:J

.field private mStatsManager:Landroid/app/StatsManager;


# direct methods
.method constructor <init>(Landroid/app/StatsManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/autorotate/DataLogger;Ljava/util/List;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/autorotate/DataLogger;->pullSensorData(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static convertSensorId(I)I
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0
.end method

.method private pullSensorData(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "Autorotate-DataLogger"

    const-string v1, "Received pull request from statsd."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/systemui/autorotate/SensorData;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;

    invoke-direct {v2}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;-><init>()V

    new-instance v3, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    invoke-direct {v3}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;-><init>()V

    aget-object v4, v0, v1

    iget-wide v4, v4, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    iput-wide v4, v3, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;->timestampBase:J

    iput-object v3, v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->header:Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;

    array-length v4, v0

    new-array v4, v4, [Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    move v5, v1

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    new-instance v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    invoke-direct {v6}, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;-><init>()V

    aget-object v7, v0, v5

    iget-wide v7, v7, Lcom/google/android/systemui/autorotate/SensorData;->mTimestampMillis:J

    iget-wide v9, v3, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorHeader;->timestampBase:J

    sub-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->timestampOffset:I

    aget-object v7, v0, v5

    iget v7, v7, Lcom/google/android/systemui/autorotate/SensorData;->mSensorIdentifier:I

    invoke-static {v7}, Lcom/google/android/systemui/autorotate/DataLogger;->convertSensorId(I)I

    move-result v7

    iput v7, v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->sensorType:I

    aget-object v7, v0, v5

    iget v7, v7, Lcom/google/android/systemui/autorotate/SensorData;->mValueX:F

    iput v7, v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->xValue:F

    aget-object v7, v0, v5

    iget v7, v7, Lcom/google/android/systemui/autorotate/SensorData;->mValueY:F

    iput v7, v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->yValue:F

    aget-object v7, v0, v5

    iget v7, v7, Lcom/google/android/systemui/autorotate/SensorData;->mValueZ:F

    iput v7, v6, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;->zValue:F

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, v2, Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorData;->sample:[Lcom/google/android/systemui/autorotate/proto/nano/AutorotateProto$DeviceRotatedSensorSample;

    const/16 v0, 0x2771

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/systemui/autorotate/DataLogger;->rotationToLogEnum(I)I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return v1
.end method

.method private static rotationToLogEnum(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method clearData()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method pushDeviceRotatedEvent(JII)V
    .locals 0

    invoke-static {p3}, Lcom/google/android/systemui/autorotate/DataLogger;->rotationToLogEnum(I)I

    move-result p0

    const/16 p3, 0x14d

    invoke-static {p3, p1, p2, p0, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    return-void
.end method

.method registerPullAtomCallback()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;-><init>(Lcom/google/android/systemui/autorotate/DataLogger;)V

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    const/16 v1, 0x2771

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const-string p0, "Autorotate-DataLogger"

    const-string v0, "Registered to statsd for pull"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setDeviceRotatedData([Lcom/google/android/systemui/autorotate/SensorData;I)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    sub-long/2addr v0, v2

    const-wide v2, 0x12a05f200L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/DataLogger;->clearData()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/Queue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method unregisterPullAtomCallback()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    if-eqz p0, :cond_0

    const/16 v0, 0x2771

    invoke-virtual {p0, v0}, Landroid/app/StatsManager;->clearPullAtomCallback(I)V

    :cond_0
    return-void
.end method
