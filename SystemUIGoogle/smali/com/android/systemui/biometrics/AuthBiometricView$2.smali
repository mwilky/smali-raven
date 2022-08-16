.class public final Lcom/android/systemui/biometrics/AuthBiometricView$2;
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

.field public final synthetic val$newSize:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$newSize:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$newSize:I

    iput p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    iget-object p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p1

    const v1, 0x8000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method
