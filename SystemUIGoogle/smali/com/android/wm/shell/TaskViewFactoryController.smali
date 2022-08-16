.class public Lcom/android/wm/shell/TaskViewFactoryController;
.super Ljava/lang/Object;
.source "TaskViewFactoryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;
    }
.end annotation


# instance fields
.field public final mImpl:Lcom/android/wm/shell/TaskViewFactory;

.field public final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskViewTransitions:Lcom/android/wm/shell/TaskViewTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/TaskViewTransitions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;-><init>(Lcom/android/wm/shell/TaskViewFactoryController;)V

    iput-object v0, p0, Lcom/android/wm/shell/TaskViewFactoryController;->mImpl:Lcom/android/wm/shell/TaskViewFactory;

    iput-object p1, p0, Lcom/android/wm/shell/TaskViewFactoryController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/TaskViewFactoryController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p4, p0, Lcom/android/wm/shell/TaskViewFactoryController;->mTaskViewTransitions:Lcom/android/wm/shell/TaskViewTransitions;

    return-void
.end method
