.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v2, v2, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v5, v4, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v6, v6, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "wm.TaskPositioner.resizeTask"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v8, v8, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v8, v9, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v5, v4, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_0

    :pswitch_3
    nop

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v4, v4, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)V

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v6, v6, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v6, v6, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_a
    const-string v2, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
