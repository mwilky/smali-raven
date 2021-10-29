.class final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field private mCurRawAdj:I

.field private mInitialIdlePss:J

.field private mLastCachedPss:J

.field private mLastCachedSwapPss:J

.field final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastLowMemory:J

.field private mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field private mLastMemInfoTime:J

.field private mLastPss:J

.field private mLastPssTime:J

.field private mLastRequestedGc:J

.field private mLastRss:J

.field private mLastStateTime:J

.field private mLastSwapPss:J

.field private mNextPssTime:J

.field private mPendingUiClean:Z

.field private mPid:I

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final mProfilerLock:Ljava/lang/Object;

.field private mPssProcState:I

.field private mPssStatType:I

.field private mReportLowMemory:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAdj:I

.field private mSetProcState:I

.field private mThread:Landroid/app/IApplicationThread;

.field private mTrimMemoryLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    return-void
.end method

.method private static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method private static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_0
    return-void
.end method

.method static synthetic lambda$onProcessInactive$3(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 1

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method


# virtual methods
.method abortNextPssTime()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method addPss(JJJZIJ)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    move-object v15, v0

    if-eqz v15, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    move-object v3, v15

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method commitNextPssTime()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method computeNextPssTime(IZZJ)J
    .locals 6

    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " pssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastCachedSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " reportLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-object v0
.end method

.method getCurRawAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return v0
.end method

.method getInitialIdlePss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-wide v0
.end method

.method getLastCachedPss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method getLastCachedSwapPss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-wide v0
.end method

.method getLastLowMemory()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object v0
.end method

.method getLastMemInfoTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method getLastPss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method getLastPssTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method getLastRequestedGc()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method getLastRss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method getLastStateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastSwapPss()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method getNextPssTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return v0
.end method

.method getPssProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return v0
.end method

.method getPssStatType()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return v0
.end method

.method getReportLowMemory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return v0
.end method

.method getSetAdj()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getTrimMemoryLevel()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return v0
.end method

.method init(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public synthetic lambda$onProcessActive$0$ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$onProcessActive$1$ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p1, :cond_0

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p3, :cond_1

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onProcessInactive$2$ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public synthetic lambda$reportCachedKill$4$ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/16 v1, 0x11

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    iget-object v10, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v13, v0

    if-eqz v12, :cond_0

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, -0x1

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v13}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    move-object v3, v12

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    new-instance v0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v13, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    new-instance v4, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v12, v9, v3}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v13, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    monitor-exit v3

    :goto_1
    return-void

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    move-object v10, v3

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, -0x1

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    invoke-virtual {p0, v9}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    :cond_0
    :goto_0
    iput-object v9, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method reportCachedKill()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method reportExcessiveCpu()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-void
.end method

.method setInitialIdlePss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-void
.end method

.method setLastCachedPss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-void
.end method

.method setLastCachedSwapPss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-void
.end method

.method setLastLowMemory(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-void
.end method

.method setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method setLastMemInfoTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-void
.end method

.method setLastPss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-void
.end method

.method setLastPssTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method setLastRequestedGc(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-void
.end method

.method setLastRss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-void
.end method

.method setLastSwapPss(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-void
.end method

.method setNextPssTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-void
.end method

.method setPendingUiClean(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    return-void
.end method

.method setPid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return-void
.end method

.method setProcessTrackerState(IIJ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    move-object v8, v2

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    move-object v2, v1

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setPssProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return-void
.end method

.method setPssStatType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return-void
.end method

.method setReportLowMemory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return-void
.end method

.method setTrimMemoryLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return-void
.end method

.method updateProcState(Lcom/android/server/am/ProcessStateRecord;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-void
.end method
