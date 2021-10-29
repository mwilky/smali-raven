.class final Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhoneStateEvent"
.end annotation


# static fields
.field static final MODE_IN_COMMUNICATION_TIMEOUT:I = 0x1

.field static final MODE_SET:I = 0x0

.field private static final mMetricsId:Ljava/lang/String; = "audio.mode"


# instance fields
.field final mActualMode:I

.field final mOp:I

.field final mOwnerPid:I

.field final mPackage:Ljava/lang/String;

.field final mRequestedMode:I

.field final mRequesterPid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    iput-object p1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    iput p5, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->logMetricEvent()V

    return-void
.end method

.method private logMetricEvent()V
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, "audio.mode"

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v2, "inCommunicationTimeout"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :pswitch_1
    new-instance v0, Landroid/media/MediaMetrics$Item;

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "set"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->REQUESTED_MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    const-string v1, " pid="

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FIXME invalid op:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mode IN COMMUNICATION timeout"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " for package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMode("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequestedMode:I

    invoke-static {v2}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from package="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " selected mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mActualMode:I

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;->mOwnerPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
