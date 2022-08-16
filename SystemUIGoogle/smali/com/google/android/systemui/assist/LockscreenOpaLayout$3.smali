.class public final Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p1, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    return-void
.end method
