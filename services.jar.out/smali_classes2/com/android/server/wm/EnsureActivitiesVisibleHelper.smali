.class Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field private mAboveTop:Z

.field private mBehindFullscreenActivity:Z

.field private mConfigChanges:I

.field private mContainerShouldBeVisible:Z

.field private mNotifyClients:Z

.field private mPreserveWindows:Z

.field private mStarting:Lcom/android/server/wm/ActivityRecord;

.field private final mTask:Lcom/android/server/wm/Task;

.field private mTop:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V
    .locals 2

    if-nez p3, :cond_0

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p5, p1, :cond_1

    invoke-virtual {p5, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    :cond_1
    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p5, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_3
    if-eq p5, p1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p5, p4, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_4
    return-void
.end method

.method private setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v9

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    :cond_3
    :goto_1
    if-eqz v9, :cond_c

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    if-eqz p3, :cond_6

    if-eqz v0, :cond_6

    move v7, v1

    goto :goto_2

    :cond_6
    move v7, v2

    :goto_2
    move-object v3, p0

    move v6, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    :cond_7
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    move-object v3, p2

    :goto_3
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    iget-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_b
    :goto_4
    iget v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    :goto_5
    iget-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    :cond_d
    return-void
.end method


# virtual methods
.method public synthetic lambda$process$0$EnsureActivitiesVisibleHelper(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    :cond_3
    return-void
.end method

.method reset(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullscreenActivity:Z

    iput p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    iput-boolean p4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    return-void
.end method
