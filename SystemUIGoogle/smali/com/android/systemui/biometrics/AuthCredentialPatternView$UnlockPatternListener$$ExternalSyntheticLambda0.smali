.class public final synthetic Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/AuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView$UnlockPatternListener;->this$0:Lcom/android/systemui/biometrics/AuthCredentialPatternView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
