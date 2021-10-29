.class final Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IsolatedUidRecords"
.end annotation


# instance fields
.field private final mIsolatedUidToUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToIsolatedUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    return-void
.end method

.method private removeAppUidLocked(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUidByIsolatedUid(I)Ljava/lang/Integer;
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method removeAppUid(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    move p1, v1

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUidLocked(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUidLocked(I)V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeByUserId(I)V
    .locals 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeIsolatedUidLocked(I)I
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return v0
.end method
