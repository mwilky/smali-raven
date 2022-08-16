.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

.field public final synthetic f$1:Landroid/view/animation/Interpolator;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/view/animation/Interpolator;

.field public final synthetic f$5:F

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/view/animation/Interpolator;

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;Landroid/view/animation/Interpolator;IZLandroid/view/animation/PathInterpolator;FILandroid/view/animation/PathInterpolator;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Interpolator;

    iput p6, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$5:F

    iput p7, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$6:I

    iput-object p8, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$7:Landroid/view/animation/Interpolator;

    iput p9, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$8:I

    iput-boolean p10, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$9:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$1:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$4:Landroid/view/animation/Interpolator;

    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$5:F

    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$6:I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$7:Landroid/view/animation/Interpolator;

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$8:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;->f$9:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v9, v9, v10

    const/4 v11, 0x0

    if-gez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    invoke-interface {v1, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    int-to-float v12, v2

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int/2addr v2, v1

    if-eqz v3, :cond_1

    neg-int v1, v1

    neg-int v2, v2

    :cond_1
    const/4 v3, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-static {v12, v3, v3, v10, v2}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v2

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    mul-float/2addr v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->setAlpha(F)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v3, v12, v10, v12, v1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3, v1}, Landroid/widget/ViewFlipper;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    sub-int/2addr v8, v2

    int-to-float v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setTranslationX(F)V

    :goto_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    cmpl-float p1, p1, v12

    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 p1, 0x0

    invoke-virtual {p0, v11, p1}, Landroid/widget/ViewFlipper;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method
