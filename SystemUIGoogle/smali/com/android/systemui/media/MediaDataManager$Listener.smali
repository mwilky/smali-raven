.class public interface abstract Lcom/android/systemui/media/MediaDataManager$Listener;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaDataManager$Listener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
.end method

.method public abstract onMediaDataRemoved(Ljava/lang/String;)V
.end method

.method public abstract onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
.end method

.method public abstract onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
.end method
