.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"

.field private static final ATTR_BUCKETING_REASON:Ljava/lang/String; = "bucketReason"

.field private static final ATTR_BUCKET_ACTIVE_TIMEOUT_TIME:Ljava/lang/String; = "activeTimeoutTime"

.field private static final ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME:Ljava/lang/String; = "workingSetTimeoutTime"

.field private static final ATTR_CURRENT_BUCKET:Ljava/lang/String; = "appLimitBucket"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_LAST_PREDICTED_TIME:Ljava/lang/String; = "lastPredictedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED:Ljava/lang/String; = "lastRestrictionAttemptElapsedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_REASON:Ljava/lang/String; = "lastRestrictionAttemptReason"

.field private static final ATTR_LAST_RUN_JOB_TIME:Ljava/lang/String; = "lastJobRunTime"

.field private static final ATTR_LAST_USED_BY_USER_ELAPSED:Ljava/lang/String; = "lastUsedByUserElapsedTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final DEBUG:Z = false

.field static final IDLE_BUCKET_CUTOFF:I = 0x28

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final STANDBY_BUCKET_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    return-void
.end method

.method private dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "User "

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, " App Standby States:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v8

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_5

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v14, p3

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v16, v3

    goto/16 :goto_2

    :cond_1
    move-object/from16 v14, p3

    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "package="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " u="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bucket="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " reason="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-static {v15}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " used="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " usedByUser="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " usedScr="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long v14, v8, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " lastPred="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " activeLeft="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    sub-long/2addr v14, v6

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " wsLeft="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    sub-long/2addr v14, v6

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " lastJob="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-lez v3, :cond_3

    const-string v3, " lastRestrictAttempt="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " lastRestrictReason="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    invoke-static {v14}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " idle="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "y"

    goto :goto_1

    :cond_4
    const-string v14, "n"

    :goto_1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_5
    move-object/from16 v16, v3

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v3, "totalElapsedTime="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v11

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v3, "totalScreenOnTime="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v11

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method private getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    new-instance v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v1}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v0, v1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const/16 v1, 0x32

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v1, 0x100

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    :cond_0
    return-object v0
.end method

.method private logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .locals 7

    const v0, 0xff00

    and-int v5, p4, v0

    and-int/lit16 v6, p4, 0xff

    const/16 v1, 0x102

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    return-void
.end method

