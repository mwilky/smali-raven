.class public interface abstract Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
.super Ljava/lang/Object;
.source "Vcn.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VcnGatewayStatusCallback"
.end annotation


# virtual methods
.method public abstract onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onQuit()V
.end method

.method public abstract onSafeModeStatusChanged()V
.end method
