.class final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final rtcGood:Z

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "jobid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "net-capabilities-csv"

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "net-forbidden-capabilities-csv"

    invoke-interface {v1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "net-transport-types-csv"

    invoke-interface {v1, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_0

    if-nez v8, :cond_1

    :cond_0
    const-string/jumbo v9, "net-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "net-unwanted-capabilities"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "net-transport-types"

    invoke-interface {v1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_2

    aget v15, v12, v14

    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    aget v15, v12, v14

    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v8}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v12

    array-length v13, v12

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_4

    aget v14, v12, v9

    invoke-virtual {v11, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-object v9, v5

    goto/16 :goto_6

    :cond_5
    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    new-instance v11, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v11}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v11

    const/16 v12, 0x19

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_3
    const/16 v9, 0x19

    if-ge v15, v14, :cond_7

    aget v10, v13, v15

    if-gt v10, v9, :cond_6

    invoke-virtual {v11, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_9

    aget v15, v10, v14

    if-gt v15, v9, :cond_8

    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v10

    array-length v13, v10

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_b

    aget v15, v10, v14

    const/4 v5, 0x7

    if-gt v15, v5, :cond_a

    invoke-virtual {v11, v15}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v11}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    const/4 v9, 0x0

    goto :goto_6

    :cond_c
    const-string v5, "connectivity"

    const/4 v9, 0x0

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_d
    const-string/jumbo v10, "metered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_e
    const-string/jumbo v10, "unmetered"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_f
    const-string/jumbo v10, "not-roaming"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_10
    :goto_6
    const-string v5, "idle"

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_7

    :cond_11
    const/4 v10, 0x1

    :goto_7
    const-string v11, "charging"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_12
    const-string v11, "battery-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_13
    const-string/jumbo v11, "storage-not-low"

    invoke-interface {v1, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_14
    return-void
.end method

.method private buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "delay"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    nop

    const-string v4, "deadline"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "initial-backoff"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "backoff-policy"

    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid version number, aborting jobs file read."

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "JobStore"

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No persisted jobs."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v6

    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "job-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v9, "version"

    invoke-interface {v1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :cond_3
    nop

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :cond_4
    if-ne v0, v3, :cond_8

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "job"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, p2, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read out "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v7, "Error reading job from file."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    move-object v7, v2

    :cond_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v4, :cond_4

    return-object v8

    :catch_0
    move-exception v3

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_9
    return-object v6
.end method

.method private restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "JobStore"

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    move-object v6, v0

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    const-string/jumbo v7, "uid"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v7, "priority"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    :cond_0
    const-string v8, "flags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v7, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    :cond_1
    const-string v8, "internalFlags"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    :cond_2
    const-string/jumbo v8, "sourceUserId"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-nez v7, :cond_3

    const/4 v8, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_0
    move v15, v8

    const-string/jumbo v8, "lastSuccessfulRunTime"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-nez v7, :cond_4

    const-wide/16 v19, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v19, v11

    :goto_1
    const-string/jumbo v11, "lastFailedRunTime"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    if-nez v7, :cond_5

    const-wide/16 v21, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a

    move-wide/from16 v21, v11

    :goto_2
    nop

    const-string/jumbo v7, "sourcePackageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "sourceTag"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :goto_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_18

    const/4 v13, 0x2

    if-ne v11, v13, :cond_17

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v8, "constraints"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_e

    :cond_6
    :try_start_1
    invoke-direct {v1, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    nop

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v12, :cond_16

    if-eq v11, v13, :cond_7

    return-object v5

    :cond_7
    :try_start_2
    invoke-direct {v1, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v14, v8

    nop

    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/android/server/job/JobStore;->access$800(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "periodic"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_3
    const-string/jumbo v0, "period"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v27, v16

    const-string v13, "flex"

    invoke-interface {v2, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v13

    if-eqz v0, :cond_8

    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v31, v14

    goto/16 :goto_7

    :cond_8
    move-wide/from16 v16, v27

    :goto_5
    move-wide/from16 v29, v16

    move-object/from16 v16, v0

    move-object/from16 v31, v14

    move-wide/from16 v13, v27

    move-wide/from16 v0, v29

    :try_start_5
    invoke-virtual {v6, v13, v14, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    add-long v32, v8, v13

    add-long v32, v32, v0

    cmp-long v5, v28, v32

    if-lez v5, :cond_9

    add-long v29, v8, v0

    add-long v29, v29, v13

    sub-long v32, v29, v0

    const-string v5, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    move-wide/from16 v34, v0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x0

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1

    aput-object v1, v0, v17

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x2

    aput-object v1, v0, v17

    const/4 v1, 0x3

    div-long v36, v32, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v1

    div-long v36, v29, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x4

    aput-object v1, v0, v17

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v12, v0

    goto :goto_6

    :cond_9
    move-wide/from16 v34, v0

    :goto_6
    move-object v1, v12

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v31, v14

    :goto_7
    const-string v1, "Error reading periodic execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_a
    move-object/from16 v31, v14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "one-off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_6
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    const-wide/16 v13, 0x0

    cmp-long v0, v0, v13

    if-eqz v0, :cond_b

    :try_start_7
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    goto/16 :goto_d

    :cond_b
    :goto_8
    :try_start_8
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v0, v0, v13

    if-eqz v0, :cond_c

    :try_start_9
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {v6, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_c
    move-object v1, v12

    :goto_9
    move-object/from16 v5, p0

    invoke-direct {v5, v6, v2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :goto_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v0, 0x4

    if-eq v14, v0, :cond_12

    const/4 v13, 0x2

    if-ne v14, v13, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "extras"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    goto/16 :goto_c

    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :try_start_a
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    nop

    const-string v11, "android"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    const-string v11, "SyncManagerJob"

    const/4 v12, 0x0

    invoke-virtual {v13, v11, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string/jumbo v11, "owningPackage"

    invoke-virtual {v13, v11, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-class v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v7, v15, v8, v9}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v28

    new-instance v29, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v11

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v12, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    if-eqz p1, :cond_f

    const/16 v27, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v27, v31

    :goto_b
    const/16 v25, 0x0

    move-wide/from16 v32, v8

    move-object/from16 v8, v29

    move-object v9, v11

    move-object v11, v7

    move v12, v15

    move-object/from16 v30, v13

    move/from16 v13, v28

    move/from16 v34, v14

    move-object/from16 v14, v26

    move/from16 v35, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v23

    move-object/from16 v23, v27

    move/from16 v24, v4

    invoke-direct/range {v8 .. v25}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V

    return-object v8

    :catch_4
    move-exception v0

    move-wide/from16 v32, v8

    move-object/from16 v30, v13

    move/from16 v34, v14

    move/from16 v35, v15

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to build job from XML, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_10
    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    :goto_c
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "Error reading extras, skipping."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v3, 0x0

    return-object v3

    :cond_12
    move-wide/from16 v32, v8

    move/from16 v34, v14

    move/from16 v35, v15

    const/4 v12, 0x0

    const/4 v13, 0x2

    move/from16 v11, v34

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    :goto_d
    const-string v1, "Error reading job execution criteria, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_13
    move-object/from16 v5, p0

    move-wide/from16 v32, v8

    move/from16 v35, v15

    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v1, 0x0

    return-object v1

    :catch_6
    move-exception v0

    move-object v5, v1

    move/from16 v35, v15

    move-object v1, v0

    move-object v0, v1

    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "Error parsing execution time parameters, skipping."

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v1, 0x0

    return-object v1

    :cond_16
    move/from16 v17, v0

    move v0, v12

    move v8, v13

    move/from16 v35, v15

    const-wide/16 v13, 0x0

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move v13, v8

    move/from16 v0, v17

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    move-object v0, v8

    const-string v8, "Error I/O Exception."

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_8
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    move-object v0, v8

    const-string v8, "Error Parser Exception."

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_9
    move-exception v0

    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    move-object v8, v0

    move-object v0, v8

    const-string v8, "Error reading constraints, skipping."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_17
    move/from16 v35, v15

    move-object/from16 v40, v5

    move-object v5, v1

    move-object/from16 v1, v40

    :goto_e
    return-object v1

    :cond_18
    move/from16 v17, v0

    move-object v5, v1

    move/from16 v35, v15

    const-wide/16 v13, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move-object v5, v1

    const-string v1, "Error parsing job\'s required fields, skipping"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$600(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-direct {p0, v3, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    iput-wide v6, v9, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-object v10, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v9}, Lcom/android/server/job/JobStore;->access$500(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v0, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v1, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v2, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_5
    const-string v4, "JobStore"

    const-string v5, "Error jobstore xml."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    invoke-static {}, Lcom/android/server/job/JobStore;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "JobStore"

    const-string v5, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iget v3, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    const-string v3, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " jobs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_3
    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iget v4, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v0, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v1, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    iget-object v4, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v4}, Lcom/android/server/job/JobStore;->access$700(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v4

    iput v2, v4, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    :cond_4
    throw v3
.end method
