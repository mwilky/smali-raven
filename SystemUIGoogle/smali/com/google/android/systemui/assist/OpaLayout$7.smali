.class public final Lcom/google/android/systemui/assist/OpaLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$7;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$7;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->-$$Nest$mstartCollapseAnimation(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void
.end method
