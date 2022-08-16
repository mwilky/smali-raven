.class public final Lcom/android/systemui/media/SeekBarViewModel$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "SeekBarViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SeekBarViewModel;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object p1, v0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SeekBarViewModel;->checkIfPollingNeeded()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$callback$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v1, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/SeekBarViewModel$clearController$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
