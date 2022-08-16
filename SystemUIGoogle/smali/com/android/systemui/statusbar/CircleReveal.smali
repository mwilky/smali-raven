.class public final Lcom/android/systemui/statusbar/CircleReveal;
.super Ljava/lang/Object;
.source "LightRevealScrim.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/LightRevealEffect;


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final endRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:F

    iput p2, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:F

    iput p3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:F

    return-void
.end method


# virtual methods
.method public final setRevealAmountOnScrim(FLcom/android/systemui/statusbar/LightRevealScrim;)V
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/statusbar/CircleReveal;->endRadius:F

    invoke-static {v3, v1, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    iput p1, p2, Lcom/android/systemui/statusbar/LightRevealScrim;->interpolatedRevealAmount:F

    sub-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientEndColorAlpha(F)V

    iget p1, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerX:F

    sub-float v0, p1, v1

    iget p0, p0, Lcom/android/systemui/statusbar/CircleReveal;->centerY:F

    sub-float v2, p0, v1

    add-float/2addr p1, v1

    add-float/2addr p0, v1

    invoke-virtual {p2, v0, v2, p1, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealGradientBounds(FFFF)V

    return-void
.end method
