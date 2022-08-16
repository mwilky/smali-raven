.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->ICON_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    int-to-long v1, v1

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    const-wide/16 v4, 0x0

    long-to-float v4, v4

    sub-float/2addr v3, v4

    long-to-float v1, v1

    div-float/2addr v3, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v3}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v4}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_0

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    sub-float v6, v2, v0

    mul-float/2addr v6, v5

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    if-eqz v4, :cond_1

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDelay:I

    int-to-long v3, v0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    int-to-long v5, v0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    long-to-float v0, v3

    sub-float/2addr p1, v0

    long-to-float v0, v5

    div-float/2addr p1, v0

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRadialVanishAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mInitRadius:I

    int-to-float v5, v4

    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mFinishRadius:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mShiftUpAnimation:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;

    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->SHIFT_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mFromYDelta:F

    iget v2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mToYDelta:F

    invoke-static {v2, v0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object p1, p1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v1, v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_5
    :goto_1
    return-void
.end method
