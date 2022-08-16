.class public Lcom/android/settings/development/AdbWirelessDialogController;
.super Ljava/lang/Object;
.source "AdbWirelessDialogController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedMsg:Landroid/widget/TextView;

.field private mIpAddr:Landroid/widget/TextView;

.field private mMode:I

.field private mSixDigitCode:Landroid/widget/TextView;

.field private final mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    iput p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    invoke-interface {p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0d0443

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    const v0, 0x7f0d0318

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    const v3, 0x7f040f60

    const v4, 0x7f0401e2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v4}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    const p0, 0x7f0d0339

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0401e1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    const v2, 0x7f0d0336

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0d0445

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mFailedMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f0401e4

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(Ljava/lang/CharSequence;)V

    const p0, 0x7f0d0337

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0405c1

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCanceledOnTouchOutside(Z)V

    :goto_0
    const p0, 0x7f0d032f

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public setIpAddr(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPairingCode(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
