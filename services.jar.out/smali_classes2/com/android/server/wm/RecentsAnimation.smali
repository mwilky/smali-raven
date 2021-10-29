.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field private final mCaller:Lcom/android/server/wm/WindowProcessController;

.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentsComponent:Landroid/content/ComponentName;

.field private final mRecentsFeatureId:Ljava/lang/String;

.field private final mRecentsUid:I

.field private mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTargetActivityType:I

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mUserId:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$rlVkoJ_usUn95Q8zT-IqZfw2ZB8(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->matchesTarget(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    iput-object p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    iput-object p9, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    nop

    nop

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    return-void
.end method

.method private finishAnimation(IZ)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v4, p1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2d9f011c

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    :cond_2
    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;

    const-class v2, Lcom/android/server/wm/Task;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    sget-object v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTopNonAlwaysOnTopRootTask$2(Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onRootTaskOrderChanged$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchesTarget(Lcom/android/server/wm/Task;)Z
    .locals 2

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Landroid/window/TaskSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startRecentsActivityInBackground(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    return-void
.end method


# virtual methods
.method public synthetic lambda$finishAnimation$0$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x20

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v6, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v12

    :goto_0
    move-object v13, v6

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6a322c99

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object v8, v3, v15

    aput-object v9, v3, v14

    invoke-static {v10, v11, v5, v12, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez v13, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    :cond_2
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_1
    iput-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-ne v2, v15, :cond_6

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v15, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "RecentsAnimation.onAnimationFinished()"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, v0, :cond_5

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x12074eb4

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v6, v9, v15

    invoke-static {v7, v8, v5, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    goto :goto_2

    :cond_6
    if-ne v2, v14, :cond_a

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_7

    if-eq v4, v6, :cond_7

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6c9e51b6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v8, v7, v15

    aput-object v9, v7, v14

    invoke-static {v10, v11, v5, v12, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    nop

    :cond_8
    :goto_2
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v12, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    :cond_9
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_a
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v12, v5, v5}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    :cond_c
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    :cond_d
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public onAnimationFinished(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    return-void
.end method

.method public onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x3fbcc940

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v2, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method preloadRecentsActivity()V
    .locals 10

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6578968

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const-string v5, "preloadRecents"

    if-eqz v4, :cond_3

    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v3, v3, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x44e8f9ad

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v7, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-nez v6, :cond_6

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x266cf679

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v3, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v4, v3, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_6
    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    sget-object v3, Lcom/android/server/wm/Task$ActivityState;->STOPPED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v4, v2, v2, v5}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V
    .locals 26

    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x54466bce

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v0, v3, v13

    invoke-static {v1, v2, v13, v11, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v14, 0x20

    const-string v0, "RecentsAnimation#startRecentsActivity"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v12

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    move/from16 v16, v0

    if-eqz v16, :cond_3

    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v0, v3, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x817147

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v0, v5, v13

    invoke-static {v3, v4, v13, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v12, v2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    :cond_5
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v23

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    :cond_6
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const v0, 0x47063048

    const/4 v3, 0x2

    if-eqz v16, :cond_9

    :try_start_0
    iget-object v4, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v13

    aput-object v5, v7, v12

    invoke-static {v6, v0, v13, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v4, v0, :cond_8

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_8
    move-object/from16 v24, v1

    move-object v7, v2

    goto :goto_1

    :cond_9
    const-string v4, "startRecentsActivity_noTargetActivity"

    invoke-direct {v8, v4}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v5, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v4, v13, v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v4

    move-object v1, v4

    invoke-direct {v8, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    move-object v2, v4

    iget-object v4, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_a

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v13

    aput-object v5, v7, v12

    invoke-static {v6, v0, v13, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x26838cff

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v0, v6, v13

    invoke-static {v4, v5, v13, v11, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_b
    move-object/from16 v24, v1

    move-object v7, v2

    :goto_1
    :try_start_1
    iput-boolean v12, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    iput-object v7, v8, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_c

    :try_start_2
    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const-string v1, "startRecentsActivity"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    move-object/from16 v1, v24

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v7

    move-object/from16 v1, v24

    goto/16 :goto_4

    :cond_c
    :goto_2
    :try_start_3
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v8, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v25, v7

    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_d

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    :cond_d
    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v17

    const/16 v19, 0x2

    if-nez v16, :cond_e

    move/from16 v20, v12

    goto :goto_3

    :cond_e
    move/from16 v20, v13

    :goto_3
    move-object/from16 v18, v23

    move-object/from16 v21, v25

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    iget-object v1, v8, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/TaskDisplayArea;->registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_5
    iget-object v3, v8, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
