.class public final Lcom/android/wm/shell/legacysplitscreen/DividerView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

.field public final synthetic val$endAction:Ljava/util/function/Consumer;

.field public final synthetic val$endDelay:J


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->val$endDelay:J

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-wide v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->mCancelled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->mCancelled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;->val$endAction:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/DividerView$3$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView$3$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
