.class public Lcom/android/server/pm/SnapshotStatistics$Stats;
.super Ljava/lang/Object;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SnapshotStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stats"
.end annotation


# instance fields
.field public mBigBuilds:I

.field public mMaxBuildTimeUs:I

.field public mShortLived:I

.field public mStartTimeUs:J

.field public mStopTimeUs:J

.field public mTimes:[I

.field public mTotalBuilds:I

.field public mTotalCorked:I

.field public mTotalTimeUs:J

.field public mTotalUsed:I

.field public mUsed:[I

.field final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/SnapshotStatistics;J)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->access$000(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    invoke-static {p1}, Lcom/android/server/pm/SnapshotStatistics;->access$100(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->count()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;JLcom/android/server/pm/SnapshotStatistics$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iget-object v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    iget-object v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iget v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;Lcom/android/server/pm/SnapshotStatistics$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->rebuild(IIIIZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/SnapshotStatistics$Stats;->corked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SnapshotStatistics$Stats;->complete(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method private complete(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    return-void
.end method

.method private corked()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 3

    const-string v0, "stats"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_0
    const-string v0, "times"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_1
    const-string v0, "usage"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    const-string v0, "%-23s"

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    sub-long v4, p3, v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%11s"

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, " %11s"

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    sub-long v4, p3, v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "now"

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 10

    const-string v6, "Summary stats"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x7

    if-eqz p5, :cond_0

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "TotBlds"

    aput-object v9, v7, v6

    const-string v6, "TotUsed"

    aput-object v6, v7, v5

    const-string v5, "TotCork"

    aput-object v5, v7, v4

    const-string v4, "BigBlds"

    aput-object v4, v7, v3

    const-string v3, "ShortLvd"

    aput-object v3, v7, v2

    const-string v2, "TotTime"

    aput-object v2, v7, v1

    const-string v1, "MaxTime"

    aput-object v1, v7, v0

    const-string v0, "  %10s  %10s  %10s  %10s  %10s  %10s  %10s"

    invoke-virtual {p1, v8, v0, v7}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    iget v6, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    iget v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalCorked:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    iget v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    iget-wide v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v0, "  %10d  %10d  %10d  %10d  %10d  %10d  %10d"

    invoke-virtual {p1, v8, v0, v7}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpTimes(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 9

    const-string v6, "Build times"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {v2}, Lcom/android/server/pm/SnapshotStatistics;->access$000(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    const-string v5, "  %10s"

    if-ge v3, v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v1, [Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Object;

    aget v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "<= %dms"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    array-length v7, v2

    sub-int/2addr v7, v1

    aget v1, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v1, "> %dms"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "  %10d"

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpUsage(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 9

    const-string v6, "Use counters"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {v2}, Lcom/android/server/pm/SnapshotStatistics;->access$100(Lcom/android/server/pm/SnapshotStatistics;)Lcom/android/server/pm/SnapshotStatistics$BinMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/SnapshotStatistics$BinMap;->userKeys()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    const-string v5, "  %10s"

    if-ge v3, v4, :cond_0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v1, [Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Object;

    aget v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "<= %d"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p1, v4, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    array-length v7, v2

    sub-int/2addr v7, v1

    aget v1, v2, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v1, "> %d"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "  %10d"

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private durationToString(J)Ljava/lang/String;
    .locals 10

    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    div-int/lit8 v3, v2, 0x18

    rem-int/lit8 v2, v2, 0x18

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v3, :cond_0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const-string v4, "%2d:%02d:%02d:%02d"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v9, ""

    if-eqz v2, :cond_1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const-string v4, "%2s %02d:%02d:%02d"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    aput-object v9, v8, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const-string v4, "%2s %2s %2d:%02d"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private rebuild(IIIIZZ)V
    .locals 4

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p3

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    aget v1, v0, p4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p4

    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    :cond_1
    if-eqz p6, :cond_2

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    :cond_2
    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    if-ge v1, p1, :cond_3

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    :cond_3
    return-void
.end method

.method private report()V
    .locals 9

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget v1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iget v3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iget v4, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 v4, v4, 0x3e8

    iget-wide v5, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/EventLogTags;->writePmSnapshotStats(IIIIIJ)V

    return-void
.end method
