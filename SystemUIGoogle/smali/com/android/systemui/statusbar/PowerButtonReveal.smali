.class public final Lcom/android/systemui/statusbar/PowerButtonReveal;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field private final OFF_SCREEN_START_AMOUNT:F

.field private final WIDTH_INCREASE_MULTIPLIER:F

.field private final powerButtonY:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    const p1, 0x3d4ccccd    # 0.05f

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    const/high16 p1, 0x3fa00000    # 1.25f

    iput p1, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    return-void
.end method


# virtual methods
.method public final getPowerButtonY()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->powerButtonY:F

    return p0
.end method

.method public setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 5

    const-string v0, "scrim"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    sget-object v0, Lcom/android/systemui/statusbar/LightRevealEffect;->Companion:Lcom/android/systemui/statusbar/LightRevealEffect$Companion;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/LightRevealEffect$Companion;->getPercentPastThreshold(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PowerButtonReveal;->getPowerButtonY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->OFF_SCREEN_START_AMOUNT:F

    add-float/2addr v4, v1

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/systemui/statusbar/PowerButtonReveal;->WIDTH_INCREASE_MULTIPLIER:F

    mul-float/2addr v1, v4

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PowerButtonReveal;->getPowerButtonY()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    invoke-virtual {p2, v0, v2, v3, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method
