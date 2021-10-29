.class final Lcom/android/server/appop/DiscreteRegistry;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;,
        Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;,
        Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    }
.end annotation


# static fields
.field private static final ATTR_ATTRIBUTION_FLAGS:Ljava/lang/String; = "af"

.field private static final ATTR_CHAIN_ID:Ljava/lang/String; = "ci"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "f"

.field private static final ATTR_LARGEST_CHAIN_ID:Ljava/lang/String; = "lc"

.field private static final ATTR_NOTE_DURATION:Ljava/lang/String; = "nd"

.field private static final ATTR_NOTE_TIME:Ljava/lang/String; = "nt"

.field private static final ATTR_OP_ID:Ljava/lang/String; = "op"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field private static final ATTR_TAG:Ljava/lang/String; = "at"

.field private static final ATTR_UID:Ljava/lang/String; = "ui"

.field private static final ATTR_UID_STATE:Ljava/lang/String; = "us"

.field private static final ATTR_VERSION:Ljava/lang/String; = "v"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field private static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field private static final DEFAULT_DISCRETE_OPS:Ljava/lang/String; = "1,0,26,27,100,101"

.field static final DISCRETE_HISTORY_FILE_SUFFIX:Ljava/lang/String; = "tl"

.field private static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field private static final OP_FLAGS_DISCRETE:I = 0xb

.field private static final PROPERTY_DISCRETE_FLAGS:Ljava/lang/String; = "discrete_history_op_flags"

.field private static final PROPERTY_DISCRETE_HISTORY_CUTOFF:Ljava/lang/String; = "discrete_history_cutoff_millis"

.field private static final PROPERTY_DISCRETE_HISTORY_QUANTIZATION:Ljava/lang/String; = "discrete_history_quantization_millis"

.field private static final PROPERTY_DISCRETE_OPS_LIST:Ljava/lang/String; = "discrete_history_ops_cslist"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ENTRY:Ljava/lang/String; = "e"

.field private static final TAG_HISTORY:Ljava/lang/String; = "h"

.field private static final TAG_OP:Ljava/lang/String; = "o"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "p"

.field private static final TAG_TAG:Ljava/lang/String; = "a"

.field private static final TAG_UID:Ljava/lang/String; = "u"

.field private static sDiscreteFlags:I

.field private static sDiscreteHistoryCutoff:J

.field private static sDiscreteHistoryQuantization:J

