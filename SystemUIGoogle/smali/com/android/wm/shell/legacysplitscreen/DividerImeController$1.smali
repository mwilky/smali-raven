.class public final Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerImeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancel:Z

.field public final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->mCancel:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->mCancel:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->mCancel:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method
