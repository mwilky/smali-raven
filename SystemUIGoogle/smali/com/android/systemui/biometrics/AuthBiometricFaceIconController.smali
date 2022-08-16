.class public final Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;
.super Lcom/android/systemui/biometrics/AuthIconController;
.source "AuthBiometricFaceIconController.kt"


# instance fields
.field public lastPulseLightToDark:Z

.field public state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthIconController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    const p2, 0x7f080438

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final handleAnimationEnd()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    if-eqz v0, :cond_1

    const v0, 0x7f080438

    goto :goto_0

    :cond_1
    const v0, 0x7f080439

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    :cond_2
    return-void
.end method

.method public final updateIcon(II)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    const v4, 0x7f130139

    const v5, 0x7f080438

    if-ne p2, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x5

    const v4, 0x7f080434

    const/4 v5, 0x6

    if-ne p1, v0, :cond_4

    if-ne p2, v5, :cond_4

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    const v1, 0x7f13013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    const v7, 0x7f13013b

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    const p1, 0x7f080436

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const v8, 0x7f130138

    if-eqz v3, :cond_6

    if-ne p2, v5, :cond_6

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    if-ne p2, v1, :cond_7

    if-eq p1, v1, :cond_7

    const p1, 0x7f080435

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    goto :goto_2

    :cond_7
    if-ne p1, v6, :cond_8

    if-ne p2, v5, :cond_8

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    if-ne p2, v0, :cond_9

    const p1, 0x7f08043a

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-nez p2, :cond_a

    const p1, 0x7f080437

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Unhandled state: "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthBiometricFaceIconController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    return-void
.end method
