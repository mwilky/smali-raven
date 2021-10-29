.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->unDock(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field final synthetic val$translationX:F


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->val$translationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_WIDTH:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object p1, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_HEIGHT:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$2300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object p1, Lcom/google/android/systemui/gamedashboard/RevealButton;->ICON_ALPHA:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object v0

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->setUseClearBackground(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    move-result-object p1

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->val$translationX:F

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$502(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$502(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;->setUseClearBackground(Z)V

    return-void
.end method
