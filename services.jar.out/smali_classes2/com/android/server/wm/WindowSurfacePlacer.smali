.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$Traverser;
    }
.end annotation


# static fields
.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mDeferredRequests:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTraversalScheduled:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$Traverser;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowSurfacePlacer$1;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private performSurfacePlacementLoop()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_0

    :cond_3
    const-string v2, "WindowManager"

    const-string v4, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    monitor-enter v2

    const-wide/16 v4, 0xfa

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x6

    if-ge v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_4

    :cond_5
    const-string v1, "WindowManager"

    const-string v2, "Performed 6 layouts in a row. Skipping"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_4

    :cond_6
    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    goto :goto_5

    :catch_1
    move-exception v1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    const-string v2, "WindowManager"

    const-string v3, "Unhandled exception while laying out windows"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method


# virtual methods
.method continueLayout(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    :cond_2
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layouts looping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final performSurfacePlacement()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    return-void
.end method

.method final performSurfacePlacement(Z)V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    return-void

    :cond_0
    const/4 v0, 0x6

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v2, :cond_2

    if-gtz v0, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    return-void
.end method

.method performSurfacePlacementIfScheduled()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_0
    return-void
.end method

.method requestTraversal()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferredRequests:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Lcom/android/server/wm/WindowSurfacePlacer$Traverser;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
