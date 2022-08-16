.class public final Lcom/android/wm/shell/pip/tv/TvPipController$3;
.super Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.source "TvPipController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImeVisibilityChanged(ZI)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$3;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    if-ne p1, v1, :cond_1

    if-eqz p1, :cond_0

    iget v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    if-ne p2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    iput p2, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    :cond_2
    return-void
.end method
