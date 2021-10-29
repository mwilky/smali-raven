.class final Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StartingSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShellStartingSurface"
.end annotation


# instance fields
.field private final mTask:Lcom/android/server/wm/Task;

.field final synthetic this$0:Lcom/android/server/wm/StartingSurfaceController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;->mTask:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public remove(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v0}, Lcom/android/server/wm/StartingSurfaceController;->access$000(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    invoke-static {v1}, Lcom/android/server/wm/StartingSurfaceController;->access$000(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/TaskOrganizerController;->removeStartingWindow(Lcom/android/server/wm/Task;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
