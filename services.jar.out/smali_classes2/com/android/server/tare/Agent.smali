.class public Lcom/android/server/tare/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Agent$AgentHandler;,
        Lcom/android/server/tare/Agent$ActionAffordabilityNote;,
        Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;,
        Lcom/android/server/tare/Agent$Package;,
        Lcom/android/server/tare/Agent$OngoingEventUpdater;,
        Lcom/android/server/tare/Agent$OngoingEvent;,
        Lcom/android/server/tare/Agent$TrendCalculator;,
        Lcom/android/server/tare/Agent$TotalDeltaCalculator;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActionAffordabilityNotes:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$ActionAffordabilityNote;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public final mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCurrentOngoingEvents:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Agent$OngoingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public final mLock:Ljava/lang/Object;

.field public final mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

.field public final mScribe:Lcom/android/server/tare/Scribe;

.field public final mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/Agent;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    new-instance v0, Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-direct {v0}, Lcom/android/server/tare/Agent$TrendCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    new-instance v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    iput-object p3, p0, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    new-instance p2, Lcom/android/server/tare/Agent$AgentHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/tare/Agent$AgentHandler;-><init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const-class p2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    new-instance p2, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;-><init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue-IA;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    return-void
.end method


# virtual methods
.method public distributeBasicIncomeLocked(I)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v8

    move/from16 v4, p1

    int-to-double v10, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_1

    new-instance v21, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v13, 0x0

    const/4 v14, 0x0

    long-to-double v8, v8

    mul-double/2addr v10, v8

    double-to-long v11, v10

    const-wide/16 v17, 0x0

    move-object/from16 v8, v21

    move-wide/from16 v9, v19

    move-wide v15, v11

    move-wide/from16 v11, v19

    invoke-direct/range {v8 .. v18}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v21

    move v9, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_2

    :cond_1
    :goto_1
    move v9, v5

    :goto_2
    add-int/lit8 v5, v9, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Ongoing events:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_0
    if-ltz v4, :cond_7

    iget-object v8, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v9

    sub-int/2addr v9, v5

    :goto_1
    if-ltz v9, :cond_6

    iget-object v10, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArrayMap;

    invoke-virtual {v11}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v12

    sub-int/2addr v12, v5

    const/4 v13, 0x0

    :goto_2
    if-ltz v12, :cond_4

    invoke-virtual {v11, v12}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v14

    sub-int/2addr v14, v5

    :goto_3
    if-ltz v14, :cond_3

    if-nez v13, :cond_0

    invoke-static {v8, v10}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v13, v5

    :cond_0
    invoke-virtual {v11, v12, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Agent$OngoingEvent;

    iget v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-static {v15}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    if-eqz v15, :cond_1

    const-string v15, "("

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ")"

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v15, " runtime="

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v5, v2, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v5, " delta/sec="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_2

    const-string v5, " ctp/sec="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v5, " refCount="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, -0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_4
    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_5
    add-int/lit8 v9, v9, -0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_8

    const-string v0, "N/A"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-wide v0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    mul-long/2addr v0, p3

    iget-object p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide p1

    mul-long/2addr p3, p1

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0

    :cond_0
    iget p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-virtual {p2, p0, p5, p6}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide p2

    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    iget-object p1, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    iget-wide p4, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr p4, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0
.end method

.method public getBalanceLocked(ILjava/lang/String;)J
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArrayMap;

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->reset(Lcom/android/server/tare/Ledger;JJ)V

    iget-object p2, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual {p1, p2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-static {p0}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->-$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J

    move-result-wide p0

    add-long/2addr v7, p0

    :cond_0
    return-wide v7
.end method

.method public grantBirthrightLocked(ILjava/lang/String;)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits as soon as it was installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v7

    new-instance v15, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-object v4, v15

    move-wide v5, v7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public grantBirthrightsLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public grantBirthrightsLocked(I)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    move v10, v5

    goto :goto_2

    :cond_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits before economy was set up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide/from16 v10, v20

    move-wide/from16 v12, v20

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v10, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :goto_2
    add-int/lit8 v5, v10, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final isAffordableLocked(JJJ)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide p0

    cmp-long p0, p0, p5

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v12

    iget-object v1, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v2

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v1

    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v9, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v14, v9

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v9, v4

    move-wide v10, v12

    move-wide/from16 v16, v14

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-wide/from16 v18, v1

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0, v12, v13}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide v4

    const-wide/16 v9, 0x0

    iget-wide v14, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr v14, v4

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide v10, v12

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public final noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    iget-object v2, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_2

    sget-object p3, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unsupported event type: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v6

    if-nez v1, :cond_3

    new-instance v7, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v1, v7

    move v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V

    invoke-virtual {v0, p3, p4, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    goto :goto_0

    :cond_4
    invoke-virtual {v2, p3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v7

    if-eqz v7, :cond_6

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v2, v1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    :cond_6
    :goto_0
    if-eqz p7, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onAnythingChangedLocked(Z)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v12

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v13, v0

    :goto_0
    if-ltz v13, :cond_3

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v15, v0

    :goto_1
    if-ltz v15, :cond_2

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/util/SparseArrayMap;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move v1, v14

    move-object v2, v5

    move-wide v3, v8

    move-wide/from16 v16, v8

    move-object v8, v5

    move-object v9, v6

    move-wide v5, v10

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v9, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_0
    move-wide/from16 v16, v8

    move-object v8, v5

    :goto_2
    invoke-virtual {v7, v14, v8}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_3

    :cond_1
    move-wide/from16 v16, v8

    :goto_3
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v8, v16

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v8

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    :goto_4
    if-ltz v8, :cond_7

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v9

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_5
    if-ltz v10, :cond_6

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/util/ArraySet;

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v14

    invoke-virtual {v7, v9, v11}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v15

    const/4 v0, 0x0

    move v5, v0

    :goto_6
    if-ge v5, v14, :cond_5

    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-virtual {v6, v12, v9, v11}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide v1, v15

    move/from16 v19, v5

    move-object/from16 p1, v6

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_4

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v9, v11, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_4
    add-int/lit8 v5, v19, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public onAppExemptedLocked(ILjava/lang/String;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    sub-long v14, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v7, v4

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public onAppStatesChangedLocked(ILandroid/util/ArraySet;)V
    .locals 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v13

    const/4 v15, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_3

    move-object/from16 v5, p2

    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/SparseArrayMap;

    if-eqz v3, :cond_2

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move/from16 v1, p1

    move-object v2, v6

    move-object v14, v3

    move-wide v3, v9

    move-wide/from16 v16, v9

    move-object v9, v6

    move-wide v5, v11

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v14, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v14

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v18

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_1

    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-virtual {v6, v13, v8, v9}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-wide/from16 v5, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_0
    add-int/lit8 v5, v22, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v9

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, v16

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public onAppUnexemptedLocked(ILjava/lang/String;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, v0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v7, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v9, v7, v9

    if-gez v9, :cond_1

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    :cond_1
    const-wide/32 v9, 0xa4cb800

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_2
    const-wide/32 v9, 0xf731400

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto :goto_0

    :cond_3
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_0
    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_5

    sget-boolean v5, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reclaiming bonus wealth! Taking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    iget-object v5, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v5

    new-instance v6, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x4

    const/4 v13, 0x0

    neg-long v14, v3

    const-wide/16 v16, 0x0

    move-object v7, v6

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :cond_5
    return-void
.end method

.method public onCreditSupplyChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceStateChangedLocked()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    return-void
.end method

.method public onPackageRemovedLocked(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public onPricingChangedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public onUserRemovedLocked(ILjava/util/List;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/util/List;)V

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public final reclaimAssetsLocked(ILjava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->discardLedgerLocked(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reclaimAssetsLocked(ILjava/util/List;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tare/Agent;->reclaimAssetsLocked(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reclaimUnusedAssetsLocked(DJZ)V
    .locals 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v7

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getLedgersLocked()Landroid/util/SparseArrayMap;

    move-result-object v8

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move/from16 v5, v22

    :goto_0
    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move/from16 v3, v22

    :goto_1
    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/tare/Ledger;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-gtz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v11, v2, v4}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v11

    cmp-long v11, v11, p3

    if-ltz v11, :cond_4

    if-nez p5, :cond_1

    invoke-virtual {v7, v4, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v11

    goto :goto_2

    :cond_1
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v11, v4, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    :goto_2
    long-to-double v13, v0

    mul-double v13, v13, p1

    double-to-long v13, v13

    sub-long v15, v0, v13

    cmp-long v15, v15, v11

    if-gez v15, :cond_2

    sub-long v13, v0, v11

    :cond_2
    cmp-long v0, v13, v9

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reclaiming unused wealth! Taking "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v24, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v0, 0x2

    const/4 v15, 0x0

    neg-long v12, v13

    const-wide/16 v18, 0x0

    move-object/from16 v9, v24

    move-wide/from16 v10, v20

    move-wide/from16 v16, v12

    move-wide/from16 v12, v20

    move v14, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v10, v3

    move-object/from16 v3, v23

    move v11, v4

    move-object/from16 v4, v24

    move v12, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v3

    move v11, v4

    move v12, v5

    :goto_4
    add-int/lit8 v3, v10, 0x1

    move v4, v11

    move v5, v12

    goto/16 :goto_1

    :cond_5
    move v12, v5

    add-int/lit8 v5, v12, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V
    .locals 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    sget-boolean v1, Lcom/android/server/tare/Agent;->DEBUG:Z

    const-wide/16 v10, 0x0

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to adjust system balance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v6, v4, v10

    if-lez v6, :cond_3

    add-long/2addr v4, v2

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_3

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    sget-object v1, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would result in becoming too rich. Decreasing transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    sub-long v3, v3, v19

    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v13, v0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iget-wide v2, v0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget v4, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-object v5, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    iget-wide v10, v0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    move-object v12, v1

    move-wide v15, v2

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v21, v10

    invoke-direct/range {v12 .. v22}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object/from16 v0, p3

    move-object v10, v1

    goto :goto_1

    :cond_3
    move-object v10, v0

    move-object/from16 v0, p3

    :goto_1
    invoke-virtual {v0, v10}, Lcom/android/server/tare/Ledger;->recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    iget-object v1, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    iget-wide v2, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    iget-object v1, v7, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v10}, Lcom/android/server/tare/Analyst;->noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    iget-wide v1, v10, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x0

    if-eqz v1, :cond_5

    if-eqz p5, :cond_5

    iget-object v1, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v13

    move v15, v11

    :goto_2
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_5

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v5}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v13

    move-object/from16 p3, v5

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_4

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    iget-wide v0, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->maybePerformQuantitativeEasingLocked()V

    :cond_6
    return-void
.end method

.method public registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p0, 0x1

    invoke-static {v2, p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    return-void

    :cond_1
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v6

    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p3

    invoke-static {v2, p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3, p1, p2, v2}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final scheduleBalanceCheckLocked(ILjava/lang/String;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v4}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/Agent$TrendCalculator;->reset(JJLandroid/util/ArraySet;)V

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossLowerThresholdMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v2}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossUpperThresholdMs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    :cond_1
    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    :cond_3
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    new-instance v0, Lcom/android/server/tare/Agent$Package;

    invoke-direct {v0, p1, p2}, Lcom/android/server/tare/Agent$Package;-><init>(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void
.end method

.method public final shouldGiveCredits(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasCode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public final stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v13, p4

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/SparseArrayMap;

    if-nez v14, :cond_1

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ongoing transactions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v14, v15, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    if-nez v1, :cond_3

    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonexistent ongoing transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    if-gtz v0, :cond_4

    iget-wide v2, v1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v2, p5, v2

    sub-long v11, p7, v2

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v0

    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v1, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget-wide v5, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v10, v4

    move-object v3, v13

    move-object v0, v14

    move-wide/from16 v13, p7

    move v7, v15

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    invoke-direct/range {v10 .. v20}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, v21

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p9, :cond_5

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public tearDownLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    return-void
.end method

.method public unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
