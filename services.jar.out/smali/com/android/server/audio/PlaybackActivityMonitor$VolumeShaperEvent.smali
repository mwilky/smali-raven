.class abstract Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VolumeShaperEvent"
.end annotation


# instance fields
.field private final mClientPid:I

.field private final mClientUid:I

.field private final mPlayerIId:I

.field private final mSkipRamp:Z


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->getVSAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " player piid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mClientPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " skip ramp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;->mSkipRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getVSAction()Ljava/lang/String;
.end method
