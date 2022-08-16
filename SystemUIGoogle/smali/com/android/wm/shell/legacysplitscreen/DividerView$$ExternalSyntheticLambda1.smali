.class public final synthetic Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
