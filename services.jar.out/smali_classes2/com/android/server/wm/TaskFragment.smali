.class Lcom/android/server/wm/TaskFragment;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/TaskFragment$TaskFragmentVisibility;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field static final INVALID_MIN_SIZE:I = -0x1

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field static final TASK_FRAGMENT_VISIBILITY_INVISIBLE:I = 0x2

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE:I = 0x0

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1


# instance fields
.field private mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mClearedTaskForReuse:Z

.field mCreatedByOrganizer:Z

.field private mDelayLastActivityRemoval:Z

.field mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

.field private mFragmentToken:Landroid/os/IBinder;

.field private final mIsEmbedded:Z

.field private mIsRemovalRequested:Z

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mLastSurfaceSize:Landroid/graphics/Point;

.field mMinHeight:I

.field mMinWidth:I

.field mMoveAdjacentTogether:Z

.field private mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field private mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mTaskFragmentAppearedSent:Z

.field private mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field private mTaskFragmentOrganizerProcessName:Ljava/lang/String;

.field private mTaskFragmentOrganizerUid:I

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$q77xa5YS28EmN0qaij-drM-u_C8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    new-instance v1, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$1;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean p3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    iput-boolean p4, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    return-void
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private containsStoppingActivity()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    return-object v0
.end method

