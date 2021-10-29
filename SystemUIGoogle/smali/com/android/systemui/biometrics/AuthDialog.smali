.class public interface abstract Lcom/android/systemui/biometrics/AuthDialog;
.super Ljava/lang/Object;
.source "AuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    }
.end annotation


# virtual methods
.method public abstract animateToCredentialUI()V
.end method

.method public abstract dismissFromSystemServer()V
.end method

.method public abstract dismissWithoutCallback(Z)V
.end method

.method public abstract getOpPackageName()Ljava/lang/String;
.end method

.method public abstract isAllowDeviceCredentials()Z
.end method

.method public abstract onAuthenticationFailed(ILjava/lang/String;)V
.end method

.method public abstract onAuthenticationSucceeded()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onHelp(ILjava/lang/String;)V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onSaveState(Landroid/os/Bundle;)V
.end method

.method public abstract show(Landroid/view/WindowManager;Landroid/os/Bundle;)V
.end method
