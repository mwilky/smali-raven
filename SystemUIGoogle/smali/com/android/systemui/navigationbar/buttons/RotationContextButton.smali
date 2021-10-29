.class public Lcom/android/systemui/navigationbar/buttons/RotationContextButton;
.super Lcom/android/systemui/navigationbar/buttons/ContextualButton;
.source "RotationContextButton.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/RotationButton;


# instance fields
.field private mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public acceptRotationProposal()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getNewDrawable(II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getIconResId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    :cond_0
    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/RotationContextButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton$1;-><init>(Lcom/android/systemui/navigationbar/buttons/RotationContextButton;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setListener(Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;)V

    return-void
.end method
