.class public interface abstract Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaDeviceCallback"
.end annotation


# virtual methods
.method public abstract onConnectedDeviceChanged(Ljava/lang/String;)V
.end method

.method public abstract onDeviceAttributesChanged()V
.end method

.method public abstract onDeviceListAdded(Ljava/util/ArrayList;)V
.end method

.method public abstract onRequestFailed(I)V
.end method
