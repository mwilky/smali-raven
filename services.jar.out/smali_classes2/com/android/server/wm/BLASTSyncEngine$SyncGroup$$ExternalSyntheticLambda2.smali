.class public final synthetic Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->onCommitted()V

    return-void
.end method
