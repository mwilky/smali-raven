.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;
.super Ljava/lang/Object;
.source "FulfillBottom.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# static fields
.field private static final CRADLE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final EXIT_FADE_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field private static final EXIT_TO_CORNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private mCradleAnimations:Landroid/animation/AnimatorSet;

.field private mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field private mExitAnimations:Landroid/animation/AnimatorSet;

.field private mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field private final mIsListening:Z

.field private mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field private final mRandom:Ljava/util/Random;

.field private mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private final mResources:Landroid/content/res/Resources;

.field private mSwingLeft:Z

.field private mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;


# direct methods
.method public static synthetic $r8$lambda$X3kLrNz5d4J0ohKrVkiujCK5Cnw(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->lambda$animateCradle$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uZzHu27IgUtUTNIHEsaQWeFC9B8(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->lambda$animateCradle$0(FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yj4nuiZMpztgreUbgZCV5wBH0eY(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->lambda$createFadeOutAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
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

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-object p0
.end method

.method private animateCradle()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getEnd()F

    move-result v3

    div-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v4}, Lcom/android/systemui/assist/ui/EdgeLight;->getEnd()F

    move-result v4

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v5}, Lcom/android/systemui/assist/ui/EdgeLight;->getEnd()F

    move-result v5

    div-float/2addr v5, v0

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;FFF)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x514

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->CRADLE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

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

.method private animateExit()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->createToCornersAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->createFadeOutAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private createFadeOutAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_FADE_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$2;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createToCornersAnimator()Landroid/animation/ValueAnimator;
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {v0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v4, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v3, 0x2

    aget-object v5, v1, v3

    add-float/2addr v4, v2

    invoke-virtual {v5, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v2, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->EXIT_TO_CORNER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-direct {v3, v0, v1, v4, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;-><init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateCradle$0(FFFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p4

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v0, :cond_0

    const v0, 0x3f30a3d7    # 0.69f

    goto :goto_0

    :cond_0
    const v0, 0x3d0f5c29    # 0.035f

    :goto_0
    invoke-static {p1, v0, p4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v0, :cond_1

    const v0, 0x3f5eb852    # 0.87f

    goto :goto_1

    :cond_1
    const v0, 0x3e051eb8    # 0.13f

    :goto_1
    invoke-static {p2, v0, p4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p2

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v0, :cond_2

    const v0, 0x3f770a3d    # 0.965f

    goto :goto_2

    :cond_2
    const v0, 0x3e9eb852    # 0.31f

    :goto_2
    invoke-static {p3, v0, p4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->setRelativePoints(FFF)V

    return-void
.end method

.method private synthetic lambda$animateCradle$1(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :goto_0
    const v0, 0x3f30a3d7    # 0.69f

    const v1, 0x3d0f5c29    # 0.035f

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    const v2, 0x3e051eb8    # 0.13f

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    const v2, 0x3f770a3d    # 0.965f

    const v3, 0x3e9eb852    # 0.31f

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->setRelativePoints(FFF)V

    return-void
.end method

.method private synthetic lambda$createFadeOutAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setRelativePoints(FFF)V
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

.method private swingingToLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    return p0
.end method


# virtual methods
.method public getSubType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mIsListening:Z

    return p0
.end method

.method public onConfigurationChanged()V
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

.method public onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mCradleAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mExitAnimations:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->animateExit()V

    :cond_3
    :goto_0
    return-void
.end method

.method public start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 8

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

    sget v5, Lcom/android/systemui/R$color;->edge_light_blue:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v5, 0x0

    invoke-direct {p1, v0, v5, v5}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$color;->edge_light_red:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0, v5, v5}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$color;->edge_light_yellow:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0, v5, v5}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p1, Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$color;->edge_light_green:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-direct {p1, v0, v5, v5}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    :goto_1
    new-array p1, v1, [Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object p2, p1, v2

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object p2, p1, v4

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object p2, p1, v3

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mLightsArray:[Lcom/android/systemui/assist/ui/EdgeLight;

    instance-of p1, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz p1, :cond_3

    check-cast p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    invoke-direct {p3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->swingingToLeft()Z

    move-result p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->animateCradle()V

    return-void
.end method
