.class public final Lcom/google/android/settings/fuelgauge/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
.field public static final BATTERY_CONTENT_URI:Landroid/net/Uri;

.field private static final CONTENT_BASE_URI:Landroid/net/Uri;

.field public static final SI_BATTERY_SETTINGS_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$3OoOKF4Ww-P9n_pzKsNU5UOpZig(Lcom/android/settings/fuelgauge/BatteryEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->lambda$sendBatteryEntryData$0(Lcom/android/settings/fuelgauge/BatteryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t86y-XEEO_6qdiNoHyEXdlkwPtA(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->lambda$sendBatteryEntryData$1(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/BatteryEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.settings.intelligence.modules.battery.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->CONTENT_BASE_URI:Landroid/net/Uri;

    const-string v1, "BatteryState"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "BatterySettings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->SI_BATTERY_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method static contains([JJ)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static findNearestTimestamp(Ljava/util/List;J)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)[J"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-gtz v1, :cond_1

    aget-wide v6, v0, v3

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    aput-wide v4, v0, v3

    :cond_1
    if-ltz v1, :cond_0

    aget-wide v6, v0, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    aput-wide v4, v0, v2

    goto :goto_0

    :cond_2
    aget-wide p0, v0, v3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, p0, v4

    const-wide/16 p1, 0x0

    if-nez p0, :cond_3

    move-wide v4, p1

    goto :goto_1

    :cond_3
    aget-wide v4, v0, v3

    :goto_1
    aput-wide v4, v0, v3

    aget-wide v3, v0, v2

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p0, v3, v5

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    aget-wide p1, v0, v2

    :goto_2
    aput-wide p1, v0, v2

    return-object v0

    :array_0
    .array-data 8
        -0x8000000000000000L
        0x7fffffffffffffffL
    .end array-data
.end method

.method private static getBatteryIntet(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4

    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    return v1
.end method

.method static getHistoryMap(Landroid/content/Context;Ljava/time/Clock;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/time/Clock;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isWorkProfileUser(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHistoryMap() isWorkProfileUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "context.createPackageContextAsUser() fail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isContentProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-direct {v6, v3}, Lcom/android/settings/fuelgauge/BatteryHistEntry;-><init>(Landroid/database/Cursor;)V

    iget-wide v7, v6, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-nez v10, :cond_3

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "getHistoryMap() size=%d in %d/ms"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz p2, :cond_7

    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getTimestampSlots(Ljava/time/Clock;)[J

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->interpolateHistory(Landroid/content/Context;Ljava/time/Clock;[JLjava/util/Map;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->contains([JJ)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    new-array p0, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v8

    const-string p1, "interpolateHistory() size=%d in %d/ms"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0
.end method

.method static getTimestampSlots(Ljava/time/Clock;)[J
    .locals 8

    const/16 v0, 0x19

    new-array v1, v0, [J

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    int-to-long v6, p0

    mul-long/2addr v6, v4

    sub-long v6, v2, v6

    aput-wide v6, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static interpolateHistory(Landroid/content/Context;JJJLjava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    move-object/from16 v11, p7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    sub-long/2addr v2, v4

    cmp-long v1, p3, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    sub-long v3, p5, v9

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const-string v1, "force align into the nearest slot"

    invoke-static {v0, v1, v9, v10, v2}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "in the different booting section"

    invoke-static {v0, v1, v9, v10, v2}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string v1, "apply interpolation arithmetic"

    invoke-static {v0, v1, v9, v10, v2}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sub-long v1, p5, p3

    long-to-double v7, v1

    sub-long v1, v9, p3

    long-to-double v5, v1

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    if-eqz v4, :cond_6

    iget-wide v12, v4, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 p3, v5

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    cmp-long v2, v12, v5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-wide v12, v4, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    cmp-long v5, v12, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p3

    goto :goto_5

    :cond_5
    :goto_4
    invoke-interface {v14, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "abnormal reset condition is found"

    invoke-static {v0, v2, v9, v10, v1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    move-wide/from16 v5, p3

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    goto :goto_1

    :cond_6
    :goto_5
    div-double v12, v5, v7

    move-object/from16 p3, v1

    move-wide/from16 v1, p1

    move-object/from16 v18, v4

    move-object/from16 p4, v15

    move-object v15, v3

    move-wide/from16 v3, p5

    move-wide/from16 v19, v5

    move-wide v5, v12

    move-wide v12, v7

    move-object/from16 v7, v18

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(JJDLcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;)Lcom/android/settings/fuelgauge/BatteryHistEntry;

    move-result-object v1

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_7

    const-string v1, "cannot find lower entry data"

    move-object/from16 v2, p3

    invoke-static {v0, v1, v9, v10, v2}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    :cond_7
    move-object/from16 v15, p4

    move-wide v7, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v5, v19

    goto :goto_1

    :cond_8
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static interpolateHistory(Landroid/content/Context;Ljava/time/Clock;[JLjava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/time/Clock;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    array-length v0, v9

    if-ge v13, v0, :cond_3

    aget-wide v1, v9, v13

    invoke-static {v11, v1, v2}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->findNearestTimestamp(Ljava/util/List;J)[J

    move-result-object v0

    aget-wide v3, v0, v12

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    const-wide/16 v14, 0x0

    cmp-long v0, v5, v14

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-string v0, "job scheduler is delayed"

    invoke-static {v8, v0, v1, v2, v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sub-long v16, v5, v1

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "force align into the nearest slot"

    invoke-static {v8, v0, v1, v2, v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    cmp-long v0, v3, v14

    if-nez v0, :cond_2

    const-string v0, "no lower timestamp slot data"

    invoke-static {v8, v0, v1, v2, v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->interpolateHistory(Landroid/content/Context;JJJLjava/util/Map;)V

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static isContentProviderEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.settings.intelligence"

    const-string v2, "com.google.android.settings.intelligence.modules.battery.impl.BatterySettingsContentProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isWorkProfileUser(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$sendBatteryEntryData$0(Lcom/android/settings/fuelgauge/BatteryEntry;)Z
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-nez v4, :cond_1

    cmp-long v4, v0, v9

    if-nez v4, :cond_0

    cmp-long v4, v2, v9

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v8

    const/4 v11, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v11

    const-string v11, "no consumed power but has running time for %s time=%d|%d"

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "DatabaseUtils"

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v11

    cmpl-double p0, v11, v6

    if-nez p0, :cond_2

    cmp-long p0, v0, v9

    if-nez p0, :cond_2

    cmp-long p0, v2, v9

    if-eqz p0, :cond_3

    :cond_2
    move v5, v8

    :cond_3
    return v5
.end method

.method private static synthetic lambda$sendBatteryEntryData$1(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 9

    move-object/from16 v0, p9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settings/fuelgauge/ConvertUtils;->convert(Lcom/android/settings/fuelgauge/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;

    move-result-object v0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/BatteryHistEntry;)V
    .locals 0

    return-void
.end method

.method static sendBatteryEntryData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getBatteryIntet(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "DatabaseUtils"

    if-nez v0, :cond_0

    const-string v0, "sendBatteryEntryData(): cannot fetch battery intent"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v14

    const-string v4, "status"

    const/4 v15, 0x1

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v4, "health"

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda1;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v13

    new-instance v10, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v6, p2

    move v7, v14

    move/from16 v8, v16

    move v9, v0

    move-object v15, v10

    move-wide/from16 v10, v19

    move-wide/from16 v21, v1

    move-object/from16 p1, v12

    move-object v1, v13

    move-wide/from16 v12, v17

    invoke-direct/range {v4 .. v13}, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJ)V

    invoke-interface {v1, v15}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v21, v1

    move-object/from16 p1, v12

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v2, p1

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :try_start_0
    sget-object v4, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bulkInsert() data into database error:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v14

    move/from16 v7, v16

    move v8, v0

    move-wide/from16 v9, v19

    move-wide/from16 v11, v17

    invoke-static/range {v4 .. v12}, Lcom/android/settings/fuelgauge/ConvertUtils;->convert(Lcom/android/settings/fuelgauge/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;

    move-result-object v4

    :try_start_1
    sget-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert() data into database error:\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-string v0, "sendBatteryEntryData() size=%d in %d/ms"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
