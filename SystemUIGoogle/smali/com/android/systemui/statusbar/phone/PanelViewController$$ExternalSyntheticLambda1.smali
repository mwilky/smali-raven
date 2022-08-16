.class public final synthetic Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;FFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$2:F

    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$3:F

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$4:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$1:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$2:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$3:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$$ExternalSyntheticLambda1;->f$4:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-gtz v5, :cond_0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    cmpl-float v2, v3, v4

    if-eqz v2, :cond_1

    :cond_0
    iget v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelFlingOvershootAmount:F

    mul-float/2addr v2, v1

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-static {v3, v2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setOverExpansionInternal(FZ)V

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    return-void
.end method
