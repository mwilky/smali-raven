.class public final Lcom/android/keyguard/TextAnimator$animator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/TextAnimator;-><init>(Landroid/text/Layout;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/TextAnimator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/TextAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator$animator$1$2;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator$animator$1$2;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/TextAnimator;->getTextInterpolator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/keyguard/TextInterpolator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator$animator$1$2;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/TextAnimator;->getTextInterpolator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/keyguard/TextInterpolator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    return-void
.end method
