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
.field public static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public mAnimator:Landroid/animation/Animator;

.field public mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

.field public final mFakeForHalfListening:Z

.field public mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public mLastPerturbationWasEven:Z

.field public mLastSpeechTimestampMs:J

.field public final mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

.field public mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;


# direct methods
.method public static constructor <clinit>()V
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
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    new-instance v1, Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-direct {v1}, Lcom/google/android/systemui/assist/uihints/RollingAverage;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->NOT_STARTED:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mFakeForHalfListening:Z

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600cf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    aput-object v1, p2, v0

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    const/4 v1, 0x2

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600d0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    const/4 p1, 0x3

    aput-object v0, p2, p1

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-void
.end method


# virtual methods
.method public final createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 11

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

    iget v3, v3, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    const/4 v5, 0x3

    int-to-float v6, v5

    div-float/2addr v3, v6

    float-to-double v6, v3

    double-to-float v3, v6

    invoke-static {v4, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    sub-float/2addr v0, v1

    iget-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastPerturbationWasEven:Z

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v3, v2, :cond_3

    const-wide v6, 0x3fe3333333333333L    # 0.6

    goto :goto_1

    :cond_3
    const-wide v6, 0x3fe0a3d70a3d70a4L    # 0.52

    :goto_1
    if-ne v3, v2, :cond_4

    const-wide v2, 0x3fd999999999999aL    # 0.4

    goto :goto_2

    :cond_4
    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    :goto_2
    sub-double/2addr v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    double-to-float v8, v8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v9, v6

    add-double/2addr v9, v2

    double-to-float v2, v9

    mul-float/2addr v8, v1

    sub-float/2addr v1, v8

    mul-float/2addr v2, v0

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {p0}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    iput v8, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    aget-object v4, p0, v4

    iput v2, v4, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v6, 0x2

    aget-object v6, p0, v6

    iput v0, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    aget-object v5, p0, v5

    iput v1, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v1, 0x0

    iput v1, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput v8, v4, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    add-float/2addr v8, v2

    iput v8, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    add-float/2addr v8, v0

    iput v8, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    return-object p0
.end method

.method public final getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;
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

    iput v3, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput p0, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSubType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onAudioLevelUpdate(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/RollingAverage;->add(F)V

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLastSpeechTimestampMs:J

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v0, v4

    iget v6, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v1, v2

    iput v3, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v2, 0x1

    aget-object v2, v1, v2

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v2, 0x2

    aget-object v2, v1, v2

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v2, 0x3

    aget-object v1, v1, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v2, v1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    div-float/2addr v2, v5

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    return-void
.end method

.method public final onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
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

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method public final preventsInvocations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setAnimator(Landroid/animation/ValueAnimator;)V
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

.method public final start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mEdgeLightsView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->EXPANDING_TO_WIDTH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    instance-of v2, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x1f4

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-static {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    instance-of p3, p3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    if-eqz p3, :cond_4

    if-eqz v4, :cond_4

    array-length p3, v3

    array-length v5, v4

    if-ne p3, v5, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_3
    array-length v5, v3

    if-ge v0, v5, :cond_7

    aget-object v5, v3, v0

    if-eqz p3, :cond_5

    aget-object v6, v4, v0

    iget v6, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    goto :goto_4

    :cond_5
    sget-object v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p2, v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v6

    :goto_4
    iput v6, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    if-eqz p3, :cond_6

    aget-object v6, v4, v0

    iget v6, v6, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    iput v6, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {v2, v3, p2, p3, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;-><init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateStateAndAnimation()V
    .locals 8

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->LISTENING_TO_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_ENDPOINTER:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    iget v2, v2, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    const/4 v3, 0x3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v4, v2

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x190

    const/16 v2, 0x96

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mRollingConfidence:Lcom/google/android/systemui/assist/uihints/RollingAverage;

    iget v4, v4, Lcom/google/android/systemui/assist/uihints/RollingAverage;->mTotal:F

    div-float/2addr v4, v3

    float-to-double v3, v4

    double-to-float v3, v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-eq v2, v0, :cond_4

    if-eq v2, v1, :cond_4

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;->WAITING_FOR_SPEECH:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    if-ne v2, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->createPerturbedLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x4b0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_6

    if-eq v2, v1, :cond_5

    if-ne v2, v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mState:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$State;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->getFinalLights()[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object v0

    const/16 v1, 0x7d0

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V

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

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
