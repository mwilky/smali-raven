.class Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.super Ljava/lang/Object;
.source "SplitScreenTransitions.java"


# instance fields
.field private mAnimatingTransition:Landroid/os/IBinder;

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mOnFinish:Ljava/lang/Runnable;

.field mPendingDismiss:Landroid/os/IBinder;

.field mPendingEnter:Landroid/os/IBinder;

.field private mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$5r3nN0-aRvuq8i_xsLICb1ldKQY(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$new$0(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K7f0W5eW3rf4ETbr4KyTb7F86hI(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7vtvqJ5Qux3k4B2-RAB7gPJb9A(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibiAD9R4rhpB8AGK85QVtnxAtcE(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mx94UPIqB_sGNXHQe_UIDVN_YyI(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$6(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8OMv1JB1mm-CAXK4762zGyZjtQ(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleResizeAnimation$4(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBJz70Jb7fWfoaH7HWz3ujB1fA0(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->lambda$startExampleAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "finish transactions not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$startExampleAnimation$1(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr p2, v0

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startExampleAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish()V

    return-void
.end method

.method private synthetic lambda$startExampleAnimation$3(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startExampleResizeAnimation$4(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p4

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v0, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startExampleResizeAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish()V

    return-void
.end method

.method private synthetic lambda$startExampleResizeAnimation$6(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_b

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v5, 0x6

    const/16 v6, 0xd

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p3, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p3, v3, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {p3, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v5, v3, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    neg-int v8, v8

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    neg-int v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    neg-int v8, v8

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    neg-int v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, v3, v5, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startExampleResizeAnimation(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne p1, v5, :cond_5

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {p5, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p3, v3, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/Transitions;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eq v4, v1, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    goto :goto_1

    :cond_7
    if-nez v2, :cond_a

    const/4 v2, 0x2

    if-eq v4, v2, :cond_8

    const/4 v2, 0x4

    if-ne v4, v2, :cond_a

    :cond_8
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    if-ne v2, v6, :cond_9

    const/4 v2, 0x0

    invoke-virtual {p3, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startExampleAnimation(Landroid/view/SurfaceControl;Z)V

    :cond_a
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish()V

    return-void
.end method

.method private startExampleAnimation(Landroid/view/SurfaceControl;Z)V
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

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

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

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, p1, v0, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startExampleResizeAnimation(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    invoke-direct {v1, v3, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v0, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    if-ne v0, v2, :cond_2

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    if-ne v0, v2, :cond_3

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    return-void
.end method

.method playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .locals 6

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    return-void
.end method

.method startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->setTransition(Landroid/os/IBinder;)V

    :cond_1
    return-object p1
.end method

.method startSnapToDismiss(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Landroid/os/IBinder;

    return-object p1
.end method
