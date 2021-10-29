.class public Lcom/android/wm/shell/onehanded/OneHandedAnimationController;
.super Ljava/lang/Object;
.source "OneHandedAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;,
        Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    }
.end annotation


# instance fields
.field private final mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/WindowContainerToken;",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

.field private final mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController;)V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedAnimationControllerstates: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mAnimatorMap="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method getAnimator(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->updateEndValue(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    return-object p0
.end method

.method getAnimatorMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/window/WindowContainerToken;",
            "Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    return-object p0
.end method

.method isAnimatorsConsumed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method removeAnimator(Landroid/window/WindowContainerToken;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setSurfaceTransactionHelper(Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;)V

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
