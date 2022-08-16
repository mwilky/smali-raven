.class public final Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;
.super Ljava/lang/Object;
.source "StageTaskUnfoldController.java"

# interfaces
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;
    }
.end annotation


# static fields
.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public final mAnimationContextByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

.field public mBothStagesVisible:Z

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mExpandedTaskBarHeight:I

.field public final mStageBounds:Landroid/graphics/Rect;

.field public mTaskbarInsetsSource:Landroid/view/InsetsSource;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

.field public final mWindowCornerRadiusPx:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mStageBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mWindowCornerRadiusPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050299

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mExpandedTaskBarHeight:I

    return-void
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update$1()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onLayoutChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mStageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;

    iput p2, v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update$1()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStateChangeFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->resetTransformations()V

    return-void
.end method

.method public final onStateChangeProgress(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mBothStagesVisible:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->ensureBackground(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-interface {v4, p1, v5, v6}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mWindowCornerRadiusPx:F

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final resetTransformations()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
