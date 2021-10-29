.class Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOrganizerState"
.end annotation


# instance fields
.field private final mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

.field private final mOrganizedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$400(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$400(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/TaskOrganizerController;->access$500(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    move-object v0, v1

    :goto_0
    nop

    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "TaskOrganizerController"

    const-string v2, "TaskOrganizer failed to register death recipient"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method private addTask(Lcom/android/server/wm/Task;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->taskAppearedReady()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    return v0

    :cond_2
    return v1
.end method

.method private removeTask(Lcom/android/server/wm/Task;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$600(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController;->access$500(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    :cond_2
    return v0
.end method


# virtual methods
.method addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method addTaskWithoutCallback(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->prepareLeash(Lcom/android/server/wm/Task;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method copySplashScreenView(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->copySplashScreenView(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method dispose()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$700(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object v2, v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/TaskOrganizerController;->access$800(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeStartingWindow(Lcom/android/server/wm/Task;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->removeStartingWindow(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method unlinkDeath()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mDeathRecipient:Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
