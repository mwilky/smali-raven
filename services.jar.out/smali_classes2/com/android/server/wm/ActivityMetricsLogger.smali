.class Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    }
.end annotation


# static fields
.field private static final IGNORE_CALLER:I = -0x1

.field static final LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final UNKNOWN_VISIBILITY_CHECK_DELAY_MS:J = 0xbb8L

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_MULTI_WINDOW:I = 0x4

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mLastHibernationStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLogTimeSecs:J

.field private final mLastTransitionInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field private final mLoggerHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageUidToCompatStateInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTransitionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowState:I


# direct methods
.method public static synthetic $r8$lambda$y-LfVlbtmHw1BsHT2TB54plhBRc(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    const-string v4, "window_time_4"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {v0, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-void
.end method

.method private abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    return-void
.end method

.method private checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    const-string v2, "checkActivityToBeDrawn (invisible or drawn already)"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V
    .locals 3

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object v2, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v7

    if-ne v7, v1, :cond_0

    iput-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_0
    if-ne v7, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Visible activity with NOT_VISIBLE App Compat state for package UID: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ActivityTaskManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eq v3, v6, :cond_2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    if-eq v7, v6, :cond_3

    :cond_2
    move-object v2, v5

    move v3, v7

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eq v3, v6, :cond_5

    invoke-direct {p0, v2, v3, p2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    :cond_5
    return-void
.end method

.method private getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .locals 1

    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object v0
.end method

.method private static getAppStartTransitionType(IZ)I
    .locals 1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private isIncrementalLoading(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic lambda$checkActivityToBeDrawn$0(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([BJ)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;J)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 4

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyReportFullyDrawn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onReportFullyDrawn([BJ)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V
    .locals 1

    iput p2, p4, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    iput-object p1, p4, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v0, 0x182

    invoke-static {v0, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 5

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 3

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 20

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v14

    if-nez v14, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x37

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1200(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, p1

    iget-object v5, v15, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v6, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v8, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v10, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move-wide/from16 v16, v12

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move v3, v1

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v14

    move-wide/from16 v14, v18

    invoke-static/range {v2 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    return-void
.end method

.method private logAppTransition(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x388

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$600(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const/16 v4, 0x387

    invoke-virtual {v2, v4, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x145

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v10, p3

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x13f

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/16 v4, 0x141

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_3

    const/16 v4, 0x3b1

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v29

    const/16 v4, 0x529

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x528

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_4

    invoke-static/range {v30 .. v30}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-direct {v0, v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v5

    move/from16 v31, v4

    move/from16 v32, v5

    goto :goto_0

    :cond_4
    move/from16 v31, v4

    move/from16 v32, v5

    :goto_0
    const/16 v4, 0x30

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    invoke-static {v7, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    move-wide v11, v12

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v13

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v15

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v16

    iget v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v10

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    iget v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    move/from16 v21, v10

    iget v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    move/from16 v22, v10

    iget-object v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v26

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v33, v5

    move-wide/from16 v4, p1

    invoke-virtual {v10, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v27

    move v10, v3

    move-object/from16 v34, v14

    move/from16 v14, p5

    move-object/from16 v18, v34

    move/from16 v23, p7

    move/from16 v24, v31

    move/from16 v25, v32

    move/from16 v5, v33

    const/16 v4, 0x30

    invoke-static/range {v4 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;IIIIZZZIJ)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 8

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x478

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    invoke-static {v0, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v7, 0x31

    invoke-static {v7, v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v12, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v13, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    iget-wide v7, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionDeviceUptimeMs:J

    iget v15, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    iget-object v6, v9, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-wide v2, v13

    move-object v11, v4

    move-wide v4, v7

    move-wide/from16 v16, v13

    move-object v13, v6

    move v6, v15

    move-wide/from16 v18, v7

    move-object v7, v12

    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    invoke-virtual {v13, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, v9, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, v9, v12}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, v10, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    return-void
.end method

.method private scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_0
    return-void
.end method

.method private startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x40

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionFinished$1$ActivityMetricsLogger(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionFinished$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$3$ActivityMetricsLogger(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$4$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .locals 12

    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    nop

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x5ec

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    nop

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x5ed

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ef

    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p1, :cond_0

    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v8, 0x5f6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    if-eqz v0, :cond_3

    const/16 v6, 0x5f9

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fa

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fb

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fc

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fd

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ff

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x600

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    const/16 v6, 0x601

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    const/16 v6, 0x602

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    const/16 v6, 0x603

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    move-object v6, p0

    iget-object v8, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    iget v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-object v7, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    :goto_1
    if-ne v1, v3, :cond_4

    return-void

    :cond_4
    if-nez v6, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v4, :cond_5

    if-ne p1, v4, :cond_6

    :cond_5
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V

    :cond_6
    return-void

    :cond_7
    if-eqz v4, :cond_8

    if-eq p1, v4, :cond_8

    if-eq v3, v5, :cond_8

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    return-void

    :cond_8
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    iput-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-object v4

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iget-object v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    int-to-long v7, v7

    goto :goto_0

    :cond_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    :goto_0
    nop

    new-instance v9, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    long-to-int v10, v7

    invoke-direct {v9, v3, v1, v10, v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v4, v9

    iget-object v9, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v9, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v9

    if-nez v9, :cond_3

    return-object v4

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v9, Landroid/metrics/LogMaker;

    const/16 v10, 0x442

    invoke-direct {v9, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v13, v9

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v9, 0x367

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v9, 0x443

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v2, :cond_4

    const/16 v9, 0xd

    goto :goto_1

    :cond_4
    const/16 v9, 0xc

    :goto_1
    invoke-virtual {v13, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v9, 0x144

    iget-boolean v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v9, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v9, v13}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v24

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_5

    invoke-static/range {v25 .. v25}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    iget-object v11, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v12, v12, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-direct {v0, v11, v12}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v10

    move/from16 v26, v9

    move/from16 v27, v10

    goto :goto_2

    :cond_5
    move/from16 v26, v9

    move/from16 v27, v10

    :goto_2
    iget-object v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x2

    :goto_3
    iget-object v14, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-boolean v15, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v18

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v19

    iget v9, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    move/from16 v21, v9

    iget v9, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iget-object v2, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v23

    move/from16 v20, v21

    const/16 v2, 0x32

    move/from16 v21, v9

    move v9, v2

    move-object v2, v13

    move-object v13, v14

    const-wide/16 v28, 0x40

    move v14, v15

    move-wide v15, v7

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-static/range {v9 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJIIIIZZI)V

    invoke-static/range {v28 .. v29}, Landroid/os/Trace;->traceEnd(J)V

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    return-object v4
.end method

.method logWindowState()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->findRootTaskBehind(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    :cond_3
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-nez v3, :cond_4

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :pswitch_2
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    :pswitch_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    nop

    :goto_0
    return-void

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v8, p4

    if-nez v8, :cond_0

    const/4 v1, 0x0

    const-string v2, "nothing launched"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    :goto_0
    move-object v9, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v9, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v10, v3

    if-eqz v10, :cond_4

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v2

    :goto_3
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$200(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "launched activity already visible"

    invoke-direct {p0, v11, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v11, :cond_8

    invoke-virtual {v11, v8}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v11, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    invoke-direct {p0, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object v3, v11, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v8}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    invoke-direct {p0, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    :cond_7
    invoke-direct {p0, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_8
    move-object/from16 v1, p4

    move-object v2, p1

    move-object/from16 v3, p5

    move v4, v10

    move v6, p3

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v2, "unrecognized launch"

    invoke-direct {p0, v11, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    :goto_4
    invoke-direct {p0, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_5
    if-ltz v2, :cond_d

    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez v4, :cond_b

    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_c

    :cond_b
    const-string v4, "nothing will be drawn"

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    return-object v0
.end method

.method notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p3, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz p2, :cond_0

    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V

    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;-><init>()V

    invoke-static {v3, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$002(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)J

    return-object v3

    :cond_3
    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-static {v3, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$002(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)J

    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    return-object v3
.end method

.method notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    :cond_0
    return-void
.end method

.method notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_1
    return-void
.end method

.method notifyBeforePackageUnstopped(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateCurrentDelay()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_0
    if-ltz v9, :cond_3

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object v0, v11

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v8}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1
    move-object v12, v0

    invoke-direct {p0, v12}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v13

    if-eqz v13, :cond_2

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13, v6, v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v0

    iput v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput-boolean v8, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v3, "notifyTransitionStarting drawn"

    move-object v0, p0

    move-object v2, v13

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_3

    :cond_2
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_3
    return-void
.end method

.method notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;J)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_3

    iget-boolean v1, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    invoke-direct {v1, v6, v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v7, v1

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v3, "notifyWindowsDrawn"

    move-object v0, p0

    move-object v2, v6

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isRecentsAnimationTarget(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    iget v1, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iget v2, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->logRecentsAnimationStartTime(I)V

    :cond_2
    return-object v7

    :cond_3
    :goto_0
    return-object v0
.end method
