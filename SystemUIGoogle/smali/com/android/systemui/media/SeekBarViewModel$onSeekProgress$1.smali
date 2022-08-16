.class public final Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;
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

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iput-wide p2, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;->$position:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;->this$0:Lcom/android/systemui/media/SeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/SeekBarViewModel;->scrubbing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/SeekBarViewModel;->_data:Lcom/android/systemui/media/SeekBarViewModel$Progress;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;->$position:J

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v3, 0x2f

    invoke-static {v1, v2, p0, v3}, Lcom/android/systemui/media/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SeekBarViewModel$Progress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/SeekBarViewModel;->set_data(Lcom/android/systemui/media/SeekBarViewModel$Progress;)V

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;->$position:J

    iget-object p0, v0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v3, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;J)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
