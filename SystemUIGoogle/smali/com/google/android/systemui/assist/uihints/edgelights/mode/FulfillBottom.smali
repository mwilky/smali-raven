.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;
.super Ljava/lang/Object;
.source "FulfillBottom.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# static fields
.field public static final CRADLE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final EXIT_FADE_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field public static final EXIT_TO_CORNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public mCradleAnimations:Landroid/animation/AnimatorSet;

.field public mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field public mExitAnimations:Landroid/animation/AnimatorSet;

.field public mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public final mIsListening:Z

.field public mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field public final mRandom:Ljava/util/Random;

.field public mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field public final mResources:Landroid/content/res/Resources;

.field public mSwingLeft:Z

.field public mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->CRADLE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_TO_CORNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_FADE_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRandom:Ljava/util/Random;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mIsListening:Z

    return-void
.end method


# virtual methods
.method public final getSubType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    :goto_0
    return-void
.end method

.method public final onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 7

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const-string p1, "got mode "

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FulfillBottom"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p1, p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/HalfListening;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3, v1, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3, v1, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v1, 0x2

    aget-object v3, p2, v1

    add-float/2addr v2, v0

    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_TO_CORNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-direct {v4, p1, p2, v5, v6}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;-><init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v1, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_FADE_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final setRelativePoints(FFF)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    mul-float/2addr p1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    mul-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    mul-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method public final start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    instance-of v0, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    aget-object v0, p1, p2

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600cf

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600d1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600d2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0600d0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    :goto_1
    new-array p1, v1, [Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v0, p1, p2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v0, p1, v4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v0, p1, v3

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    instance-of p1, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget-boolean p1, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object p3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p1, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result p1

    new-array p3, v4, [F

    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v1, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v0, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v1, v0

    div-float/2addr v1, p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v3, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v0, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v3, v0

    div-float/2addr v3, p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v5, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v0, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v5, v0

    div-float/2addr v5, p1

    new-instance p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v3, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;FFF)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, v4, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x514

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->CRADLE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object p3, v1, p2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
