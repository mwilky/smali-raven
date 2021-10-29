.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;
.super Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;
.source "ShortcutBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/high16 v0, 0x442f0000    # 700.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method private getFlingXConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
    .locals 3

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p0

    const v2, 0x3ff33333    # 1.9f

    invoke-direct {v0, v2, v1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-object v0
.end method

.method private getFlingYConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
    .locals 3

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p0

    const v2, 0x3ff33333    # 1.9f

    invoke-direct {v0, v2, v1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    move-result-object p0

    return-object p0
.end method

.method protected onMove(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->left:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->right:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$102(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$102(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    :goto_0
    return p2
.end method

.method protected onUp(FF)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v1

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getFlingXConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    const/4 v6, 0x1

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;->getFlingYConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1$1;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->addEndListener(Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method
