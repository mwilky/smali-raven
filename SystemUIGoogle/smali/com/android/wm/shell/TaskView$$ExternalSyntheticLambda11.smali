.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/TaskView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/TaskView;

    iput p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda11;->f$0:Lcom/android/wm/shell/TaskView;

    iget p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda11;->f$1:I

    iget-object v0, p1, Lcom/android/wm/shell/TaskView;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda13;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
