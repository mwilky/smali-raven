.class final Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;
.super Ljava/lang/Object;
.source "QuotaController.java"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TempAllowlistTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppAdded(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_0
    if-ltz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$2800(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, p1}, Lcom/android/server/job/controllers/QuotaController;->access$2900(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAppRemoved(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p1, v7}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v6}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v7}, Lcom/android/server/job/controllers/QuotaController;->access$3000(Lcom/android/server/job/controllers/QuotaController;)J

    move-result-wide v7

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
