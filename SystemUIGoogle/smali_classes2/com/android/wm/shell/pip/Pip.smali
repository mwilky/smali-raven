.class public interface abstract Lcom/android/wm/shell/pip/Pip;
.super Ljava/lang/Object;
.source "Pip.java"


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/pip/IPip;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public hidePipMenu(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    return-void
.end method

.method public onSystemUiStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public registerSessionListenerForCurrentUser()V
    .locals 0

    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .locals 0

    return-void
.end method

.method public setPipExclusionBoundsChangeListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method
