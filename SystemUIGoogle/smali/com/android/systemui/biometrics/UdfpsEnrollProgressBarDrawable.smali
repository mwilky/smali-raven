.class public Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsEnrollProgressBarDrawable.java"


# instance fields
.field private mAfterFirstTouch:Z

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mCheckmarkAnimator:Landroid/animation/ValueAnimator;

.field private final mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

.field private mCheckmarkScale:F

.field private final mCheckmarkUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mComplete:Z

.field private mFillColorAnimator:Landroid/animation/ValueAnimator;

.field private final mFillColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mHelpColor:I

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private final mProgressColor:I

.field private final mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mRemainingSteps:I

.field private mShowingHelp:Z

.field private final mStrokeWidthPx:F

.field private mTotalSteps:I


# direct methods
.method public static synthetic $r8$lambda$QuF4aU4rKy4Seup1XvknLQvv9os(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUH1NyJyx0vTHQnAiayq_xvF0nk(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->lambda$new$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIik3M3fPGv3_LFfEy5XpHpHGoA(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mShowingHelp:Z

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sget v1, Lcom/android/systemui/R$color;->udfps_enroll_progress:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    sget v2, Lcom/android/systemui/R$color;->udfps_enroll_progress_help:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    sget v2, Lcom/android/systemui/R$drawable;->udfps_enroll_checkmark:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v3, Lcom/android/systemui/R$color;->udfps_moving_target_fill:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private rollBackCompletionAnimation()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v3, v1

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    aput v5, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startCompletionAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mComplete:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateFillColor(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mShowingHelp:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mShowingHelp:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mHelpColor:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressColor:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateProgress(II)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mRemainingSteps:I

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    aput v3, v1, v0

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->startCompletionAnimation()V

    goto :goto_1

    :cond_4
    if-lez p1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->rollBackCompletionAnimation()V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateState(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateProgress(II)V

    invoke-direct {p0, p3}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateFillColor(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    const/4 v11, 0x0

    cmpl-float v2, v2, v11

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    const/4 v7, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgress:F

    mul-float v8, v3, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mStrokeWidthPx:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkScale:F

    mul-float/2addr v4, v1

    sub-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mCheckmarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onEnrollmentHelp(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    return-void
.end method

.method onEnrollmentProgress(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mAfterFirstTouch:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    return-void
.end method

.method onLastStepAcquired()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IIZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
