.class final Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isCrossFadeAnimatorRunning$p(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationStartCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setAnimationCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;F)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationCrossFadeProgress$p(Lcom/android/systemui/media/MediaHierarchyManager;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->access$calculateAlphaFromCrossFade(Lcom/android/systemui/media/MediaHierarchyManager;FZ)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationStartAlpha$p(Lcom/android/systemui/media/MediaHierarchyManager;)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    :goto_1
    move v2, v0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getAnimationStartBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v3}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getTargetBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v4}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v3, p1, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->access$interpolateBounds(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZILjava/lang/Object;)V

    return-void
.end method
