.class final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;,
        Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field private final mCanHostHomeTask:Z

.field private mColorBackgroundLayer:Landroid/view/SurfaceControl;

.field private mColorLayerCounter:I

.field final mCreatedByOrganizer:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field mLastFocusedRootTask:Lcom/android/server/wm/Task;

.field private mLastLeafTaskToFrontId:I

.field private mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

.field private final mLaunchRootTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

.field private mRemoved:Z

.field private mRootHomeTask:Lcom/android/server/wm/Task;

.field private mRootPinnedTask:Lcom/android/server/wm/Task;

.field private mRootRecentsTask:Lcom/android/server/wm/Task;

.field private mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

.field private mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private final mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpHomeChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpLayerForAnimationLayer:I

.field private mTmpLayerForSplitScreenDividerAnchor:I

.field private final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field private final mTmpNormalChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VlCsJqULLc5sYclwBX7VBWYipDs(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean p5, p0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    iput-boolean p6, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    return-void
.end method

.method private addChildTask(Lcom/android/server/wm/Task;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private adjustNormalRootTaskLayer(Lcom/android/server/wm/WindowContainer;I)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    move p2, v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 v0, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    move p2, v0

    :cond_3
    return p2
.end method

.method private adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;IZ)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {v3}, Lcom/android/server/wm/TaskDisplayArea;->childrenNeedZBoost()Z

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v4

    :goto_1
    nop

    if-nez v4, :cond_2

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    if-eqz p4, :cond_1

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalRootTaskLayer(Lcom/android/server/wm/WindowContainer;I)I

    move-result p3

    goto :goto_2

    :cond_1
    move p3, v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v5, v1}, Landroid/util/IntArray;->add(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    if-eqz p4, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalRootTaskLayer(Lcom/android/server/wm/WindowContainer;I)I

    move-result p3

    goto :goto_4

    :cond_4
    move p3, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return p3
.end method

.method private childrenNeedZBoost()Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    return v1
.end method

.method private findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    if-ne v3, p1, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gt v4, v5, :cond_1

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private findMinPositionForRootTask(Lcom/android/server/wm/Task;)I
    .locals 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private findPositionForRootTask(ILcom/android/server/wm/Task;Z)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v1

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    move v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v2, p1, :cond_3

    if-nez p3, :cond_2

    if-ge v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    return v2
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    goto :goto_6

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    return v0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    const/4 v0, 0x0

    return v0
.end method

.method private getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 2

    sget-object v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    :cond_1
    return-object v0
.end method

.method private getPriority(Lcom/android/server/wm/WindowContainer;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeDream()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    return v2

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method static getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLargeEnoughForMultiWindow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isWindowingModeSupported(IZZZZI)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    if-ne p0, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x6

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x3

    if-eq p0, v2, :cond_6

    const/4 v2, 0x4

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    const/4 v2, 0x5

    if-ne p0, v2, :cond_4

    return v1

    :cond_4
    if-nez p4, :cond_5

    const/4 v2, 0x2

    if-ne p0, v2, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    invoke-static {p5}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v0
.end method

.method static synthetic lambda$childrenNeedZBoost$4([ZLcom/android/server/wm/Task;)V
    .locals 3

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->needsZBoost()Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$10(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method static synthetic lambda$getBottomMostVisibleRootTask$9(Lcom/android/server/wm/Task;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static synthetic lambda$getRootTask$0(IILcom/android/server/wm/Task;)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getRootTaskCount$8([ILcom/android/server/wm/Task;)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    return-void
.end method

.method static synthetic lambda$getTopRootTask$1(Lcom/android/server/wm/Task;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getVisibleTasks$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$pauseBackTasks$6(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V
    .locals 9

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x17511224

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v4, v8, v2

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v1, "pauseBackTasks"

    invoke-virtual {p2, v3, p0, v1}, Lcom/android/server/wm/Task;->startPausingLocked(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p1, v3

    add-int/2addr v1, v2

    aput v1, p1, v3

    :cond_2
    return-void
.end method

.method private moveSplitScreenTasksToFullScreen()V
    .locals 7

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    nop

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v5, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private positionChildTaskAt(ILcom/android/server/wm/Task;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-gtz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring move of always-on-top root task="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to bottom"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v4, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 p3, 0x0

    :cond_4
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result v5

    invoke-super {p0, v5, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_5

    if-eqz v3, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v0, :cond_6

    const v6, 0x7fffffff

    goto :goto_2

    :cond_6
    const/high16 v6, -0x80000000

    :goto_2
    invoke-virtual {v2, v6, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_7
    invoke-virtual {p2, v0, v5}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne v1, p2, :cond_9

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v6, "positionChildAt"

    invoke-virtual {v2, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v4, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    :cond_b
    return-void
.end method

.method private removeChildTask(Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskRemoved(Lcom/android/server/wm/Task;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChildTask(Lcom/android/server/wm/Task;I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only add Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " rootTask="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootTaskReferenceIfNeeded: root home task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootTaskReferenceIfNeeded: root recents task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_7

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRootTaskReferenceIfNeeded: root pinned task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_9

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRootTaskReferenceIfNeeded: root split screen primary task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    :goto_1
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    return v1
.end method

.method asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    return-object p0
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    add-int/lit8 v1, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canHostHomeTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canSpecifyOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mIgnoreOrientationRequest:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearBackgroundColor()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    :cond_0
    return-void
.end method

.method clearPreferredTopFocusableRootTask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method createRootTask(IIZ)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 2

    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getName()Ljava/lang/String;

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

    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mPreferredTopFocusableRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastFocusedRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLaunchRootTasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v1, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    :try_start_0
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :goto_0
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method getFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v2
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method getLastFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    and-int/lit16 v0, p5, 0x1000

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_3

    iget-object v1, v2, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_3
    nop

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    return-object v2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz p2, :cond_2

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v1, v4

    nop

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v1

    :cond_6
    return-object v4

    :cond_7
    return-object v1
.end method

.method getNextRootTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getOrCreateRootTask(IIZ)Lcom/android/server/wm/Task;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;
    .locals 8

    if-eqz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    :goto_0
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p4, :cond_a

    move-object v0, p4

    if-eqz p3, :cond_3

    const v1, 0x7fffffff

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p6

    move-object v6, p5

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eq v3, v2, :cond_8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-ne v3, p0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_8
    :goto_2
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-eq v3, p1, :cond_9

    invoke-virtual {p4, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_9
    return-object v0

    :cond_a
    :goto_3
    nop

    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/wm/Task$Builder;->setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/android/server/wm/Task$Builder;->setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;
    .locals 14

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    :cond_1
    :goto_0
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p3

    move/from16 v13, p7

    invoke-virtual {p0, v1, p1, v12, v13}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v1

    move-object v2, p0

    move v3, v1

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2
.end method

.method getOrientation(I)I
    .locals 13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mIgnoreOrientationRequest:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskDisplayArea;I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    move v3, v5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v5

    if-eq v5, v2, :cond_4

    return v5

    :cond_4
    return v4

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_6

    return v4

    :cond_6
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v3

    const/4 v4, 0x2

    const/4 v7, 0x5

    if-eq v3, v2, :cond_8

    if-eq v3, v1, :cond_8

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_7

    int-to-long v1, v3

    iget-object v8, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v8

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x5253dbca

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v10, v11, v7, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v3

    :cond_8
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    int-to-long v1, v1

    iget-object v8, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v8

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x61c711e7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v10, v11, v7, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getRootHomeTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootRecentsTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootSplitScreenPrimaryTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootSplitScreenSecondaryTask()Lcom/android/server/wm/Task;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

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

.method getRootTask(II)Lcom/android/server/wm/Task;
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method protected getRootTaskCount()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    return-object p0
.end method

.method getTopRootTask()Lcom/android/server/wm/Task;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method hasPinnedTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isRootTaskVisible(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isSplitScreenModeActivated()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTaskDisplayArea()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isTopRootTask(Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    if-eqz v9, :cond_2

    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    invoke-virtual {v9, v0}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    if-ne v7, v5, :cond_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v10

    :goto_1
    move v1, v5

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    goto :goto_2

    :cond_3
    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    :goto_2
    if-eqz v7, :cond_4

    move/from16 v1, p1

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v10, v11

    :goto_3
    return v10
.end method

.method public synthetic lambda$getOrientation$3$TaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-eq p2, p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrientation(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p3
.end method

.method public synthetic lambda$moveSplitScreenTasksToFullScreen$7$TaskDisplayArea(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$onParentChanged$5$TaskDisplayArea()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "colorBackgroundLayer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "animationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "boostedAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "homeAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    return-void
.end method

.method moveHomeRootTaskToFront(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_8

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-direct {v6, p1}, Lcom/android/server/wm/TaskDisplayArea;->getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    :goto_3
    if-eq v6, p1, :cond_7

    if-nez v6, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    goto :goto_4

    :cond_5
    move v7, v3

    :cond_6
    :goto_4
    invoke-virtual {v6, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    add-int/lit8 v0, v4, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_6
    return-void
.end method

.method moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 6

    if-eqz p2, :cond_4

    if-ne p2, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gt v1, v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    return-void
.end method

.method onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V
    .locals 2

    if-nez p2, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method onLeafTaskRemoved(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    :cond_0
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    :goto_0
    return-void
.end method

.method onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRootTaskRemoved(Lcom/android/server/wm/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_0
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/Task;)V
    .locals 5

    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveSplitScreenTasksToFullScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    return-void

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_4

    move-object v1, p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v2
.end method

.method pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    new-instance v3, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TaskDisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget v3, v1, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildTaskAt(ILcom/android/server/wm/Task;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only position Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/Task;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, p0, :cond_1

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "positionTaskBehindHome"

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    :goto_1
    return-void
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    if-eqz p3, :cond_0

    nop

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method remove()Lcom/android/server/wm/Task;
    .locals 15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    const/4 v5, 0x0

    move-object v9, v3

    move v10, v4

    move v11, v5

    :goto_0
    const/4 v12, 0x1

    if-ge v11, v10, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v3

    move-object v9, v3

    goto :goto_5

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v14

    if-nez v1, :cond_4

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v14, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v14, v2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-eqz v3, :cond_2

    nop

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    nop

    if-nez v3, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    const v5, 0x7fffffff

    invoke-virtual {v14, v4, v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    move-object v9, v14

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->finishAllActivitiesImmediately()V

    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int v3, v10, v3

    sub-int/2addr v11, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    move v10, v3

    :goto_5
    add-int/2addr v11, v12

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedRootTask()V

    invoke-virtual {v2, v9}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/Task;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v3, "display-removed"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_7
    :goto_6
    iput-boolean v12, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return-object v9
.end method

.method protected removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->removeChildTask(Lcom/android/server/wm/Task;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only remove Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeLaunchRootTask(Lcom/android/server/wm/Task;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeRootTask(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/Task;

    :cond_3
    :goto_0
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method setBackgroundColor(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    shr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    const/high16 v7, -0x80000000

    invoke-virtual {v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    const/4 v7, 0x3

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v2, v7, v5

    const/4 v5, 0x2

    aput v3, v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSurfaceWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSurfaceHeight()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorBackgroundLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    return-void
.end method

.method setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set non-adjacent root as launch adjacent flag root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch adjacent flag root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;-><init>(Lcom/android/server/wm/TaskDisplayArea$1;)V

    move-object v0, v1

    iput-object p1, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    :goto_0
    iput-object p3, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    iput-object p2, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method supportsActivityMinWidthHeightMultiWindow(II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    if-gtz p2, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-gt p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    iget v6, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-gt p2, v4, :cond_5

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    return v1
.end method

.method supportsNonResizableMultiWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_1

    nop

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v4, v1, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    return-object v2

    :cond_5
    return-object v0
.end method

.method unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v3, -0x1

    if-nez v0, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    :goto_1
    invoke-static {v1, v2, v4, v3, p2}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedRootTask(IIIILjava/lang/String;)V

    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    return p1
.end method
