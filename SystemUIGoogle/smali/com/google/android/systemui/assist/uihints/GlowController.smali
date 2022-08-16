.class public final Lcom/google/android/systemui/assist/uihints/GlowController;
.super Ljava/lang/Object;
.source "GlowController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$AudioInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    }
.end annotation


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mCardVisible:Z

.field public final mContext:Landroid/content/Context;

.field public mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field public final mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

.field public mGlowsY:I

.field public mGlowsYDestination:I

.field public mInvocationCompleting:Z

.field public mMedianLightness:F

.field public mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

.field public mVisibilityListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    iput v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    new-instance v2, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-direct {v2}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>()V

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    const p1, 0x7f0b02b8

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/GlowView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    invoke-virtual {p1, p2, p2, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p0

    invoke-virtual {p1, p2, p0, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    iget p0, p1, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    const p2, 0x3f0ccccd    # 0.55f

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p1, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowSizes()V

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final animateGlowTranslationY(I)V
    .locals 5

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x190

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    long-to-float v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v2, v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    goto :goto_2

    :cond_1
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsY:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/GlowController$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/uihints/GlowController$1;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget p1, p1, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getBlurRadius()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/GlowController;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget v0, p1, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iput v1, p1, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowSizes()V

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    :goto_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public final getBlurRadius()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07026a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070267

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getMaxTranslationY()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070264

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07026b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070268

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getMinTranslationY()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070265

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07026c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070269

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget-boolean v1, v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mIsListening:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    instance-of v4, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_1

    goto :goto_5

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    if-nez v1, :cond_2

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/HalfListening;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mMedianLightness:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->SHORT_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    :goto_3
    return-object p0

    :cond_5
    if-eqz v2, :cond_6

    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_DARK_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    goto :goto_4

    :cond_6
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->TALL_LIGHT_BACKGROUND:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    :goto_4
    return-object p0

    :cond_7
    :goto_5
    sget-object p0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    return-object p0
.end method

.method public final getTouchInsideRegion()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final maybeAnimateForSpeechConfidence()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    iget v0, v0, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v3, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowsYDestination:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMaxTranslationY()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    iget v3, v3, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(I)V

    :cond_3
    return-void
.end method

.method public final onAssistLightsUpdated(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of p1, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    array-length p1, p2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    goto :goto_2

    :cond_3
    :goto_0
    const-string p0, "Expected 4 lights, have "

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    array-length p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlowController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public final onAudioInfo(FF)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->add(F)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    return-void
.end method

.method public final onCardInfo(ZZIZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mCardVisible:Z

    return-void
.end method

.method public final onModeStarted(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-void

    :cond_0
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mInvocationCompleting:Z

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mEdgeLightsMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-direct {p1}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mSpeechRolling:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->getMinTranslationY()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->animateGlowTranslationY(I)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-ne p1, v2, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mVisibilityListener:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareInputAllocation(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareOutputAllocation(Landroid/graphics/Bitmap;)V

    :cond_6
    return-void
.end method
