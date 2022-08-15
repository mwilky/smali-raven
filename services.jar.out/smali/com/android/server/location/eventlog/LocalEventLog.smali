.class public Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "LocalEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;,
        Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final IS_FILLER_OFFSET:I

.field public static final MAX_TIME_DELTA:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TIME_DELTA_OFFSET:I


# instance fields
.field public final mEntries:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastLogTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLogEndIndex:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mLogEvents:[Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public mLogSize:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mModificationCount:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->countTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    const v0, 0x7fffffff

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->countTrailingZeros(I)I

    move-result v1

    sput v1, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void
.end method

.method public static countTrailingZeros(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static createEntry(ZI)I
    .locals 1

    if-ltz p1, :cond_0

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    shl-int/2addr p0, v0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    shl-int/2addr p1, v0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getTimeDelta(I)I
    .locals 1

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    ushr-int/2addr p0, v0

    return p0
.end method

.method public static isFiller(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs iterate(Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer<",
            "-TT;>;[",
            "Lcom/android/server/location/eventlog/LocalEventLog<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v3}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    invoke-virtual {v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    :cond_3
    move-object p1, v2

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->getLog()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lcom/android/server/location/eventlog/LocalEventLog$LogConsumer;->acceptLog(JLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addLog(JLjava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_3

    iget-wide v5, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    sub-long v5, p1, v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    sget v2, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v7, v2

    div-long v7, v5, v7

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_1

    goto :goto_2

    :cond_1
    move-wide v3, v5

    :goto_1
    sget v2, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v5, v2

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(ZILjava/lang/Object;)V

    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->clear()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    iget-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    :cond_4
    long-to-int p1, v3

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addLogEventInternal(ZILjava/lang/Object;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v3, v2

    if-ne v0, v3, :cond_3

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimeDelta(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    :goto_2
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    invoke-static {p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog;->createEntry(ZI)I

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    aput-object p3, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->incrementIndex(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public incrementIndex(I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog;->startIndex()I

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final isEmpty()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    iget p0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startIndex()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->wrapIndex(I)I

    move-result p0

    return p0
.end method

.method public wrapIndex(I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v0, p0

    rem-int/2addr p1, v0

    array-length v0, p0

    add-int/2addr p1, v0

    array-length p0, p0

    rem-int/2addr p1, p0

    return p1
.end method
