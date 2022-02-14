.class Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TransitionController$Lock;,
        Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
    }
.end annotation


# static fields
.field private static final CHANGE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_TIMEOUT_MS:I = 0x1388

.field private static final LEGACY_STATE_IDLE:I = 0x0

.field private static final LEGACY_STATE_READY:I = 0x1

.field private static final LEGACY_STATE_RUNNING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TransitionController"


# instance fields
.field final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mCollectingTransition:Lcom/android/server/wm/Transition;

.field private final mLegacyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field private mTransitionPlayer:Landroid/window/ITransitionPlayer;

.field private final mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

.field private mTransitionPlayerThread:Landroid/app/IApplicationThread;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/TransitionController$Lock;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private createTransition(II)Lcom/android/server/wm/Transition;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    move-wide v5, v0

    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/Transition;-><init>(IIJLcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xf732d0e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v7, "Creating Transition: %s"

    invoke-static {v1, v2, v4, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionPending()V

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Simultaneous transitions not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shell Transitions not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isExistenceType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private setAnimationRunning(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find process for player thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    return-void
.end method


# virtual methods
.method abort(Lcom/android/server/wm/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too late to abort."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method createTransition(I)Lcom/android/server/wm/Transition;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method dispatchLegacyAppTransitionCancelled()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchLegacyAppTransitionPending()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchLegacyAppTransitionStarting(Landroid/window/TransitionInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x78

    move v1, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ZZJJJ)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getLegacyIsReady()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method finishTransition(Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x25133a8c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v6, "Finish Transition: %s"

    invoke-static {v3, v4, v2, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->finishTransition()V

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    return-void

    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to finish a non-playing transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getCollectingTransitionType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/Transition;->mType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    return-object v0
.end method

.method inTransition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

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
    return v0
.end method

.method inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method isCollecting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isShellTransitionsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$new$0$TransitionController()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition isn\'t playing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransitionController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method moveToPlaying(Lcom/android/server/wm/Transition;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to move non-collecting transition to playing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    :cond_1
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to set transition player"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Transition;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :goto_0
    return-void
.end method

.method requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Transition;
    .locals 6

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x6af21364

    const-string v3, "Requesting StartTransition: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    move-object v0, v1

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    new-instance v2, Landroid/window/TransitionRequestInfo;

    iget v3, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-direct {v2, v3, v0, p3}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;)V

    invoke-interface {v1, p1, v2}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TransitionController"

    const-string v2, "Error requesting transition"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    :goto_0
    return-object p1
.end method

.method requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Transition;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v2, v1, p5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Transition;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/TransitionController;->isExistenceType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method requestTransitionIfNeeded(ILcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method setTransientLaunch(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_1
    return-void
.end method

.method unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
