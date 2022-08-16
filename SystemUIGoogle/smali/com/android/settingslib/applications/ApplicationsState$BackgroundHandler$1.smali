.class public final Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_4

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v7, v1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v5, v7

    iget-wide v7, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v9, v1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v7, v9

    add-long v9, v5, v7

    iget-object v11, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v13, v1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v15, v11, v13

    move-wide/from16 v17, v5

    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v15, v4

    add-long/2addr v9, v15

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v0, v0, v13

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v0, v17

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    iget-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    move-object/from16 v6, p1

    move-wide v15, v7

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_3
    move-object/from16 v6, p1

    move-wide v15, v7

    :goto_0
    iput-wide v9, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iput-wide v11, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v13, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v0, v17

    iput-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide v7, v15

    iput-wide v7, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-wide v0, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v0, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v1, v9, v10}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v6, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v7

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v4, v7

    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v6, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v4, v7

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v4, v7

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v7

    iget-wide v7, v6, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v4, v7

    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetSizeStr(Lcom/android/settingslib/applications/ApplicationsState;J)V

    const/4 v4, 0x1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_5

    :try_start_2
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x4

    iget-object v4, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_4
    move-object v6, v1

    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v3, v6, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    iget v4, v6, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
