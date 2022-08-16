.class public final Lcom/google/android/systemui/assist/uihints/GlowController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowController.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/GlowController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/GlowController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/systemui/assist/uihints/GlowController;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;->GONE:Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->getState()Lcom/google/android/systemui/assist/uihints/GlowController$GlowState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowController$1;->this$0:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowController;->maybeAnimateForSpeechConfidence()V

    return-void
.end method
