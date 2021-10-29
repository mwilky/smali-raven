.class public Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;
.super Ljava/lang/Object;
.source "UdfpsEnrollProgressBarSegment.java"


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mIsFilledOrFilling:Z

.field private final mMaxOverSweepAngle:F

.field private mOverSweepAngle:F

.field private final mOverSweepAnimationRunnable:Ljava/lang/Runnable;

.field private mOverSweepAnimator:Landroid/animation/ValueAnimator;

.field private mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

.field private final mOverSweepUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mProgress:F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mStartAngle:F

.field private final mStrokeWidthPx:F

.field private final mSweepAngle:F


# direct methods
.method public static synthetic $r8$lambda$-pDEuKJiPKC5u2tz9Gyq-dMkcy4(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6h5C2RwG4QOaPZO7GZ7VKJ90f-g(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JAqDNidZjpn1sSHchgyYW1jfPIw(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;FFFLjava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mIsFilledOrFilling:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mInvalidateRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mStartAngle:F

    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mSweepAngle:F

    iput p5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mMaxOverSweepAngle:F

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mStrokeWidthPx:F

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p4, Lcom/android/systemui/R$color;->white_disabled:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-array p5, p4, [I

    const p6, 0x1010429

    aput p6, p5, v0

    invoke-virtual {p1, p5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p5

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p6

    invoke-virtual {p5, v0, p6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p6

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p5, Landroid/util/TypedValue;

    invoke-direct {p5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p6

    const v0, 0x1010033

    invoke-virtual {p6, v0, p5, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p5}, Landroid/util/TypedValue;->getFloat()F

    move-result p5

    const/high16 p6, 0x437f0000    # 255.0f

    mul-float/2addr p5, p6

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p2, Lcom/android/systemui/R$color;->udfps_enroll_progress:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mMaxOverSweepAngle:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateProgress(FJ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProgress: progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsProgressBarSegment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateProgress skipped: progress == mProgress"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mIsFilledOrFilling:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public cancelCompletionAnimation()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCompletionAnimation: mProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mOverSweepAngle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsProgressBarSegment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mMaxOverSweepAngle:F

    div-float v2, v0, v2

    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "draw: mProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsProgressBarSegment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mStrokeWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget v7, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mStartAngle:F

    iget v8, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mSweepAngle:F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v5, v3, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v6, v2, v0

    iget v7, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mStartAngle:F

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mSweepAngle:F

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    add-float v8, v2, v1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public isFilledOrFilling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mIsFilledOrFilling:Z

    return p0
.end method

.method public startCompletionAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const-string v1, ", mOverSweepAngle = "

    const-string v2, "UdfpsProgressBarSegment"

    if-nez v0, :cond_3

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mMaxOverSweepAngle:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCompletionAnimation: mProgress = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepReverseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const-wide/16 v2, 0xc8

    if-gez v0, :cond_2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(FJ)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCompletionAnimation skipped: hasCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->mOverSweepAngle:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateProgress(F)V
    .locals 2

    const-wide/16 v0, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(FJ)V

    return-void
.end method
