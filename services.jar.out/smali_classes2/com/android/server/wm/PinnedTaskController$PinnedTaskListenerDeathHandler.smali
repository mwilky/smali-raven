.class public Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinnedTaskListenerDeathHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PinnedTaskController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PinnedTaskController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {v0}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;->this$0:Lcom/android/server/wm/PinnedTaskController;

    invoke-static {p0}, Lcom/android/server/wm/PinnedTaskController;->-$$Nest$fgetmDeferOrientationTimeoutRunnable(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
