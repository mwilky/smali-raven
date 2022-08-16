.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;
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

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/TaskView;

    iput p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/TaskView;

    iget p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda3;->f$1:I

    sget v1, Lcom/android/wm/shell/TaskView;->$r8$clinit:I

    invoke-virtual {v0, p1, p0}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method
