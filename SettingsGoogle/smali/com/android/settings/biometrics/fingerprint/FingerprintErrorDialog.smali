.class public Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "FingerprintErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method

.method private static getErrorMessage(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const p0, 0x7f041154

    return p0

    :cond_0
    const p0, 0x7f04114a

    return p0

    :cond_1
    const p0, 0x7f041155

    return p0
.end method

.method private static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->getErrorMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x239

    return p0
.end method

.method public getOkButtonTextResId()I
    .locals 0

    const p0, 0x7f04114e

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    const p0, 0x7f041153

    return p0
.end method
