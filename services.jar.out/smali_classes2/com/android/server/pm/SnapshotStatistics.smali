.class public Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SnapshotStatistics$Stats;,
        Lcom/android/server/pm/SnapshotStatistics$BinMap;
    }
.end annotation


# instance fields
.field public mEventsReported:I

.field public mHandler:Landroid/os/Handler;

.field public mLastBuildTime:J

.field public final mLock:Ljava/lang/Object;

.field public mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mTicks:I

.field public final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field public final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTimeBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseBins(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleMessage(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SnapshotStatistics;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/4 v3, 0x7

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v2, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v5, v4, v0

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v4, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v5, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v5, p0, v2, v3, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v5, v4, v0

    new-instance v0, Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->tick()V

    invoke-virtual {p0}, Lcom/android/server/pm/SnapshotStatistics;->scheduleTick()V

    return-void
.end method

.method public final rebuild(JJI)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v8, p5

    sub-long v3, p3, v1

    long-to-int v9, v3

    iget-object v10, v0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iput-wide v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mLastBuildTime:J

    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    div-int/lit16 v2, v9, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v11

    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->getBin(I)I

    move-result v12

    const/16 v1, 0x2710

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-lt v9, v1, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    const/4 v1, 0x5

    if-gt v8, v1, :cond_1

    move/from16 v16, v13

    goto :goto_1

    :cond_1
    move/from16 v16, v14

    :goto_1
    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v1, v1, v14

    move v2, v9

    move/from16 v3, p5

    move v4, v11

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    iget-object v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    aget-object v1, v1, v14

    move v2, v9

    move/from16 v3, p5

    move v4, v11

    move v5, v12

    move v6, v15

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V

    const/16 v1, 0x7530

    if-lt v9, v1, :cond_2

    iget v1, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v13, v14

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_3

    div-int/lit16 v9, v9, 0x3e8

    invoke-static {v9, v8}, Lcom/android/server/EventLogTags;->writePmSnapshotRebuild(II)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final scheduleTick()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mcomplete(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$Stats-IA;)V

    aput-object v1, p1, v0

    return-void
.end method

.method public final tick()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mTicks:I

    rem-int/lit16 v3, v3, 0x2760

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/SnapshotStatistics;->shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
