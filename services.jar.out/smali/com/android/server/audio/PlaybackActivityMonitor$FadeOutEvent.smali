.class public final Lcom/android/server/audio/PlaybackActivityMonitor$FadeOutEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FadeOutEvent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;Z)V

    return-void
.end method


# virtual methods
.method public getVSAction()Ljava/lang/String;
    .locals 0

    const-string p0, "fading out"

    return-object p0
.end method
