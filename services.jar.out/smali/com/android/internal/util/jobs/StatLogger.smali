.class public Lcom/android/internal/util/jobs/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final SIZE:I

.field private final mCallsPerSecond:[I

.field private final mCountStats:[I

.field private final mDurationPerSecond:[J

.field private final mDurationStats:[J

.field private final mLabels:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxCallsPerSecond:[I

.field private final mMaxDurationPerSecond:[J

.field private final mMaxDurationStats:[J

.field private mNextTickTime:J

.field private final mStatsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    iput-object p1, p0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    array-length v0, p2

    iput v0, p0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    iput-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Stats:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    aget-wide v3, v3, v1

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    const-string v7, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v10, v10, v1

    aput-object v10, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    if-nez v2, :cond_1

    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_1
    int-to-double v10, v2

    div-double v10, v3, v10

    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    aget v10, v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v10, v10, v1

    long-to-double v10, v10

    div-double/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    aget-wide v10, v10, v1

    long-to-double v10, v10

    div-double/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10900000002L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000003L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    aget v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000004L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000005L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    aget v8, v8, v3

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000006L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000007L

    iget-object v8, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    aget-wide v8, v8, v3

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public logDurationStat(IJ)J
    .locals 12

    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    if-ltz p1, :cond_4

    iget v3, p0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    aget v4, v3, p1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    aget-wide v4, v3, p1

    add-long/2addr v4, v1

    aput-wide v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    aget-wide v4, v3, p1

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    aput-wide v1, v3, p1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    aget v6, v5, p1

    iget-object v7, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    aget v8, v7, p1

    if-ge v6, v8, :cond_1

    aget v6, v7, p1

    aput v6, v5, p1

    :cond_1
    iget-object v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v8, v5, p1

    iget-object v6, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    aget-wide v10, v6, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    aget-wide v8, v6, p1

    aput-wide v8, v5, p1

    :cond_2
    const/4 v5, 0x0

    aput v5, v7, p1

    const-wide/16 v7, 0x0

    aput-wide v7, v6, p1

    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    :cond_3
    iget-object v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    aget v6, v5, p1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, p1

    iget-object v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v5, p1

    add-long/2addr v6, v1

    aput-wide v6, v5, p1

    monitor-exit v0

    return-wide v1

    :cond_4
    const-string v3, "StatLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid event ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
