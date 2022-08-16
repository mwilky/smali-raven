.class public final Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextAnimator.kt"


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/keyguard/TextAnimator;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/keyguard/TextAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iget-object p1, p1, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iget-object p1, p1, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
