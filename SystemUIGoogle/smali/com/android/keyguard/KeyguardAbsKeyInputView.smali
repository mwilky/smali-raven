.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Lcom/android/keyguard/KeyguardInputView;
.source "KeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;
    }
.end annotation


# instance fields
.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public doHapticKeyClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method protected abstract getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected abstract getPromptReasonStringRes(I)I
.end method

.method protected getWrongPasswordStringId()I
    .locals 0

    sget p0, Lcom/android/systemui/R$string;->kg_wrong_password:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract resetPasswordText(ZZ)V
.end method

.method setEnableHaptics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    return-void
.end method

.method public setKeyDownListener(Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;

    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected abstract setPasswordEntryInputEnabled(Z)V
.end method
