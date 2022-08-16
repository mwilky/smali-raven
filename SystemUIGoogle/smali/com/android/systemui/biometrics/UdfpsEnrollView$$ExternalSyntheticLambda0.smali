.class public final synthetic Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsEnrollView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsEnrollView;

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsEnrollView;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v4}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    iget-object p0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v2, v5

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    goto/16 :goto_3

    :cond_3
    :goto_0
    new-array v6, v1, [F

    aput v2, v6, v4

    aput v5, v6, v3

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v1, [F

    iget v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    aput v6, v5, v4

    iget v6, v0, Landroid/graphics/PointF;->y:F

    aput v6, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v6, v0, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    const-wide/16 v6, 0x258

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x320

    :goto_2
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimListener:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$1;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v4

    aput-object v5, v7, v3

    aput-object v0, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz v0, :cond_9

    iget v2, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    iget v6, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v6, v5, :cond_7

    goto :goto_4

    :cond_7
    sub-int v5, v2, v6

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v0

    if-lt v5, v0, :cond_8

    move v0, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v4

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    if-ne v0, v3, :cond_a

    goto :goto_7

    :cond_a
    iput-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    :goto_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40490fdb    # (float)Math.PI
    .end array-data
.end method
