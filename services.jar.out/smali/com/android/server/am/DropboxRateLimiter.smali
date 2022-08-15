.class public Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DropboxRateLimiter$DefaultClock;,
        Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;,
        Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;,
        Lcom/android/server/am/DropboxRateLimiter$Clock;
    }
.end annotation


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mErrorClusterRecords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLastMapCleanUp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>(Lcom/android/server/am/DropboxRateLimiter$DefaultClock-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    return-void
.end method


# virtual methods
.method public errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    return-void
.end method

.method public final recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    invoke-interface {v0}, Lcom/android/server/am/DropboxRateLimiter$Clock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;JI)V

    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide p1

    sub-long p1, v0, p1

    const-wide/32 v6, 0x927c0

    cmp-long p1, p1, v6

    if-lez p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setStartTime(J)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setCount(I)V

    new-instance p2, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p2, p0, v5, p1}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementCount()V

    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p1

    const/4 p2, 0x6

    if-le p1, p2, :cond_2

    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p2

    invoke-direct {p1, p0, v4, p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
