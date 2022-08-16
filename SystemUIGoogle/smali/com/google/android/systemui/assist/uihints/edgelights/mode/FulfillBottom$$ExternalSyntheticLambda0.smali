.class public final synthetic Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$3:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$2:F

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom$$ExternalSyntheticLambda0;->f$3:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v3, :cond_0

    const v3, 0x3f30a3d7    # 0.69f

    goto :goto_0

    :cond_0
    const v3, 0x3d0f5c29    # 0.035f

    :goto_0
    invoke-static {v1, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v3, :cond_1

    const v3, 0x3f5eb852    # 0.87f

    goto :goto_1

    :cond_1
    const v3, 0x3e051eb8    # 0.13f

    :goto_1
    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iget-boolean v3, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->mSwingLeft:Z

    if-eqz v3, :cond_2

    const v3, 0x3f770a3d    # 0.965f

    goto :goto_2

    :cond_2
    const v3, 0x3e9eb852    # 0.31f

    :goto_2
    invoke-static {p0, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FulfillBottom;->setRelativePoints(FFF)V

    return-void
.end method
