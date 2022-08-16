.class public Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;
.super Lcom/android/systemui/assist/ui/InvocationLightsView;
.source "AssistantInvocationLightsView.java"


# instance fields
.field public final mColorBlue:I

.field public final mColorGreen:I

.field public final mColorRed:I

.field public final mColorYellow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorRed:I

    const p2, 0x7f0600d2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorYellow:I

    const p2, 0x7f0600cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorBlue:I

    const p2, 0x7f0600d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->mColorGreen:I

    return-void
.end method


# virtual methods
.method public final createCornerPathRenderer(Landroid/content/Context;)Lcom/android/systemui/assist/ui/CornerPathRenderer;
    .locals 0

    new-instance p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final onInvocationProgress(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->onInvocationProgress(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    sget-object v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v3, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr p1, v0

    sub-float/2addr v0, p1

    invoke-static {v1, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    sub-float v0, v3, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x1

    mul-float/2addr v2, v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    const/4 v0, 0x3

    add-float/2addr p1, v3

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setLight(IFF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
