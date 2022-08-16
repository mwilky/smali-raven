.class public final Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullListening.java"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->this$0:Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->mAnimator:Landroid/animation/Animator;

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening$1;->mCancelled:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->updateStateAndAnimation()V

    return-void
.end method
