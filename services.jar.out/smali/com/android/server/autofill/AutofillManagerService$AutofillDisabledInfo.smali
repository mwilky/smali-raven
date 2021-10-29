.class final Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillDisabledInfo"
.end annotation


# instance fields
.field private mDisabledActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>()V

    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Disabled apps: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const-string v5, ": "

    const-string v6, ". "

    const-string v7, "N/A"

    if-nez v3, :cond_0

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v15, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_1

    iget-object v12, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v5

    sub-long v4, v13, v9

    invoke-static {v4, v5, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const/16 v4, 0xa

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move-object v5, v15

    goto :goto_0

    :cond_1
    move-object v15, v5

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Disabled activities: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v3, :cond_2

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    iget-object v9, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    iget-object v10, v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v12, v15

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v10, v7

    invoke-static {v13, v14, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const/16 v13, 0xa

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method getAppDisabledExpirationLocked(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_1
    return-wide v1
.end method

.method isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .locals 11

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    const-string v3, " from disabled list"

    const-string v4, "Removing "

    const-string v5, "AutofillManagerService"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-ltz v7, :cond_0

    return v6

    :cond_0
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const/4 v8, 0x0

    if-nez v7, :cond_3

    return v8

    :cond_3
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-nez v7, :cond_4

    return v8

    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-nez v9, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v0

    if-ltz v9, :cond_6

    return v6

    :cond_6
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v8
.end method

.method putDisableActivityLocked(Landroid/content/ComponentName;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putDisableAppsLocked(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
