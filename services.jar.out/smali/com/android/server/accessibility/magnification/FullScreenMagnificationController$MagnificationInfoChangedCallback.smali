.class public interface abstract Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.super Ljava/lang/Object;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagnificationInfoChangedCallback"
.end annotation


# virtual methods
.method public abstract onFullScreenMagnificationActivationState(IZ)V
.end method

.method public abstract onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
.end method

.method public abstract onImeWindowVisibilityChanged(IZ)V
.end method

.method public abstract onRequestMagnificationSpec(II)V
.end method