.method private readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v0, v10, :cond_0

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    if-eq v8, v10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "packages"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    if-eq v0, v9, :cond_8

    if-ne v8, v10, :cond_7

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v0, "package"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "name"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v14, v0

    const-string v0, "elapsedIdleTime"

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-string v0, "lastUsedByUserElapsedTime"

    iget-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-string v0, "screenIdleTime"

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    const-string v0, "lastPredictedTime"

    const-wide/16 v9, 0x0

    move-object v15, v13

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-string v0, "appLimitBucket"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    if-nez v12, :cond_3

    const/16 v0, 0xa

    goto :goto_2

    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const-string v0, "bucketReason"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v0, "lastJobRunTime"

    const-wide/high16 v9, -0x8000000000000000L

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-string v0, "activeTimeoutTime"

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    const-wide/16 v9, 0x0

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    const-string v0, "workingSetTimeoutTime"

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    const/16 v0, 0x100

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v9, 0x10

    if-eqz v13, :cond_4

    nop

    :try_start_3
    invoke-static {v13, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v10, "Unable to read bucketing reason"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    const-string v0, "lastRestrictionAttemptElapsedTime"

    const-wide/16 v10, 0x0

    invoke-direct {v1, v7, v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-string v0, "lastRestrictionAttemptReason"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v0

    if-eqz v10, :cond_5

    nop

    :try_start_5
    invoke-static {v10, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    const-string v9, "Unable to read last restrict reason"

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    const/4 v0, -0x1

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v9, p2

    move-object v11, v15

    :try_start_7
    invoke-virtual {v9, v11, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_6
    move-object/from16 v9, p2

    move-object/from16 v16, v11

    :goto_5
    goto :goto_6

    :cond_7
    move-object/from16 v9, p2

    :goto_6
    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v9, p2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v9, p2

    :goto_7
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    nop

    :goto_8
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :goto_9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readScreenOnTime()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    :goto_1
    return-void
.end method

.method private writeScreenOnTime()V
    .locals 6

    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearUsage(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    aget v2, p2, v1

    invoke-direct {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_0
    return v1
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    :goto_1
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenOnTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    if-nez v0, :cond_0

    array-length v1, p5

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr v3, v7

    array-length v5, p5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_2

    aget-wide v7, p5, v5

    cmp-long v7, v1, v7

    if-ltz v7, :cond_1

    aget-wide v7, p6, v5

    cmp-long v7, v3, v7

    if-ltz v7, :cond_1

    return v5

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method getUserFile(I)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_idle_stats.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p6

    move/from16 v5, p5

    or-int/lit16 v6, v5, 0x300

    invoke-static {v6}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v7

    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_0

    if-nez v7, :cond_0

    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v9, 0xff00

    and-int/2addr v8, v9

    const/16 v9, 0x200

    if-eq v8, v9, :cond_0

    const/16 v2, 0x2d

    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_0

    :cond_0
    cmp-long v8, p8, v3

    if-lez v8, :cond_3

    iget-wide v8, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v10, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v10, p8, v10

    add-long/2addr v8, v10

    const/16 v10, 0xa

    if-ne v2, v10, :cond_1

    iget-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    goto :goto_0

    :cond_1
    const/16 v10, 0x14

    if-ne v2, v10, :cond_2

    iget-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot set a timeout on bucket="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_5

    iget-wide v8, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v10, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v10, v3, v10

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    if-eqz v7, :cond_4

    iget-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_5
    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-le v8, v2, :cond_6

    iput v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move-object v8, p2

    move/from16 v9, p3

    invoke-direct {p0, p2, v9, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    goto :goto_1

    :cond_6
    move-object v8, p2

    move/from16 v9, p3

    :goto_1
    iput v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    return-object v1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 14

    move-object v10, p0

    move/from16 v11, p2

    invoke-direct {p0, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v12

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v13

    move-object v1, v13

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iput p6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    const v4, 0xff00

    and-int/2addr v4, p6

    const/16 v5, 0x500

    if-ne v4, v5, :cond_1

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    :cond_1
    if-eqz p7, :cond_2

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    :cond_3
    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .locals 10

    if-eqz p3, :cond_0

    const/16 v0, 0x28

    const/16 v1, 0x400

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x303

    :goto_0
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p4

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return v0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    nop

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    return-void
.end method

.method shouldInformListeners(Ljava/lang/String;IJI)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq v1, p5, :cond_0

    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateDisplay(ZJ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p1, :cond_1

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    :goto_0
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .locals 0

    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method

.method public userFileExists(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public writeAppIdleDurations()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public writeAppIdleTimes()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeAppIdleTimes(I)V
    .locals 18

    const-string v0, "package"

    const-string v1, "packages"

    const-string v2, "AppIdleHistory"

    const/4 v3, 0x0

    new-instance v4, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v6, v9, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_5

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_0

    const-string v12, "Skipping App Idle write for unexpected null package"

    invoke-static {v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v10

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-virtual {v6, v9, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "name"

    invoke-virtual {v6, v9, v13, v11}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "elapsedIdleTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "lastUsedByUserElapsedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "screenIdleTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "lastPredictedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "appLimitBucket"

    iget v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "bucketReason"

    iget v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    const-string v13, "activeTimeoutTime"

    move/from16 v17, v10

    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v13, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_1
    move/from16 v17, v10

    :goto_1
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v9, v9, v15

    if-lez v9, :cond_2

    const-string v9, "workingSetTimeoutTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v9, v9, v15

    if-eqz v9, :cond_3

    const-string v9, "lastJobRunTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-lez v9, :cond_4

    const-string v9, "lastRestrictionAttemptElapsedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string v9, "lastRestrictionAttemptReason"

    iget v10, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v9, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, v13, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2
    add-int/lit8 v10, v17, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    move/from16 v17, v10

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v5, p1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing app idle file for user "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
