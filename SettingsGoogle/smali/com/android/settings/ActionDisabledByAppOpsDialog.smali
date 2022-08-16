.class public Lcom/android/settings/ActionDisabledByAppOpsDialog;
.super Landroid/app/Activity;
.source "ActionDisabledByAppOpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogHelper:Lcom/android/settings/ActionDisabledByAppOpsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateAppOps()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v2, 0x77

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/ActionDisabledByAppOpsHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/ActionDisabledByAppOpsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/ActionDisabledByAppOpsDialog;->mDialogHelper:Lcom/android/settings/ActionDisabledByAppOpsHelper;

    invoke-virtual {p1}, Lcom/android/settings/ActionDisabledByAppOpsHelper;->prepareDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/settings/ActionDisabledByAppOpsDialog;->updateAppOps()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/ActionDisabledByAppOpsDialog;->mDialogHelper:Lcom/android/settings/ActionDisabledByAppOpsHelper;

    invoke-virtual {p1}, Lcom/android/settings/ActionDisabledByAppOpsHelper;->updateDialog()V

    invoke-direct {p0}, Lcom/android/settings/ActionDisabledByAppOpsDialog;->updateAppOps()V

    return-void
.end method
