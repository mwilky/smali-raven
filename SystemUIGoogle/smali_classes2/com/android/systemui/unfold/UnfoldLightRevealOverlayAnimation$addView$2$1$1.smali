.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;
.super Ljava/lang/Object;
.source "UnfoldLightRevealOverlayAnimation.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1;->finished(Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Ljava/lang/Runnable;

.field final synthetic $transaction:Landroid/view/SurfaceControl$Transaction;

.field final synthetic $vsyncId:J


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;JLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-wide p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$vsyncId:J

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-wide v1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$vsyncId:J

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-wide v2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$vsyncId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    const-string v0, "UnfoldLightRevealOverlayAnimation#relayout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addView$2$1$1;->$callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
