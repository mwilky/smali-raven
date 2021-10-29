.class public interface abstract Lcom/android/systemui/media/MediaDeviceManager$Listener;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onKeyRemoved(Ljava/lang/String;)V
.end method

.method public abstract onMediaDeviceChanged(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V
.end method
