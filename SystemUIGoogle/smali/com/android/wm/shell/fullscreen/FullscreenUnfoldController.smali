.class public final Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;
.super Ljava/lang/Object;
.source "FullscreenUnfoldController.java"

# interfaces
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;
    }
.end annotation


# static fields
.field public static final FLOAT_9:[F

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field public final mAnimationContextByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mExpandedTaskBarHeight:F

.field public final mProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

.field public mTaskbarInsetsSource:Landroid/view/InsetsSource;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mWindowCornerRadiusPx:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->FLOAT_9:[F

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p5, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mWindowCornerRadiusPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050299

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mExpandedTaskBarHeight:F

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    return-void
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 3

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    iget-object v2, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mTaskInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStateChangeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->resetSurface(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final onStateChangeProgress(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->ensureBackground(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    iget-object v2, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v4, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-interface {v3, p1, v4, v5}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const v2, 0x3f70a3d7    # 0.94f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iget-object v3, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    iget-object v5, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mMatrix:Landroid/graphics/Matrix;

    sget-object v5, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->FLOAT_9:[F

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mWindowCornerRadiusPx:F

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->resetSurface(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mBackgroundController:Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;->removeBackground(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final resetSurface(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;)V
    .locals 8

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object p1, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
