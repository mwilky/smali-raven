.class public final Lcom/android/systemui/media/SeekBarViewModel;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;,
        Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;,
        Lcom/android/systemui/media/SeekBarViewModel$Progress;
    }
.end annotation


# instance fields
.field private _data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

.field private final _progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/systemui/media/SeekBarViewModel$Progress;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

.field private callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

.field private cancel:Ljava/lang/Runnable;

.field private controller:Landroid/media/session/MediaController;

.field private isFalseSeek:Z

.field private listening:Z

.field public logSmartspaceClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private playbackState:Landroid/media/session/PlaybackState;

.field private scrubbing:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
    .locals 2

    const-string v0, "bgExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance p1, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1, v0}, Lcom/android/systemui/media/SeekBarViewModel$Progress;-><init>(ZZLjava/lang/Integer;I)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/SeekBarViewModel$callback$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->callback:Lcom/android/systemui/media/SeekBarViewModel$callback$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final synthetic access$checkIfPollingNeeded(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method

.method public static final synthetic access$checkPlaybackPosition(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkPlaybackPosition()V

    return-void
.end method

.method public static final synthetic access$getCancel$p(Lcom/android/systemui/media/SeekBarViewModel;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/media/SeekBarViewModel;)Landroid/media/session/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static final synthetic access$getListening$p(Lcom/android/systemui/media/SeekBarViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    return p0
.end method

.method public static final synthetic access$getPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;)Landroid/media/session/PlaybackState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method public static final synthetic access$getScrubbing$p(Lcom/android/systemui/media/SeekBarViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    return p0
.end method

.method public static final synthetic access$get_data$p(Lcom/android/systemui/media/SeekBarViewModel;)Lcom/android/systemui/media/SeekBarViewModel$Progress;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    return-object p0
.end method

.method public static final synthetic access$isFalseSeek$p(Lcom/android/systemui/media/SeekBarViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->isFalseSeek:Z

    return p0
.end method

.method public static final synthetic access$setCancel$p(Lcom/android/systemui/media/SeekBarViewModel;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setController(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static final synthetic access$setFalseSeek$p(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->isFalseSeek:Z

    return-void
.end method

.method public static final synthetic access$setListening$p(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    return-void
.end method

.method public static final synthetic access$setPlaybackState$p(Lcom/android/systemui/media/SeekBarViewModel;Landroid/media/session/PlaybackState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    return-void
.end method

.method public static final synthetic access$setScrubbing(Lcom/android/systemui/media/SeekBarViewModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setScrubbing(Z)V

    return-void
.end method

.method public static final synthetic access$set_data(Lcom/android/systemui/media/SeekBarViewModel;Lcom/android/systemui/media/SeekBarViewModel$Progress;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    return-void
.end method

.method private final checkIfPollingNeeded()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->listening:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/media/SeekBarViewModelKt;->access$isInMotion(Landroid/media/session/PlaybackState;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v2, Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Ljava/lang/Runnable;JJ)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    :cond_4
    :goto_2
    return-void
.end method

.method private final checkPlaybackPosition()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/media/SeekBarViewModelKt;->access$computePosition(Landroid/media/session/PlaybackState;J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->getElapsedTime()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZZLjava/lang/Integer;IILjava/lang/Object;)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    :cond_1
    return-void
.end method

.method private final setController(Landroid/media/session/MediaController;)V
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

.method private final setScrubbing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    invoke-direct {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    :cond_0
    return-void
.end method

.method private final set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final attachTouchHandlers(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->getSeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/SeekBarViewModel;Landroid/widget/SeekBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final clearController()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getLogSmartspaceClick()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->logSmartspaceClick:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "logSmartspaceClick"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getProgress()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/systemui/media/SeekBarViewModel$Progress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeek(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekFalse()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekProgress(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSeekStarting()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$listening$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLogSmartspaceClick(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->logSmartspaceClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final updateController(Landroid/media/session/MediaController;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->controller:Landroid/media/session/MediaController;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    :goto_2
    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-nez v4, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_5

    :cond_5
    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_5
    if-nez p1, :cond_6

    move p1, v3

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int p1, v5

    :goto_6
    iget-object v5, p0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz v5, :cond_9

    if-nez v5, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    if-gtz p1, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$Progress;

    invoke-direct {v0, v2, v1, v4, p1}, Lcom/android/systemui/media/SeekBarViewModel$Progress;-><init>(ZZLjava/lang/Integer;I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    invoke-direct {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    return-void
.end method
