.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

.field public final synthetic f$1:Lcom/android/systemui/assist/ui/EdgeLight;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public final synthetic f$4:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;Lcom/android/systemui/assist/ui/EdgeLight;FLcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/assist/ui/EdgeLight;

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$2:F

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iput-object p5, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$4:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$2:F

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter$$ExternalSyntheticLambda1;->f$4:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mDisappearing:Z

    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne v1, v5, :cond_1

    sub-float v1, v4, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v2, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    if-ne v1, p1, :cond_2

    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mRedLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v6, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v5, v5, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v6, v5

    sub-float/2addr v2, v6

    iput v2, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mYellowLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iput v5, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionCenter(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    mul-float/2addr v1, v4

    iget-object v2, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mBlueLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iget v3, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v2, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mGreenLight:Lcom/android/systemui/assist/ui/EdgeLight;

    iput v2, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillPerimeter;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    :goto_1
    return-void
.end method
