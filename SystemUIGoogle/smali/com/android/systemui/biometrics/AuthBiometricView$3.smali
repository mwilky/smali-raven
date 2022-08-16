.class public final Lcom/android/systemui/biometrics/AuthBiometricView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthBiometricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

.field public final synthetic val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

.field public final synthetic val$newSize:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    iput p3, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$newSize:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$3;->val$newSize:I

    iput p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    return-void
.end method
