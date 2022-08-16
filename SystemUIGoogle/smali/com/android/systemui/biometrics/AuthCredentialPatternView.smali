.class public Lcom/android/systemui/biometrics/AuthCredentialPatternView;
.super Lcom/android/systemui/biometrics/AuthCredentialView;
.source "AuthCredentialPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;
    }
.end annotation


# instance fields
.field public mLockPatternView:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->onAttachedToWindow()V

    const v0, 0x7f0b03a9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/android/systemui/biometrics/AuthCredentialPatternView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mUserId:I

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    return-void
.end method

.method public final onErrorTimeoutFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    return-void
.end method
