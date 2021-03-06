.class final Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "RecordingActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RecordingActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordingEvent"
.end annotation


# instance fields
.field private final mClientUid:I

.field private final mPackName:Ljava/lang/String;

.field private final mRIId:I

.field private final mRecEvent:I

.field private final mSession:I

.field private final mSilenced:Z

.field private final mSource:I


# direct methods
.method constructor <init>(IILandroid/media/AudioRecordingConfiguration;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    iput p2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    iput v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    :goto_0
    return-void
.end method

.method private static recordEventToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "release"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "update"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "stop"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "start"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rec "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRecEvent:I

    invoke-static {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->recordEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " riid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mRIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSource:I

    invoke-static {v1}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mSilenced:Z

    if-eqz v1, :cond_0

    const-string v1, " silenced"

    goto :goto_0

    :cond_0
    const-string v1, " not silenced"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
