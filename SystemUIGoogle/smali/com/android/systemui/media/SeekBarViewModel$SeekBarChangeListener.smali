.class public final Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekBarChangeListener"
.end annotation


# instance fields
.field public final viewModel:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    int-to-long p1, p2

    iget-object p3, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/media/SeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;J)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v0, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/SeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v2, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/media/SeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;J)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
