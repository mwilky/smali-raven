.class public final synthetic Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$$ExternalSyntheticLambda2;->f$2:I

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/GlowController;->mGlowView:Lcom/google/android/systemui/assist/uihints/GlowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v1, p0, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    iget p1, v0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurredImageOnViews(I)V

    :goto_0
    return-void
.end method
