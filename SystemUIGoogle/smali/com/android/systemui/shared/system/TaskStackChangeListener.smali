.class public interface abstract Lcom/android/systemui/shared/system/TaskStackChangeListener;
.super Ljava/lang/Object;
.source "TaskStackChangeListener.java"


# virtual methods
.method public onActivityPinned()V
    .locals 0

    return-void
.end method

.method public onActivityRequestedOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onTaskCreated(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront()V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront()V

    return-void
.end method

.method public onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    return-void
.end method
