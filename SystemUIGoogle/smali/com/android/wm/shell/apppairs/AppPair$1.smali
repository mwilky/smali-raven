.class public final Lcom/android/wm/shell/apppairs/AppPair$1;
.super Ljava/lang/Object;
.source "AppPair.java"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/apppairs/AppPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/apppairs/AppPair;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/apppairs/AppPair;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair$1;->this$0:Lcom/android/wm/shell/apppairs/AppPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachToParentSurface(Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair$1;->this$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final onLeashReady(Landroid/view/SurfaceControl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair$1;->this$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object v0, v0, Lcom/android/wm/shell/apppairs/AppPair;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/apppairs/AppPair$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/apppairs/AppPair$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/apppairs/AppPair$1;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method
