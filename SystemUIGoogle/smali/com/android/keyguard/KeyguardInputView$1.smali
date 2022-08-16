.class public final Lcom/android/keyguard/KeyguardInputView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardInputView.java"


# instance fields
.field public mIsCancel:Z

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardInputView;

.field public final synthetic val$cuj:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputView$1;->this$0:Lcom/android/keyguard/KeyguardInputView;

    iput p2, p0, Lcom/android/keyguard/KeyguardInputView$1;->val$cuj:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputView$1;->mIsCancel:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardInputView$1;->mIsCancel:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget p0, p0, Lcom/android/keyguard/KeyguardInputView$1;->val$cuj:I

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget p0, p0, Lcom/android/keyguard/KeyguardInputView$1;->val$cuj:I

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView$1;->this$0:Lcom/android/keyguard/KeyguardInputView;

    iget p0, p0, Lcom/android/keyguard/KeyguardInputView$1;->val$cuj:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
