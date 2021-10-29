.class public Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AuthBiometricFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthBiometricFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IconController"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeactivated:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mLastPulseLightToDark:Z

.field protected mState:I

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mTextView:Landroid/widget/TextView;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->showStaticDrawable(I)V

    return-void
.end method


# virtual methods
.method protected animateIcon(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateIcon, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt/AuthBiometricFaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method protected animateOnce(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateIcon(IZ)V

    return-void
.end method

.method protected deactivate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, mState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deactivated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPrompt/AuthBiometricFaceView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->pulseInNextDirection()V

    :cond_2
    return-void
.end method

.method protected pulseInNextDirection()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mLastPulseLightToDark:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_light_to_dark:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateIcon(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mLastPulseLightToDark:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mLastPulseLightToDark:Z

    return-void
.end method

.method protected showStaticDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected startPulsing()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mLastPulseLightToDark:Z

    sget v0, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateIcon(IZ)V

    return-void
.end method

.method protected updateState(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mDeactivated:Z

    const-string v1, "BiometricPrompt/AuthBiometricFaceView"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring updateState when deactivated: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-ne p2, v0, :cond_3

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_pulse_dark_to_light:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->showStaticDrawable(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticating:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->startPulsing()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticating:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x5

    const/4 v5, 0x6

    if-ne p1, v4, :cond_5

    if-ne p2, v5, :cond_5

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_confirmed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    if-eqz v3, :cond_6

    if-nez p2, :cond_6

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_error_to_idle:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v3, :cond_7

    if-ne p2, v5, :cond_7

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-ne p2, v2, :cond_8

    if-eq p1, v2, :cond_8

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_error:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    goto :goto_2

    :cond_8
    if-ne p1, v0, :cond_9

    if-ne p2, v5, :cond_9

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_dark_to_checkmark:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-ne p2, v4, :cond_a

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_wink_from_dark:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->animateOnce(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_authenticated:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    if-nez p2, :cond_b

    sget p1, Lcom/android/systemui/R$drawable;->face_dialog_idle_static:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->showStaticDrawable(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->biometric_dialog_face_icon_description_idle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView$IconController;->mState:I

    return-void
.end method
