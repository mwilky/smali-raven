.class public Lcom/android/systemui/biometrics/AuthCredentialPasswordView;
.super Lcom/android/systemui/biometrics/AuthCredentialView;
.source "AuthCredentialPasswordView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mPasswordField:Landroid/widget/ImeAwareEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    iget v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mCredentialType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    return-void
.end method

.method public final onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, v0

    goto :goto_1

    :cond_2
    move p3, p1

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    iget p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mCredentialType:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_5

    :cond_6
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    new-instance v1, Lcom/android/systemui/biometrics/AuthCredentialPasswordView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthCredentialPasswordView;)V

    invoke-static {p2, p1, p3, v0, v1}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    return v0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_7

    :try_start_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->onFinishInflate()V

    const v0, 0x7f0b03a8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImeAwareEditText;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    new-instance v1, Lcom/android/systemui/biometrics/AuthCredentialPasswordView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthCredentialPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthCredentialPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
