.class public interface abstract Lcom/android/wm/shell/onehanded/OneHanded;
.super Ljava/lang/Object;
.source "OneHanded.java"


# virtual methods
.method public createExternalInterface()Lcom/android/wm/shell/onehanded/IOneHanded;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onKeyguardVisibilityChanged(Z)V
.end method

.method public abstract onUserSwitch(I)V
.end method

.method public abstract registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
.end method

.method public abstract registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V
.end method

.method public abstract setLockedDisabled(ZZ)V
.end method

.method public abstract stopOneHanded()V
.end method

.method public abstract stopOneHanded(I)V
.end method
