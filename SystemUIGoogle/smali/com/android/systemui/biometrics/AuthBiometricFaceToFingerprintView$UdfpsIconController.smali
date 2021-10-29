.class public Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;
.super Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;
.source "AuthBiometricFaceToFingerprintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UdfpsIconController"
.end annotation


# instance fields
.field private mIconState:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;->mIconState:I

    return-void
.end method


# virtual methods
.method updateState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;->mIconState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;->updateState(II)V

    return-void
.end method

.method protected updateState(II)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown biometric dialog state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPrompt/AuthBiometricFaceToFingerprintView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_0
    if-nez p1, :cond_2

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->showStaticDrawable(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_try_again:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_1
    if-eqz p1, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    goto :goto_3

    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->showStaticDrawable(I)V

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_fingerprint_dialog_fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mState:I

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceToFingerprintView$UdfpsIconController;->mIconState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
