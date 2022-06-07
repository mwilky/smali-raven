.class public Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;
.super Lcom/android/systemui/biometrics/UdfpsDrawable;
.source "UdfpsEnrollDrawable.java"


# instance fields
.field private final mBlueFill:Landroid/graphics/Paint;

.field mCurrentScale:F

.field mCurrentX:F

.field mCurrentY:F

.field private mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

.field private final mEdgeHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mEdgeHintPaint:Landroid/graphics/Paint;

.field private final mEdgeHintPulseListener:Landroid/animation/Animator$AnimatorListener;

.field private mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

.field private final mEdgeHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mHandler:Landroid/os/Handler;

.field private final mHintColorFaded:I

.field private final mHintColorHighlight:I

.field private final mHintMaxWidthPx:F

.field private final mHintPaddingPx:F

.field private final mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field private final mSensorOutlinePaint:Landroid/graphics/Paint;

.field private mSensorRect:Landroid/graphics/RectF;

.field private mShouldShowEdgeHint:Z

.field private mShouldShowTipHint:Z

.field private mShowingNewUdfpsEnroll:Z

.field private final mTargetAnimListener:Landroid/animation/Animator$AnimatorListener;

.field mTargetAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTipHintColorAnimator:Landroid/animation/ValueAnimator;

.field private final mTipHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mTipHintPaint:Landroid/graphics/Paint;

.field private final mTipHintPulseListener:Landroid/animation/Animator$AnimatorListener;

.field private mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

.field private final mTipHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$ANXQpPhGnFWry-8ifcAtdNzcP5s(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$new$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9GbiXuwyLls5YtLOC_bAFo-s4c(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$new$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J7KVXdXwmlpYkk-dC2ACG_D3jcE(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LVsKBv1AgC2Wv_mSIQ2cI_Vpi-s(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXe0yGdiTlXy2UhcmlB9XGsLTCM(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQMrr6pFGOpSSkIN8FauyR1IIP4(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nY1AiwPYDcEB4EJ1lBbiMRhEDu4(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->lambda$onEnrollmentProgress$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->udfps_moving_target_fill:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$drawable;->ic_kg_fingerprint:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$color;->udfps_enroll_icon:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintColorFaded:I

    sget v3, Lcom/android/systemui/R$color;->udfps_enroll_progress:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintColorHighlight:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p1, v3}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintMaxWidthPx:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/android/systemui/biometrics/Utils;->dpToPixels(Landroid/content/Context;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintPaddingPx:F

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$2;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPulseListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$3;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPulseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110161

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintColorFaded:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private isEdgeHintVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTipHintVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private startEdgeHintPulseAnimation()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintColorHighlight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xe9

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPulseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startTipHintPulseAnimation()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintColorHighlight:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xe9

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPulseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintColorAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateEdgeHintVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isEdgeEnrollmentStage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    if-ne v3, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowEdgeHint:Z

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintMaxWidthPx:F

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    aput v5, v4, v2

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->startEdgeHintPulseAnimation()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method private updateTipHintVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isTipEnrollmentStage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    if-ne v3, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShouldShowTipHint:Z

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintMaxWidthPx:F

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    aput v5, v4, v2

    aput v3, v4, v1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe9

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->startTipHintPulseAnimation()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsDrawable;->isIlluminationShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mFingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mShowingNewUdfpsEnroll:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->isTipHintVisible()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->isEdgeHintVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mHintPaddingPx:F

    add-float/2addr v3, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->isTipHintVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v5, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v6, v1, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v7, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v8, v1, v0

    const/high16 v9, -0x3e600000    # -20.0f

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTipHintPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->isEdgeHintVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v5, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v6, v1, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v7, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v8, v1, v0

    const/high16 v9, -0x3e600000    # -20.0f

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    const/high16 v1, 0x43340000    # 180.0f

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v5, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v6, v1, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v7, v1, v3

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v8, v1, v0

    iget-object v12, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEdgeHintPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method onEnrollmentProgress(II)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentX:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, p2, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput v0, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mCurrentY:F

    aput v4, v2, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    aput v4, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_4

    move p1, p2

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    if-eqz p1, :cond_5

    const-wide/16 v4, 0x258

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x320

    :goto_2
    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object v2, v5, p2

    aput-object p1, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mTargetAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateTipHintVisibility()V

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->updateEdgeHintVisibility()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x40490fdb    # (float)Math.PI
    .end array-data
.end method

.method public onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mSensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mBlueFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method

.method protected updateFingerprintIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/UdfpsDrawable;->updateFingerprintIconBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mMovingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
