.class public interface abstract Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;
.super Ljava/lang/Object;
.source "LegacySplitScreen.java"


# virtual methods
.method public abstract getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;
.end method

.method public abstract isDividerVisible()Z
.end method

.method public abstract isHomeStackResizable()Z
.end method

.method public abstract isMinimized()Z
.end method

.method public abstract onAppTransitionFinished()V
.end method

.method public abstract onKeyguardVisibilityChanged(Z)V
.end method

.method public abstract onUndockingTask()V
.end method

.method public abstract registerBoundsChangeListener(Ljava/util/function/BiConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerInSplitScreenListener(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMinimized(Z)V
.end method

.method public abstract splitPrimaryTask()Z
.end method
