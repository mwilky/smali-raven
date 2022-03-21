.class public Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;
.super Lcom/google/android/setupdesign/view/Illustration;
.source "ColumbusEnrollingIllustration.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mGestureValue:F

.field private final mInset:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$gRqjQnfYjYqFBsZrAOYW667mdrY(Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->lambda$setGestureCount$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/view/Illustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mGestureValue:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0a0073

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mInset:I

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mGestureValue:F

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private synthetic lambda$setGestureCount$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mGestureValue:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mInset:I

    int-to-float v2, v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mInset:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mInset:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mGestureValue:F

    const/high16 v1, 0x43340000    # 180.0f

    mul-float v7, v0, v1

    iget-object v9, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method setGestureCount(ILjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mGestureValue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration$1;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusEnrollingIllustration;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
