.class Lcom/android/server/alarm/AlarmManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x6b

    if-ne p1, v1, :cond_4

    invoke-static {p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->access$600(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p2, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->setValueAt(II)V

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v1}, Lcom/android/server/alarm/AlarmManagerService;->access$700(ZZI)Z

    move-result v5

    invoke-static {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->access$700(ZZI)Z

    move-result v6

    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p2, v9, p3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v7, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->access$800(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_2
    return-void
.end method
