.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/view/animation/Animation;

.field public final synthetic f$4:Landroid/view/animation/Transformation;

.field public final synthetic f$5:[F

.field public final synthetic f$6:Landroid/graphics/Point;

.field public final synthetic f$7:F

.field public final synthetic f$8:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$0:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$3:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$4:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$5:[F

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$6:Landroid/graphics/Point;

    iput p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$7:F

    iput-object p9, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$8:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$0:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$3:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$4:Landroid/view/animation/Transformation;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$5:[F

    iget-object v7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$6:Landroid/graphics/Point;

    iget v8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$7:F

    iget-object v9, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda4;->f$8:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method
