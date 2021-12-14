.class final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# static fields
.field private static final VALUE_FALSE:I = 0x0

.field private static final VALUE_INVALID:I = -0x1

.field private static final VALUE_TRUE:I = 0x1


# instance fields
.field private mAdjSeq:I

.field private mAdjSource:Ljava/lang/Object;

.field private mAdjSourceProcState:I

.field private mAdjTarget:Ljava/lang/Object;

.field private mAdjType:Ljava/lang/String;

.field private mAdjTypeCode:I

.field private mAllowStartFgsState:I

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mCacheOomRankerRss:J

.field private mCacheOomRankerRssTimeMs:J

.field private mCacheOomRankerUseCount:I

.field private mCached:Z

.field private mCachedAdj:I

.field private mCachedCompatChanges:[I

.field private mCachedForegroundActivities:Z

.field private mCachedHasActivities:I

.field private mCachedHasRecentTasks:I

.field private mCachedHasVisibleActivities:I

.field private mCachedIsHeavyWeight:I

.field private mCachedIsHomeProcess:I

.field private mCachedIsPreviousProcess:I

.field private mCachedIsReceivingBroadcast:I

.field private mCachedProcState:I

.field private mCachedSchedGroup:I

.field private mCompletedAdjSeq:I

.field private mContainsCycle:Z

.field private mCurAdj:I

.field private mCurCapability:I

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mEmpty:Z

.field private mFgInteractionTime:J

.field private mForcingToImportant:Ljava/lang/Object;

.field private mHasForegroundActivities:Z

.field private mHasOverlayUi:Z

.field private mHasShownUi:Z

.field private mHasStartedServices:Z

.field private mHasTopUi:Z

.field private mInteractionEventTime:J

.field private mLastInvisibleTime:J

.field private mLastStateTime:J

.field private mLastTopTime:J

.field private mMaxAdj:I

.field private mNotCachedSinceIdle:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStateChanged:Z

.field private mReachable:Z

.field private mRepForegroundActivities:Z

.field private mRepProcState:I

.field private mReportedInteraction:Z

.field private mRunningRemoteAnimation:Z

.field private mSavedPriority:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mServiceB:Z

.field private mServiceHighRam:Z

.field private mSetAdj:I

.field private mSetCapability:I

.field private mSetProcState:I

.field private mSetRawAdj:I

.field private mSetSchedGroup:I

.field private mSystemNoUi:Z

.field private mVerifiedAdj:I

.field private mWhenUnimportant:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method bumpAllowStartFgsState(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    :cond_0
    return-void
.end method

.method computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .locals 12

    move-object v0, p0

    move-object v11, p1

    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    const/16 v1, 0x63

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    :cond_1
    return-void
.end method

.method containsCycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return v0
.end method

.method decAdjSeq()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method decCompletedAdjSeq()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-string v0, " fgInteractionTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lruSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " curRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " cur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " set="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " systemNoUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mRepProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lastStateTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    const-string v0, " setCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowStartFgsState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " pendingUiClean="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " empty="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " serviceHighRam="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialIdlePss="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hasOverlayUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " runningRemoteAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "foregroundActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " (rep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whenUnimportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_c
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_d
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_e

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastInvisibleTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    iget-wide v6, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr v4, v6

    invoke-static {p1, v4, v5, v2, v3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_f
    return-void
.end method

.method forceProcessStateUpTo(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method getAdjSeq()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return v0
.end method

.method getAdjSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjSourceProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return v0
.end method

.method getAdjTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object v0
.end method

.method getAdjTypeCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return v0
.end method

.method getAllowStartFgsState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    return v0
.end method

.method public getCacheOomRankerRss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    return-wide v0
.end method

.method public getCacheOomRankerRssTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-wide v0
.end method

.method getCacheOomRankerUseCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return v0
.end method

.method getCachedAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return v0
.end method

.method getCachedCompatChange(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    nop

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v4, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aput v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v0, v0, p1

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method getCachedForegroundActivities()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return v0
.end method

.method getCachedHasActivities()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasRecentTasks()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasVisibleActivities()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHeavyWeight()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHomeProcess()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsPreviousProcess()Z
    .locals 4

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    :cond_2
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method getCachedProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return v0
.end method

.method getCachedSchedGroup()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return v0
.end method

.method getCompletedAdjSeq()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return v0
.end method

.method getCurAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return v0
.end method

.method getCurCapability()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForcingToImportant()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object v0
.end method

.method getInteractionEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastInvisibleTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method getLastStateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastTopTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method getMaxAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return v0
.end method

.method getSavedPriority()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return v0
.end method

.method getSetAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return v0
.end method

.method getSetAdjWithServices()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x320

    return v0

    :cond_0
    return v0
.end method

.method getSetCapability()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return v0
.end method

.method getSetRawAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return v0
.end method

.method getSetSchedGroup()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return v0
.end method

.method getVerifiedAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return v0
.end method

.method getWhenUnimportant()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasOverlayUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasProcStateChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return v0
.end method

.method hasRepForegroundActivities()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return v0
.end method

.method hasReportedInteraction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return v0
.end method

.method hasShownUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return v0
.end method

.method hasStartedServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return v0
.end method

.method hasTopUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return v0
.end method

.method init(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method isAllowedStartFgsState()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return v0
.end method

.method isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return v0
.end method

.method isNotCachedSinceIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return v0
.end method

.method isReachable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return v0
.end method

.method isRunningRemoteAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return v0
.end method

.method isServiceB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return v0
.end method

.method isServiceHighRam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return v0
.end method

.method isSystemNoUi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return v0
.end method

.method public synthetic lambda$forceProcessStateUpTo$1$ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$setReportedProcState$0$ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method onCleanupApplicationRecordLSP()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetAllowStartFgsState()V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAllowStartFgsState:I

    return-void
.end method

.method resetCachedInfo()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return-void
.end method

.method setAdjSeq(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method setAdjSource(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-void
.end method

.method setAdjSourceProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return-void
.end method

.method setAdjTarget(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-void
.end method

.method setAdjType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method setAdjTypeCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return-void
.end method

.method public setCacheOomRankerRss(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    iput-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-void
.end method

.method setCached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return-void
.end method

.method setCompletedAdjSeq(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method setContainsCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return-void
.end method

.method setCurAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return-void
.end method

.method setCurCapability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return-void
.end method

.method setCurProcState(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    return-void
.end method

.method setCurRawAdj(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    return-void
.end method

.method setCurRawProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method setEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return-void
.end method

.method setFgInteractionTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    return-void
.end method

.method setForcingToImportant(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-void
.end method

.method setHasForegroundActivities(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return-void
.end method

.method setHasOverlayUi(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    return-void
.end method

.method setHasShownUi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return-void
.end method

.method setHasStartedServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return-void
.end method

.method setHasTopUi(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    return-void
.end method

.method setInteractionEventTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    return-void
.end method

.method setLastStateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method setLastTopTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-void
.end method

.method setMaxAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return-void
.end method

.method setNotCachedSinceIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return-void
.end method

.method setProcStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return-void
.end method

.method setReachable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return-void
.end method

.method setRepForegroundActivities(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return-void
.end method

.method setReportedInteraction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return-void
.end method

.method setReportedProcState(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_uiVisibility"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    return-void
.end method

.method setSavedPriority(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return-void
.end method

.method setServiceB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return-void
.end method

.method setServiceHighRam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return-void
.end method

.method setSetAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return-void
.end method

.method setSetCapability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return-void
.end method

.method setSetProcState(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return-void
.end method

.method setSetRawAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return-void
.end method

.method setSetSchedGroup(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return-void
.end method

.method setSystemNoUi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return-void
.end method

.method setVerifiedAdj(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return-void
.end method

.method setWhenUnimportant(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    return-void
.end method

.method updateLastInvisibleTime(Z)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    :cond_1
    :goto_0
    return-void
.end method
