.class Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startCannedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$002(Lcom/google/android/systemui/assist/LockscreenOpaLayout;I)I

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$200(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$102(Lcom/google/android/systemui/assist/LockscreenOpaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$100(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void
.end method
