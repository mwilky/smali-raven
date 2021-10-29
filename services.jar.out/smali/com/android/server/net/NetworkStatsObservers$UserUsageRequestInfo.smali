.class Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;
.super Lcom/android/server/net/NetworkStatsObservers$RequestInfo;
.source "NetworkStatsObservers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsObservers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserUsageRequestInfo"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/NetworkStatsObservers$RequestInfo;-><init>(Lcom/android/server/net/NetworkStatsObservers;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)V

    return-void
.end method

.method private getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/high16 v7, -0x8000000000000000L

    const-wide v9, 0x7fffffffffffffffL

    iget v11, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v12, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method protected checkStats()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCollection:Lcom/android/server/net/NetworkStatsCollection;

    iget v1, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mAccessLevel:I

    iget v2, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mCallingUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-object v2, v2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    aget v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->getTotalBytesForNetworkUid(Landroid/net/NetworkTemplate;I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRequest:Landroid/net/DataUsageRequest;

    iget-wide v4, v4, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected recordSample(Lcom/android/server/net/NetworkStatsObservers$StatsContext;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsObservers$UserUsageRequestInfo;->mRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mUidSnapshot:Landroid/net/NetworkStats;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mActiveUidIfaces:Landroid/util/ArrayMap;

    iget-wide v3, p1, Lcom/android/server/net/NetworkStatsObservers$StatsContext;->mCurrentTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    return-void
.end method
