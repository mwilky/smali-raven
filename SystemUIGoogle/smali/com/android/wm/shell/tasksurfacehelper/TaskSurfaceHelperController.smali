.class public final Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;
.super Ljava/lang/Object;
.source "TaskSurfaceHelperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;
    }
.end annotation


# instance fields
.field public final mImpl:Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

    invoke-direct {v0}, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mImpl:Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController$TaskSurfaceHelperImpl;

    iput-object p1, p0, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method
