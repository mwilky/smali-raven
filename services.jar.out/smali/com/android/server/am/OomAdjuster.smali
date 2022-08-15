.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# instance fields
.field public mActiveUids:Lcom/android/server/am/ActiveUids;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAdjSeq:I

.field public mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mPendingFullOomAdjUpdate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpLong:[J

.field public final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4pnHIE50TnOcNgt4SOu10KtoinY(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9qaeCQ1bE6cG3uK32c_XCnZvYk(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$id8pSS0hq-uUB5PWVAgNdLbirVc(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihQaI4mSYofPBYBnyj-KozGpFJs(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    new-instance v1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-class p2, Landroid/os/PowerManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManagerInternal;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance p2, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p2, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    new-instance p2, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p2, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance p4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/ActiveUids;

    invoke-direct {p2, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    new-instance p1, Ljava/util/ArrayDeque;

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p2, p2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    return-void
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method

.method private synthetic lambda$applyOomAdjLSP$1(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 7

    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProcessGroup "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_0
    return v3
.end method


# virtual methods
.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    :cond_0
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v14, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v3, :cond_3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v3, v5, :cond_1

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v14, :cond_3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    if-gez v3, :cond_2

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v3, v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-virtual {v1, v5, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    :cond_5
    const/16 v0, -0x2710

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    :cond_6
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    const/16 v15, 0xa

    const/4 v8, 0x0

    if-eq v3, v0, :cond_10

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v6, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting sched group of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-virtual {v1, v6, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v2, v0, v15, v3, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    move v0, v8

    goto/16 :goto_4

    :cond_8
    const/4 v5, 0x3

    if-eqz v0, :cond_a

    if-eq v0, v14, :cond_9

    if-eq v0, v5, :cond_b

    const/4 v6, 0x4

    if-eq v0, v6, :cond_b

    const/4 v4, -0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x7

    goto :goto_1

    :cond_a
    move v4, v8

    :cond_b
    :goto_1
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8, v7, v4, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v4

    if-ne v0, v5, :cond_d

    if-eq v3, v5, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    if-eqz v4, :cond_10

    invoke-static {v4, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v3, -0xa

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_10

    :try_start_1
    invoke-static {v4, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :cond_d
    if-ne v3, v5, :cond_10

    if-eq v0, v5, :cond_10

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_e

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    if-eqz v4, :cond_f

    invoke-static {v4, v8, v8}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v8}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_f
    :goto_2
    if-eqz v4, :cond_10

    const/4 v0, -0x4

    invoke-static {v4, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_10
    :goto_3
    move v0, v14

    :goto_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v4

    if-eq v3, v4, :cond_11

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    move v15, v14

    goto :goto_5

    :cond_11
    move v15, v8

    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_12

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_12

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_12
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_14

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    :cond_13
    move/from16 v16, v8

    goto :goto_7

    :cond_14
    :goto_6
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    move/from16 v16, v14

    :goto_7
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v3, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_6
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v17, v6

    move-wide/from16 v6, p3

    move v14, v8

    move/from16 v8, v16

    :try_start_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_1b

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc state change of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_16

    const/4 v8, 0x1

    goto :goto_8

    :cond_16
    move v8, v14

    :goto_8
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-ge v3, v4, :cond_17

    const/4 v3, 0x1

    goto :goto_9

    :cond_17
    move v3, v14

    :goto_9
    if-eqz v8, :cond_18

    if-nez v3, :cond_18

    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_18
    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    invoke-virtual {v1, v13, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_19

    invoke-virtual {v13, v14}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_19
    if-nez p2, :cond_1a

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    monitor-exit v3

    goto :goto_c

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_1a
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    goto :goto_c

    :cond_1b
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1d

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_a

    :cond_1c
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_a
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1f

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_c

    :cond_1d
    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_b

    :cond_1e
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_b
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1f

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    :cond_1f
    :goto_c
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v4

    if-eq v3, v4, :cond_20

    or-int/lit8 v15, v15, 0x4

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    :cond_20
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v4

    if-eq v3, v4, :cond_21

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v3, :cond_21

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    if-eqz v15, :cond_22

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v2

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v3, v15

    iput v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    iput v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    :cond_22
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    invoke-virtual {v13, v11, v12}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_24
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v1

    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    return v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    :goto_d
    :try_start_9
    monitor-exit v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_d
.end method

.method public final assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v3, v1, v3

    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v3, 0x1

    if-lez v4, :cond_1

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget v0, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v4, v0

    if-ge v4, v3, :cond_2

    move v4, v3

    :cond_2
    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    if-ge v2, v3, :cond_3

    move v2, v3

    :cond_3
    sub-int/2addr v1, v3

    const/4 v0, -0x1

    const/16 v6, 0x384

    const/16 v7, 0x38e

    const/16 v8, 0x389

    const/16 v9, 0x393

    move v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v1

    move v1, v0

    :goto_2
    if-ltz v6, :cond_10

    move-object/from16 v15, p1

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v15

    move/from16 v16, v6

    const/16 v6, 0x3e9

    if-lt v15, v6, :cond_f

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v15

    move/from16 v17, v2

    packed-switch v15, :pswitch_data_0

    if-eq v9, v10, :cond_c

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v17

    if-lt v0, v2, :cond_d

    add-int/lit8 v0, v10, 0xa

    const/16 v3, 0x3e7

    move v9, v10

    if-le v0, v3, :cond_b

    const/4 v0, 0x0

    move v10, v3

    goto :goto_6

    :pswitch_0
    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v2

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v11, v3, :cond_6

    if-ne v12, v15, :cond_6

    if-le v2, v13, :cond_5

    if-ge v7, v8, :cond_4

    const/16 v3, 0x3e7

    if-ge v7, v3, :cond_4

    add-int/lit8 v14, v14, 0x1

    :cond_4
    move v13, v2

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move v13, v2

    move v11, v3

    move v12, v15

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_a

    if-eq v7, v8, :cond_a

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v8, 0xa

    const/16 v2, 0x3e7

    move v7, v8

    if-le v1, v2, :cond_8

    const/4 v1, 0x0

    const/16 v8, 0x3e7

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    move v8, v1

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v14, 0x0

    :cond_a
    :goto_5
    add-int v2, v7, v14

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    move/from16 v2, v17

    goto :goto_7

    :cond_b
    move v10, v0

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    move/from16 v2, v17

    :cond_d
    :goto_6
    invoke-virtual {v5, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v6, v9}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    :cond_f
    :goto_7
    add-int/lit8 v6, v16, -0x1

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_0
    return v0
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/am/ActiveUids;->clear()V

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    move v0, v1

    :goto_1
    if-eqz p1, :cond_c

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {p3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_2
    if-ltz v4, :cond_7

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v5

    iget v6, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_2
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_3
    if-eqz v6, :cond_6

    if-ne v6, p1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    or-int/2addr v0, v7

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v7, 0x80000a0

    and-int/2addr v5, v7

    const/16 v7, 0x20

    if-ne v5, v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v5, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_5
    if-ltz v4, :cond_b

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v5, v5, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_a

    if-ne v5, p1, :cond_8

    goto :goto_6

    :cond_8
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v6

    or-int/2addr v0, v6

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_d

    sub-int/2addr p0, v3

    :goto_7
    if-ge v1, p0, :cond_d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_d
    return v0
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 57
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v5

    :cond_0
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v6, 0x13

    if-nez v0, :cond_2

    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v5

    :cond_2
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-nez p7, :cond_4

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_4
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v15

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v12

    const/4 v7, 0x2

    const-string v13, "ActivityManager"

    if-gtz v12, :cond_e

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making fixed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "fixed"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v12, 0xf

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v10, v11, :cond_6

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v2, "pers-top-activity"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const-string/jumbo v2, "pers-top-ui"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    :cond_8
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_b
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v1, :cond_d

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    if-ge v1, v0, :cond_c

    goto :goto_4

    :cond_c
    move v7, v5

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v7, 0x1

    :goto_5
    return v7

    :cond_e
    const/16 v12, 0xf

    const/16 v23, 0x5

    const/16 v24, 0x3

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v4

    if-eqz p7, :cond_f

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    goto :goto_6

    :cond_f
    move v6, v5

    :goto_6
    if-ne v4, v7, :cond_11

    if-ne v10, v11, :cond_11

    const-string/jumbo v12, "top-activity"

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making top: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move/from16 v18, v4

    move/from16 v19, v24

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "running-remote-anim"

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making running remote anim: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move/from16 v18, v4

    move/from16 v19, v24

    const/16 v5, 0x64

    const/4 v7, 0x0

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v7

    if-eqz v7, :cond_15

    const-string v7, "instrumentation"

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making instrumentation: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x2

    goto/16 :goto_a

    :cond_15
    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x2

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    :goto_7
    const-string v12, "broadcast"

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making broadcast: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move/from16 v19, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xb

    goto/16 :goto_a

    :cond_18
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v5

    if-lez v5, :cond_1b

    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x2

    goto :goto_8

    :cond_19
    const/4 v5, 0x0

    :goto_8
    const-string v7, "exec-service"

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making exec-service: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v13, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move/from16 v19, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xa

    goto :goto_a

    :cond_1b
    if-ne v10, v11, :cond_1d

    const-string/jumbo v5, "top-sleeping"

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making top (sleeping): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move/from16 v18, v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x0

    :goto_9
    const/16 v19, 0x0

    goto :goto_a

    :cond_1d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    const-string v5, "cch-empty"

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_1e
    if-ne v2, v3, :cond_1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Making empty: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    move/from16 v5, p2

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x13

    goto :goto_9

    :goto_a
    if-nez v7, :cond_20

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v12

    if-eqz v12, :cond_20

    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object/from16 v16, v12

    const/16 v20, 0xf

    move-object v12, v8

    move-object v11, v13

    move-object/from16 v13, v16

    move-object/from16 v32, v14

    move v14, v5

    move v5, v15

    move v15, v7

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v3

    move/from16 v20, v2

    move/from16 v21, v4

    invoke-virtual/range {v12 .. v21}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v7

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v17

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v18

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v12

    move v13, v7

    move/from16 v19, v12

    move/from16 v14, v17

    move v12, v5

    move v5, v4

    goto :goto_b

    :cond_20
    move-object v11, v13

    move-object/from16 v32, v14

    move v12, v15

    move v13, v7

    move/from16 v14, v17

    :goto_b
    move/from16 v4, v18

    const/16 v7, 0x12

    if-le v4, v7, :cond_21

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v7

    if-eqz v7, :cond_21

    const/16 v4, 0x12

    const-string v7, "cch-rec"

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to cached recent: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v15, ": "

    const-string v7, "Raise to "

    move/from16 v16, v12

    const/16 v12, 0xc8

    if-gt v5, v12, :cond_22

    const/4 v12, 0x4

    if-le v4, v12, :cond_26

    goto :goto_c

    :cond_22
    const/4 v12, 0x4

    :goto_c
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v20

    if-eqz v20, :cond_24

    const-string v4, "fg-service"

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-ne v2, v3, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    move v4, v12

    :goto_d
    const/16 v5, 0xc8

    const/16 v19, 0x2

    goto :goto_e

    :cond_24
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v20

    if-eqz v20, :cond_26

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v4, "has-overlay-ui"

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise to overlay ui: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/4 v4, 0x6

    goto :goto_d

    :cond_26
    :goto_e
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v12

    move/from16 v20, v0

    const/16 v0, 0x32

    if-eqz v12, :cond_29

    if-le v5, v0, :cond_29

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v33

    iget-object v12, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v21, v1

    iget-wide v0, v12, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v33, v33, v0

    cmp-long v0, v33, p5

    if-gtz v0, :cond_27

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2a

    :cond_27
    const-string v0, "fg-service-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to recent fg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/16 v5, 0x32

    goto :goto_f

    :cond_29
    move/from16 v21, v1

    :cond_2a
    :goto_f
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x32

    if-le v5, v0, :cond_2d

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v33

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long v33, v33, v0

    cmp-long v0, v33, p5

    if-gtz v0, :cond_2b

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2d

    :cond_2b
    const-string/jumbo v0, "top-ej-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to recent fg for EJ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const/16 v5, 0x32

    :cond_2d
    const/16 v12, 0x8

    const/16 v0, 0xc8

    if-gt v5, v0, :cond_2e

    if-le v4, v12, :cond_30

    :cond_2e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "force-imp"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    if-ne v2, v3, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to force imp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    move v4, v12

    const/16 v5, 0xc8

    const/16 v19, 0x2

    :cond_30
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x190

    if-le v5, v0, :cond_32

    const/16 v5, 0x190

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "heavy"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to heavy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const/16 v19, 0x0

    :cond_32
    const/16 v0, 0xd

    if-le v4, v0, :cond_33

    const/16 v4, 0xd

    const-string v0, "heavy"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to heavy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x258

    if-le v5, v0, :cond_35

    const/16 v5, 0x258

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "home"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to home: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    const/16 v19, 0x0

    :cond_35
    const/16 v0, 0xe

    if-le v4, v0, :cond_37

    const/16 v0, 0xe

    const-string v1, "home"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_36

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to home: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    move v4, v0

    :cond_37
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v0

    const/16 v1, 0x2bc

    if-eqz v0, :cond_3b

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-le v5, v1, :cond_39

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "previous"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to prev: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    move v5, v1

    const/16 v0, 0xf

    const/16 v19, 0x0

    goto :goto_10

    :cond_39
    const/16 v0, 0xf

    :goto_10
    if-le v4, v0, :cond_3b

    const-string/jumbo v0, "previous"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to prev: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    move/from16 v0, v19

    const/16 v4, 0xf

    goto :goto_11

    :cond_3b
    move/from16 v0, v19

    :goto_11
    if-eqz p7, :cond_3c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3c
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    if-eqz v1, :cond_40

    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v1, :cond_40

    const/16 v1, 0x12c

    if-le v5, v1, :cond_3f

    const/16 v5, 0x12c

    const/16 v1, 0x8

    if-le v4, v1, :cond_3d

    const/16 v4, 0x8

    :cond_3d
    const-string v1, "backup"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to backup: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_3f
    const/16 v1, 0x9

    if-le v4, v1, :cond_40

    const/16 v4, 0x9

    const-string v1, "backup"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to backup: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v1

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v12

    const/16 v22, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v35, v6

    move v6, v12

    move/from16 v36, v13

    const/4 v12, 0x0

    const/16 v34, 0x0

    :goto_12
    if-ltz v6, :cond_8c

    if-gtz v5, :cond_41

    if-eqz v0, :cond_41

    const/4 v13, 0x2

    if-le v4, v13, :cond_8c

    :cond_41
    move-object/from16 v13, v32

    move/from16 v32, v14

    invoke-virtual {v13, v6}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v14

    move/from16 v38, v0

    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v0, 0xa

    if-le v4, v0, :cond_43

    const-string/jumbo v4, "started-services"

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Raise procstate to started service: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const/16 v4, 0xa

    :cond_43
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_44

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_44

    const/16 v0, 0x1f4

    if-le v5, v0, :cond_49

    const-string v0, "cch-started-ui-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_15

    :cond_44
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    move/from16 v39, v1

    if-nez v0, :cond_45

    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v40, v4

    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v42, v6

    move-object/from16 v41, v7

    iget-wide v6, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v0, v6

    cmp-long v0, p5, v0

    if-gez v0, :cond_47

    goto :goto_13

    :cond_45
    move/from16 v40, v4

    move/from16 v42, v6

    move-object/from16 v41, v7

    :goto_13
    const/16 v0, 0x1f4

    if-le v5, v0, :cond_47

    const-string/jumbo v0, "started-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v0, 0x1f4

    const/16 v5, 0x1f4

    goto :goto_14

    :cond_47
    const/4 v6, 0x0

    const/16 v0, 0x1f4

    :goto_14
    if-le v5, v0, :cond_48

    const-string v0, "cch-started-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_48
    move/from16 v4, v40

    goto :goto_16

    :cond_49
    :goto_15
    move/from16 v39, v1

    move/from16 v42, v6

    move-object/from16 v41, v7

    const/4 v6, 0x0

    :goto_16
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_4e

    iget v0, v14, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iget-boolean v1, v14, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v1, :cond_4e

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_17

    :cond_4a
    move v1, v6

    :goto_17
    or-int/2addr v1, v12

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v12

    if-eqz v12, :cond_4d

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_4b

    const/4 v7, 0x2

    goto :goto_18

    :cond_4b
    move v7, v6

    :goto_18
    or-int/2addr v1, v7

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4c

    const/4 v0, 0x4

    goto :goto_19

    :cond_4c
    move v0, v6

    :goto_19
    or-int/2addr v0, v1

    goto :goto_1a

    :cond_4d
    or-int/lit8 v0, v1, 0x6

    :goto_1a
    move v12, v0

    :cond_4e
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v27, v5

    move/from16 v1, v39

    move v5, v0

    move/from16 v0, v38

    :goto_1b
    if-ltz v5, :cond_8b

    if-gtz v27, :cond_50

    if-eqz v0, :cond_50

    const/4 v6, 0x2

    if-le v4, v6, :cond_4f

    goto :goto_1c

    :cond_4f
    move v14, v3

    move-object v3, v8

    move/from16 v31, v12

    move-object v6, v13

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_39

    :cond_50
    :goto_1c
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move/from16 v40, v2

    move/from16 v38, v35

    move/from16 v35, v34

    move/from16 v34, v1

    move v1, v4

    const/4 v4, 0x0

    move/from16 v55, v27

    move/from16 v27, v0

    move/from16 v0, v55

    :goto_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_8a

    if-gtz v0, :cond_51

    if-eqz v27, :cond_51

    const/4 v2, 0x2

    if-le v1, v2, :cond_8a

    goto :goto_1e

    :cond_51
    const/4 v2, 0x2

    :goto_1e
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v43, v8

    move-object/from16 v8, v30

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v10, :cond_52

    move/from16 v28, v4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v31, v12

    move-object v6, v13

    move-object v5, v14

    move/from16 v46, v20

    move/from16 v47, v21

    move/from16 v13, v40

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/4 v2, 0x0

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v14, v3

    move-object/from16 v21, v7

    move-object/from16 v3, v43

    goto/16 :goto_38

    :cond_52
    move-object/from16 v39, v8

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p8, :cond_53

    const/16 v44, 0x1

    move/from16 v45, v0

    move/from16 v46, v20

    const/16 v20, 0xa

    move-object/from16 v0, p0

    move/from16 v19, v1

    move/from16 v47, v21

    move-object v1, v2

    move-object/from16 v49, v2

    move/from16 v48, v40

    const/16 v21, 0x2

    move/from16 v2, p2

    move/from16 v50, v3

    move-object/from16 v3, p3

    move/from16 v28, v4

    const/16 v25, 0x0

    move/from16 v4, p4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move/from16 v30, v20

    move/from16 v20, v42

    move-wide/from16 v5, p5

    move/from16 v31, v12

    move/from16 v12, v21

    move-object/from16 v51, v41

    move-object/from16 v21, v7

    move/from16 v7, p7

    move-object/from16 v37, v8

    move-object/from16 v52, v39

    move-object/from16 v22, v43

    move/from16 v8, v44

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v6, v37

    goto :goto_1f

    :cond_53
    move/from16 v45, v0

    move/from16 v19, v1

    move-object/from16 v49, v2

    move/from16 v50, v3

    move/from16 v28, v4

    move/from16 v26, v5

    move-object/from16 v29, v6

    move-object/from16 v37, v8

    move/from16 v31, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v52, v39

    move/from16 v48, v40

    move-object/from16 v51, v41

    move/from16 v20, v42

    move-object/from16 v22, v43

    const/4 v12, 0x2

    const/16 v25, 0x0

    const/16 v30, 0xa

    move-object/from16 v21, v7

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v37

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_1f
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    if-ge v8, v12, :cond_54

    const/16 v37, 0x1

    goto :goto_20

    :cond_54
    const/16 v37, 0x0

    :goto_20
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x3

    if-le v8, v0, :cond_56

    const/4 v5, 0x4

    if-ne v8, v5, :cond_55

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_21

    :cond_55
    const/4 v0, 0x0

    goto :goto_22

    :cond_56
    const/4 v5, 0x4

    :goto_21
    const/4 v0, 0x1

    :goto_22
    or-int v34, v34, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_23

    :cond_57
    const/4 v4, 0x1

    :goto_23
    move-object/from16 v3, v52

    iget v0, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_83

    const/16 v0, 0x1000

    invoke-virtual {v3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v38, v38, v0

    :cond_58
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_5a

    const/4 v0, 0x5

    if-gt v8, v0, :cond_59

    iget v0, v3, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5a

    :cond_59
    or-int/lit8 v38, v38, 0x8

    :cond_5a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v12, v3

    move/from16 v3, v19

    move-object/from16 v41, v13

    move v13, v4

    move/from16 v4, v45

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5b

    move-object v5, v14

    move/from16 v1, v19

    move-object/from16 v3, v22

    move-object/from16 v6, v41

    move/from16 v0, v45

    move/from16 v13, v48

    move/from16 v14, v50

    move-object/from16 v8, v51

    const/4 v2, 0x0

    goto/16 :goto_38

    :cond_5b
    const/16 v0, 0x10

    if-lt v8, v0, :cond_5c

    const/16 v8, 0x13

    :cond_5c
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_61

    const/16 v0, 0x384

    if-ge v7, v0, :cond_5d

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_5d
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_5f

    move/from16 v0, v45

    if-le v0, v7, :cond_5e

    const-string v4, "cch-bound-ui-services"

    move-object/from16 v3, v22

    goto :goto_24

    :cond_5e
    move-object/from16 v3, v22

    move-object/from16 v4, v25

    :goto_24
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move v5, v0

    move-object/from16 v22, v14

    move/from16 v7, v19

    goto :goto_26

    :cond_5f
    move-object/from16 v3, v22

    move/from16 v0, v45

    const/4 v2, 0x0

    iget-wide v4, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v22, v14

    iget-wide v13, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v4, v13

    cmp-long v1, p5, v4

    if-ltz v1, :cond_62

    if-le v0, v7, :cond_60

    const-string v4, "cch-bound-services"

    goto :goto_25

    :cond_60
    move-object/from16 v4, v25

    :goto_25
    move v5, v0

    move v7, v8

    goto :goto_26

    :cond_61
    move-object/from16 v3, v22

    move/from16 v0, v45

    const/4 v2, 0x0

    move-object/from16 v22, v14

    :cond_62
    move v5, v7

    move v7, v8

    move-object/from16 v4, v25

    :goto_26
    if-le v0, v5, :cond_6f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_63

    const/16 v1, 0xc8

    if-le v5, v1, :cond_63

    const/16 v1, 0x384

    if-lt v0, v1, :cond_6f

    const-string v4, "cch-bound-ui-services"

    move v5, v2

    move/from16 v1, v19

    move/from16 v13, v27

    const/16 v8, 0x64

    goto/16 :goto_2c

    :cond_63
    iget v1, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v1, 0x48

    if-eqz v8, :cond_65

    const/16 v1, -0x2bc

    if-lt v5, v1, :cond_64

    goto :goto_27

    :cond_64
    const/16 v5, -0x2bc

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v2, v1}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    move/from16 v19, v2

    const/4 v1, 0x1

    const/16 v8, 0x64

    const/16 v27, 0x2

    goto :goto_2a

    :cond_65
    and-int/lit16 v8, v1, 0x100

    if-eqz v8, :cond_66

    const/16 v8, 0xc8

    if-gt v5, v8, :cond_67

    const/16 v13, 0xfa

    if-lt v0, v13, :cond_67

    const/16 v5, 0xfa

    goto :goto_27

    :cond_66
    const/16 v8, 0xc8

    :cond_67
    const/high16 v13, 0x10000

    and-int/2addr v13, v1

    if-eqz v13, :cond_68

    if-ge v5, v8, :cond_68

    const/16 v13, 0xe1

    if-lt v0, v13, :cond_68

    const/16 v5, 0xe1

    goto :goto_27

    :cond_68
    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v1, v13

    if-eqz v1, :cond_69

    if-ge v5, v8, :cond_69

    if-lt v0, v8, :cond_69

    move v1, v2

    move v5, v8

    goto :goto_28

    :cond_69
    if-lt v5, v8, :cond_6a

    :goto_27
    move v1, v2

    :goto_28
    const/16 v8, 0x64

    goto :goto_2a

    :cond_6a
    const/high16 v1, 0x10000000

    invoke-virtual {v12, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    const/16 v8, 0x64

    if-eqz v1, :cond_6b

    if-gt v5, v8, :cond_6b

    if-le v0, v8, :cond_6b

    move v1, v2

    move v5, v8

    goto :goto_2a

    :cond_6b
    if-le v0, v8, :cond_6c

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_29

    :cond_6c
    move v5, v0

    :goto_29
    move v1, v2

    :goto_2a
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v13

    if-nez v13, :cond_6d

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_6d
    if-le v0, v5, :cond_6e

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v4, "service"

    move v0, v5

    move/from16 v13, v27

    move v5, v1

    move/from16 v1, v19

    goto :goto_2c

    :cond_6e
    move v5, v1

    goto :goto_2b

    :cond_6f
    const/16 v8, 0x64

    move v5, v2

    :goto_2b
    move/from16 v1, v19

    move/from16 v13, v27

    :goto_2c
    iget v14, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v19, 0x800004

    and-int v19, v14, v19

    if-nez v19, :cond_79

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v14

    if-le v14, v13, :cond_71

    iget v13, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_70

    move v13, v14

    goto :goto_2d

    :cond_70
    const/4 v13, 0x2

    :cond_71
    :goto_2d
    const/4 v14, 0x2

    if-ge v7, v14, :cond_75

    const/high16 v6, 0x10000000

    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_72

    const/4 v7, 0x4

    goto :goto_30

    :cond_72
    const/high16 v6, 0x4000000

    invoke-virtual {v12, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_73

    :goto_2e
    const/4 v7, 0x5

    goto :goto_30

    :cond_73
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_74

    iget v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_74

    goto :goto_2e

    :cond_74
    const/4 v7, 0x6

    goto :goto_30

    :cond_75
    if-ne v7, v14, :cond_78

    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v7

    if-eqz v7, :cond_76

    const/16 v7, 0x1000

    invoke-virtual {v12, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    goto :goto_2f

    :cond_76
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    :goto_2f
    or-int v38, v38, v6

    :cond_77
    const/4 v7, 0x3

    :cond_78
    :goto_30
    const/16 v6, 0x8

    goto :goto_31

    :cond_79
    const/high16 v6, 0x800000

    and-int/2addr v6, v14

    if-nez v6, :cond_7a

    const/16 v6, 0x8

    if-ge v7, v6, :cond_7b

    move v7, v6

    goto :goto_31

    :cond_7a
    const/16 v6, 0x8

    const/4 v14, 0x7

    if-ge v7, v14, :cond_7b

    const/4 v7, 0x7

    :cond_7b
    :goto_31
    const/4 v14, 0x3

    if-ge v13, v14, :cond_7c

    iget v14, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x80000

    and-int v14, v14, v19

    if-eqz v14, :cond_7c

    if-eqz v37, :cond_7c

    const/4 v13, 0x3

    const/16 v35, 0x1

    :cond_7c
    if-nez v5, :cond_7d

    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v7, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_7d
    if-le v1, v7, :cond_7f

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-nez v4, :cond_7e

    const-string/jumbo v4, "service"

    :cond_7e
    move v1, v7

    :cond_7f
    const/4 v5, 0x7

    if-ge v1, v5, :cond_80

    iget v5, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v14, 0x20000000

    and-int/2addr v5, v14

    if-eqz v5, :cond_80

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_80
    if-eqz v4, :cond_81

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    iget-object v5, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v5, v22

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v7, v48

    move/from16 v14, v50

    if-ne v7, v14, :cond_82

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v51

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", due to "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " adj="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procState="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v11, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_81
    move-object/from16 v5, v22

    move/from16 v7, v48

    move/from16 v14, v50

    :cond_82
    move-object/from16 v8, v51

    :goto_32
    const/4 v4, 0x1

    move/from16 v55, v13

    move v13, v7

    move/from16 v7, v55

    goto :goto_34

    :cond_83
    move-object v12, v3

    move-object/from16 v41, v13

    move-object v5, v14

    move-object/from16 v3, v22

    move/from16 v0, v45

    move/from16 v13, v48

    move/from16 v14, v50

    move-object/from16 v8, v51

    const/4 v2, 0x0

    const/16 v1, 0x384

    if-ge v7, v1, :cond_84

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_33

    :cond_84
    const/4 v4, 0x1

    :goto_33
    move/from16 v1, v19

    move/from16 v7, v27

    :goto_34
    iget v6, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v19, 0x8000000

    and-int v6, v6, v19

    if-eqz v6, :cond_85

    move-object/from16 v6, v41

    invoke-virtual {v6, v4}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_35

    :cond_85
    move-object/from16 v6, v41

    :goto_35
    iget-object v4, v12, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget v2, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_89

    if-eqz v4, :cond_89

    if-lez v0, :cond_89

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_89

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    iget v0, v12, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v12, v0, 0x4

    if-nez v12, :cond_87

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_86

    const/4 v7, 0x4

    goto :goto_36

    :cond_86
    const/4 v7, 0x2

    :cond_87
    :goto_36
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "service"

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v13, v14, :cond_88

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to service w/activity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    move v0, v2

    goto :goto_37

    :cond_89
    const/4 v2, 0x0

    :goto_37
    move/from16 v27, v7

    :goto_38
    add-int/lit8 v4, v28, 0x1

    move-object/from16 v41, v8

    move/from16 v40, v13

    move/from16 v42, v20

    move-object/from16 v7, v21

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v22, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move-object v13, v6

    move v3, v14

    move-object/from16 v6, v29

    move-object v14, v5

    move/from16 v5, v26

    goto/16 :goto_1d

    :cond_8a
    move/from16 v19, v1

    move/from16 v26, v5

    move/from16 v31, v12

    move-object v6, v13

    move-object v5, v14

    move/from16 v46, v20

    move/from16 v47, v21

    move/from16 v13, v40

    move/from16 v20, v42

    const/4 v2, 0x0

    const/16 v25, 0x0

    const/16 v30, 0xa

    move v14, v3

    move-object/from16 v21, v7

    move-object v3, v8

    move-object/from16 v8, v41

    add-int/lit8 v1, v26, -0x1

    move-object/from16 v41, v8

    move/from16 v4, v19

    move/from16 v42, v20

    move-object/from16 v7, v21

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v22, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move v3, v14

    move-object v14, v5

    move v5, v1

    move/from16 v1, v34

    move/from16 v34, v35

    move/from16 v35, v38

    move/from16 v55, v27

    move/from16 v27, v0

    move/from16 v0, v55

    move-object/from16 v56, v6

    move v6, v2

    move v2, v13

    move-object/from16 v13, v56

    goto/16 :goto_1b

    :cond_8b
    move v14, v3

    move-object v3, v8

    move/from16 v31, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v8, v41

    move/from16 v20, v42

    const/16 v25, 0x0

    const/16 v30, 0xa

    move-object/from16 v55, v13

    move v13, v2

    move v2, v6

    move-object/from16 v6, v55

    :goto_39
    add-int/lit8 v5, v20, -0x1

    move-object v7, v8

    move v2, v13

    move/from16 v12, v31

    move/from16 v20, v46

    move/from16 v21, v47

    const/16 v23, 0x5

    const/16 v24, 0x3

    move-object v8, v3

    move v3, v14

    move/from16 v14, v32

    move-object/from16 v32, v6

    move v6, v5

    move/from16 v5, v27

    goto/16 :goto_12

    :cond_8c
    move/from16 v38, v0

    move/from16 v39, v1

    move v13, v2

    move/from16 v27, v12

    move/from16 v46, v20

    move/from16 v47, v21

    move-object/from16 v6, v32

    const/4 v2, 0x0

    const/16 v25, 0x0

    move/from16 v32, v14

    move v14, v3

    move-object v3, v8

    move-object v8, v7

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v7, v0

    move v1, v5

    move/from16 v5, v38

    move/from16 v0, v39

    :goto_3a
    if-ltz v7, :cond_a8

    if-gtz v1, :cond_8e

    if-eqz v5, :cond_8e

    const/4 v2, 0x2

    if-le v4, v2, :cond_8d

    goto :goto_3b

    :cond_8d
    move/from16 v17, v2

    move-object v8, v3

    move-object/from16 v41, v6

    move-object/from16 v20, v12

    move-object v12, v11

    move v11, v13

    const/4 v13, 0x0

    goto/16 :goto_4a

    :cond_8e
    :goto_3b
    invoke-virtual {v12, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    move-object/from16 v22, v3

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v19, v0

    move/from16 v55, v3

    move v3, v1

    move v1, v5

    move/from16 v5, v55

    :goto_3c
    if-ltz v5, :cond_a2

    if-gtz v3, :cond_8f

    if-eqz v1, :cond_8f

    const/4 v0, 0x2

    if-le v4, v0, :cond_a2

    :cond_8f
    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v51, v8

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v12

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v8, v10, :cond_90

    move-object/from16 v53, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v26, v11

    move/from16 v48, v13

    move-object/from16 v28, v15

    move-object/from16 v54, v51

    move v15, v1

    goto/16 :goto_3e

    :cond_90
    if-eqz p8, :cond_91

    const/16 v21, 0x1

    move-object/from16 v26, v11

    move-object v11, v0

    move-object/from16 v0, p0

    move-object/from16 v28, v15

    move v15, v1

    move-object v1, v8

    move-object/from16 v53, v2

    move/from16 v2, p2

    move/from16 v29, v3

    move-object/from16 v3, p3

    move/from16 v30, v4

    move/from16 v4, p4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move-wide/from16 v5, p5

    move/from16 v33, v7

    move/from16 v7, p7

    move/from16 v48, v13

    move-object/from16 v54, v51

    move-object v13, v8

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_3d

    :cond_91
    move-object/from16 v53, v2

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v26, v11

    move/from16 v48, v13

    move-object/from16 v28, v15

    move-object/from16 v54, v51

    move-object v11, v0

    move v15, v1

    move-object v13, v8

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, v30

    move/from16 v4, v29

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_92

    :goto_3e
    move v1, v15

    move-object/from16 v8, v22

    move-object/from16 v12, v26

    move-object/from16 v4, v28

    move/from16 v5, v30

    move/from16 v11, v48

    move-object/from16 v6, v53

    move-object/from16 v2, v54

    const/4 v3, 0x4

    const/16 v7, 0xc8

    goto/16 :goto_47

    :cond_92
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    const/16 v2, 0x10

    if-lt v6, v2, :cond_93

    const/16 v6, 0x13

    :cond_93
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_94
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_96

    const/4 v0, 0x3

    if-le v6, v0, :cond_96

    const/4 v3, 0x4

    if-ne v6, v3, :cond_95

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_3f

    :cond_95
    const/4 v7, 0x0

    goto :goto_40

    :cond_96
    const/4 v3, 0x4

    :goto_3f
    const/4 v7, 0x1

    :goto_40
    or-int v19, v19, v7

    move/from16 v1, v29

    if-le v1, v5, :cond_9a

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_97

    const/16 v7, 0xc8

    if-le v5, v7, :cond_98

    const-string v0, "cch-ui-provider"

    move-object v4, v0

    move-object/from16 v8, v22

    goto :goto_42

    :cond_97
    const/16 v7, 0xc8

    :cond_98
    if-lez v5, :cond_99

    move-object/from16 v8, v22

    goto :goto_41

    :cond_99
    move-object/from16 v8, v22

    const/4 v5, 0x0

    :goto_41
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v0, "provider"

    move-object v4, v0

    move v1, v5

    :goto_42
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v5

    and-int/2addr v0, v5

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_43

    :cond_9a
    move-object/from16 v8, v22

    const/16 v7, 0xc8

    move-object/from16 v4, v25

    :goto_43
    if-gt v6, v3, :cond_9d

    if-nez v4, :cond_9b

    const-string/jumbo v0, "provider"

    move-object v4, v0

    :cond_9b
    const/4 v0, 0x2

    if-ne v6, v0, :cond_9c

    const/4 v6, 0x3

    goto :goto_44

    :cond_9c
    const/4 v6, 0x5

    goto :goto_44

    :cond_9d
    const/4 v0, 0x2

    :goto_44
    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v6, v5}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    move/from16 v5, v30

    if-le v5, v6, :cond_9e

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move v5, v6

    :cond_9e
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v11

    if-le v11, v15, :cond_9f

    move v15, v0

    :cond_9f
    if-eqz v4, :cond_a1

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v6, v53

    iget-object v11, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v11, v48

    if-ne v11, v14, :cond_a0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v54

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v26

    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_a0
    move-object/from16 v12, v26

    move-object/from16 v4, v28

    goto :goto_45

    :cond_a1
    move-object/from16 v12, v26

    move-object/from16 v4, v28

    move/from16 v11, v48

    move-object/from16 v6, v53

    :goto_45
    move-object/from16 v2, v54

    :goto_46
    move/from16 v29, v1

    move v1, v15

    :goto_47
    add-int/lit8 v0, v31, -0x1

    move-object v15, v4

    move v4, v5

    move-object/from16 v22, v8

    move v13, v11

    move-object v11, v12

    move-object/from16 v12, v20

    move/from16 v3, v29

    move/from16 v7, v33

    move v5, v0

    move-object v8, v2

    move-object v2, v6

    move-object/from16 v6, v41

    goto/16 :goto_3c

    :cond_a2
    move v5, v4

    move-object/from16 v41, v6

    move/from16 v33, v7

    move-object/from16 v20, v12

    move-object v4, v15

    const/16 v7, 0xc8

    move v15, v1

    move-object v6, v2

    move v1, v3

    move-object v2, v8

    move-object v12, v11

    move v11, v13

    move-object/from16 v8, v22

    const/4 v3, 0x4

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_a6

    const/4 v13, 0x0

    if-lez v1, :cond_a4

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "ext-provider"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v11, v14, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to external provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    move v1, v13

    const/4 v6, 0x6

    const/4 v15, 0x2

    goto :goto_48

    :cond_a4
    const/4 v6, 0x6

    :goto_48
    if-le v5, v6, :cond_a7

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-ne v11, v14, :cond_a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise procstate to external provider: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    move v5, v6

    goto :goto_49

    :cond_a6
    const/4 v6, 0x6

    const/4 v13, 0x0

    :cond_a7
    :goto_49
    add-int/lit8 v0, v33, -0x1

    move v7, v0

    move-object v3, v8

    move/from16 v0, v19

    move-object/from16 v6, v41

    move-object v8, v2

    move v2, v13

    move v13, v11

    move-object v11, v12

    move-object/from16 v12, v20

    move/from16 v55, v15

    move-object v15, v4

    move v4, v5

    move/from16 v5, v55

    goto/16 :goto_3a

    :cond_a8
    move-object v8, v3

    move-object/from16 v41, v6

    move-object/from16 v20, v12

    const/16 v17, 0x2

    move-object v12, v11

    move v11, v13

    move v13, v2

    :goto_4a
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_ac

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v2

    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v2, v6

    cmp-long v2, v2, p5

    if-lez v2, :cond_ac

    const/16 v2, 0x2bc

    if-le v1, v2, :cond_aa

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "recent-provider"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v11, v14, :cond_a9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to recent provider: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v12, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    move v1, v2

    move v5, v13

    :cond_aa
    const/16 v2, 0xf

    if-le v4, v2, :cond_ac

    const-string/jumbo v3, "recent-provider"

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v11, v14, :cond_ab

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to recent provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v12, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    move v4, v2

    :cond_ac
    const/16 v2, 0x13

    if-lt v4, v2, :cond_ae

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_ad

    const/16 v2, 0x11

    const-string v3, "cch-client-act"

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_4b

    :cond_ad
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, "cch-as-act"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v2, 0x10

    goto :goto_4b

    :cond_ae
    move v2, v4

    :goto_4b
    const/16 v3, 0x1f4

    if-ne v1, v3, :cond_b3

    if-eqz p4, :cond_b2

    if-nez p7, :cond_b2

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v6, 0x3

    div-int/2addr v4, v6

    if-le v3, v4, :cond_af

    const/4 v7, 0x1

    goto :goto_4c

    :cond_af
    move v7, v13

    :goto_4c
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_b1

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_b0

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-ltz v3, :cond_b0

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_4d

    :cond_b0
    const/4 v3, 0x1

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v3

    iput v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_4d

    :cond_b1
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    :cond_b2
    :goto_4d
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-eqz v3, :cond_b3

    const/16 v1, 0x320

    :cond_b3
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    if-le v1, v3, :cond_b4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v1

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_b4

    move/from16 v7, v17

    goto :goto_4e

    :cond_b4
    move v7, v5

    :goto_4e
    const/4 v3, 0x5

    if-lt v2, v3, :cond_b5

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_b6

    if-nez v34, :cond_b6

    if-le v7, v4, :cond_b6

    move v7, v4

    goto :goto_4f

    :cond_b5
    const/4 v4, 0x1

    :cond_b6
    :goto_4f
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_b7

    or-int v35, v35, v27

    :cond_b7
    move-object/from16 v3, v41

    invoke-virtual {v9, v3, v2}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I

    move-result v5

    or-int v5, v35, v5

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move/from16 v1, v32

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v7, v36

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move/from16 v1, v47

    if-lt v0, v1, :cond_b9

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    move/from16 v1, v46

    if-lt v0, v1, :cond_b9

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    move/from16 v1, v16

    if-eq v0, v1, :cond_b8

    goto :goto_50

    :cond_b8
    move v7, v13

    goto :goto_51

    :cond_b9
    :goto_50
    move v7, v4

    :goto_51
    return v7
.end method

.method public dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v0, 0x10500000036L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I
    .locals 1

    if-eqz p2, :cond_4

    const/4 p0, 0x1

    if-eq p2, p0, :cond_4

    const/4 p0, 0x2

    if-eq p2, p0, :cond_4

    const/4 p0, 0x3

    const/16 v0, 0x8

    if-eq p2, p0, :cond_3

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0xe

    return p0

    :cond_3
    return v0

    :cond_4
    const/16 p0, 0xf

    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public idleUidsLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    if-ltz v0, :cond_5

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v11

    cmp-long v13, v11, v6

    if-lez v13, :cond_4

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v13

    if-nez v13, :cond_4

    cmp-long v13, v11, v3

    if-gtz v13, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    iget-object v13, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {v10, v5}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    invoke-virtual {v10, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-virtual {v11, v12, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2
    cmp-long v10, v8, v6

    if-eqz v10, :cond_3

    cmp-long v10, v8, v11

    if-lez v10, :cond_4

    :cond_3
    move-wide v8, v11

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_9

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v10, v1, v2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v10

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v5, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v10, v12

    cmp-long v5, v10, v6

    if-lez v5, :cond_8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_7

    cmp-long v5, v8, v10

    if-lez v5, :cond_8

    :cond_7
    move-wide v8, v10

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    cmp-long v0, v8, v6

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v8, v4

    sub-long/2addr v8, v1

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method public initSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_0
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/4 v8, 0x4

    if-gt v2, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_3

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v10

    add-long/2addr v10, v8

    cmp-long v2, p2, v10

    if-lez v2, :cond_2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-gt v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_2
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_9

    :cond_8
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_4
    array-length p3, p2

    if-ge v4, p3, :cond_9

    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v7, :cond_a

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_a
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    :cond_1
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v11, :cond_5

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    :cond_5
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    const-wide/16 v9, 0x40

    move-object/from16 v11, p2

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v13, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v14

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v15

    const/16 v4, 0x3e9

    const/16 v0, 0x384

    if-lt v15, v0, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    invoke-virtual {v13, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move v10, v3

    move-object v3, v8

    move v9, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v14, v1, :cond_1

    const/16 v1, -0x2710

    if-eq v15, v1, :cond_1

    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v10, v1, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v9, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v4, v7, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v7, v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-nez v5, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v0, v12

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    :cond_5
    :goto_2
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :cond_6
    :goto_3
    const-wide/16 v1, 0x40

    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public final performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAppIdTempAllowlistStateLSP(IZ)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-eq v4, p2, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo p1, "updateOomAdj_allowlistChange"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v1, -0xa

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to pre-set top priority to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OomAdjuster"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const-string/jumbo p1, "updateOomAdj_allowlistChange"

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v0, v4

    cmp-long p0, v0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v3
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result p1

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge p1, p0, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result p0

    if-lt p0, p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    if-lt p0, p4, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z
    .locals 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    const-string v2, "OomAdjuster"

    const-string v3, "Not killing cached processes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1388

    add-long v2, p1, v2

    iput-wide v2, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_0
    const v2, 0x7fffffff

    if-eqz v1, :cond_1

    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v2, v1, v9

    :cond_2
    move v10, v2

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v13, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ltz v13, :cond_e

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v23, v2

    move/from16 v2, v17

    move v12, v3

    move-object v11, v4

    move-wide/from16 v3, p1

    move-object/from16 v24, v8

    move/from16 v25, v13

    move v8, v5

    move v13, v6

    move-wide/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_2

    :cond_3
    move-object/from16 v23, v2

    move v12, v3

    move-object v11, v4

    move-object/from16 v24, v8

    move/from16 v25, v13

    move v8, v5

    move v13, v6

    :goto_2
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x11

    if-eq v1, v2, :cond_7

    if-eq v1, v3, :cond_7

    const/16 v2, 0x13

    if-eq v1, v2, :cond_4

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v15, v1, :cond_6

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v1

    cmp-long v1, v1, p5

    if-gez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/16 v17, 0x3e8

    div-long v4, v4, v17

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0xd

    const/16 v21, 0x4

    const/16 v22, 0x1

    const-string v19, "empty for too long"

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_5
    :goto_3
    move v6, v13

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x1

    if-le v15, v9, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0xd

    const/16 v21, 0x3

    const/16 v22, 0x1

    const-string/jumbo v19, "too many empty"

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_3

    :cond_7
    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v2, :cond_8

    if-ne v12, v1, :cond_8

    add-int/lit8 v16, v16, 0x1

    move v6, v13

    goto :goto_4

    :cond_8
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_4
    sub-int v1, v14, v16

    if-le v1, v10, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0xd

    const/16 v21, 0x2

    const/16 v22, 0x1

    const-string/jumbo v19, "too many cached"

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_a
    :goto_5
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    const-string v1, "isolated not needed"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v0, v3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    invoke-virtual {v7, v11}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :goto_6
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_c

    add-int/lit8 v5, v8, 0x1

    goto :goto_7

    :cond_c
    move v5, v8

    :goto_7
    move v3, v12

    goto :goto_8

    :cond_d
    move v12, v3

    move-object/from16 v24, v8

    move v2, v11

    move/from16 v25, v13

    move v8, v5

    move v13, v6

    move v5, v8

    move v3, v12

    move v6, v13

    :goto_8
    add-int/lit8 v13, v25, -0x1

    move v11, v2

    move-object/from16 v8, v24

    goto/16 :goto_1

    :cond_e
    move v8, v5

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v14, v15, v8}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(III)Z

    move-result v0

    return v0
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x384

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-ge v0, v3, :cond_4

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :cond_2
    return-void
.end method

.method public final updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_0

    move-object/from16 v1, p1

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v16, v12, v1

    const/16 v18, 0x1

    const/4 v9, 0x0

    if-nez p3, :cond_1

    move/from16 v19, v18

    goto :goto_0

    :cond_1
    move/from16 v19, v9

    :goto_0
    if-eqz v19, :cond_2

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p3

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez p4, :cond_4

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move v3, v9

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object/from16 v7, p4

    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_5

    invoke-virtual {v7, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v19, :cond_6

    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_6
    if-nez v19, :cond_8

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v20, v9

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v20, v18

    :goto_6
    add-int/lit8 v1, v6, -0x1

    move v2, v1

    :goto_7
    if-ltz v2, :cond_a

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v5, :cond_9

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    move v5, v1

    move/from16 v21, v9

    :goto_8
    if-ltz v5, :cond_c

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    const/16 v3, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 p1, v4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move/from16 v5, v19

    move v10, v6

    move-object v11, v7

    move-wide v6, v12

    move-object/from16 v24, v8

    move/from16 v8, v22

    move-object/from16 p3, v11

    move v11, v9

    move/from16 v9, v20

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v21, v1

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v21, v1

    goto :goto_9

    :cond_b
    move/from16 v23, v5

    move v10, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move v11, v9

    :goto_9
    add-int/lit8 v5, v23, -0x1

    move-object/from16 v7, p3

    move v6, v10

    move v9, v11

    move-object/from16 v8, v24

    const-wide/16 v10, 0x40

    goto :goto_8

    :cond_c
    move v10, v6

    move-object/from16 p3, v7

    move-object/from16 v24, v8

    move v11, v9

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    if-eqz v20, :cond_13

    move v9, v11

    :goto_a
    if-eqz v21, :cond_13

    const/16 v1, 0xa

    if-ge v9, v1, :cond_13

    add-int/lit8 v19, v9, 0x1

    move v9, v11

    :goto_b
    if-ge v9, v10, :cond_f

    move-object/from16 v8, v24

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v24, v8

    goto :goto_b

    :cond_f
    move-object/from16 v8, v24

    move v9, v11

    move/from16 v21, v9

    :goto_c
    if-ge v9, v10, :cond_12

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/4 v5, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-wide v6, v12

    move-object/from16 v23, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v21, v18

    goto :goto_d

    :cond_10
    move-object/from16 v23, v8

    move/from16 v20, v9

    :cond_11
    :goto_d
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v8, v23

    goto :goto_c

    :cond_12
    move-object/from16 v24, v8

    move/from16 v9, v19

    goto/16 :goto_a

    :cond_13
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v1

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_14

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_14
    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v1

    invoke-virtual {v2, v12, v13, v11, v1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    :cond_15
    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_17

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateOomAdjLSP(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    return v0
.end method

.method public updateOomAdjLocked(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_15

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_14

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_1

    :cond_6
    move v4, v6

    :goto_1
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    const/16 v8, 0xb

    if-le v7, v8, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    move v7, v6

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_8

    move v6, v2

    :cond_8
    if-ne v7, v6, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    if-ne v7, v5, :cond_b

    :cond_9
    if-eqz v6, :cond_a

    const/16 v5, 0x8

    goto :goto_4

    :cond_a
    const/16 v5, 0x10

    :goto_4
    or-int/2addr v4, v5

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v5, v6, :cond_c

    or-int/lit8 v4, v4, 0x20

    :cond_c
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/high16 v7, -0x80000000

    if-eq v5, v6, :cond_d

    or-int/2addr v4, v7

    :cond_d
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v5

    if-eqz v5, :cond_e

    or-int/lit8 v4, v4, 0x40

    :cond_e
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    and-int v5, v4, v7

    if-nez v5, :cond_f

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_10
    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_11
    if-nez v5, :cond_12

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_13

    :cond_12
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    :cond_13
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    :cond_14
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v4, v3, p2, p3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_15
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_17

    sub-int/2addr p1, v2

    :goto_5
    if-ltz p1, :cond_17

    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UidRecord;

    invoke-virtual {p3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_17
    return-void
.end method
