.class public final Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mgetLineAnimatorSet(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method
