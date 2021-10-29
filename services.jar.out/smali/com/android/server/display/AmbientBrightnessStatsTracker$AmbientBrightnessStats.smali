.class Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmbientBrightnessStats"
.end annotation


# static fields
.field private static final ATTR_BUCKET_BOUNDARIES:Ljava/lang/String; = "bucket-boundaries"

.field private static final ATTR_BUCKET_STATS:Ljava/lang/String; = "bucket-stats"

.field private static final ATTR_LOCAL_DATE:Ljava/lang/String; = "local-date"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final TAG_AMBIENT_BRIGHTNESS_DAY_STATS:Ljava/lang/String; = "ambient-brightness-day-stats"

.field private static final TAG_AMBIENT_BRIGHTNESS_STATS:Ljava/lang/String; = "ambient-brightness-stats"


# instance fields
.field private mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    return-void
.end method

.method private getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;",
            "Ljava/time/LocalDate;",
            ")",
            "Landroid/hardware/display/AmbientBrightnessDayStats;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/hardware/display/AmbientBrightnessDayStats;

    sget-object v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    invoke-direct {v1, p2, v2}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;>;I)",
            "Ljava/util/Deque<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    return-object v0
.end method


# virtual methods
.method public getUserStats(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public log(ILjava/time/LocalDate;FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateDayStats(Ljava/util/Deque;Ljava/time/LocalDate;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    return-void
.end method

.method public readFromXML(Ljava/io/InputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v5, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ambient-brightness-stats"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v7

    const-wide/16 v8, 0x7

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    :goto_1
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v5, v9

    if-eq v9, v6, :cond_8

    const/4 v9, 0x3

    if-ne v5, v9, :cond_1

    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_8

    :cond_1
    if-eq v5, v9, :cond_7

    const/4 v9, 0x4

    if-ne v5, v9, :cond_2

    move-object/from16 v16, v0

    goto/16 :goto_4

    :cond_2
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    const-string v9, "ambient-brightness-day-stats"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "user"

    const/4 v10, 0x0

    invoke-interface {v3, v10, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v11, "local-date"

    invoke-interface {v3, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v11

    const-string v12, "bucket-boundaries"

    invoke-interface {v3, v10, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "bucket-stats"

    invoke-interface {v3, v10, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v13, v12

    array-length v14, v10

    if-ne v13, v14, :cond_5

    array-length v13, v12

    if-lt v13, v6, :cond_5

    array-length v13, v12

    new-array v13, v13, [F

    array-length v14, v10

    new-array v14, v14, [F

    const/4 v15, 0x0

    :goto_2
    array-length v6, v12

    if-ge v15, v6, :cond_3

    aget-object v6, v12, v15

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v13, v15

    aget-object v6, v10, v15

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v6

    iget-object v15, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v15}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v15

    invoke-virtual {v6, v15, v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v6

    const/4 v15, -0x1

    if-eq v6, v15, :cond_4

    invoke-virtual {v11, v7}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct {v1, v2, v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(Ljava/util/Map;I)Ljava/util/Deque;

    move-result-object v15

    move-object/from16 v16, v0

    new-instance v0, Landroid/hardware/display/AmbientBrightnessDayStats;

    invoke-direct {v0, v11, v13, v14}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    invoke-interface {v15, v0}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object/from16 v16, v0

    :goto_3
    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Invalid brightness stats string."

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v16, v0

    goto :goto_4

    :cond_7
    move-object/from16 v16, v0

    :goto_4
    move-object/from16 v0, v16

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_8
    iput-object v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    nop

    return-void

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ambient brightness stats not found in tracker file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse brightness stats file."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/AmbientBrightnessDayStats;

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToXML(Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    const-string v2, "ambient-brightness-stats"

    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    iget-object v8, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v8}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$000(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-static {v9}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->access$100(Lcom/android/server/display/AmbientBrightnessStatsTracker;)Landroid/os/UserManager;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ambient-brightness-day-stats"

    invoke-interface {v0, v3, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user"

    invoke-interface {v0, v3, v10, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    nop

    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "local-date"

    invoke-interface {v0, v3, v11, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v13

    array-length v13, v13

    if-ge v12, v13, :cond_1

    if-lez v12, :cond_0

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    nop

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "bucket-boundaries"

    invoke-interface {v0, v3, v13, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "bucket-stats"

    invoke-interface {v0, v3, v13, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v3, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    goto/16 :goto_1

    :cond_3
    goto/16 :goto_0

    :cond_4
    invoke-interface {v0, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
