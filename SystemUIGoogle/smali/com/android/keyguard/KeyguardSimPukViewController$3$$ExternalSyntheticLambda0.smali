.class public final synthetic Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPukViewController$3;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController$3;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v4, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v5

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v6, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget v7, v7, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v1, v5, v3, v6}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v4, v3, v6}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_3

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f13052f

    invoke-virtual {v5, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v5

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v6, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget v7, v7, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v1, v5, v3, v6}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object v3, v1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1303c9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    :goto_2
    sget-boolean v1, Lcom/android/keyguard/KeyguardSimPukViewController;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardSimPukView"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    return-void
.end method
