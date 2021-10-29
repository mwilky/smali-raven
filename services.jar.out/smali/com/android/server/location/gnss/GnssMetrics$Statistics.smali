.class Lcom/android/server/location/gnss/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Statistics"
.end annotation


# instance fields
.field private mCount:I

.field private mLongSum:J

.field private mSum:D

.field private mSumSquare:D


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(D)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J

    long-to-double v0, v0

    add-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLongSum()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMean()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v2, v2

    div-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    int-to-double v3, v2

    div-double/2addr v0, v3

    mul-double/2addr v0, v0

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    int-to-double v5, v2

    div-double/2addr v3, v5

    cmpl-double v2, v3, v0

    if-lez v2, :cond_0

    sub-double v5, v3, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v5

    :cond_0
    const-wide/16 v5, 0x0

    monitor-exit p0

    return-wide v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
