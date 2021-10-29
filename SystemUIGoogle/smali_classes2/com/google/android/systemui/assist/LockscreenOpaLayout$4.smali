.class Lcom/google/android/systemui/assist/LockscreenOpaLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenOpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/LockscreenOpaLayout;->onRelease()V
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

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$4;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$4;->this$0:Lcom/google/android/systemui/assist/LockscreenOpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->access$500(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    return-void
.end method
