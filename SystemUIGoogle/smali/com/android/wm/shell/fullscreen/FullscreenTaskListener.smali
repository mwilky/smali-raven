.class public final Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.super Ljava/lang/Object;
.source "FullscreenTaskListener.java"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;,
        Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;
    }
.end annotation


# instance fields
.field public final mAnimatableTasksListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

.field public final mDataByTaskId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;",
            ">;"
        }
    .end annotation
.end field

.field public final mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

.field public final mRecentTasksOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAnimatableTasksListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public final dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/appcompat/view/SupportMenuInflater$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Tasks"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;->surface:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x6a88320

    const/4 v6, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v0, v5, v2, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v5, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;

    invoke-direct {v5, p2, v0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v4, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2, v0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAnimatableTasksListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;->surface:Landroid/view/SurfaceControl;

    iget-object p2, p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    iget-object v2, p2, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-direct {v1, p2, v0, v2, p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;Landroid/view/SurfaceControl;Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    iget-object p2, p2, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Task appeared more than once: #"

    invoke-static {p2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAnimatableTasksListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v2, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;->surface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    new-instance v2, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;

    iget-object v3, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;Landroid/view/SurfaceControl;Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mAnimationContextByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;->positionInParent:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$TaskData;Landroid/graphics/Point;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_6
    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Task already vanished: #"

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullscreenTaskListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mAnimatableTasksListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mFullscreenUnfoldController:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mDataByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p0, :cond_2

    iget p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long p0, p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x7e312686

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v0, v1, v4, v3, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string p0, "FullscreenTaskListener:"

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
