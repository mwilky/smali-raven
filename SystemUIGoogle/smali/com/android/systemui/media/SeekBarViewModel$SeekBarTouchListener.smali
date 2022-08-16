.class public final Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;
.super Ljava/lang/Object;
.source "SeekBarViewModel.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekBarTouchListener"
.end annotation


# instance fields
.field public final bar:Landroid/widget/SeekBar;

.field public final detector:Landroidx/core/view/GestureDetectorCompat;

.field public final flingVelocity:I

.field public shouldGoToSeekBar:Z

.field public final viewModel:Lcom/android/systemui/media/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SeekBarViewModel;Landroid/widget/SeekBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMin()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-double v4, v2

    int-to-double v2, v3

    div-double/2addr v4, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->isLayoutRtl()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    int-to-double v0, v0

    int-to-double v6, v2

    int-to-double v8, v3

    sub-double/2addr v8, v4

    mul-double/2addr v8, v6

    add-double/2addr v8, v0

    goto :goto_1

    :cond_1
    int-to-double v0, v0

    int-to-double v6, v2

    mul-double/2addr v6, v4

    add-double v8, v6, v0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    int-to-long v4, v0

    sub-long/2addr v1, v4

    long-to-int v0, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lt p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_3
    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object p2, p1, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance p3, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/media/SeekBarViewModel$onSeekFalse$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p0, p0, Lcom/android/systemui/media/SeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
