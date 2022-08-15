.class public interface abstract Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/CoexCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract handleLifecycleAfterAuth()V
.end method

.method public abstract sendAuthenticationCanceled()V
.end method

.method public abstract sendAuthenticationResult(Z)V
.end method

.method public abstract sendHapticFeedback()V
.end method
