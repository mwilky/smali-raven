.class public Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SecurityConfirmationDialogFragment.java"


# instance fields
.field private mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;


# direct methods
.method public static synthetic $r8$lambda$JaYzIOFLYmP6Dn5SqtySdpXC-is(Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUMRKJF0A59p3P4TG0IVSUh3bL8(Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;Landroid/os/Bundle;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->lambda$onCreateDialog$0(Landroid/os/Bundle;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/os/Bundle;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    const-string p2, "continueBundle"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->handleClick(Landroid/os/Bundle;)Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static newInstance(IIIILandroid/os/Bundle;)Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;
    .locals 3

    new-instance v0, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "body"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "continue"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "cancel"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "continueBundle"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x763

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "continue"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string p0, "body"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
