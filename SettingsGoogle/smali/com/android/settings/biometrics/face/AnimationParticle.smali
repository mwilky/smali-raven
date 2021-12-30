.class public Lcom/android/settings/biometrics/face/AnimationParticle;
.super Ljava/lang/Object;
.source "AnimationParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/AnimationParticle$Listener;
    }
.end annotation


# instance fields
.field private mAnimationState:I

.field private final mAssignedColor:I

.field private final mBorderWidth:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mCurrentAngle:F

.field private mCurrentSize:F

.field private final mErrorColor:I

.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mIndex:I

.field private mLastAnimationState:I

.field private final mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

.field private final mOffsetTimeSec:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingAdjustRate:F

.field private mRingCompletionTime:F

.field private mRotationSpeed:F

.field private mSweepAngle:F

.field private mSweepRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/AnimationParticle$Listener;Landroid/graphics/Rect;IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/biometrics/face/AnimationParticle$Listener;",
            "Landroid/graphics/Rect;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    iput-object p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p4, 0x7f0a00b1

    invoke-virtual {p3, p4, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    iput p5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mIndex:I

    iput-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    int-to-float p1, p5

    int-to-float p2, p6

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p1, p2

    const p4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p3, p4

    iput p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    const/high16 p3, 0x3fa00000    # 1.25f

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mOffsetTimeSec:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p5, p2

    invoke-interface {p7, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRing(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mBorderWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private updateDot(JJ)V
    .locals 6

    long-to-float p3, p3

    const p4, 0x3a83126f    # 0.001f

    mul-float/2addr p3, p4

    long-to-float p1, p1

    mul-float/2addr p1, p4

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const p4, 0x3f4ccccd    # 0.8f

    div-float v0, p2, p4

    iget v1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-lez v5, :cond_1

    mul-float/2addr v2, p3

    sub-float/2addr p2, v2

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    cmpg-float p4, p2, p4

    if-gez p4, :cond_2

    mul-float/2addr v2, p3

    add-float/2addr p2, v2

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    const/high16 p2, 0x40a00000    # 5.0f

    const p3, 0x40c90fdb

    mul-float/2addr p1, p3

    iget p3, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mOffsetTimeSec:F

    add-float/2addr p1, p3

    float-to-double p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    double-to-float p1, p3

    mul-float/2addr p1, p2

    const/high16 p2, 0x41700000    # 15.0f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    const/high16 p2, 0x41200000    # 10.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAssignedColor:I

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/high16 p3, 0x3f800000    # 1.0f

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p1, p4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mLastAnimationState:I

    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mEvaluator:Landroid/animation/ArgbEvaluator;

    sub-float/2addr p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mErrorColor:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p1, p4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private updateRing(JJ)V
    .locals 4

    long-to-float p3, p3

    const p4, 0x3a83126f    # 0.001f

    mul-float/2addr p3, p4

    long-to-float p1, p1

    mul-float/2addr p1, p4

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    const/4 p4, 0x0

    cmpl-float p2, p2, p4

    const/high16 v0, 0x41700000    # 15.0f

    const v1, 0x3dcccccd    # 0.1f

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    sub-float p2, v0, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingCompletionTime:F

    cmpl-float p2, p2, p4

    if-nez p2, :cond_0

    add-float p2, p1, v1

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingCompletionTime:F

    :cond_0
    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    const p4, 0x3f4ccccd    # 0.8f

    cmpg-float p4, p2, p4

    if-gez p4, :cond_1

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    :cond_1
    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRotationSpeed:F

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentAngle:F

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    const/high16 p4, 0x43b40000    # 360.0f

    cmpg-float v2, p2, p4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    mul-float v3, v2, p3

    add-float/2addr p2, v3

    iput p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    :cond_2
    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3

    iput p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepAngle:F

    iget-object p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    iget p4, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mIndex:I

    invoke-interface {p2, p4}, Lcom/android/settings/biometrics/face/AnimationParticle$Listener;->onRingCompleted(I)V

    :cond_3
    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    iget p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget p2, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mRingAdjustRate:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_4
    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mCurrentSize:F

    iget-object p0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->drawDot(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->drawRing(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setAsPrimary()V
    .locals 1

    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mSweepRate:F

    return-void
.end method

.method public update(JJ)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateDot(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateRing(JJ)V

    :goto_0
    return-void
.end method

.method public updateState(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    if-ne v0, p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already in state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnimationParticle"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    iput v0, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mLastAnimationState:I

    iput p1, p0, Lcom/android/settings/biometrics/face/AnimationParticle;->mAnimationState:I

    return-void
.end method