.field private static sDiscreteOps:[I


# instance fields
.field private mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field private mDebugMode:Z

.field private mDiscreteAccessDir:Ljava/io/File;

.field private mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    nop

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "discrete"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDirLocked()V

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->readLargestChainIdFromDiskLocked()I

    move-result v1

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 1

    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/DiscreteRegistry;->filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeTimeStamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2400(J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearOnDiskHistoryLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDir()V

    return-void
.end method

.method private createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v4, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v6, 0x0

    move v13, v6

    :goto_1
    if-ge v13, v12, :cond_7

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v14, v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v6, 0x0

    move v10, v6

    :goto_2
    if-ge v10, v11, :cond_6

    nop

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_5

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v18

    :goto_4
    if-ge v2, v0, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v20, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    if-eqz v0, :cond_3

    move-object/from16 v18, v4

    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move-object/from16 v21, v6

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v4, v21

    move-object/from16 v12, p2

    move/from16 v21, v7

    goto/16 :goto_6

    :cond_0
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    move/from16 v22, v12

    move-object/from16 v12, p2

    invoke-direct {v6, v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_1
    move/from16 v22, v12

    move-object/from16 v12, p2

    :goto_5
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    move-object/from16 v4, v21

    move/from16 v21, v7

    move-object v7, v15

    move/from16 v23, v8

    move v8, v5

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    move/from16 v25, v10

    move/from16 v10, v16

    move/from16 v26, v11

    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V

    goto :goto_6

    :cond_2
    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v4, v21

    move-object/from16 v12, p2

    move/from16 v21, v7

    goto :goto_6

    :cond_3
    move-object/from16 v18, v4

    move-object v4, v6

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v6, v4

    move-object/from16 v4, v18

    move/from16 v0, v20

    move/from16 v7, v21

    move/from16 v12, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    goto/16 :goto_4

    :cond_4
    move/from16 v20, v0

    move-object/from16 v18, v4

    move-object v4, v6

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v18

    move/from16 v2, v19

    move/from16 v12, v22

    goto/16 :goto_3

    :cond_5
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    add-int/lit8 v10, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v12, v22

    goto/16 :goto_2

    :cond_6
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v12, v22

    goto/16 :goto_1

    :cond_7
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v22, v12

    move-object/from16 v12, p2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_8
    return-object v1
.end method

.method private createDiscreteAccessDir()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    return-void
.end method

.method private createDiscreteAccessDirLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    return-void
.end method

.method private deleteOldDiscreteHistoryFilesLocked()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    nop

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v7, v6

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    sget-wide v9, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v11, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    sget-object v8, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v6

    sget-object v7, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while cleaning timeline files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static discretizeDuration(J)J
    .locals 6

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private static discretizeTimeStamp(J)J
    .locals 4

    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;JJII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    move-object v3, p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v11, p10

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    if-eqz v12, :cond_0

    move-object v5, v12

    move-object/from16 v6, p7

    move/from16 v7, p6

    move-object/from16 v8, p9

    move/from16 v9, p8

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v5, v5, p5

    if-eqz v5, :cond_1

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    add-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_1

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, p3

    if-gez v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, p0

    move-object/from16 v11, p10

    return-object v1
.end method

.method private getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .locals 5

    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {p0, v3}, Lcom/android/server/appop/DiscreteRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static isDiscreteOp(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static parseOpsList(Ljava/lang/String;)[I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse Discrete ops list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1,0,26,27,100,101"

    invoke-static {v4}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v4

    return-object v4

    :cond_1
    nop

    return-object v2
.end method

.method private persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 8

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    invoke-static {p1, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$1200(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing timeline state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, "tl"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v7, v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$200(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readLargestChainIdFromDiskLocked()I
    .locals 12

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    array-length v5, v0

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v10, v9

    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-gez v11, :cond_1

    move-object v2, v7

    move-wide v3, v9

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v1

    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v6

    const-string v7, "h"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string/jumbo v8, "lc"

    invoke-interface {v6, v7, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    :goto_2
    return v1

    :catchall_0
    move-exception v6

    nop

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    :goto_3
    return v1

    :catch_2
    move-exception v5

    return v1

    :cond_4
    return v1
.end method

.method private setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez v0, :cond_1

    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez v0, :cond_3

    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_1

    :cond_2
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_op_flags"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xb

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    goto :goto_2

    :cond_4
    nop

    :goto_2
    sput v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_ops_cslist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "1,0,26,27,100,101"

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    return-void
.end method

.method private static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    add-int v5, v0, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-lt v2, v0, :cond_1

    if-ge v3, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v4

    :cond_1
    :goto_1
    if-ne v2, v0, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v14

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    if-eqz v1, :cond_1

    move-object/from16 v15, p0

    invoke-direct {v15, v14, v0}, Lcom/android/server/appop/DiscreteRegistry;->createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v15, p0

    move-object v13, v2

    :goto_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    sget-wide v3, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    move-wide/from16 v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 p2, v13

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$000(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v14, v2, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$100(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    return-void
.end method

.method clearHistory()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearOnDiskHistoryLocked()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$300(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 20

    move-object/from16 v6, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v19

    const/4 v0, -0x1

    move/from16 v5, p6

    if-ne v5, v0, :cond_0

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p6 .. p6}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v15, v0

    :goto_0
    nop

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    const/16 v17, 0x1f

    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v7, v19

    move/from16 v12, p5

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    invoke-static/range {v7 .. v18}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$000(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    move-object/from16 v7, p9

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Largest chain id: "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$500(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$systemReady$0$DiscreteRegistry(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method offsetHistory(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->access$400(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method recordDiscreteAccess(ILjava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v15, p3

    move/from16 v14, p5

    invoke-static {v15, v14}, Lcom/android/server/appop/DiscreteRegistry;->isDiscreteOp(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v13, v1, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v2, v1, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v16, v13

    move/from16 v13, p11

    move/from16 v14, p12

    :try_start_1
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    monitor-exit v16

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setDebugMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    return-void
.end method

.method systemReady()V
    .locals 3

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method writeAndClearAccessHistory()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v2, "State not saved - persistence not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
