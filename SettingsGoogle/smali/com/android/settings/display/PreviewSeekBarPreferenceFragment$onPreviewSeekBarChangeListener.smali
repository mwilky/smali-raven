.class Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private final mCommit:Landroid/view/Choreographer$FrameCallback;

.field private mCommitDelayMs:J

.field private mIsChanged:Z

.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$7WUGA8CQ2Kdem7Pshcyxi4a8xTg(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$pBO_ias18YepPT0TgdpS8d6gjcg(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->lambda$new$0(J)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method

.method private commitOnNextFrame()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$200(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommit:Landroid/view/Choreographer$FrameCallback;

    iget-wide v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method private synthetic lambda$new$0(J)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->commit()V

    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$202(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;J)J

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    iget p3, p1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    invoke-static {p1, p2, v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$000(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;IZ)V

    iget-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x12c

    iput-wide p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mCommitDelayMs:J

    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    iget-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mIsChanged:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/display/PreviewPagerAdapter;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/display/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->commitOnNextFrame()V

    :goto_0
    return-void
.end method
