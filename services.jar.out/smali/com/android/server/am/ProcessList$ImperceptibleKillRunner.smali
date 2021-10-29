.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.super Landroid/app/IUidObserver$Stub;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImperceptibleKillRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;,
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
    }
.end annotation


# static fields
.field private static final DROPBOX_TAG_IMPERCEPTIBLE_KILL:Ljava/lang/String; = "imperceptible_app_kill"

.field private static final EXTRA_PID:Ljava/lang/String; = "pid"

.field private static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final EXTRA_REQUESTER:Ljava/lang/String; = "requester"

.field private static final EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mIdle:Z

.field private mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

.field private mUidObserverEnabled:Z

.field private mWorkItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleDeviceIdle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidStateChanged(II)V

    return-void
.end method

.method private handleDeviceIdle()V
    .locals 18

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/DropBoxManager;

    if-eqz v11, :cond_0

    const-string v0, "imperceptible_app_kill"

    invoke-virtual {v11, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v13, v1

    :goto_1
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_4

    if-ltz v13, :cond_4

    iget-object v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v15, v1

    add-int/lit8 v1, v15, -0x1

    move v8, v1

    :goto_2
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_2

    if-ltz v8, :cond_2

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v7, v1

    const-string/jumbo v1, "pid"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "uid"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "reason"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "requester"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v0

    move v0, v8

    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v0, -0x1

    move/from16 v0, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    move v0, v8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleUidGone(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleUidStateChanged(II)V
    .locals 17

    move-object/from16 v10, p0

    move/from16 v11, p1

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/DropBoxManager;

    if-eqz v12, :cond_0

    const-string v0, "imperceptible_app_kill"

    invoke-virtual {v12, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v14, v1

    add-int/lit8 v1, v14, -0x1

    move v15, v1

    :goto_1
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_2

    if-ltz v15, :cond_2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v8, v1

    const-string/jumbo v1, "pid"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "uid"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "reason"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "requester"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v16, v8

    move-object v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    :cond_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-ne v2, p1, :cond_5

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, p2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-virtual {v0, p5, v2, v3, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p8, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0, v6, v4}, Lcom/android/server/am/ActivityManagerService;->appendDropBoxProcessHeaders(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requester UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "imperceptible_app_kill"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p7, v5, v6}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private registerUidObserverIfNecessaryLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "android"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .locals 8

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v6, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "requester"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList$1;)V

    iput-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public synthetic lambda$killProcessLocked$0$ProcessList$ImperceptibleKillRunner(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyDeviceIdleness(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
