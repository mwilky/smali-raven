.class public final synthetic Lcom/android/wm/shell/FullscreenTaskListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/FullscreenTaskListener$TaskData;

.field public final synthetic f$1:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/FullscreenTaskListener$TaskData;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/FullscreenTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/FullscreenTaskListener$TaskData;

    iput-object p2, p0, Lcom/android/wm/shell/FullscreenTaskListener$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/FullscreenTaskListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/FullscreenTaskListener$TaskData;

    iget-object p0, p0, Lcom/android/wm/shell/FullscreenTaskListener$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/FullscreenTaskListener;->$r8$lambda$SQM3lCytmlQpKdLSro91VOPl6M0(Lcom/android/wm/shell/FullscreenTaskListener$TaskData;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
