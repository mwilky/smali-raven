.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;,
        Lcom/android/server/am/OomAdjuster$PlatformCompatCache;,
        Lcom/android/server/am/OomAdjuster$CachedCompatChangeId;
    }
.end annotation


# static fields
.field static final CACHED_COMPAT_CHANGE_CAMERA_MICROPHONE_CAPABILITY:I = 0x1

.field static final CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

.field static final CACHED_COMPAT_CHANGE_PROCESS_CAPABILITY:I = 0x0

.field static final CACHED_COMPAT_CHANGE_USE_SHORT_FGS_USAGE_INTERACTION_TIME:I = 0x2

.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_ALLOWLIST:Ljava/lang/String; = "updateOomAdj_allowlistChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field static final TAG:Ljava/lang/String; = "OomAdjuster"

.field static final USE_SHORT_FGS_USAGE_INTERACTION_TIME:J = 0xaf7340dL


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private mOomAdjUpdateOngoing:Z

.field private mPendingFullOomAdjUpdate:Z

.field private final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field private final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4pnHIE50TnOcNgt4SOu10KtoinY(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihQaI4mSYofPBYBnyj-KozGpFJs(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OomAdjuster;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    new-instance v2, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {v2, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ActiveUids;

    invoke-direct {v2, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    new-instance v1, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;-><init>([J)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    return-void

    nop

    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v0, v4, :cond_0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    :cond_0
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v0, v5, :cond_3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0xc8

    if-gt v0, v5, :cond_2

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x2bc

    if-eq v0, v5, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x258

    if-ne v0, v5, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x384

    if-lt v0, v5, :cond_5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x3e7

    if-gt v0, v5, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v14, :cond_4

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v14, :cond_5

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    :cond_5
    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    if-eq v0, v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActivityManager"

    invoke-direct {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    const/16 v0, -0x2710

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    :cond_7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v15

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    const/16 v8, 0xa

    const/4 v6, 0x0

    if-eq v0, v15, :cond_13

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5

    invoke-virtual {v13, v15}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting sched group of "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ActivityManager"

    invoke-direct {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v8, v6, v14}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    const/4 v3, 0x0

    move/from16 v18, v3

    goto/16 :goto_7

    :cond_9
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    move v7, v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    move v7, v0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    move v7, v0

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6, v8, v7, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move v8, v0

    const/4 v0, 0x3

    if-ne v15, v0, :cond_e

    if-eq v5, v0, :cond_d

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v14, 0x1

    invoke-static {v0, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    if-eqz v8, :cond_a

    invoke-static {v8, v14}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    move/from16 v18, v3

    goto/16 :goto_5

    :cond_a
    move/from16 v18, v3

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v14, -0xa

    invoke-static {v0, v14}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_c

    :try_start_2
    invoke-static {v8, v14}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move/from16 v18, v3

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_c
    move/from16 v18, v3

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_7

    :cond_d
    move/from16 v18, v3

    goto/16 :goto_5

    :cond_e
    if-ne v5, v0, :cond_11

    if-eq v15, v0, :cond_11

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v0, :cond_10

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v0, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v14

    invoke-static {v0, v14}, Landroid/os/Process;->setThreadPriority(II)V

    if-eqz v8, :cond_f

    invoke-static {v8, v6, v6}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_f
    move/from16 v18, v3

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v18, v3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_6
    const-string v14, "OomAdjuster"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move/from16 v18, v3

    :try_start_8
    const-string v3, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    move/from16 v18, v3

    const/4 v6, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v18, v3

    :goto_3
    const-string v3, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_4

    :cond_10
    move/from16 v18, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v6, 0x0

    :try_start_9
    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V

    :goto_4
    if-eqz v8, :cond_12

    const/4 v0, -0x4

    invoke-static {v8, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    :cond_11
    move/from16 v18, v3

    :cond_12
    :goto_5
    goto :goto_7

    :catch_8
    move-exception v0

    move/from16 v18, v3

    :goto_6
    goto :goto_7

    :cond_13
    move/from16 v18, v3

    :goto_7
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_14

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    or-int/lit8 v4, v4, 0x1

    move v14, v4

    goto :goto_8

    :cond_14
    move v14, v4

    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_15

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :cond_15
    :goto_9
    const/4 v0, 0x0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_17

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_a

    :cond_16
    move/from16 v17, v0

    goto :goto_b

    :cond_17
    :goto_a
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    const/4 v0, 0x1

    move/from16 v17, v0

    :goto_b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v8, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v19, v15

    move v15, v6

    move-wide/from16 v6, p3

    move-object/from16 v16, v8

    const/16 v15, 0xa

    move/from16 v8, v17

    :try_start_c
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_1e

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ge v0, v15, :cond_19

    const/4 v6, 0x1

    goto :goto_c

    :cond_19
    const/4 v6, 0x0

    :goto_c
    move v3, v6

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v15, :cond_1a

    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    const/4 v6, 0x0

    :goto_d
    move v4, v6

    if-eqz v3, :cond_1b

    if-nez v4, :cond_1b

    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1b
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    invoke-direct {v1, v13, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v5, 0xe

    if-lt v0, v5, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_1c
    if-nez p2, :cond_1d

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    invoke-virtual {v0, v2, v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;IJ)V

    monitor-exit v5

    goto :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    :cond_1d
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    :goto_e
    goto :goto_11

    :cond_1e
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_21

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_f

    :cond_1f
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_f
    nop

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_20

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    :cond_20
    goto :goto_11

    :cond_21
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_10

    :cond_22
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_10
    nop

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_23

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    :cond_23
    :goto_11
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    if-eq v0, v3, :cond_24

    or-int/lit8 v14, v14, 0x4

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    :cond_24
    if-eqz v14, :cond_25

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    iget v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v3, v14

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    :cond_25
    return v18

    :catchall_1
    move-exception v0

    move-object/from16 v16, v8

    move/from16 v19, v15

    :goto_12
    :try_start_e
    monitor-exit v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 24
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

    const/16 v2, 0x384

    add-int/lit8 v3, v2, 0xa

    const/4 v4, 0x0

    const/16 v5, 0x389

    add-int/lit8 v6, v5, 0xa

    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    if-le v9, v8, :cond_0

    move v9, v8

    :cond_0
    const/4 v11, 0x1

    if-lez v10, :cond_1

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    if-ge v10, v11, :cond_2

    const/4 v10, 0x1

    :cond_2
    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    if-ge v13, v11, :cond_3

    const/4 v13, 0x1

    :cond_3
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    add-int/lit8 v17, v1, -0x1

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v17

    :goto_1
    if-ltz v1, :cond_d

    move/from16 v17, v7

    move-object/from16 v7, p1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    move/from16 v18, v8

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v19

    if-eqz v19, :cond_c

    move/from16 v19, v9

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    move/from16 v20, v1

    const/16 v1, 0x3e9

    if-lt v9, v1, :cond_b

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v9

    move/from16 v21, v13

    packed-switch v9, :pswitch_data_0

    move/from16 v23, v12

    if-eq v5, v6, :cond_9

    add-int/lit8 v12, v23, 0x1

    move/from16 v13, v21

    if-lt v12, v13, :cond_a

    const/4 v12, 0x0

    move v5, v6

    add-int/lit8 v6, v6, 0xa

    const/16 v9, 0x3e7

    if-le v6, v9, :cond_a

    const/16 v6, 0x3e7

    goto/16 :goto_4

    :pswitch_0
    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    if-eqz v13, :cond_7

    move/from16 v22, v9

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v9

    move/from16 v23, v12

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v12, :cond_6

    if-ne v14, v13, :cond_6

    if-le v9, v15, :cond_5

    move v12, v9

    if-ge v2, v3, :cond_4

    const/16 v15, 0x3e7

    if-ge v2, v15, :cond_4

    add-int/lit8 v4, v4, 0x1

    move v15, v12

    goto :goto_2

    :cond_4
    move v15, v12

    :cond_5
    :goto_2
    const/4 v12, 0x1

    move v9, v12

    goto :goto_3

    :cond_6
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    move v14, v13

    move v15, v9

    move/from16 v9, v22

    goto :goto_3

    :cond_7
    move/from16 v22, v9

    move/from16 v23, v12

    :goto_3
    if-nez v9, :cond_8

    if-eq v2, v3, :cond_8

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    if-lt v11, v10, :cond_8

    const/4 v11, 0x0

    move v2, v3

    add-int/lit8 v3, v3, 0xa

    const/16 v12, 0x3e7

    if-le v3, v12, :cond_8

    const/16 v3, 0x3e7

    :cond_8
    add-int v12, v2, v4

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    add-int v12, v2, v4

    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    move/from16 v13, v21

    move/from16 v12, v23

    goto :goto_6

    :cond_9
    move/from16 v13, v21

    move/from16 v12, v23

    :cond_a
    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_6

    :cond_b
    move/from16 v23, v12

    goto :goto_5

    :cond_c
    move/from16 v20, v1

    move/from16 v19, v9

    move/from16 v23, v12

    :goto_5
    move/from16 v12, v23

    :goto_6
    add-int/lit8 v1, v20, -0x1

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    goto/16 :goto_1

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_0
    return v0
.end method

.method private collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 11
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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/am/ActiveUids;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    :goto_1
    if-eqz v2, :cond_c

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_2
    if-ltz v6, :cond_7

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    iget v8, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_3

    :cond_2
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_3
    if-eqz v8, :cond_6

    if-ne v8, v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    or-int/2addr v1, v9

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    iget v9, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v10, 0x80000a0

    and-int/2addr v9, v10

    const/16 v10, 0x20

    if-ne v9, v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_7
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_5
    if-ltz v7, :cond_b

    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v8

    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v9, v9, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_a

    if-ne v9, v2, :cond_8

    goto :goto_6

    :cond_8
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v1, v10

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_a
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    :goto_7
    if-ge v3, v4, :cond_d

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_d
    return v1
.end method

.method private computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 61

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-wide/from16 v12, p5

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

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->resetAllowStartFgsState()V

    if-nez p7, :cond_3

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_3
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v14

    const-string v7, "ActivityManager"

    if-gtz v14, :cond_d

    if-ne v3, v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Making fixed: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v7, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v6, "fixed"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v6, 0xf

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v10, v11, :cond_5

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v6, "pers-top-activity"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const-string/jumbo v6, "pers-top-ui"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    :cond_7
    :goto_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_a
    :goto_2
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    if-lt v6, v2, :cond_c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-ge v6, v1, :cond_b

    goto :goto_3

    :cond_b
    move v7, v5

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v7, 0x1

    :goto_4
    return v7

    :cond_d
    const/4 v14, 0x5

    const/16 v26, 0x3

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v6

    const/16 v29, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x2

    if-ne v6, v14, :cond_f

    if-ne v10, v11, :cond_f

    const/4 v14, 0x0

    const/16 v19, 0x3

    const-string/jumbo v5, "top-activity"

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v16, 0x1

    const/16 v17, 0x1

    move v5, v6

    move/from16 v31, v0

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    if-ne v3, v4, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v1

    const-string v1, "Making top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    move/from16 v32, v1

    goto :goto_5

    :cond_f
    move/from16 v31, v0

    move/from16 v32, v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v14, 0x64

    const/16 v19, 0x3

    const-string/jumbo v0, "running-remote-anim"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v5, v6

    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making running remote anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    move v0, v14

    move/from16 v1, v16

    move/from16 v33, v17

    move/from16 v34, v19

    goto/16 :goto_8

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v14, 0x0

    const/16 v19, 0x2

    const-string v0, "instrumentation"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x4

    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making instrumentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v14, 0x0

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    move/from16 v19, v0

    const-string v0, "broadcast"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v5, 0xb

    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v14, 0x0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    :goto_7
    move/from16 v19, v0

    const-string v0, "exec-service"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v5, 0xa

    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making exec-service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    if-ne v10, v11, :cond_17

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-string/jumbo v0, "top-sleeping"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v16, 0x1

    move v5, v6

    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making top (sleeping): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    const/16 v19, 0x0

    move/from16 v14, p2

    const/16 v5, 0x13

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    const-string v0, "cch-empty"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_18
    if-ne v3, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :goto_8
    if-nez v1, :cond_19

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v14

    if-eqz v14, :cond_19

    iget-object v14, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object/from16 v16, v14

    const/16 v35, 0x5

    move-object v14, v8

    move-object/from16 v36, v15

    move-object/from16 v15, v16

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v33

    move/from16 v19, v5

    move/from16 v20, v34

    move/from16 v21, v4

    move/from16 v22, v3

    move/from16 v23, v6

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v33

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v5

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v34

    move v14, v1

    move/from16 v15, v33

    goto :goto_9

    :cond_19
    move-object/from16 v36, v15

    const/16 v35, 0x5

    move v14, v1

    move/from16 v15, v33

    :goto_9
    const/16 v1, 0x12

    if-le v5, v1, :cond_1b

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v5, 0x12

    const-string v1, "cch-rec"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    const-string v2, "Raise procstate to cached recent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    move/from16 v16, v2

    goto :goto_a

    :cond_1b
    move/from16 v16, v2

    :goto_a
    const-string v2, ": "

    const-string v1, "Raise to "

    const/16 v11, 0xc8

    if-gt v0, v11, :cond_1c

    const/4 v11, 0x4

    if-le v5, v11, :cond_20

    :cond_1c
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v11

    if-eqz v11, :cond_1e

    const/16 v0, 0xc8

    const/4 v5, 0x4

    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    const-string v11, "fg-service"

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v34, 0x2

    if-ne v3, v4, :cond_1d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1d
    move/from16 v19, v0

    :goto_b
    move/from16 v0, v19

    goto :goto_c

    :cond_1e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v11

    if-eqz v11, :cond_20

    const/16 v0, 0xc8

    const/4 v5, 0x6

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v11, "has-overlay-ui"

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v34, 0x2

    if-ne v3, v4, :cond_1f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    const-string v0, "Raise to overlay ui: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1f
    move/from16 v19, v0

    goto :goto_b

    :cond_20
    :goto_c
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v11

    if-eqz v11, :cond_22

    const/16 v11, 0x32

    if-le v0, v11, :cond_22

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v19

    iget-object v11, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v22, v0

    move-object/from16 v21, v1

    iget-wide v0, v11, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v19, v19, v0

    cmp-long v0, v19, v12

    if-gtz v0, :cond_21

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_23

    :cond_21
    const/16 v0, 0x32

    const-string v1, "fg-service-act"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise to recent fg: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_22
    move/from16 v22, v0

    move-object/from16 v21, v1

    :cond_23
    move/from16 v0, v22

    :cond_24
    :goto_d
    const/16 v11, 0x8

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_25

    if-le v5, v11, :cond_26

    :cond_25
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    const/16 v0, 0xc8

    const/16 v5, 0x8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v1, "force-imp"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    const/16 v34, 0x2

    if-ne v3, v4, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise to force imp: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0x190

    const-string v11, "heavy"

    if-le v0, v1, :cond_28

    const/16 v0, 0x190

    const/16 v34, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    const-string v0, "Raise adj to heavy: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_27
    move/from16 v20, v0

    :goto_e
    move/from16 v0, v20

    :cond_28
    const/16 v1, 0xd

    if-le v5, v1, :cond_29

    const/16 v5, 0xd

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to heavy: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v1, 0x258

    const-string v11, "home"

    if-le v0, v1, :cond_2b

    const/16 v0, 0x258

    const/16 v34, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v0

    const-string v0, "Raise adj to home: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_2a
    move/from16 v20, v0

    :goto_f
    move/from16 v0, v20

    :cond_2b
    const/16 v1, 0xe

    if-le v5, v1, :cond_2c

    const/16 v5, 0xe

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to home: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/16 v1, 0x2bc

    if-le v0, v1, :cond_2d

    const/16 v0, 0x2bc

    const/16 v34, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "previous"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise adj to prev: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const/16 v11, 0xf

    if-le v5, v11, :cond_2e

    const/16 v5, 0xf

    const-string/jumbo v1, "previous"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to prev: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_2e
    move/from16 v1, v34

    goto :goto_11

    :cond_2f
    :goto_10
    move/from16 v1, v34

    :goto_11
    if-eqz p7, :cond_30

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v11

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_30
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    iget v11, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    iget-object v11, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    move/from16 v20, v1

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/BackupRecord;

    if-eqz v11, :cond_36

    iget-object v1, v11, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v1, :cond_36

    const/16 v1, 0x12c

    if-le v0, v1, :cond_33

    const/16 v0, 0x12c

    const/16 v1, 0x8

    if-le v5, v1, :cond_31

    const/16 v1, 0x8

    move v5, v1

    :cond_31
    const-string v1, "backup"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, "Raise adj to backup: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_32
    move/from16 v22, v0

    :goto_12
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move/from16 v0, v22

    :cond_33
    const/16 v1, 0x9

    if-le v5, v1, :cond_35

    const/16 v5, 0x9

    const-string v1, "backup"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, "Raise procstate to backup: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_34
    move/from16 v22, v0

    :goto_13
    move/from16 v0, v22

    goto :goto_14

    :cond_35
    move/from16 v22, v0

    :cond_36
    :goto_14
    const/4 v1, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v23

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v59, v20

    move/from16 v20, v1

    move/from16 v1, v59

    move/from16 v60, v23

    move-object/from16 v23, v11

    move/from16 v11, v60

    :goto_15
    move/from16 v33, v14

    if-ltz v11, :cond_86

    if-gtz v0, :cond_38

    if-eqz v1, :cond_38

    const/4 v14, 0x2

    if-le v5, v14, :cond_37

    goto :goto_16

    :cond_37
    move/from16 v38, v1

    move-object v13, v2

    move/from16 v27, v6

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v11, v26

    move/from16 v46, v31

    move/from16 v47, v32

    move/from16 v6, v35

    move-object/from16 v14, v36

    move/from16 v36, v15

    move-object v15, v7

    const/4 v7, 0x0

    move-object/from16 v59, v8

    move v8, v3

    move-object/from16 v3, v59

    goto/16 :goto_38

    :cond_38
    :goto_16
    move-object/from16 v14, v36

    move/from16 v36, v15

    invoke-virtual {v14, v11}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v15

    move/from16 v38, v1

    iget-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v1, 0xa

    if-le v5, v1, :cond_3a

    const/16 v5, 0xa

    const-string/jumbo v1, "started-services"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v2

    const-string v2, "Raise procstate to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_39
    move-object/from16 v39, v2

    goto :goto_17

    :cond_3a
    move-object/from16 v39, v2

    :goto_17
    iget-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v1, :cond_3c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_3c

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_3b

    const-string v1, "cch-started-ui-services"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_3b
    move/from16 v41, v6

    const/4 v6, 0x0

    goto :goto_1a

    :cond_3c
    iget-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v1, :cond_3e

    iget-wide v1, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v40, v5

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v41, v6

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v1, v5

    cmp-long v1, v12, v1

    if-gez v1, :cond_3d

    goto :goto_18

    :cond_3d
    const/4 v6, 0x0

    goto :goto_19

    :cond_3e
    move/from16 v40, v5

    move/from16 v41, v6

    :goto_18
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_40

    const/16 v0, 0x1f4

    const-string/jumbo v1, "started-services"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v3, v4, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to started service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_19

    :cond_40
    const/4 v6, 0x0

    :goto_19
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_41

    const-string v1, "cch-started-services"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_41
    move/from16 v5, v40

    goto :goto_1a

    :cond_42
    move-object/from16 v39, v2

    move/from16 v41, v6

    const/4 v6, 0x0

    :goto_1a
    iget-boolean v1, v15, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_47

    iget v1, v15, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iget-boolean v2, v15, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v2, :cond_47

    nop

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_1b

    :cond_43
    move v2, v6

    :goto_1b
    or-int v2, v20, v2

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v20

    if-eqz v20, :cond_46

    nop

    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_44

    const/4 v6, 0x2

    goto :goto_1c

    :cond_44
    const/4 v6, 0x0

    :goto_1c
    or-int/2addr v2, v6

    nop

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_45

    const/4 v6, 0x4

    goto :goto_1d

    :cond_45
    const/4 v6, 0x0

    :goto_1d
    or-int/2addr v2, v6

    move/from16 v20, v2

    goto :goto_1e

    :cond_46
    or-int/lit8 v2, v2, 0x6

    move/from16 v20, v2

    :cond_47
    :goto_1e
    invoke-virtual {v15}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v24, 0x1

    add-int/lit8 v1, v1, -0x1

    move v2, v5

    move v5, v1

    move/from16 v1, v38

    :goto_1f
    if-ltz v5, :cond_85

    if-gtz v0, :cond_49

    if-eqz v1, :cond_49

    move/from16 v37, v0

    const/4 v0, 0x2

    if-le v2, v0, :cond_48

    goto :goto_20

    :cond_48
    move-object v5, v7

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v13, v39

    move/from16 v27, v41

    move/from16 v39, v11

    move-object/from16 v59, v8

    move v8, v3

    move-object/from16 v3, v59

    goto/16 :goto_37

    :cond_49
    move/from16 v37, v0

    :goto_20
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/16 v38, 0x0

    move-object/from16 v40, v8

    move/from16 v8, v38

    move/from16 v59, v22

    move/from16 v22, v1

    move v1, v2

    move/from16 v2, v37

    move/from16 v37, v29

    move/from16 v29, v59

    :goto_21
    move/from16 v42, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_84

    if-gtz v2, :cond_4b

    if-eqz v22, :cond_4b

    const/4 v3, 0x2

    if-le v1, v3, :cond_4a

    goto :goto_22

    :cond_4a
    move/from16 v30, v5

    move-object/from16 v28, v6

    move-object v5, v7

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v13, v39

    move-object/from16 v3, v40

    move/from16 v27, v41

    move/from16 v8, v42

    move/from16 v21, v1

    move/from16 v32, v2

    move/from16 v39, v11

    goto/16 :goto_36

    :cond_4b
    const/4 v3, 0x2

    :goto_22
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move/from16 v38, v8

    move-object/from16 v8, v28

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget-object v3, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v3, v10, :cond_4c

    move/from16 v53, v4

    move/from16 v30, v5

    move-object/from16 v28, v6

    move-object/from16 v54, v7

    move/from16 v49, v16

    move-object/from16 v48, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v50, v39

    move-object/from16 v16, v40

    move/from16 v27, v41

    move/from16 v51, v42

    move-object/from16 v31, v0

    move/from16 v21, v1

    move/from16 v32, v2

    move/from16 v39, v11

    goto/16 :goto_25

    :cond_4c
    const/16 v43, 0x0

    iget-object v3, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v44, v8

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p8, :cond_4d

    const/16 v45, 0x1

    move/from16 v46, v31

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v48, v21

    move/from16 v47, v32

    move/from16 v21, v1

    move-object v1, v3

    move/from16 v32, v2

    move/from16 v49, v16

    move-object/from16 v50, v39

    move/from16 v2, p2

    move-object/from16 v52, v3

    move/from16 v51, v42

    const/16 v16, 0x2

    move-object/from16 v3, p3

    move/from16 v53, v4

    move/from16 v4, p4

    move/from16 v30, v5

    move-object/from16 v28, v6

    move/from16 v27, v41

    move-wide/from16 v5, p5

    move-object/from16 v54, v7

    move/from16 v39, v11

    move/from16 v11, v16

    move/from16 v7, p7

    move-object/from16 v25, v8

    move-object/from16 v16, v40

    move-object/from16 v55, v44

    move/from16 v8, v45

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v6, v25

    goto :goto_23

    :cond_4d
    move-object/from16 v52, v3

    move/from16 v53, v4

    move/from16 v30, v5

    move-object/from16 v28, v6

    move-object/from16 v54, v7

    move-object/from16 v25, v8

    move/from16 v49, v16

    move-object/from16 v48, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v50, v39

    move-object/from16 v16, v40

    move/from16 v27, v41

    move/from16 v51, v42

    move-object/from16 v55, v44

    move-object/from16 v31, v0

    move/from16 v21, v1

    move/from16 v32, v2

    move/from16 v39, v11

    const/4 v11, 0x2

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v25

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_23
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    if-ge v8, v11, :cond_4e

    const/4 v0, 0x1

    goto :goto_24

    :cond_4e
    const/4 v0, 0x0

    :goto_24
    move/from16 v25, v0

    move-object/from16 v5, v52

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_4f
    move-object/from16 v4, v55

    iget v0, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x384

    if-nez v0, :cond_7b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move v11, v3

    move/from16 v3, v21

    move-object v11, v4

    move/from16 v4, v32

    move-object/from16 v40, v5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_50

    nop

    :goto_25
    move-object/from16 v3, v16

    move/from16 v1, v21

    move/from16 v2, v32

    move-object/from16 v12, v48

    move-object/from16 v13, v50

    move/from16 v8, v51

    move/from16 v4, v53

    move-object/from16 v5, v54

    goto/16 :goto_35

    :cond_50
    const/16 v0, 0x1000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v37, v37, v0

    :cond_51
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_53

    const/4 v4, 0x5

    if-gt v8, v4, :cond_52

    iget v0, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_54

    or-int/lit8 v37, v37, 0x8

    goto :goto_26

    :cond_52
    or-int/lit8 v37, v37, 0x8

    goto :goto_26

    :cond_53
    const/4 v4, 0x5

    :cond_54
    :goto_26
    const/16 v0, 0x10

    if-lt v8, v0, :cond_55

    const/16 v8, 0x13

    :cond_55
    const/4 v1, 0x0

    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_5a

    const/16 v0, 0x384

    if-ge v7, v0, :cond_56

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_56
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_58

    move/from16 v0, v32

    if-le v0, v7, :cond_57

    const-string v1, "cch-bound-ui-services"

    :cond_57
    move-object/from16 v3, v16

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move v7, v0

    move/from16 v8, v21

    goto :goto_28

    :cond_58
    move-object/from16 v3, v16

    move/from16 v0, v32

    const/4 v5, 0x0

    iget-wide v4, v15, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v16, v1

    iget-wide v1, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v4, v1

    cmp-long v1, v12, v4

    if-ltz v1, :cond_5b

    if-le v0, v7, :cond_59

    const-string v1, "cch-bound-services"

    goto :goto_27

    :cond_59
    move-object/from16 v1, v16

    :goto_27
    move v7, v0

    goto :goto_28

    :cond_5a
    move-object/from16 v3, v16

    move/from16 v0, v32

    move-object/from16 v16, v1

    :cond_5b
    move-object/from16 v1, v16

    :goto_28
    if-le v0, v7, :cond_68

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v2

    if-nez v2, :cond_5d

    const/16 v2, 0xc8

    if-le v7, v2, :cond_5d

    const/16 v2, 0x384

    if-lt v0, v2, :cond_5c

    const-string v1, "cch-bound-ui-services"

    move v2, v0

    move-object/from16 v16, v1

    move/from16 v1, v21

    move/from16 v0, v22

    goto/16 :goto_2b

    :cond_5c
    move-object/from16 v16, v1

    goto/16 :goto_2a

    :cond_5d
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x48

    if-eqz v2, :cond_5f

    const/16 v2, -0x2bc

    if-lt v7, v2, :cond_5e

    move v2, v7

    move-object/from16 v16, v1

    move/from16 v1, v21

    goto/16 :goto_29

    :cond_5e
    const/16 v2, -0x2bc

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v16, v1

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v5, v1, v12, v13}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    const/4 v1, 0x1

    move/from16 v43, v1

    move/from16 v22, v4

    move v1, v5

    goto :goto_29

    :cond_5f
    move-object/from16 v16, v1

    iget v1, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_60

    const/16 v1, 0xc8

    if-gt v7, v1, :cond_60

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_60

    const/16 v2, 0xfa

    move/from16 v1, v21

    goto :goto_29

    :cond_60
    iget v1, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_61

    const/16 v1, 0xc8

    if-ge v7, v1, :cond_61

    const/16 v1, 0xe1

    if-lt v0, v1, :cond_61

    const/16 v2, 0xe1

    move/from16 v1, v21

    goto :goto_29

    :cond_61
    iget v1, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_62

    const/16 v1, 0xc8

    if-ge v7, v1, :cond_63

    if-lt v0, v1, :cond_63

    const/16 v2, 0xc8

    move/from16 v1, v21

    goto :goto_29

    :cond_62
    const/16 v1, 0xc8

    :cond_63
    if-lt v7, v1, :cond_64

    move v2, v7

    move/from16 v1, v21

    goto :goto_29

    :cond_64
    const/16 v1, 0x64

    if-le v0, v1, :cond_65

    const/16 v1, 0x64

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v1, v21

    goto :goto_29

    :cond_65
    move v2, v0

    move/from16 v1, v21

    :goto_29
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    if-nez v4, :cond_66

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_66
    if-le v0, v2, :cond_67

    move v0, v2

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v4, "service"

    move-object/from16 v16, v4

    move/from16 v0, v22

    goto :goto_2b

    :cond_67
    move v2, v0

    move/from16 v0, v22

    goto :goto_2b

    :cond_68
    move-object/from16 v16, v1

    :goto_2a
    move v2, v0

    move/from16 v1, v21

    move/from16 v0, v22

    :goto_2b
    iget v4, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v5, 0x800004

    and-int/2addr v4, v5

    if-nez v4, :cond_71

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v4

    if-le v4, v0, :cond_6a

    iget v5, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_69

    move v0, v4

    goto :goto_2c

    :cond_69
    const/4 v0, 0x2

    :cond_6a
    :goto_2c
    const/4 v5, 0x2

    if-ge v8, v5, :cond_6d

    const/high16 v5, 0x4000000

    invoke-virtual {v11, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_6b

    const/4 v8, 0x5

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    move/from16 v21, v0

    const/4 v5, 0x3

    goto :goto_2d

    :cond_6b
    const/4 v5, 0x5

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    move/from16 v21, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_6c

    iget v0, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x2000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_6c

    const/4 v8, 0x5

    const/4 v5, 0x3

    goto :goto_2d

    :cond_6c
    const/4 v8, 0x6

    const/4 v5, 0x3

    goto :goto_2d

    :cond_6d
    move/from16 v21, v0

    const/4 v0, 0x2

    if-ne v8, v0, :cond_6f

    const/4 v8, 0x3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessStateRecord;->bumpAllowStartFgsState(I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v22

    if-eqz v22, :cond_6e

    const/16 v0, 0x1000

    invoke-virtual {v11, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v37, v37, v0

    goto :goto_2d

    :cond_6e
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v37, v37, v0

    goto :goto_2d

    :cond_6f
    const/4 v5, 0x3

    :cond_70
    :goto_2d
    move/from16 v0, v21

    goto :goto_2e

    :cond_71
    const/4 v5, 0x3

    iget v4, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v21, 0x800000

    and-int v4, v4, v21

    if-nez v4, :cond_72

    const/16 v4, 0x8

    if-ge v8, v4, :cond_73

    const/16 v8, 0x8

    goto :goto_2e

    :cond_72
    const/16 v4, 0x8

    const/4 v4, 0x7

    if-ge v8, v4, :cond_73

    const/4 v4, 0x7

    move v8, v4

    :cond_73
    :goto_2e
    if-ge v0, v5, :cond_74

    iget v4, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v21, 0x80000

    and-int v4, v4, v21

    if-eqz v4, :cond_74

    if-eqz v25, :cond_74

    const/4 v0, 0x3

    const/4 v4, 0x1

    move/from16 v22, v0

    move/from16 v29, v4

    goto :goto_2f

    :cond_74
    move/from16 v22, v0

    :goto_2f
    if-nez v43, :cond_75

    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v8, v0, v12, v13}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    :cond_75
    if-le v1, v8, :cond_77

    move v0, v8

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-nez v16, :cond_76

    const-string/jumbo v16, "service"

    move v1, v0

    move-object/from16 v0, v16

    goto :goto_30

    :cond_76
    move v1, v0

    move-object/from16 v0, v16

    goto :goto_30

    :cond_77
    move-object/from16 v0, v16

    :goto_30
    const/4 v4, 0x7

    if-ge v1, v4, :cond_78

    iget v4, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v16, 0x20000000

    and-int v4, v4, v16

    if-eqz v4, :cond_78

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_78
    if-eqz v0, :cond_7a

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    iget-object v4, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v4, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v16, v8

    move/from16 v8, v51

    move/from16 v4, v53

    if-ne v8, v4, :cond_79

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v48

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v50

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v0, ", due to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v54

    invoke-direct {v9, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_79
    move-object/from16 v21, v0

    move-object/from16 v12, v48

    move-object/from16 v13, v50

    move-object/from16 v5, v54

    goto :goto_31

    :cond_7a
    move-object/from16 v21, v0

    move/from16 v16, v8

    move-object/from16 v12, v48

    move-object/from16 v13, v50

    move/from16 v8, v51

    move/from16 v4, v53

    move-object/from16 v5, v54

    :goto_31
    const/4 v0, 0x1

    goto :goto_33

    :cond_7b
    move-object v11, v4

    move-object/from16 v40, v5

    move v1, v8

    move-object/from16 v3, v16

    move/from16 v0, v32

    move-object/from16 v12, v48

    move-object/from16 v13, v50

    move/from16 v8, v51

    move/from16 v4, v53

    move-object/from16 v5, v54

    const/16 v2, 0x384

    if-ge v7, v2, :cond_7c

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v32, v0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_32

    :cond_7c
    move/from16 v32, v0

    const/4 v0, 0x1

    :goto_32
    move/from16 v16, v1

    move/from16 v1, v21

    move/from16 v2, v32

    :goto_33
    iget v0, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v21, 0x8000000

    and-int v0, v0, v21

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    :cond_7d
    iget-object v0, v11, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-object/from16 v35, v6

    iget v6, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_83

    if-eqz v0, :cond_82

    if-lez v2, :cond_82

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    iget v6, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v17, 0x4

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_7f

    iget v6, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_7e

    const/16 v22, 0x4

    goto :goto_34

    :cond_7e
    const/16 v22, 0x2

    :cond_7f
    :goto_34
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v6, "service"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v6, v15, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v8, v4, :cond_80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    const-string v0, "Raise to service w/activity: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_80
    move-object/from16 v21, v0

    goto :goto_35

    :cond_81
    move-object/from16 v21, v0

    goto :goto_35

    :cond_82
    move-object/from16 v21, v0

    goto :goto_35

    :cond_83
    move-object/from16 v21, v0

    :goto_35
    add-int/lit8 v0, v38, 0x1

    move-object/from16 v40, v3

    move-object v7, v5

    move v3, v8

    move-object/from16 v21, v12

    move/from16 v41, v27

    move-object/from16 v6, v28

    move/from16 v5, v30

    move/from16 v11, v39

    move/from16 v32, v47

    move/from16 v16, v49

    const/16 v24, 0x1

    const/16 v26, 0x3

    const/16 v35, 0x5

    move v8, v0

    move-object/from16 v39, v13

    move-object/from16 v0, v31

    move/from16 v31, v46

    move-wide/from16 v12, p5

    goto/16 :goto_21

    :cond_84
    move/from16 v30, v5

    move-object/from16 v28, v6

    move-object v5, v7

    move/from16 v38, v8

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v13, v39

    move-object/from16 v3, v40

    move/from16 v27, v41

    move/from16 v8, v42

    move-object/from16 v31, v0

    move/from16 v21, v1

    move/from16 v32, v2

    move/from16 v39, v11

    :goto_36
    add-int/lit8 v0, v30, -0x1

    move-object v7, v5

    move/from16 v2, v21

    move/from16 v1, v22

    move/from16 v41, v27

    move-object/from16 v6, v28

    move/from16 v22, v29

    move/from16 v29, v37

    move/from16 v11, v39

    move/from16 v31, v46

    move/from16 v16, v49

    const/16 v24, 0x1

    const/16 v26, 0x3

    const/16 v35, 0x5

    move v5, v0

    move-object/from16 v21, v12

    move-object/from16 v39, v13

    move/from16 v0, v32

    move/from16 v32, v47

    move-wide/from16 v12, p5

    move/from16 v59, v8

    move-object v8, v3

    move/from16 v3, v59

    goto/16 :goto_1f

    :cond_85
    move/from16 v37, v0

    move/from16 v30, v5

    move-object/from16 v28, v6

    move-object v5, v7

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v46, v31

    move/from16 v47, v32

    move-object/from16 v13, v39

    move/from16 v27, v41

    move/from16 v39, v11

    move-object/from16 v59, v8

    move v8, v3

    move-object/from16 v3, v59

    :goto_37
    add-int/lit8 v11, v39, -0x1

    move-object v7, v5

    move-object/from16 v21, v12

    move/from16 v6, v27

    move/from16 v15, v36

    move/from16 v0, v37

    move/from16 v31, v46

    move/from16 v32, v47

    move/from16 v16, v49

    const/16 v26, 0x3

    const/16 v35, 0x5

    move v5, v2

    move-object v2, v13

    move-object/from16 v36, v14

    move/from16 v14, v33

    move-wide/from16 v12, p5

    move/from16 v59, v8

    move-object v8, v3

    move/from16 v3, v59

    goto/16 :goto_15

    :cond_86
    move/from16 v38, v1

    move-object v13, v2

    move/from16 v27, v6

    move/from16 v39, v11

    move/from16 v49, v16

    move-object/from16 v12, v21

    move/from16 v11, v26

    move/from16 v46, v31

    move/from16 v47, v32

    move/from16 v6, v35

    move-object/from16 v14, v36

    move/from16 v36, v15

    move-object v15, v7

    const/4 v7, 0x0

    move-object/from16 v59, v8

    move v8, v3

    move-object/from16 v3, v59

    :goto_38
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    move v6, v5

    move v5, v1

    move/from16 v1, v38

    :goto_39
    if-ltz v5, :cond_a1

    if-gtz v0, :cond_88

    if-eqz v1, :cond_88

    const/4 v7, 0x2

    if-le v6, v7, :cond_87

    goto :goto_3a

    :cond_87
    move v7, v1

    move-object/from16 v16, v2

    move v5, v4

    move-object/from16 v30, v14

    move-object v1, v15

    const/4 v12, 0x0

    move-object v4, v3

    move v15, v8

    move-wide/from16 v2, p5

    goto/16 :goto_48

    :cond_88
    :goto_3a
    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    iget-object v11, v7, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v16, 0x1

    add-int/lit8 v11, v11, -0x1

    move/from16 v59, v11

    move v11, v0

    move/from16 v0, v59

    move/from16 v60, v6

    move v6, v1

    move/from16 v1, v60

    :goto_3b
    if-ltz v0, :cond_9b

    if-gtz v11, :cond_8a

    if-eqz v6, :cond_8a

    move-object/from16 v16, v2

    const/4 v2, 0x2

    if-le v1, v2, :cond_89

    goto :goto_3c

    :cond_89
    move/from16 v28, v5

    move-object/from16 v50, v13

    move-object/from16 v30, v14

    move v5, v4

    move-object v14, v7

    move-object v4, v3

    move v7, v6

    move-wide/from16 v2, p5

    move v6, v1

    move-object v1, v15

    move v15, v8

    move-object v8, v12

    goto/16 :goto_45

    :cond_8a
    move-object/from16 v16, v2

    :goto_3c
    iget-object v2, v7, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    move/from16 v51, v8

    iget-object v8, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v48, v12

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v8, v10, :cond_8b

    move/from16 v21, v0

    move/from16 v25, v1

    move-object/from16 v40, v3

    move/from16 v57, v4

    move/from16 v28, v5

    move/from16 v58, v6

    move-object/from16 v50, v13

    move-object/from16 v30, v14

    move-object/from16 v54, v15

    move/from16 v15, v51

    move-object v14, v7

    goto/16 :goto_3e

    :cond_8b
    if-eqz p8, :cond_8c

    const/16 v19, 0x1

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v25, v1

    move-object v1, v8

    move-object/from16 v56, v2

    move/from16 v2, p2

    move-object/from16 v40, v3

    move-object/from16 v3, p3

    move/from16 v57, v4

    move/from16 v4, p4

    move/from16 v28, v5

    move/from16 v58, v6

    move-wide/from16 v5, p5

    move-object/from16 v30, v14

    move-object v14, v7

    move/from16 v7, p7

    move-object/from16 v50, v13

    move-object/from16 v54, v15

    move/from16 v15, v51

    move-object v13, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_3d

    :cond_8c
    move/from16 v21, v0

    move/from16 v25, v1

    move-object/from16 v56, v2

    move-object/from16 v40, v3

    move/from16 v57, v4

    move/from16 v28, v5

    move/from16 v58, v6

    move-object/from16 v50, v13

    move-object/from16 v30, v14

    move-object/from16 v54, v15

    move/from16 v15, v51

    move-object v14, v7

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

    move/from16 v3, v25

    move v4, v11

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_8d

    nop

    :goto_3e
    move-wide/from16 v2, p5

    move-object/from16 v4, v40

    move-object/from16 v8, v48

    move-object/from16 v1, v54

    move/from16 v5, v57

    move/from16 v6, v58

    goto/16 :goto_44

    :cond_8d
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_8e

    const/16 v0, 0x13

    :cond_8e
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_8f
    const/4 v1, 0x0

    if-le v11, v5, :cond_93

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v3

    if-nez v3, :cond_90

    const/16 v3, 0xc8

    if-le v5, v3, :cond_91

    const-string v1, "cch-ui-provider"

    move-object/from16 v4, v40

    goto :goto_40

    :cond_90
    const/16 v3, 0xc8

    :cond_91
    if-lez v5, :cond_92

    move v4, v5

    goto :goto_3f

    :cond_92
    const/4 v4, 0x0

    :goto_3f
    move v11, v4

    move-object/from16 v4, v40

    invoke-virtual {v4, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v1, "provider"

    :goto_40
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v7

    and-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_41

    :cond_93
    move-object/from16 v4, v40

    const/16 v3, 0xc8

    :goto_41
    const/4 v7, 0x4

    if-gt v0, v7, :cond_96

    if-nez v1, :cond_94

    const-string/jumbo v1, "provider"

    :cond_94
    const/4 v8, 0x2

    if-ne v0, v8, :cond_95

    const/4 v0, 0x3

    goto :goto_42

    :cond_95
    const/4 v0, 0x5

    goto :goto_42

    :cond_96
    const/4 v8, 0x2

    :goto_42
    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-wide/from16 v2, p5

    move-object/from16 v8, v48

    move-object/from16 v7, v56

    invoke-virtual {v7, v0, v6, v2, v3}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    move/from16 v6, v25

    if-le v6, v0, :cond_97

    move v6, v0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :cond_97
    move/from16 v19, v5

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v5

    move-object/from16 v56, v7

    move/from16 v7, v58

    if-le v5, v7, :cond_98

    const/4 v5, 0x2

    move v7, v5

    :cond_98
    if-eqz v1, :cond_9a

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v4, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v5, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v5, v57

    if-ne v15, v5, :cond_99

    move/from16 v25, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v54

    invoke-direct {v9, v1, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_99
    move/from16 v25, v0

    move-object/from16 v31, v1

    move-object/from16 v1, v54

    goto :goto_43

    :cond_9a
    move/from16 v25, v0

    move-object/from16 v31, v1

    move-object/from16 v1, v54

    move/from16 v5, v57

    :goto_43
    move/from16 v25, v6

    move v6, v7

    :goto_44
    add-int/lit8 v0, v21, -0x1

    move-object v3, v4

    move v4, v5

    move-object v12, v8

    move-object v7, v14

    move v8, v15

    move-object/from16 v2, v16

    move/from16 v5, v28

    move-object/from16 v14, v30

    move-object/from16 v13, v50

    move-object v15, v1

    move/from16 v1, v25

    goto/16 :goto_3b

    :cond_9b
    move/from16 v21, v0

    move-object/from16 v16, v2

    move/from16 v28, v5

    move-object/from16 v50, v13

    move-object/from16 v30, v14

    move v5, v4

    move-object v14, v7

    move-object v4, v3

    move v7, v6

    move-wide/from16 v2, p5

    move v6, v1

    move-object v1, v15

    move v15, v8

    move-object v8, v12

    :goto_45
    invoke-virtual {v14}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_a0

    if-lez v11, :cond_9d

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v0, 0x2

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v7, "ext-provider"

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget-object v7, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v15, v5, :cond_9c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise adj to external provider: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v1, v7}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    move v7, v0

    goto :goto_46

    :cond_9d
    const/4 v12, 0x0

    :goto_46
    const/4 v0, 0x6

    if-le v6, v0, :cond_9f

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-ne v15, v5, :cond_9e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise procstate to external provider: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v1, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    move v6, v0

    move v0, v11

    goto :goto_47

    :cond_9f
    move v0, v11

    goto :goto_47

    :cond_a0
    const/4 v12, 0x0

    move v0, v11

    :goto_47
    add-int/lit8 v11, v28, -0x1

    move-object v3, v4

    move v4, v5

    move v5, v11

    move-object/from16 v2, v16

    move-object/from16 v14, v30

    move-object/from16 v13, v50

    const/4 v11, 0x3

    move/from16 v59, v15

    move-object v15, v1

    move v1, v7

    move v7, v12

    move-object v12, v8

    move/from16 v8, v59

    goto/16 :goto_39

    :cond_a1
    move-object/from16 v16, v2

    move/from16 v28, v5

    move v12, v7

    move-object/from16 v30, v14

    move v7, v1

    move v5, v4

    move-object v1, v15

    move-object v4, v3

    move v15, v8

    move-wide/from16 v2, p5

    :goto_48
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v13

    const-wide/16 v17, 0x0

    cmp-long v8, v13, v17

    if-lez v8, :cond_a6

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v13

    iget-object v8, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v11, v7

    iget-wide v7, v8, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v13, v7

    cmp-long v7, v13, v2

    if-lez v7, :cond_a7

    const/16 v7, 0x2bc

    if-le v0, v7, :cond_a2

    const/16 v0, 0x2bc

    const/4 v7, 0x0

    invoke-virtual {v4, v12}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v8, "recent-provider"

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v15, v5, :cond_a3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise adj to recent provider: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v1, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_a2
    move v7, v11

    :cond_a3
    :goto_49
    const/16 v8, 0xf

    if-le v6, v8, :cond_a5

    const/16 v6, 0xf

    const-string/jumbo v8, "recent-provider"

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v15, v5, :cond_a4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to recent provider: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v1, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    move v1, v7

    goto :goto_4a

    :cond_a5
    move v1, v7

    goto :goto_4a

    :cond_a6
    move v11, v7

    :cond_a7
    move v1, v11

    :goto_4a
    const/16 v7, 0x13

    if-lt v6, v7, :cond_a9

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v7

    if-eqz v7, :cond_a8

    const/16 v6, 0x11

    const-string v7, "cch-client-act"

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_4b

    :cond_a8
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v7

    if-eqz v7, :cond_a9

    const/16 v6, 0x10

    const-string v7, "cch-as-act"

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_a9
    :goto_4b
    const/16 v7, 0x1f4

    if-ne v0, v7, :cond_af

    if-eqz p4, :cond_ae

    if-nez p7, :cond_ae

    iget v7, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v8, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v11, 0x3

    div-int/2addr v8, v11

    if-le v7, v8, :cond_aa

    const/4 v7, 0x1

    goto :goto_4c

    :cond_aa
    move v7, v12

    :goto_4c
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    iget v7, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v7

    if-nez v7, :cond_ad

    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v7}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v7

    if-nez v7, :cond_ac

    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v7

    iget-object v11, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v13

    cmp-long v7, v7, v13

    if-ltz v7, :cond_ab

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_4e

    :cond_ab
    const/4 v7, 0x1

    goto :goto_4d

    :cond_ac
    const/4 v7, 0x1

    :goto_4d
    iget v8, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v8, v7

    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_4e

    :cond_ad
    invoke-virtual {v4, v12}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    :cond_ae
    :goto_4e
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v7

    if-eqz v7, :cond_af

    const/16 v0, 0x320

    :cond_af
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    if-le v0, v7, :cond_b0

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    const/16 v7, 0xfa

    if-gt v0, v7, :cond_b0

    const/4 v1, 0x2

    :cond_b0
    const/4 v7, 0x5

    if-lt v6, v7, :cond_b1

    iget-object v7, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_b2

    if-nez v22, :cond_b2

    if-le v1, v8, :cond_b2

    const/4 v1, 0x1

    goto :goto_4f

    :cond_b1
    const/4 v8, 0x1

    :cond_b2
    :goto_4f
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v7

    if-eqz v7, :cond_b3

    or-int v29, v29, v20

    :cond_b3
    move-object/from16 v7, v30

    invoke-direct {v9, v7, v6}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I

    move-result v11

    or-int v11, v29, v11

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v4, v11}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move/from16 v13, v36

    invoke-virtual {v4, v13}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v14, v33

    invoke-virtual {v4, v14}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    iget v8, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    move/from16 v12, v49

    if-lt v8, v12, :cond_b6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    move/from16 v17, v0

    move/from16 v0, v47

    if-lt v8, v0, :cond_b5

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    move/from16 v47, v0

    move/from16 v0, v46

    if-eq v8, v0, :cond_b4

    goto :goto_50

    :cond_b4
    const/16 v24, 0x0

    goto :goto_51

    :cond_b5
    move/from16 v47, v0

    move/from16 v0, v46

    goto :goto_50

    :cond_b6
    move/from16 v17, v0

    move/from16 v0, v46

    :goto_50
    const/16 v24, 0x1

    :goto_51
    return v24
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I
    .locals 2

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xe

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 v0, 0xf

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
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

    iget-object v6, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    :goto_1
    return v3
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    if-le v7, v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    const/4 v7, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v5, v7, :cond_5

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v13

    cmp-long v5, v13, v9

    if-nez v5, :cond_2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v5, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v5, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    nop

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v15

    add-long/2addr v15, v13

    cmp-long v5, v2, v15

    if-lez v5, :cond_4

    move v11, v12

    :cond_4
    move v5, v11

    goto :goto_2

    :cond_5
    nop

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    if-gt v5, v8, :cond_6

    move v11, v12

    :cond_6
    move v5, v11

    invoke-virtual {v4, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_2
    if-eqz v6, :cond_8

    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    :cond_8
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    nop

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v13

    sub-long v13, v2, v13

    cmp-long v7, v13, v11

    if-lez v7, :cond_a

    :cond_9
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v13, 0x0

    :goto_4
    array-length v14, v7

    if-ge v13, v14, :cond_a

    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v15, v7, v13

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v14, v15, v9, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v5, :cond_b

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_b
    return-void
.end method

.method private performUpdateOomAdjLSP(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v3, v1, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z
    .locals 12

    move-object v9, p0

    move-object v10, p1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

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

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

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

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

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

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    :cond_5
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    const-wide/16 v13, 0x40

    move-object/from16 v15, p2

    invoke-static {v13, v14, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    const/16 v0, 0x384

    if-lt v7, v0, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e9

    :goto_0
    nop

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v3

    move-object v3, v12

    move v14, v4

    move v13, v5

    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v8, v1, :cond_1

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_1

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v13, v1, :cond_1

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v14, v1, :cond_1

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    goto/16 :goto_3

    :cond_1
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {v10, v3, v1, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v18

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    if-nez v18, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    move-object v5, v12

    move-object v6, v1

    move/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v22, v8

    move/from16 v8, v18

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_2

    :cond_4
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_5

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    :cond_5
    :goto_2
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v16

    :cond_6
    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    :goto_3
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method private performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v12, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, v2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    if-lt v0, p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-lt v0, p4, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z
    .locals 23

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v11, v0, v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v6, v9, -0x1

    move v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move v3, v6

    move v6, v5

    move v5, v4

    :goto_0
    if-ltz v3, :cond_9

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v17, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-wide/from16 v3, p1

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_1

    :cond_0
    move-object/from16 v17, v2

    move/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    :goto_1
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xd

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v2, v4

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v8, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v5

    cmp-long v2, v5, p5

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x1b7740

    add-long v5, p5, v5

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v21

    sub-long v5, v5, v21

    const-wide/16 v21, 0x3e8

    div-long v5, v5, v21

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v8, 0x1

    if-le v5, v10, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_4

    :pswitch_2
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v4

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v5, :cond_2

    if-ne v12, v2, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    move v12, v5

    move v13, v5

    :goto_2
    sub-int v5, v14, v15

    if-le v5, v11, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cached #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v3, v6, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_4
    :goto_3
    move v5, v8

    :cond_5
    :goto_4
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v2

    if-gtz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const/16 v2, 0x11

    const-string/jumbo v6, "isolated not needed"

    invoke-virtual {v0, v6, v3, v2, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_5

    :cond_6
    invoke-direct {v7, v0}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v6, v9, 0x1

    goto :goto_6

    :cond_7
    move v6, v9

    goto :goto_6

    :cond_8
    move-object/from16 v17, v2

    move/from16 v16, v3

    move-object v0, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    move v5, v8

    move v6, v9

    :goto_6
    add-int/lit8 v3, v16, -0x1

    move-object/from16 v8, v19

    move/from16 v9, v20

    goto/16 :goto_0

    :cond_9
    move-object/from16 v19, v8

    move/from16 v20, v9

    move v8, v5

    move v9, v6

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v14, v8, v9}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(III)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

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

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

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

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

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
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :cond_2
    return-void
.end method

.method private updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 28
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

    move-object/from16 v10, p0

    const-wide/16 v11, 0x40

    if-eqz p6, :cond_0

    move-object/from16 v13, p1

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v0, 0x1b7740

    sub-long v16, v14, v0

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    move/from16 v18, v1

    move-object/from16 v1, p4

    if-eqz v18, :cond_2

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v1, :cond_4

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->clear()V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v11, 0x40

    goto :goto_3

    :cond_3
    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object v11, v1

    :goto_4
    invoke-virtual {v11}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_5
    if-ltz v1, :cond_5

    invoke-virtual {v11, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_5
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v1, v0

    iput v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v18, :cond_6

    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_6
    const/4 v1, 0x0

    if-nez v18, :cond_8

    if-eqz p5, :cond_7

    goto :goto_6

    :cond_7
    move v0, v6

    :cond_8
    :goto_6
    move v12, v0

    add-int/lit8 v0, v5, -0x1

    :goto_7
    if-ltz v0, :cond_a

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v6, :cond_9

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v6, 0x3e9

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    :cond_9
    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    add-int/lit8 v0, v5, -0x1

    move/from16 v20, v1

    :goto_8
    if-ltz v0, :cond_c

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    const/16 v19, 0x3e9

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v22, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, p2

    move/from16 v23, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide v6, v14

    move-wide/from16 v25, v8

    move/from16 v8, v21

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v20, v1

    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v20, v1

    goto :goto_9

    :cond_b
    move-object v3, v4

    move/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    :goto_9
    add-int/lit8 v0, v0, -0x1

    move/from16 v5, v23

    move-object/from16 v7, v24

    move-wide/from16 v8, v25

    goto :goto_8

    :cond_c
    move/from16 v23, v5

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    :cond_d
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    if-eqz v12, :cond_14

    const/4 v0, 0x0

    :goto_a
    if-eqz v20, :cond_13

    const/16 v1, 0xa

    if-ge v0, v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    move/from16 v9, v23

    if-ge v2, v9, :cond_f

    move-object/from16 v8, v24

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v8

    move/from16 v23, v9

    goto :goto_b

    :cond_f
    move-object/from16 v8, v24

    const/4 v2, 0x0

    move/from16 v20, v1

    move v6, v2

    :goto_c
    if-ge v6, v9, :cond_12

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p2

    move-object/from16 v23, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v24, v7

    move-wide v6, v14

    move-object/from16 v27, v8

    move/from16 v8, v21

    move/from16 v21, v9

    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v20, 0x1

    goto :goto_d

    :cond_10
    move-object/from16 v23, v5

    move/from16 v19, v6

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move/from16 v21, v9

    :cond_11
    :goto_d
    add-int/lit8 v6, v19, 0x1

    move/from16 v9, v21

    move-object/from16 v8, v27

    goto :goto_c

    :cond_12
    move/from16 v19, v6

    move-object/from16 v27, v8

    move/from16 v21, v9

    move/from16 v23, v21

    move-object/from16 v24, v27

    goto/16 :goto_a

    :cond_13
    move/from16 v21, v23

    move-object/from16 v27, v24

    goto :goto_e

    :cond_14
    move/from16 v21, v23

    move-object/from16 v27, v24

    :goto_e
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v4, v25

    move-wide/from16 v6, v16

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v1

    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v2, :cond_15

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_15
    if-eqz v1, :cond_16

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v3

    invoke-virtual {v2, v14, v15, v0, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    :cond_16
    move-wide/from16 v2, v25

    invoke-direct {v10, v11, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v5, v14, v15}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_18

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_18
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateOomAdjLSP(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw v0
.end method

.method private updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    return v0
.end method

.method private updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 11

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
    if-ltz v1, :cond_e

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_d

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v5, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v5, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v7

    if-eq v5, v7, :cond_d

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    invoke-virtual {v3, v7}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    :cond_5
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    :cond_6
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    const/16 v8, 0xb

    if-le v5, v8, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v7

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_8

    move v7, v2

    :cond_8
    if-ne v5, v7, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    if-ne v8, v6, :cond_b

    :cond_9
    if-eqz v7, :cond_a

    const/16 v6, 0x8

    goto :goto_3

    :cond_a
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v4, v6

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v8

    if-eq v6, v8, :cond_c

    or-int/lit8 v4, v4, 0x20

    :cond_c
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    invoke-virtual {v6, v3, v8, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    :cond_d
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(I)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    add-int/lit8 v2, v1, -0x1

    :goto_4
    if-ltz v2, :cond_10

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_10
    return-void
.end method


# virtual methods
.method dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2

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

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

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

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompatCache:Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    return-object v0
.end method

.method handleUserSwitchedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method idleUidsLocked()V
    .locals 14

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

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    add-int/lit8 v7, v0, -0x1

    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_5

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v11

    cmp-long v13, v11, v8

    if-lez v13, :cond_4

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v13

    if-nez v13, :cond_4

    cmp-long v13, v11, v3

    if-gtz v13, :cond_2

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    iget-object v13, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    const/4 v8, 0x1

    invoke-virtual {v10, v8}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    invoke-virtual {v10, v8}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v8

    :cond_2
    cmp-long v8, v5, v8

    if-eqz v8, :cond_3

    cmp-long v8, v5, v11

    if-lez v8, :cond_4

    :cond_3
    move-wide v5, v11

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_6
    cmp-long v7, v5, v8

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void
.end method

.method initSettings()V
    .locals 5

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

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OomAdjuster;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 3

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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

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
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->getPlatformCompatCache()Lcom/android/server/am/OomAdjuster$PlatformCompatCache;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster$PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method setAppIdTempAllowlistStateLSP(IZ)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v3

    if-eq v3, p2, :cond_0

    invoke-virtual {v2, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    const/4 v0, 0x2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/16 v4, -0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "not expected top priority"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const/4 v0, 0x3

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback pre-set sched group to default: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OomAdjuster"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method setUidTempAllowlistStateLSP(IZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const-string/jumbo v2, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .locals 2

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

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    throw v0
.end method
