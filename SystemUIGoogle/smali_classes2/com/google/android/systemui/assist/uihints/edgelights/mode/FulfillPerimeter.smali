.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;
.super Ljava/lang/Object;
.source "FulfillPerimeter.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;


# static fields
.field private static final FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private mDisappearing:Z

.field private final mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private final mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field private final mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

.field private final mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;


# direct methods
.method public static synthetic $r8$lambda$s7zTfl9iMQ60YjyrYCbNa1PQrpg(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FFFFLcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->lambda$start$0(Lcom/android/systemui/assist/ui/EdgeLight;FFFFLcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWBv-mGzsK7wvUWSnbV3omUJVFI(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->lambda$start$1(Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    new-instance v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->edge_light_blue:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v2, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$color;->edge_light_red:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-direct {v2, v5, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v5, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$color;->edge_light_yellow:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-direct {v5, v6, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object v5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance v6, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v7, Lcom/android/systemui/R$color;->edge_light_green:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v6, p1, v3, v3}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    iput-object v6, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/systemui/assist/ui/EdgeLight;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const/4 v0, 0x2

    aput-object v6, p1, v0

    const/4 v0, 0x3

    aput-object v5, p1, v0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    return p1
.end method

.method private synthetic lambda$start$0(Lcom/android/systemui/assist/ui/EdgeLight;FFFFLcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p7

    mul-float/2addr p2, p7

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    if-nez p2, :cond_0

    mul-float/2addr p4, p7

    add-float/2addr p4, p5

    invoke-virtual {p1, p4}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p6, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method private synthetic lambda$start$1(Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne p1, v1, :cond_1

    sub-float p1, v0, p2

    mul-float/2addr p1, p5

    add-float/2addr p1, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p3}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {p3, p1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result p5

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p5, v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr p5, v1

    invoke-virtual {p2, p5}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p5}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result p5

    invoke-virtual {p2, p5}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p3, p1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result p1

    mul-float/2addr p1, v0

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p3}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result p3

    iget-object p5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p5}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result p5

    add-float/2addr p3, p5

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p4, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method


# virtual methods
.method public getSubType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public onNewModeRequest(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mNextMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-void
.end method

.method public start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setVisibility(I)V

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v13, v8, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v14, v13

    move v15, v11

    :goto_0
    if-ge v15, v14, :cond_7

    aget-object v7, v13, v15

    iget-object v0, v8, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v1, 0x1

    if-eq v7, v0, :cond_1

    iget-object v0, v8, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne v7, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v11

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v1

    :goto_2
    iget-object v2, v8, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-eq v7, v2, :cond_3

    iget-object v2, v8, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne v7, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v16, v11

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v16, v1

    :goto_4
    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->makeClockwise(F)F

    move-result v0

    goto :goto_5

    :cond_4
    move v0, v4

    :goto_5
    sub-float v3, v0, v4

    const/4 v0, 0x0

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v2

    invoke-virtual {v10, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    sub-float v17, v2, v1

    sub-float v5, v17, v0

    const/4 v6, 0x2

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v18, 0x64

    if-eqz v16, :cond_5

    move-wide/from16 v0, v18

    goto :goto_6

    :cond_5
    const-wide/16 v0, 0x0

    :goto_6
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x1b1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->FULFILL_PERIMETER_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda0;

    const/16 v20, 0x0

    move-object/from16 p3, v0

    move-object v11, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v7

    move v10, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FFFFLcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    move-object/from16 v6, v21

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez v16, :cond_6

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_7

    :cond_6
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v3, v0, v17

    new-array v0, v10, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v0

    add-long v0, v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x2dd

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v12, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p2

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;

    invoke-direct {v0, v8, v12, v9}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Landroid/animation/AnimatorSet;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

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
