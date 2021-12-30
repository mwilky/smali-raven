.class public Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLeftButtonIsSkip:Z

.field private mOptionsButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$h30-VOyrlVNH94yvUKh6I_kNwEs(Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "skip_screen_lock_dialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getStageType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v1, "for_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    invoke-static/range {v3 .. v8}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onSkipOrClearButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController$Builder;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v0, p2, v1}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setHideInsecureScreenLockTypes(Z)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->build()Lcom/android/settings/password/ChooseLockGenericController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleAndEnabledScreenLockTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "show_options_button"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez v1, :cond_1

    const-string v0, "SetupChooseLockPassword"

    const-string v3, "Visible screen lock types is empty!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    const p2, 0x7f0d04b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected updateUi()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f04126b

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f040bfe

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLeftButtonIsSkip:Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method
