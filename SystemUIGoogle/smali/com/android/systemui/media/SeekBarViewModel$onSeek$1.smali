.class public final Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $position:J

.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/SeekBarViewModel;->isFalseSeek:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Lcom/android/systemui/media/SeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-static {p0}, Lcom/android/systemui/media/SeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/SeekBarViewModel;)V

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/media/SeekBarViewModel;->logSeek:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->$position:J

    invoke-virtual {v0, v3, v4}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-static {p0, v2}, Lcom/android/systemui/media/SeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    :goto_2
    return-void
.end method
