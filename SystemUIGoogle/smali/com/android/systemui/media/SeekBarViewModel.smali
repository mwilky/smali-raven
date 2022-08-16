.class public final Lcom/android/systemui/media/SeekBarViewModel;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;,
        Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;,
        Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;,
        Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;,
        Lcom/android/systemui/media/SeekBarViewModel$Progress;
    }
.end annotation


# instance fields
.field public _data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

.field public final _progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/systemui/media/SeekBarViewModel$Progress;",
            ">;"
        }
    .end annotation
.end field

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

.field public callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

.field public cancel:Ljava/lang/Runnable;

.field public controller:Landroid/media/session/MediaController;

.field public enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

.field public isFalseSeek:Z

.field public listening:Z

.field public logSeek:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public playbackState:Landroid/media/session/PlaybackState;

.field public scrubbing:Z

.field public scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SeekBarViewModel$callback$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final access$checkPlaybackPosition(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget v0, v0, Lcom/android/systemui/media/SeekBarViewModel$Progress;->duration:I

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_3

    :cond_0
    int-to-long v3, v0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v7, 0x4

    if-eq v0, v7, :cond_2

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v7, v11

    if-lez v0, :cond_5

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v0

    sub-long/2addr v9, v7

    long-to-float v5, v9

    mul-float/2addr v0, v5

    float-to-long v5, v0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, v5

    cmp-long v5, v3, v11

    if-ltz v5, :cond_3

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    cmp-long v3, v0, v11

    if-gez v3, :cond_4

    move-wide v3, v11

    goto :goto_2

    :cond_4
    move-wide v3, v0

    :goto_2
    move-wide v5, v3

    :cond_5
    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget-object v1, v1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/16 v3, 0x2f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    :cond_6
    return-void
.end method

.method public static final access$setScrubbing(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;->onScrubbingChanged(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v1, 0x0

    const/16 v2, 0x37

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkIfPollingNeeded()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    :cond_6
    :goto_3
    return-void
.end method

.method public final setController(Landroid/media/session/MediaController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_3
    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    :cond_4
    return-void
.end method

.method public final set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget-boolean v1, v1, Lcom/android/systemui/media/SeekBarViewModel$Progress;->enabled:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;->onEnabledChanged(Z)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
