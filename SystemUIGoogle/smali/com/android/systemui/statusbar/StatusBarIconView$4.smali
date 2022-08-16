.class public final Lcom/android/systemui/statusbar/StatusBarIconView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StatusBarIconView.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda22;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$4;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$4;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$4;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$4;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
