.class public final Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;
.super Ljava/lang/Object;
.source "LegacySplitScreenTransitions.java"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mAnimatingTransition:Landroid/os/IBinder;

.field public final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mDismissFromSnap:Z

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field public mPendingDismiss:Landroid/os/IBinder;

.field public mPendingEnter:Landroid/os/IBinder;

.field public final mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mDismissFromSnap:Z

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    :cond_0
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v5, v5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v4, v5, :cond_4

    :cond_1
    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    iget-boolean v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v5, v5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-static {v1, v4, v5, v3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildDismissSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;Z)V

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    iget-object p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_6
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_a

    if-eq p2, v3, :cond_8

    if-ne p2, v2, :cond_a

    :cond_8
    iget-object p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p2

    if-ne p2, v2, :cond_a

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v0, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mRotateSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->buildEnterSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mHomeStackResizable:Z

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_3
    return-object v1
.end method

.method public final onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v1, v2, :cond_1

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->onDismissSplit()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mDismissFromSnap:Z

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v7, v0, :cond_7

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-eq v7, v0, :cond_7

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->isDividerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return v10

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    if-eq v2, v12, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-eq v2, v13, :cond_4

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-ne v2, v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-eq v2, v12, :cond_3

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v9, :cond_5

    :cond_3
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return v10

    :cond_7
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v7, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move v14, v0

    :goto_3
    const/4 v0, 0x6

    if-ltz v14, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-ne v4, v0, :cond_b

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v8, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    :cond_8
    move-object/from16 v3, p2

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    if-ne v1, v12, :cond_9

    move v1, v13

    goto :goto_5

    :cond_9
    move v1, v10

    :goto_5
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v2, v7, :cond_a

    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mDismissFromSnap:Z

    if-eqz v2, :cond_a

    if-nez v1, :cond_a

    invoke-virtual {v0, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_a
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    neg-int v10, v10

    invoke-virtual {v0, v1, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    neg-int v10, v10

    invoke-virtual {v2, v1, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    new-array v1, v12, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v11, 0x1f4

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v11, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v2, v10, v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;

    move-object v0, v11

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v10

    move-object v3, v5

    move v10, v4

    move-object/from16 v4, v16

    move-object v9, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$2;

    invoke-direct {v0, v11}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_b
    move v10, v4

    move-object v9, v5

    :goto_6
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    :goto_7
    const/4 v1, 0x4

    :cond_d
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_e
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v7, v0, :cond_f

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v8, v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mListener:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v13

    invoke-virtual {v8, v9, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eq v10, v13, :cond_12

    const/4 v1, 0x3

    if-ne v10, v1, :cond_13

    :cond_12
    invoke-virtual {v6, v9, v13}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    goto :goto_7

    :cond_13
    if-nez v0, :cond_c

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq v10, v0, :cond_14

    if-ne v10, v1, :cond_d

    :cond_14
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v7, v0, :cond_15

    iget-boolean v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mDismissFromSnap:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {v8, v9, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v6, v9, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    :goto_9
    add-int/lit8 v14, v14, -0x1

    move v9, v1

    move v10, v2

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_3

    :cond_16
    move v2, v10

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v7, v1, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_a
    if-ltz v1, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    const/4 v4, 0x3

    goto :goto_b

    :cond_17
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-eq v1, v13, :cond_18

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_18

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_1a

    :cond_18
    move v10, v13

    goto :goto_c

    :cond_19
    const/4 v4, 0x3

    const/4 v5, 0x2

    :goto_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_1a
    move v10, v2

    :goto_c
    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mSplitScreen:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->update(Landroid/content/res/Configuration;)V

    if-eqz v10, :cond_1b

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureMinimizedSplit()V

    goto :goto_d

    :cond_1b
    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->ensureNormalSplit()V

    :cond_1c
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->onFinish()V

    return v13

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startExampleAnimation(Landroid/view/SurfaceControl;Z)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v5, p2

    :goto_0
    sub-float/2addr v0, v5

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v1, 0x1

    aput v5, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda3;

    invoke-direct {v1, v3, p1, v0, v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda4;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$1;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda4;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
