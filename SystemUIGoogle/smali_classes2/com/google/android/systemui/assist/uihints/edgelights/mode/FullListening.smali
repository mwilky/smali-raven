.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;
.super Ljava/lang/Object;
.source "FullListening.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field private final mFakeForHalfListening:Z

.field private mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field private mLastPerturbationWasEven:Z

.field private mLastSpeechTimestampMs:J

.field private final mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

.field private mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    new-instance v1, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mFakeForHalfListening:Z

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->edge_light_blue:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    aput-object v1, p2, v0

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->edge_light_red:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$color;->edge_light_yellow:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    const/4 v1, 0x2

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$color;->edge_light_green:I

    invoke-virtual {p1, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v0, p1, v4, v4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    aput-object v0, p2, v2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    return-void
.end method

.method private createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    if-eqz v1, :cond_0

    const v1, 0x3ecccccc    # 0.39999998f

    goto :goto_0

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    if-eqz v1, :cond_2

    const v1, 0x3efae148    # 0.49f

    goto :goto_0

    :cond_2
    const v1, 0x3f028f5c    # 0.51f

    :goto_0
    mul-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->getAverage()D

    move-result-wide v5

    double-to-float v3, v5

    invoke-static {v4, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    sub-float/2addr v0, v1

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v3, v2, :cond_3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    goto :goto_1

    :cond_3
    const-wide v5, 0x3fe0a3d70a3d70a4L    # 0.52

    :goto_1
    if-ne v3, v2, :cond_4

    const-wide v2, 0x3fd999999999999aL    # 0.4

    goto :goto_2

    :cond_4
    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    :goto_2
    sub-double/2addr v5, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, v2

    double-to-float v7, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v8, v5

    add-double/2addr v8, v2

    double-to-float v2, v8

    mul-float/2addr v7, v1

    sub-float/2addr v1, v7

    mul-float/2addr v2, v0

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {p0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p0

    const/4 v3, 0x0

    aget-object v5, p0, v3

    invoke-virtual {v5, v7}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    aget-object v5, p0, v4

    invoke-virtual {v5, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    const/4 v5, 0x2

    aget-object v6, p0, v5

    invoke-virtual {v6, v0}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    const/4 v6, 0x3

    aget-object v8, p0, v6

    invoke-virtual {v8, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    aget-object v1, p0, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    aget-object v1, p0, v4

    invoke-virtual {v1, v7}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    aget-object v1, p0, v5

    add-float/2addr v7, v2

    invoke-virtual {v1, v7}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    aget-object v1, p0, v6

    add-float/2addr v7, v0

    invoke-virtual {v1, v7}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    return-object p0
.end method

.method private createUpdateStateOnEndAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V

    return-object v0
.end method

.method private getExpandToWidthDuration(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)J
    .locals 2

    instance-of p0, p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    instance-of p0, p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x12c

    return-wide p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistInvocationLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return-wide v0

    :cond_2
    const-wide/16 p0, 0x1f4

    return-wide p0
.end method

.method private getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {v0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result p0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p0, v1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    int-to-float v3, v1

    mul-float/2addr v3, p0

    invoke-virtual {v2, v3}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getInitialLights(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {p0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of p3, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    array-length p3, p0

    array-length v1, p1

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p0, v0

    if-eqz p3, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p2, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    if-eqz p3, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private setAnimator(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private updateStateAndAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->getAverage()D

    move-result-wide v0

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x190

    const/16 v2, 0x96

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->getAverage()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq v0, v1, :cond_4

    sget-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq v0, v2, :cond_4

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x4b0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_6

    :cond_5
    return-void

    :cond_6
    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x7d0

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createUpdateStateOnEndAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;-><init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getSubType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFakeForHalfListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mFakeForHalfListening:Z

    return p0
.end method

.method public onAudioLevelUpdate(FF)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->add(F)V

    const p2, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    :goto_0
    iput-wide p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq p1, p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v1, v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v1

    div-float/2addr v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v2, 0x1

    aget-object v4, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v1

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v4, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v1

    div-float/2addr v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v3, 0x2

    aget-object v4, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v1

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v6, v2

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v4, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v1, v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v1

    div-float/2addr v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v2, 0x3

    aget-object v4, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v1

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v4, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v1

    div-float/2addr v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    return-void
.end method

.method public onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    instance-of v0, p2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-boolean v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mFakeForHalfListening:Z

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mFakeForHalfListening:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method public preventsInvocations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getExpandToWidthDuration(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getInitialLights(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p2

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p3

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {v1, p2, p3, v2, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;-><init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createUpdateStateOnEndAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/Animator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
