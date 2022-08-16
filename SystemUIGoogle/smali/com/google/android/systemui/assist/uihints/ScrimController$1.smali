.class public final Lcom/google/android/systemui/assist/uihints/ScrimController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/ScrimController;->setRelativeAlpha(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->mCancelled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController$1;->this$0:Lcom/google/android/systemui/assist/uihints/ScrimController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setVisibility(I)V

    return-void
.end method
