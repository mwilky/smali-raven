.class public final synthetic Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/apppairs/AppPair;

.field public final synthetic f$1:Lcom/android/wm/shell/common/split/SplitLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/apppairs/AppPair;Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/common/split/SplitLayout;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda7;->f$1:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v3, v0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash1:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/wm/shell/apppairs/AppPair;->mDimLayer1:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/wm/shell/apppairs/AppPair;->mDimLayer2:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/common/split/SplitLayout;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)V

    return-void
.end method
