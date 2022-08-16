.class public final Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorDataReadyRunnable"
.end annotation


# instance fields
.field public mRotation:I

.field public mRotationTimestampMillis:J

.field public final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    iput-wide p3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotationTimestampMillis:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-object v1, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorData:[Lcom/google/android/systemui/autorotate/SensorData;

    iget v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    sub-long/2addr v4, v6

    const-wide v6, 0x12a05f200L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    :cond_1
    iget-object v1, v1, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    iget-object v0, v0, Lcom/google/android/systemui/autorotate/AutorotateDataService;->mSensorDataLogger:Lcom/google/android/systemui/autorotate/DataLogger;

    iget-wide v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotationTimestampMillis:J

    iget p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v4, 0x3

    if-eqz p0, :cond_6

    const/4 v5, 0x2

    if-eq p0, v0, :cond_5

    if-eq p0, v5, :cond_4

    if-eq p0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v3, v0

    :goto_1
    const/16 p0, 0x14d

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    return-void
.end method
