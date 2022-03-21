.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,539:1\n1245#2,2:540\n1245#2,2:542\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n*L\n353#1,2:540\n365#1,2:542\n*E\n"
.end annotation


# instance fields
.field private animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field private final invertMatrix:Landroid/graphics/Matrix;

.field private final launchContainer:Landroid/view/ViewGroup;

.field private final matrix:Landroid/graphics/Matrix;

.field private onTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field private timedOut:Z

.field private final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private windowCrop:Landroid/graphics/Rect;

.field private windowCropF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p2}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    new-instance p2, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V

    return-void
.end method

.method public static final synthetic access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    return-void
.end method

.method public static final synthetic access$getAnimation$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/LaunchAnimator$Animation;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-object p0
.end method

.method public static final synthetic access$invoke(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static final synthetic access$onAnimationTimedOut(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationTimedOut()V

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V
    .locals 12

    sget-object v7, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    sget-object v8, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getANIMATION_DELAY_NAV_FADE_IN$cp()J

    move-result-wide v3

    const-wide/16 v5, 0x85

    move-object v0, v7

    move-object v1, v8

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v0

    new-instance v9, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v9, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v2, :cond_0

    iget-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v2

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {p3, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result p2

    invoke-virtual {p1, p3, v11, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_IN_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v9, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x85

    move-object v0, v7

    move-object v1, v8

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_OUT_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v9, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v10, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p2

    aput-object p2, p1, v11

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private final applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 8

    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int v3, v1, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v5, v6

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-int/2addr v2, v1

    sub-int/2addr v6, v5

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v6

    div-float/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1, v3, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    mul-float v2, v5, v1

    sub-float/2addr v2, v5

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterX()F

    move-result v5

    sub-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCropF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    div-float/2addr p2, v1

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private final invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final onAnimationTimedOut()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void
.end method

.method private final removeTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    :cond_0
    move-object v5, v2

    goto :goto_2

    :cond_1
    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v9, v0, v6

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v10, :cond_2

    move v10, v8

    goto :goto_1

    :cond_2
    move v10, v4

    :goto_1
    if-eqz v10, :cond_3

    move-object v5, v9

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_2
    if-nez v5, :cond_5

    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Aborting the animation as no window is opening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {v7, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :goto_3
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void

    :cond_5
    if-nez v1, :cond_7

    :cond_6
    move-object v6, v2

    goto :goto_6

    :cond_7
    array-length v0, v1

    move v6, v4

    :goto_4
    if-ge v6, v0, :cond_6

    aget-object v9, v1, v6

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v11, 0x7e3

    if-ne v10, v11, :cond_8

    move v10, v8

    goto :goto_5

    :cond_8
    move v10, v4

    :goto_5
    if-eqz v10, :cond_9

    move-object v6, v9

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :goto_6
    iget-object v0, v5, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    new-instance v4, Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget v13, v0, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x30

    const/16 v17, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->getCallback()Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v1, "window.taskInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->getBackgroundColor(Landroid/app/TaskInfo;)I

    move-result v9

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getLaunchAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;

    move-result-object v0

    iget-object v1, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v4, v0}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTopCornerRadius(F)V

    invoke-virtual {v4, v0}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottomCornerRadius(F)V

    iget-object v1, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    new-instance v10, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;

    move-object v0, v10

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getLaunchAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11, v9, v8}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animation:Lcom/android/systemui/animation/LaunchAnimator$Animation;

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Remote animation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    iget-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz p1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invoke(Landroid/view/IRemoteAnimationFinishedCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;

    invoke-direct {p3, p0, p2, p4, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postTimeout$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
