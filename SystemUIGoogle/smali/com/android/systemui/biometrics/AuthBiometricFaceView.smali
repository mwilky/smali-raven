.class public Lcom/android/systemui/biometrics/AuthBiometricFaceView;
.super Lcom/android/systemui/biometrics/AuthBiometricView;
.source "AuthBiometricFaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;
    }
.end annotation


# instance fields
.field mFaceIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/biometrics/AuthBiometricView$Injector;)V

    return-void
.end method

.method private resetErrorView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method protected getStateForAfterError()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handleResetAfterError()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->resetErrorView()V

    return-void
.end method

.method protected handleResetAfterHelp()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->resetErrorView()V

    return-void
.end method

.method public onAuthenticationFailed(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->supportsManualRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->mFaceIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    return-void
.end method

.method protected supportsManualRetry()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected supportsSmallDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->mFaceIconController:Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->updateState(II)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getSize()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView;->resetErrorView()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method
