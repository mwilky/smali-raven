.class public abstract Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;,
        Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;,
        Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;,
        Lcom/android/server/location/eventlog/LocalEventLog$Log;
    }
.end annotation


# instance fields
.field private mLastLogRealtimeMs:J

.field private final mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

.field private mLogEndIndex:I

.field private mLogSize:I

.field private mStartRealtimeMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-array v1, p1, [Lcom/android/server/location/eventlog/LocalEventLog$Log;

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/eventlog/LocalEventLog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/location/eventlog/LocalEventLog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/eventlog/LocalEventLog;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result v0

    return v0
.end method

.method private addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v3, v2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    :goto_1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    aput-object p1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    invoke-interface {p1}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    return-void
.end method

.method private incrementIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v0

    return v0

    :cond_0
    if-ltz p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startIndex()I
    .locals 2

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result v0

    return v0
.end method

.method private wrapIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v1, v0

    rem-int v1, p1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v0, v0

    rem-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public varargs declared-synchronized addLogEvent(I[Ljava/lang/Object;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    sub-long v2, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide v4, 0xffffffffL

    div-long v6, v2, v4

    iget-object v8, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLog:[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    new-instance v8, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;

    invoke-direct {v8, v6, v7}, Lcom/android/server/location/eventlog/LocalEventLog$FillerEvent;-><init>(J)V

    invoke-direct {p0, v8}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->clear()V

    const-wide/16 v2, 0x0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J

    :cond_3
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog;->createLogEvent(JI[Ljava/lang/Object;)Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Lcom/android/server/location/eventlog/LocalEventLog$Log;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartRealtimeMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs abstract createLogEvent(JI[Ljava/lang/Object;)Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.end method

.method protected getTimePrefix(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized iterate(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized iterate(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-direct {v0, p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
