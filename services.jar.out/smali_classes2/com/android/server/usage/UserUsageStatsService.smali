.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mLastBackgroundedPackage:Ljava/lang/String;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mRealTimeSnapshot:J

.field private mStatsChanged:Z

.field private mSystemTimeSnapshot:J

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    nop

    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    return-void
.end method

.method private checkAndGetTimeLocked()J
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    iput-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    :cond_1
    return-wide v0
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method private dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method private dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "APP_COMPONENT_USED"

    return-object v0

    :pswitch_2
    const-string v0, "LOCUS_ID_SET"

    return-object v0

    :pswitch_3
    const-string v0, "USER_STOPPED"

    return-object v0

    :pswitch_4
    const-string v0, "USER_UNLOCKED"

    return-object v0

    :pswitch_5
    const-string v0, "DEVICE_STARTUP"

    return-object v0

    :pswitch_6
    const-string v0, "DEVICE_SHUTDOWN"

    return-object v0

    :pswitch_7
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    :pswitch_8
    const-string v0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object v0

    :pswitch_9
    const-string v0, "CONTINUING_FOREGROUND_SERVICE"

    return-object v0

    :pswitch_a
    const-string v0, "FOREGROUND_SERVICE_STOP"

    return-object v0

    :pswitch_b
    const-string v0, "FOREGROUND_SERVICE_START"

    return-object v0

    :pswitch_c
    const-string v0, "KEYGUARD_HIDDEN"

    return-object v0

    :pswitch_d
    const-string v0, "KEYGUARD_SHOWN"

    return-object v0

    :pswitch_e
    const-string v0, "SCREEN_NON_INTERACTIVE"

    return-object v0

    :pswitch_f
    const-string v0, "SCREEN_INTERACTIVE"

    return-object v0

    :pswitch_10
    const-string v0, "SLICE_PINNED"

    return-object v0

    :pswitch_11
    const-string v0, "SLICE_PINNED_PRIV"

    return-object v0

    :pswitch_12
    const-string v0, "NOTIFICATION_INTERRUPTION"

    return-object v0

    :pswitch_13
    const-string v0, "STANDBY_BUCKET_CHANGED"

    return-object v0

    :pswitch_14
    const-string v0, "NOTIFICATION_SEEN"

    return-object v0

    :pswitch_15
    const-string v0, "CHOOSER_ACTION"

    return-object v0

    :pswitch_16
    const-string v0, "SHORTCUT_INVOCATION"

    return-object v0

    :pswitch_17
    const-string v0, "USER_INTERACTION"

    return-object v0

    :pswitch_18
    const-string v0, "SYSTEM_INTERACTION"

    return-object v0

    :pswitch_19
    const-string v0, "CONFIGURATION_CHANGE"

    return-object v0

    :pswitch_1a
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    return-object v0

    :pswitch_1b
    const-string v0, "END_OF_DAY"

    return-object v0

    :pswitch_1c
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    :pswitch_1d
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    :pswitch_1e
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static formatDateTime(JZ)Ljava/lang/String;
    .locals 4

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .locals 4

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "?"

    return-object v0

    :pswitch_0
    const-string v0, "yearly"

    return-object v0

    :pswitch_1
    const-string v0, "monthly"

    return-object v0

    :pswitch_2
    const-string v0, "weekly"

    return-object v0

    :pswitch_3
    const-string v0, "daily"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$queryEventsForPackage$0(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    .locals 5

    iget-object v0, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    iget-object v1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v3, v3, p2

    if-ltz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p6, :cond_3

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p6, :cond_4

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private loadActiveStats(J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v4, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v1, v2, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    return-void
.end method

.method private notifyNewUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    :cond_0
    return-void
.end method

.method private onTimeChanged(JJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v1

    goto :goto_0

    :cond_1
    move v12, v2

    :goto_0
    const/4 v1, 0x0

    if-ltz v12, :cond_6

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-lt v12, v3, :cond_2

    move-object/from16 v3, p6

    goto :goto_2

    :cond_2
    aget-object v13, v2, v12

    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-ltz v2, :cond_3

    return-object v1

    :cond_3
    iget-wide v1, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v2, v12

    move-wide/from16 v3, p2

    move-wide v5, v14

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v8, v2

    if-gez v2, :cond_5

    iget-wide v2, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_5

    if-nez v1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_4
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v13}, Lcom/android/server/usage/UsageStatsDatabase;->filterStats(Lcom/android/server/usage/IntervalStats;)V

    const/4 v2, 0x1

    move-object/from16 v3, p6

    invoke-interface {v3, v13, v2, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_1

    :cond_5
    move-object/from16 v3, p6

    :goto_1
    return-object v1

    :cond_6
    move-object/from16 v3, p6

    :goto_2
    return-object v1
.end method

.method private readPackageMappingsLocked(Ljava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    :cond_0
    return-void
.end method

.method private rolloverStats(J)V
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v15, v9, v11

    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_4

    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_4

    :cond_1
    :goto_2
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    move-object/from16 v24, v12

    move-object v12, v15

    move/from16 v25, v13

    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    move-object/from16 v26, v15

    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_3

    :cond_2
    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    :goto_3
    move-object/from16 v9, v24

    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object/from16 v12, v26

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_3
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    :goto_4
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    const/4 v9, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    move-object/from16 v14, v26

    invoke-virtual {v14, v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v14, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_a

    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v20, 0x0

    aget-object v13, v13, v20

    iget-wide v14, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-wide/from16 v16, v14

    array-length v15, v13

    move/from16 v14, v20

    :goto_6
    if-ge v14, v15, :cond_9

    move/from16 v18, v15

    aget-object v15, v13, v14

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    nop

    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v5

    move-object/from16 v5, v19

    check-cast v5, Landroid/util/SparseIntArray;

    move-object/from16 v22, v6

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/16 v19, 0x0

    move-object/from16 v23, v7

    move/from16 v7, v19

    :goto_7
    if-ge v7, v6, :cond_6

    const/16 v19, 0x0

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v24

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v25

    move-object/from16 v26, v13

    move-object v13, v15

    move/from16 v29, v14

    move-wide/from16 v27, v16

    move-object v14, v12

    move-object/from16 v31, v15

    move/from16 v30, v18

    move-object/from16 v15, v19

    move/from16 v18, v24

    move/from16 v19, v25

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v26

    move/from16 v14, v29

    move/from16 v18, v30

    move-object/from16 v15, v31

    goto :goto_7

    :cond_6
    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    goto :goto_8

    :cond_7
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    :goto_8
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    nop

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v6, :cond_8

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v13, v31

    move-object v14, v12

    move-wide/from16 v16, v27

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_8
    move-wide/from16 v5, v27

    move-object/from16 v7, v31

    invoke-virtual {v7, v3, v5, v6}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    add-int/lit8 v14, v29, 0x1

    move-wide/from16 v16, v5

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v13, v26

    move/from16 v15, v30

    goto/16 :goto_6

    :cond_9
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v5, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_5

    :cond_a
    move/from16 v21, v5

    move-object/from16 v23, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Rolling over usage stats complete. Took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " milliseconds"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static stringToInterval(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "monthly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "daily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "weekly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v6

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v6

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v4

    :pswitch_3
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_3
        -0x2bc88576 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRolloverDeadline()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static validRange(JJJ)Z
    .locals 1

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    :cond_1
    return-void
.end method

.method dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    nop

    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_4

    :cond_3
    :try_start_1
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v2, "the specified filename does not exist."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "invalid filename specified."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const-string v1, "the specified interval does not exist."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "invalid interval specified."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    nop

    :goto_4
    return-void
.end method

.method dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method init(JLjava/util/HashMap;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->readPackageMappingsLocked(Ljava/util/HashMap;Z)V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->wasUpgradePerformed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    array-length v1, v2

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Some stats have no latest available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1a

    iget-wide v4, v1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    const/16 v5, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    :cond_6
    return-void
.end method

.method onPackageRemoved(Ljava/lang/String;J)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->onPackageRemoved(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method persistActiveStats()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    aget-object v2, v2, v0

    invoke-virtual {v3, v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .locals 2

    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v1, "class"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_0
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_1
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string v1, "shortcutId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyBucket()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "standbyBucket"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_3
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "instanceId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskRootPackage"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "taskRootClass"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_7
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string v1, "channelId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :cond_8
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .locals 5

    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v0, "x for "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-string v0, " (now running, started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {v0, v1, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_2
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Lcom/android/server/usage/IntervalStats;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const-string v8, "package"

    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "totalTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "totalTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeComponentUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "totalTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v8, v9, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v7, "ChooserCounts"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_7

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    iget-object v13, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v17, v5

    move/from16 v5, v16

    :goto_5
    if-ge v5, v15, :cond_5

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_6

    :cond_4
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_5

    :cond_5
    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    goto :goto_4

    :cond_6
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    goto :goto_7

    :cond_7
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto/16 :goto_3

    :cond_8
    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_9

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v9, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "event aggregations"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "screen-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "screen-non-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-shown"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-hidden"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_a
    if-nez p4, :cond_e

    const-string v5, "events"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    move-result v6

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_d

    invoke-virtual {v5, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v10, v11}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    move-object v12, v0

    const/4 v0, -0x1

    invoke-virtual {v12, v0}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    new-instance v15, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v6

    const-string v0, "Last 24 hour events ("

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v16, 0x20015

    move-wide v1, v13

    move-wide v3, v10

    move-object/from16 v17, v12

    move-object v12, v5

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "timeRange"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    move-object/from16 v17, v12

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {v8, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_0
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method pruneUninstalledPackagesData()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->pruneUninstalledPackagesData()Z

    move-result v0

    return v0
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJI)Landroid/app/usage/UsageEvents;
    .locals 12

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v2, v11

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V

    move-object v2, p0

    move v3, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v3, Landroid/app/usage/UsageEvents;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    :cond_2
    :goto_0
    return-object v1
.end method

.method queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 13

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    new-instance v12, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    move-object v2, v12

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object v8, v0

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    move-object v2, p0

    move v3, v11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v4, p6

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v3, Landroid/app/usage/UsageEvents;

    move/from16 v4, p6

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    :cond_2
    move/from16 v4, p6

    :goto_0
    return-object v1
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x1f

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v2, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UserUsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    :cond_0
    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    :cond_1
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v5}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_2
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x18

    if-eq v6, v7, :cond_3

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_3

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_3

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v6, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    :cond_3
    const/4 v3, 0x0

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    :cond_5
    :goto_0
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v15, v6, v8

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v9, :sswitch_data_0

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v9

    move-object v9, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    if-eqz v3, :cond_7

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_0
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    goto :goto_3

    :sswitch_1
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    goto :goto_3

    :sswitch_2
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    goto :goto_3

    :sswitch_3
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    goto :goto_3

    :sswitch_4
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v9, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    if-eqz v9, :cond_6

    array-length v10, v9

    move v11, v4

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    goto :goto_3

    :sswitch_5
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v5, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x9 -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v1

    :catch_0
    move-exception v1

    const-string v4, "UsageStatsService"

    const-string v5, "Unable to write updated package mappings file on service initialization."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method userStopped()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    return-void
.end method
