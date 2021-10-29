.class public interface abstract Lcom/android/systemui/navigationbar/RotationButton;
.super Ljava/lang/Object;
.source "RotationButton.java"


# virtual methods
.method public acceptRotationProposal()Z
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public abstract getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
.end method

.method public abstract hide()Z
.end method

.method public abstract isVisible()Z
.end method

.method public setCanShowRotationButton(Z)V
    .locals 0

    return-void
.end method

.method public abstract setDarkIntensity(F)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnHoverListener(Landroid/view/View$OnHoverListener;)V
.end method

.method public abstract setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V
.end method

.method public abstract setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract show()Z
.end method

.method public abstract updateIcon(II)V
.end method
