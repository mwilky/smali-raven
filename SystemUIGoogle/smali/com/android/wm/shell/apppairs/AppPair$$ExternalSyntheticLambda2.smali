.class public final synthetic Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/apppairs/AppPair;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/apppairs/AppPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mTaskLeash2:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "Dim layer"

    invoke-static {p1, v0, v2, v1}, Lcom/android/wm/shell/common/SurfaceUtils;->makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair;->mDimLayer2:Landroid/view/SurfaceControl;

    return-void
.end method
