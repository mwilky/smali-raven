.class Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_5
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_6
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :goto_0
    move v4, v1

    :goto_1
    const/16 v5, 0xb

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    monitor-exit v2

    return-void

    :pswitch_1
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-array v5, v6, [Ljava/lang/String;

    aput-object v4, v5, v7

    move-object v3, v5

    :cond_2
    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$3000(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->access$3100(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v2

    return-void

    :pswitch_4
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeUserLocked(I)V

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    :cond_3
    monitor-exit v2

    return-void

    :pswitch_5
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_3

    :pswitch_6
    const-string v4, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    array-length v4, v3

    :goto_2
    if-ge v7, v4, :cond_5

    aget-object v5, v3, v7

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/alarm/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    monitor-exit v2

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v2

    return-void

    :cond_6
    :goto_3
    if-eqz v3, :cond_a

    array-length v1, v3

    if-lez v1, :cond_a

    array-length v1, v3

    move v4, v7

    :goto_4
    if-ge v4, v1, :cond_a

    aget-object v5, v3, v4

    if-ltz v0, :cond_7

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v0, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(II)V

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    :goto_5
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_6
    if-ltz v8, :cond_9

    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6849e2b4 -> :sswitch_6
        -0x53ae571d -> :sswitch_5
        -0x3ff1ba66 -> :sswitch_4
        -0x2d2ad030 -> :sswitch_3
        -0x2c3dc982 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
