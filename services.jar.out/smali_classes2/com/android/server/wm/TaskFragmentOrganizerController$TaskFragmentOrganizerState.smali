.class Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;
.super Ljava/lang/Object;
.source "TaskFragmentOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragmentOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskFragmentOrganizerState"
.end annotation


# instance fields
.field private final mLastSentTaskFragmentInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/TaskFragment;",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSentTaskFragmentParentConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/TaskFragment;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizedTaskFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field final synthetic this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    :try_start_0
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TaskFragmentOrganizerController"

    const-string v1, "TaskFragmentOrganizer failed to register death recipient"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Landroid/view/RemoteAnimationDefinition;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/view/RemoteAnimationDefinition;)Landroid/view/RemoteAnimationDefinition;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method addTaskFragment(Lcom/android/server/wm/TaskFragment;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->access$000(Lcom/android/server/wm/TaskFragmentOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->access$100(Lcom/android/server/wm/TaskFragmentOrganizerController;Landroid/window/ITaskFragmentOrganizer;)V

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

.method dispose()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4c8a259d    # 7.2428776E7f

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TaskFragmentOrganizerController"

    const-string v3, "Exception sending onTaskFragmentAppeared callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x2c4faa37

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Landroid/window/TaskFragmentOrganizer;->putExceptionInBundle(Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TaskFragmentOrganizerController"

    const-string v3, "Exception sending onTaskFragmentError callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentInfo;->equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TaskFragmentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3cebf0eb

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TaskFragmentOrganizerController"

    const-string v4, "Exception sending onTaskFragmentInfoChanged callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onTaskFragmentParentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 13

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowOrganizerController;->configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x2a1c0f19

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "TaskFragmentOrganizerController"

    const-string v5, "Exception sending onTaskFragmentParentInfoChanged callback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x2059ccfd

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/window/ITaskFragmentOrganizer;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TaskFragmentOrganizerController"

    const-string v3, "Exception sending onTaskFragmentVanished callback"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-boolean v1, p2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mLastSentTaskFragmentParentConfigs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