.method private getTaskId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    return-void
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private isTopActivityLaunchedBehind()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$clearLastPausedActivity$8(Lcom/android/server/wm/TaskFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method static synthetic lambda$getTaskFragmentInfo$7([ILcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method static synthetic lambda$getTopNonFinishingActivity$0(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopNonFinishingActivity$2(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$remove$9(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$topRunningActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetAdjacentTaskFragment()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v3, p0, :cond_0

    iput-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    return-void
.end method

.method private sendTaskFragmentAppeared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_0
    return-void
.end method

.method private sendTaskFragmentVanished()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_0
    return-void
.end method

.method private shouldStartChangeTransition(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private warnForNonLeafTaskFragment(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on non-leaf task fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/wm/Task;->onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V

    :cond_4
    return-void
.end method

.method asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 0

    return-object p0
.end method

.method awakeFromSleeping()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleeping: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    :cond_0
    return-void
.end method

.method calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 8

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method canBeAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const-string v0, "cleanUpActivityReferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    return-void
.end method

.method clearLastPausedActivity()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    return-void
.end method

.method completePause(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x1384aa78

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_c

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v7, "completePausedLocked"

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x129e233e

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-static {v8, v9, v5, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1, v5, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move v8, v2

    iget-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x46c5ef9f

    const/16 v12, 0x3c

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v6, v13, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x3c49af70

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    const-string v6, "completePauseLocked"

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1f17322e

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :cond_b
    iput-object v4, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_c
    if-eqz p1, :cond_10

    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_e
    move-object v3, v4

    if-eqz v3, :cond_f

    if-eqz v1, :cond_10

    if-eq v3, v1, :cond_10

    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_10
    :goto_1
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    :cond_11
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_13
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    :goto_1
    if-eqz v3, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_5
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v11, :cond_8

    const/4 v13, 0x5

    if-eq v4, v13, :cond_8

    if-eqz v8, :cond_6

    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    move-object v13, v14

    :goto_4
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_8
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v14, 0x2

    if-eqz v13, :cond_9

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v13, :cond_15

    :cond_9
    if-nez v11, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_a
    if-nez v11, :cond_d

    if-nez p3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_d

    :cond_b
    if-eqz p3, :cond_c

    move-object/from16 v13, p3

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    :goto_5
    nop

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v9, v10, v13}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    goto :goto_6

    :cond_d
    iget-object v9, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_e

    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    :cond_e
    if-eq v9, v10, :cond_f

    if-eqz v11, :cond_f

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v9}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v13, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v13, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_f
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_6
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v9, :cond_11

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    if-eqz v8, :cond_10

    if-nez v11, :cond_10

    iget v10, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_7

    :cond_10
    move v10, v9

    :goto_7
    iput v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v9, :cond_13

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    if-eqz v8, :cond_12

    if-nez v11, :cond_12

    iget v10, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_8

    :cond_12
    move v10, v9

    :goto_8
    iput v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_13
    iget v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v9, :cond_15

    if-ne v4, v14, :cond_14

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v10

    if-eqz v10, :cond_15

    if-nez v9, :cond_15

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    iput v10, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_15
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v9, :cond_17

    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v9, v10, :cond_16

    const/4 v10, 0x1

    goto :goto_a

    :cond_16
    move v10, v14

    :goto_a
    iput v10, v1, Landroid/content/res/Configuration;->orientation:I

    :cond_17
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_1a

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_18

    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v13, :cond_19

    iget v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v10}, Lcom/android/server/wm/TaskFragment;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    :cond_1a
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_0
    nop

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 24

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskFragment;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p6, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    const/4 v10, 0x1

    :cond_0
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const-string v4, "  "

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v3

    or-int/2addr v3, v10

    move v10, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    xor-int/lit8 v18, p4, 0x1

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    const-string v16, "Hist "

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v13, v1

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, v0

    invoke-static/range {v11 .. v23}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v10
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v2, 0x10500000002L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mIsRemovalRequested=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mLastPausedActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 0

    return-void
.end method

.method fillsParent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskFragment;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getActivityType()I
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method getFragmentToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000009L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getRootTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v11, v1

    invoke-virtual {p0, v11}, Lcom/android/server/wm/TaskFragment;->getRelativePosition(Landroid/graphics/Point;)V

    const/4 v1, 0x1

    new-array v12, v1, [I

    new-instance v2, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v12}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;-><init>([I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    new-instance v13, Landroid/window/TaskFragmentInfo;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    aget v6, v12, v6

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v7

    iget-boolean v10, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    move-object v1, v13

    move-object v8, v0

    move-object v9, v11

    invoke-direct/range {v1 .. v10}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;ZIZLjava/util/List;Landroid/graphics/Point;Z)V

    return-object v13
.end method

.method getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityLaunchedBehind()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    return v4

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v13

    if-ne v13, v3, :cond_2

    return v3

    :cond_2
    if-ne v13, v14, :cond_3

    const/4 v7, 0x1

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isActivityTypeAssistant()Z

    move-result v16

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    :goto_0
    if-ltz v4, :cond_1c

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_4

    move/from16 v20, v2

    move/from16 v21, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    goto/16 :goto_7

    :cond_4
    invoke-static {v3}, Lcom/android/server/wm/TaskFragment;->hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z

    move-result v18

    if-ne v3, v0, :cond_d

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    if-nez v8, :cond_9

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v20, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    :goto_1
    if-ltz v2, :cond_8

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskFragment;

    move/from16 v21, v8

    iget-object v8, v14, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v8, v0, :cond_5

    move/from16 v22, v11

    move-object/from16 v23, v12

    goto :goto_2

    :cond_5
    move/from16 v22, v11

    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v23, v12

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move/from16 v8, v21

    move/from16 v11, v22

    move-object/from16 v12, v23

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v11, 0x2

    return v11

    :cond_8
    move/from16 v21, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    goto :goto_4

    :cond_9
    move/from16 v20, v2

    move/from16 v21, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    :goto_4
    if-nez v18, :cond_c

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v2, 0x1

    :goto_6
    move v11, v2

    goto/16 :goto_a

    :cond_d
    move/from16 v20, v2

    move/from16 v21, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    if-nez v18, :cond_e

    nop

    :goto_7
    move/from16 v2, v20

    move/from16 v8, v21

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_10

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v7, 0x1

    move/from16 v2, v20

    move/from16 v8, v21

    goto/16 :goto_9

    :cond_f
    const/4 v8, 0x2

    return v8

    :cond_10
    const/4 v8, 0x6

    if-ne v2, v8, :cond_12

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->matchParentBounds()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v7, 0x1

    move/from16 v2, v20

    move/from16 v8, v21

    goto/16 :goto_9

    :cond_11
    const/4 v8, 0x2

    return v8

    :cond_12
    const/4 v8, 0x3

    if-ne v2, v8, :cond_13

    if-nez v5, :cond_13

    const/4 v11, 0x1

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    xor-int/lit8 v12, v9, 0x1

    move v5, v12

    if-ne v15, v8, :cond_15

    if-eqz v5, :cond_15

    const/4 v8, 0x2

    return v8

    :cond_13
    const/4 v8, 0x4

    if-ne v2, v8, :cond_14

    if-nez v6, :cond_14

    const/4 v11, 0x1

    invoke-static {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    xor-int/lit8 v12, v10, 0x1

    move v6, v12

    if-ne v15, v8, :cond_15

    if-eqz v6, :cond_15

    const/4 v8, 0x2

    return v8

    :cond_14
    move/from16 v11, v20

    :cond_15
    if-eqz v5, :cond_16

    if-eqz v6, :cond_16

    const/4 v8, 0x2

    return v8

    :cond_16
    const/4 v8, 0x2

    if-eqz v16, :cond_17

    if-eqz v11, :cond_17

    return v8

    :cond_17
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_1b

    iget-object v12, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v12, :cond_1b

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v8, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_19

    iget-object v12, v8, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_18

    goto :goto_8

    :cond_18
    const/4 v12, 0x2

    return v12

    :cond_19
    :goto_8
    const/4 v7, 0x1

    const/4 v12, 0x1

    move v2, v11

    move v8, v12

    goto :goto_9

    :cond_1a
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    move v2, v11

    move/from16 v8, v21

    :goto_9
    add-int/lit8 v4, v4, -0x1

    move/from16 v11, v22

    move-object/from16 v12, v23

    const/4 v3, 0x2

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_1c
    move/from16 v20, v2

    move/from16 v21, v8

    move/from16 v22, v11

    move-object/from16 v23, v12

    :goto_a
    if-nez v11, :cond_1d

    const/4 v2, 0x2

    return v2

    :cond_1d
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_b

    :pswitch_1
    if-eqz v10, :cond_1e

    const/4 v2, 0x1

    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_b

    :pswitch_2
    const/4 v2, 0x1

    if-eqz v9, :cond_20

    return v2

    :pswitch_3
    const/4 v2, 0x1

    if-nez v9, :cond_1f

    if-eqz v10, :cond_20

    :cond_1f
    const/4 v2, 0x2

    return v2

    :cond_20
    :goto_b
    if-eqz v7, :cond_21

    move v4, v2

    goto :goto_c

    :cond_21
    const/4 v4, 0x0

    :goto_c
    return v4

    :cond_22
    :goto_d
    const/4 v2, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 7

    const-string v0, "handleAppDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5d3c3b70

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_2

    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method hasDirectChildActivities()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttached()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isDelayLastActivityRemoval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return v0
.end method

.method isEmbedded()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method isFocusableAndVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isForceHidden()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isLeafTaskFragment()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method isOrganized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isOrganizedTaskFragment()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReadyToTransit()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

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

.method isTopActivityFocusable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public synthetic lambda$dump$10$TaskFragment(ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0, p4, p2, p5, p6}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getTopNonFinishingActivity$1$TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$getTopNonFinishingActivity$3$TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$topRunningActivity$5$TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$topRunningActivity$6$TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onActivityStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_2
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    :cond_1
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_0
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->scheduleAnimation()V

    :cond_1
    return-void
.end method

.method remove(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeLastChild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method removeImmediately()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentVanished()V

    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove task fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v0, v2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/Task;->resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1e

    :cond_0
    iput-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x0

    if-ne v0, v5, :cond_3

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v8, v6, v6, v4}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x28467144

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v9, v10, v6, v8, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v6

    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v9

    if-nez v9, :cond_5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x37c159ec

    move-object v10, v8

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v4, v6, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v6

    :cond_5
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x706c4a7b

    move-object v10, v8

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v4, v6, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v6

    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v10, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v10}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v0

    const-string v10, "ActivityTaskManager"

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping resume of top activity "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eq v11, v12, :cond_9

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :cond_9
    move-object v12, v0

    :goto_0
    if-nez p3, :cond_a

    invoke-virtual {v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v4

    goto :goto_1

    :cond_a
    move v0, v6

    :goto_1
    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v14, "resumeTopActivity"

    if-eqz v13, :cond_c

    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x61dd69c

    move/from16 v17, v9

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v13, v9, v6

    const/4 v4, 0x0

    invoke-static {v15, v8, v6, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    move/from16 v17, v9

    :goto_2
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v4, v6, v5, v14}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    move v4, v0

    goto :goto_3

    :cond_c
    move/from16 v17, v9

    move v4, v0

    :goto_3
    if-eqz v4, :cond_13

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x14541918

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v8, v6, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8, v6, v6}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    move v0, v6

    :goto_4
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_10

    const-string v9, "pre-top-activity"

    goto :goto_5

    :cond_10
    const-string v9, "pre-activity"

    :goto_5
    invoke-virtual {v8, v5, v6, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    :cond_11
    :goto_6
    if-eqz v12, :cond_12

    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_7

    :cond_12
    const/4 v6, 0x1

    :goto_7
    return v6

    :cond_13
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v5, :cond_15

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_14

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x77d338ae

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v6

    const/4 v14, 0x0

    invoke-static {v8, v9, v6, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_14
    const/4 v10, 0x1

    :goto_8
    return v10

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    :cond_16
    if-eqz v2, :cond_17

    if-eq v2, v5, :cond_17

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_17

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_17
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v9, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v8, v6, v9}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed trying to unstop package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_9
    nop

    :goto_a
    const/4 v0, 0x1

    iget-object v8, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x2

    if-eqz v2, :cond_1c

    iget-boolean v13, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v13, :cond_19

    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v0, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_b

    :cond_18
    invoke-virtual {v8, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_b
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v13, v0

    goto :goto_e

    :cond_19
    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v13, v0

    goto :goto_e

    :cond_1a
    nop

    iget-boolean v13, v5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_1b

    const/16 v13, 0x20

    goto :goto_c

    :cond_1b
    move v13, v6

    :goto_c
    const/4 v15, 0x1

    invoke-virtual {v8, v15, v13}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_d

    :cond_1c
    iget-object v13, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v13, v0

    goto :goto_e

    :cond_1d
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_d
    move v13, v0

    :goto_e
    if-eqz v13, :cond_1e

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_f

    :cond_1e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :goto_f
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_10

    :cond_1f
    move v0, v6

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v0, 0x1

    :goto_11
    move v15, v0

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_21

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_21

    if-eqz v15, :cond_22

    :cond_21
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_22
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v11, :cond_23

    const/4 v0, 0x0

    goto :goto_12

    :cond_23
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_12
    move-object v9, v0

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v6

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_24

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 v20, v4

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    move-object/from16 v21, v0

    move-object/from16 v19, v7

    const v0, -0x54b744a8

    const/4 v7, 0x0

    invoke-static {v2, v0, v3, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_24
    move/from16 v20, v4

    move-object/from16 v19, v7

    :goto_13
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v0, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v3, v4, v7}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v2

    xor-int/2addr v2, v4

    move v0, v2

    goto :goto_14

    :cond_25
    move v2, v0

    :goto_14
    if-eqz v2, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_26

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v14, v10

    const/16 v18, 0x1

    aput-object v4, v14, v18

    move/from16 v21, v2

    move-object/from16 v16, v3

    const v2, -0x127f5f19

    const/4 v3, 0x0

    invoke-static {v7, v2, v10, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_26
    move/from16 v21, v2

    :goto_15
    if-eq v0, v5, :cond_27

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    :cond_27
    iget-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_28

    goto :goto_16

    :cond_28
    const/4 v2, 0x1

    goto :goto_17

    :cond_29
    :goto_16
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :goto_17
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return v2

    :cond_2a
    move/from16 v21, v2

    :try_start_1
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2b

    if-lez v3, :cond_2b

    invoke-static {v2}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :cond_2b
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_2c

    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :cond_2c
    iget-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    iget v3, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v3, v4, v7, v14}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v4

    invoke-static {v3, v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_2d

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x1

    new-array v7, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v7, v14

    move-object/from16 v23, v0

    move-object/from16 v22, v2

    const v0, -0x549b4288

    const/4 v2, 0x0

    invoke-static {v4, v0, v14, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_18

    :cond_2d
    move-object/from16 v23, v0

    move-object/from16 v22, v2

    :goto_18
    nop

    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    const/4 v6, 0x1

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "resume-exception"

    const/4 v3, 0x1

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return v3

    :catch_3
    move-exception v0

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_2e

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v14, v7

    const/16 v18, 0x1

    aput-object v3, v14, v18

    move-object/from16 v22, v0

    move-object/from16 v16, v2

    const v0, -0x4c4c64b

    const/4 v2, 0x0

    invoke-static {v4, v0, v7, v2, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_2e
    move-object/from16 v22, v0

    :goto_19
    const-string v0, "resumeTopActivityInnerLocked"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    if-eqz v9, :cond_2f

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v9, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting because process died: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_30

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v2, 0x0

    goto :goto_1a

    :cond_30
    if-eqz v11, :cond_32

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_1a

    :cond_31
    const/4 v2, 0x0

    goto :goto_1a

    :cond_32
    const/4 v2, 0x0

    :goto_1a
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return v3

    :cond_33
    move/from16 v20, v4

    move v2, v6

    move-object/from16 v19, v7

    const/4 v3, 0x1

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_34

    iput-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_1b

    :cond_34
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    :goto_1b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_35

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x6eac4482

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v9, 0x0

    invoke-static {v3, v4, v2, v9, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_35
    const/4 v6, 0x1

    :goto_1c
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :goto_1d
    return v6

    :cond_36
    :goto_1e
    const/4 v2, 0x0

    return v2
.end method

.method schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x16946990

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userLeaving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p4}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v4, p2, v5, p3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActivityTaskManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method sendTaskFragmentInfoChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    :cond_0
    return-void
.end method

.method setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    :cond_1
    return-void
.end method

.method setDelayLastActivityRemoval(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v1, "Set delaying last activity removal on a non-embedded TF."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return-void
.end method

.method setMinDimensions(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setResumedActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentAppeared()V

    :cond_0
    return-void
.end method

.method setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    iput-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldDeferRemoval()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TaskFragment;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method shouldSleepActivities()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

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

.method sleepIfPossible(Z)Z
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x3ae234a6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v1, "sleep"

    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x71fb40de

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->containsStoppingActivity()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v5, v1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x27e5a3e1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1, v7, v3, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    :cond_6
    return v0
.end method

.method final startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0xed3cc31

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v3, v11, v4

    aput-object v8, v11, v6

    invoke-static {v9, v10, v4, v7, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v8, "ActivityTaskManager"

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Going to pause when pause is already pending for "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    const-string v5, "Trying to pause when nothing is resumed"

    invoke-static {v8, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_3
    return v4

    :cond_4
    if-ne v3, v2, :cond_5

    const-string v5, "Trying to pause activity that is in process of being resumed"

    invoke-static {v8, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v8, :cond_6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x390b96d7

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v9, v10, v4, v7, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-object v3, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v9, "startPausingLocked"

    invoke-virtual {v3, v8, v9}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->touchActiveTime()V

    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_a

    const-string v10, "shouldAutoPipWhilePausing"

    invoke-virtual {v3, v10, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v11}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    if-nez v10, :cond_a

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v11, v11, 0x4000

    if-eqz v11, :cond_9

    move v11, v6

    goto :goto_0

    :cond_9
    move v11, v4

    :goto_0
    move v8, v11

    :cond_a
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v9, :cond_c

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v10, v3, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v10

    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v11, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move v12, v10

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x41a8563f

    const/16 v15, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v4

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v6

    invoke-static {v13, v14, v15, v7, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v5, p4

    goto :goto_2

    :cond_c
    move-object/from16 v5, p4

    invoke-virtual {v0, v3, v1, v8, v5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    goto :goto_2

    :cond_d
    move-object/from16 v5, p4

    iput-object v7, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v7, v0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    if-nez p2, :cond_e

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    :cond_e
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_12

    if-nez p2, :cond_f

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_3

    :cond_f
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x61575dd9

    move-object v12, v7

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v4, v7, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_3
    if-eqz v8, :cond_11

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    return v4

    :cond_11
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    iget-object v7, v0, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v0, v4}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return v6

    :cond_12
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_13

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x26ad4e02

    move-object v11, v7

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v6, v10, v4, v7, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    if-nez v2, :cond_14

    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_14
    return v4
.end method

.method supportsMultiWindow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v2

    return v2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_0

    :cond_0
    const/16 v3, -0x2710

    :goto_0
    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000003L

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "TaskFragment"

    :goto_1
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
