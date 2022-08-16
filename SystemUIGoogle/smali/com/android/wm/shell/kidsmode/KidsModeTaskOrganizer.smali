.class public final Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;
.super Lcom/android/wm/shell/ShellTaskOrganizer;
.source "KidsModeTaskOrganizer.java"


# static fields
.field public static final CONTROLLED_ACTIVITY_TYPES:[I

.field public static final CONTROLLED_WINDOWING_MODES:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCookie:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayHeight:I

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDisplayWidth:I

.field public mEnabled:Z

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

.field public mLaunchRootLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mMainHandler:Landroid/os/Handler;

.field public mOnDisplaysChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

.field public mOnInsetsChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mUserSwitchIntentReceiver:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;


# direct methods
.method public static -$$Nest$mupdateBounds(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->calculateBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :goto_0
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ITaskOrganizerController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    iput-object p4, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p7, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p9, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p7}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;-><init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    iput-object p3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p5, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    return-void
.end method


# virtual methods
.method public final calculateBounds()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    iget v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-object v0
.end method

.method public disable()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->setIsIgnoreOrientationRequestDisabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->unregisterOrganizer()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    const-string p2, "KidsModeTaskOrganizer"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    const-string v2, " mLaunchRootTask="

    invoke-static {p2, v1, p1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLaunchRootLeash="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayWidth="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mInsetsState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public enable()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->setIsIgnoreOrientationRequestDisabled(Z)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iput v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iput v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mInsetsState:Landroid/view/InsetsState;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnInsetsChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$3;

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mOnDisplaysChangedListener:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    move-result-object v1

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0, v1}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    return-void
.end method

.method public getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mCookie:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateTask()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public updateKidsModeState()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    iget-object v1, v0, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string v4, "navigation_mode"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nav_bar_kids_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v2, v4

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->enable()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->disable()V

    :goto_0
    return-void
.end method

.method public final updateTask()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v6

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->calculateBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootTask:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v6, v8, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {v6, v8, v2, v0}, Landroid/window/WindowContainerTransaction;->setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    if-eqz v0, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    move-object v2, v8

    :goto_3
    if-eqz v0, :cond_5

    move-object v3, v8

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    sget-object v4, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v5, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v9, 0x1

    move-object v0, v6

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    iget-boolean v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mEnabled:Z

    invoke-virtual {v6, v8, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mLaunchRootLeash:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7, v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_6
    :goto_5
    return-void
.end method
