.class public final Lcom/android/systemui/biometrics/AuthRippleView;
.super Landroid/view/View;
.source "AuthRippleView.kt"


# instance fields
.field private alphaInDuration:J

.field private aodDwellAlpha:F

.field private aodDwellAlphaDuration:J

.field private aodDwellExpandDuration:J

.field private final aodDwellPulseDuration:J

.field private final dwellAlpha:F

.field private final dwellAlphaDuration:J

.field private final dwellExpandDuration:J

.field private final dwellPulseDuration:J

.field private dwellPulseOutAnimator:Landroid/animation/Animator;

.field private origin:Landroid/graphics/PointF;

.field private radius:F

.field private retractAnimator:Landroid/animation/Animator;

.field private final retractDuration:J

.field private final retractInterpolator:Landroid/view/animation/PathInterpolator;

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

.field private unlockedRippleInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3d4ccccd    # 0.05f

    const v0, 0x3f6e147b    # 0.93f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractInterpolator:Landroid/view/animation/PathInterpolator;

    const-wide/16 p1, 0x32

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseDuration:J

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellAlphaDuration:J

    iput v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellAlpha:F

    const-wide/16 v0, 0x4b0

    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellExpandDuration:J

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellPulseDuration:J

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellAlphaDuration:J

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellAlpha:F

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellExpandDuration:J

    const-wide/16 p1, 0x190

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    new-instance p1, Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/charging/RippleShader;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setSparkleStrength(F)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic access$getDwellPulseOutAnimator$p(Lcom/android/systemui/biometrics/AuthRippleView;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getRetractAnimator$p(Lcom/android/systemui/biometrics/AuthRippleView;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getRippleShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/RippleShader;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    return-object p0
.end method

.method public static final synthetic access$setUnlockedRippleInProgress$p(Lcom/android/systemui/biometrics/AuthRippleView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleInProgress:Z

    return-void
.end method

.method private final setOrigin(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setOrigin(Landroid/graphics/PointF;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    return-void
.end method

.method private final setRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setRadius(F)V

    iput p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->radius:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    sub-float v2, v0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->radius:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->origin:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final resetRippleAlpha()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/charging/RippleShader;->getColor()I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    return-void
.end method

.method public final retractRipple()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$retractRippleAnimator$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$retractRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractDuration:J

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$retractAlphaAnimator$1$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$retractAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleView$retractRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractAnimator:Landroid/animation/Animator;

    :cond_3
    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public final setAlphaInDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->alphaInDuration:J

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleView;->resetRippleAlpha()V

    return-void
.end method

.method public final setSensorLocation(Landroid/graphics/PointF;)V
    .locals 4

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView;->setOrigin(Landroid/graphics/PointF;)V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    const/4 p1, 0x2

    aput v2, v1, p1

    invoke-static {v0, v1}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView;->setRadius(F)V

    return-void
.end method

.method public final startDwellRipple(FFFZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleInProgress:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->radius:F

    div-float/2addr p1, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    div-float/2addr p2, v0

    div-float/2addr p2, v1

    div-float/2addr p3, v0

    div-float/2addr p3, v1

    if-eqz p4, :cond_2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellAlpha:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellAlpha:F

    :goto_1
    const/16 v1, 0xff

    int-to-float v2, v1

    mul-float v3, v2, v0

    float-to-int v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    add-float/2addr v0, v4

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput p1, v2, v4

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_3

    iget-wide v6, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellPulseDuration:J

    goto :goto_2

    :cond_3
    iget-wide v6, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseDuration:J

    :goto_2
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v1, [I

    aput v4, v6, v4

    aput v3, v6, p1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_4

    iget-wide v8, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellAlphaDuration:J

    goto :goto_3

    :cond_4
    iget-wide v8, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellAlphaDuration:J

    :goto_3
    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutAlphaAnimator$1$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v8, v1, [F

    aput p2, v8, v4

    aput p3, v8, p1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_5

    iget-wide v8, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellExpandDuration:J

    goto :goto_4

    :cond_5
    iget-wide v8, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellExpandDuration:J

    :goto_4
    invoke-virtual {p2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p3, v1, [I

    aput v3, p3, v4

    aput v0, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_6

    iget-wide v7, p0, Lcom/android/systemui/biometrics/AuthRippleView;->aodDwellExpandDuration:J

    goto :goto_5

    :cond_6
    iget-wide v7, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellExpandDuration:J

    :goto_5
    invoke-virtual {p3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellAlphaAnimator$1$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellAlphaAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v2, v0, v4

    aput-object v6, v0, p1

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object p2, v2, v4

    aput-object p3, v2, p1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v1, [Landroid/animation/Animator;

    aput-object p4, p3, v4

    aput-object v0, p3, p1

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    :cond_7
    :goto_6
    return-void
.end method

.method public final startUnlockedRipple(Ljava/lang/Runnable;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->alphaInDuration:J

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/charging/RippleShader;->getProgress()F

    move-result v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->retractAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_6
    :goto_3
    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v0, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x5fd

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$rippleAnimator$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$rippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$alphaInAnimator$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$alphaInAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v4, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$animatorSet$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$animatorSet$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
