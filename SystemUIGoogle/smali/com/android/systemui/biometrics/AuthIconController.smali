.class public abstract Lcom/android/systemui/biometrics/AuthIconController;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AuthBiometricIconController.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public deactivated:Z

.field public final iconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final animateIcon(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.AnimatedVectorDrawable"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getActsAsConfirmButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleAnimationEnd()V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthIconController;->handleAnimationEnd()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract updateIcon(II)V
.end method
