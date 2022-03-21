.class public Lcom/android/settings/network/telephony/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;
    }
.end annotation


# instance fields
.field private mDismissCallback:Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;


# direct methods
.method public static synthetic $r8$lambda$Pe7klMeoy3hHO6RIS7YOrnjpRoA(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 1

    const-string v0, "ProgressDialogFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Landroid/app/DialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDismissCallback(Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/ProgressDialogFragment;->mDismissCallback:Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;)V
    .locals 4

    const-string v0, "ProgressDialogFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/ProgressDialogFragment;

    const-string/jumbo v2, "title"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    new-instance v1, Lcom/android/settings/network/telephony/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/ProgressDialogFragment;-><init>()V

    invoke-direct {v1, p2}, Lcom/android/settings/network/telephony/ProgressDialogFragment;->setDismissCallback(Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/settings/network/telephony/ProgressDialogFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/telephony/ProgressDialogFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/ProgressDialogFragment;->mDismissCallback:Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settings/network/telephony/ProgressDialogFragment$OnDismissCallback;->onProgressDialogDismiss()V

    :cond_0
    return-void
.end method
