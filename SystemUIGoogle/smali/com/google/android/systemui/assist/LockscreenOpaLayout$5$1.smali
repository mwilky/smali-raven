.class public final Lcom/google/android/systemui/assist/LockscreenOpaLayout$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$5$1;->this$1:Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$5$1;->this$1:Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    return-void
.end method
