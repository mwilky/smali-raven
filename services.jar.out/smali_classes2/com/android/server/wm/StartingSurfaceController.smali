.class public Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;
    }
.end annotation


# static fields
.field static final DEBUG_ENABLE_SHELL_DRAWER:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    nop

    const-string v0, "persist.debug.shell_starting_surface"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method


# virtual methods
.method createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    invoke-interface/range {v3 .. v15}, Lcom/android/server/policy/WindowManagerPolicy;->addSplashScreen(Landroid/os/IBinder;ILjava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v5, v1, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, p3

    :try_start_1
    invoke-virtual {v5, v0, v2, v6, v4}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;

    invoke-direct {v4, v1, v0}, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_1
    move/from16 v6, p3

    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :catchall_0
    move-exception v0

    move/from16 v6, p3

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v4, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_0
    nop

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v5, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v1, :cond_5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v6

    const/4 v7, 0x0

    if-eq v3, v6, :cond_3

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, v2, p1, v7, p2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    new-instance v3, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/StartingSurfaceController$ShellStartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :cond_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    :try_start_4
    sget-object v6, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskSnapshotSurface.create: Failed to find main window for activity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v0

    return v0
.end method

.method makeStartingWindowTypeParameter(ZZZZZZZ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    if-eqz p3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    if-eqz p4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz p5, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    if-eqz p6, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    if-eqz p7, :cond_6

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_6
    return v0
.end method
