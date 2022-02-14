.class final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final END_POWER_MODE_UNKNOWN_VISIBILITY_MSG:I = 0x3

.field static final FIRST_ACTIVITY_TASK_MSG:I = 0x64

.field static final FIRST_SUPERVISOR_TASK_MSG:I = 0xc8

.field static final REPORT_TIME_TRACKER_MSG:I = 0x1

.field static final RESUME_FG_APP_SWITCH_MSG:I = 0x4

.field static final UPDATE_PROCESS_ANIMATING_STATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->access$600(Lcom/android/server/wm/ActivityTaskManagerService;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->access$602(Lcom/android/server/wm/ActivityTaskManagerService;I)I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->access$502(Lcom/android/server/wm/ActivityTaskManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v3, v3, v1, v3}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
