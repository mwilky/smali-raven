.class public interface abstract Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;
.super Ljava/lang/Object;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBleCompanionDeviceFound(I)V
.end method

.method public abstract onBleCompanionDeviceLost(I)V
.end method
