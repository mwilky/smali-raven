.class Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
    }
.end annotation


# static fields
.field private static final DEFER_ORIENTATION_CHANGE_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatio:F

.field private mDeferOrientationChanging:Z

.field private final mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

.field private mDestRotatedBounds:Landroid/graphics/Rect;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFreezingTaskConfig:Z

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field private final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/PinnedTaskController;->mAspectRatio:F

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)Landroid/view/IPinnedTaskListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/PinnedTaskController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private continueOrientationChange()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    :cond_0
    return-void
.end method

.method private notifyActionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/view/IPinnedTaskListener;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Error delivering actions changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyAspectRatioChanged(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedTaskListener;->onAspectRatioChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Error delivering aspect ratio changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private notifyImeVisibilityChanged(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedTaskListener;->onImeVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Error delivering bounds changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMovementBoundsChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "WindowManager"

    const-string v3, "Error delivering actions changed event."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reloadResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    const v1, 0x10500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    return-void
.end method


# virtual methods
.method deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    iput-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDeferOrientationChanging=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFreezingTaskConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPendingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPipTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Action["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2, p2}, Landroid/app/RemoteAction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mAspectRatio:F

    return v0
.end method

.method isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$PinnedTaskController()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_0
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

.method onActivityHidden(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedTaskListener;->onActivityHidden(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Error delivering reset reentry fraction event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onCancelFixedRotationTransform(Lcom/android/server/wm/Task;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method onPostDisplayConfigurationChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method registerPinnedTaskListener(Landroid/view/IPinnedTaskListener;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyActionsChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Failed to register pinned task listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyActionsChanged(Ljava/util/List;)V

    return-void
.end method

.method setAdjustedForIme(ZI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move v1, p2

    :cond_1
    move p2, v1

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    if-ne v2, v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    if-ne p2, v1, :cond_2

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    return-void
.end method

.method setAspectRatio(F)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/wm/PinnedTaskController;->mAspectRatio:F

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedTaskController;->notifyAspectRatioChanged(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    :cond_0
    return-void
.end method

.method setEnterPipBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    return-void
.end method

.method setEnterPipTransaction(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    return-void
.end method

.method shouldDeferOrientationChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    return v0
.end method

.method startSeamlessRotationIfNeeded(Landroid/view/SurfaceControl$Transaction;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    iput-object v6, v0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    const/16 v8, 0x9

    const-string v9, "WindowManager"

    if-eqz v3, :cond_4

    iget v6, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionX:F

    iget v10, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionY:F

    invoke-virtual {v3}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    iget v12, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    const/high16 v13, 0x42b40000    # 90.0f

    cmpl-float v12, v12, v13

    const/high16 v14, -0x3d4c0000    # -90.0f

    if-nez v12, :cond_2

    iget v6, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionY:F

    iget v12, v7, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    iget v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionX:F

    sub-float v10, v12, v13

    invoke-virtual {v11, v14}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_2
    iget v12, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    cmpl-float v12, v12, v14

    if-nez v12, :cond_3

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    iget v14, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionY:F

    sub-float v6, v12, v14

    iget v10, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPositionX:F

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_3
    :goto_0
    invoke-virtual {v11, v6, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v12

    new-array v8, v8, [F

    invoke-virtual {v1, v12, v11, v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v8, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Seamless rotation PiP tx="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " pos="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_1

    :cond_5
    nop

    :goto_1
    nop

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Seamless rotation PiP bounds="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hintRect="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v9

    if-eqz v6, :cond_7

    const/4 v11, 0x3

    if-ne v9, v11, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v11, :cond_6

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-static {v12, v11}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v13

    nop

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v14

    invoke-static {v14, v13}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v14

    iget v15, v14, Landroid/graphics/Rect;->left:I

    iget v8, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v15, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_6
    move/from16 v11, p2

    move/from16 v12, p3

    goto :goto_2

    :cond_7
    move/from16 v11, p2

    move/from16 v12, p3

    :goto_2
    if-eqz v6, :cond_8

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v6

    goto :goto_3

    :cond_8
    move-object v8, v7

    :goto_3
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    int-to-float v0, v13

    div-float/2addr v15, v0

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    int-to-float v15, v14

    div-float v15, v0, v15

    :goto_4
    move v0, v15

    iget v15, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v16, v3

    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v3

    int-to-float v3, v15

    mul-float/2addr v3, v0

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v3, v15

    float-to-int v3, v3

    iget v15, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v18, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v4

    int-to-float v4, v15

    mul-float/2addr v4, v0

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v4, v15

    float-to-int v4, v4

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v15, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move/from16 v17, v0

    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    move/from16 v19, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v15, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {v1, v0, v15, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
