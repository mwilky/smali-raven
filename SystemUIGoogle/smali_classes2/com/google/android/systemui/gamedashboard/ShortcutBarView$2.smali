.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;
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
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V

    return-void
.end method

.method private getFlingYConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;
    .locals 3

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p0

    const v2, 0x3ff33333    # 1.9f

    invoke-direct {v0, v2, v1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object p0

    return-object p0
.end method

.method protected onMove(FF)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected onUp(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->isOnTheRight()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x3c060000    # -500.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->isOnTheRight()Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->autoUndock()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;->getFlingYConfig()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    return-void
.end method
