.class public interface abstract Lcom/android/wm/shell/common/TaskStackListenerCallback;
.super Ljava/lang/Object;
.source "TaskStackListenerCallback.java"


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 0

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed$1()V
    .locals 0

    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onActivityLaunchOnSecondaryDisplayFailed()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V
    .locals 0

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 0

    return-void
.end method

.method public onTaskCreated()V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToFront(I)V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    return-void
.end method
