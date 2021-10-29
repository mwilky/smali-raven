.class public Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "SafeActivityOptions.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mCallerOptions:Landroid/app/ActivityOptions;

.field private final mOriginalCallingPid:I

.field private final mOriginalCallingUid:I

.field private final mOriginalOptions:Landroid/app/ActivityOptions;

.field private mRealCallingPid:I

.field private mRealCallingUid:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method private abort()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_1
    return-void
.end method

.method static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/SafeActivityOptions;->abort()V

    :cond_0
    return-void
.end method

.method private checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const-string v7, "android.permission.START_TASKS_FROM_RECENTS"

    const/4 v8, -0x1

    const-string v9, "ActivityTaskManager"

    const-string v10, ", uid="

    const-string v11, " (pid="

    const-string v12, " from "

    const-string v13, "Permission Denial: starting "

    if-eq v6, v8, :cond_1

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchTaskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v3, v4, v5, v14, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchTaskDisplayArea="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v15

    if-eqz v1, :cond_6

    if-eq v15, v8, :cond_6

    invoke-virtual {v3, v4, v5, v15, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") with launchDisplayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v8

    if-eqz v1, :cond_8

    if-eqz v8, :cond_8

    move-object/from16 v16, v6

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    move/from16 v17, v8

    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v18, v14

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v14}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") with lockTaskMode=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    move-object/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v14

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v6

    if-eqz v1, :cond_a

    if-eqz v6, :cond_a

    invoke-static {v7, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") with overrideTaskTransition=true"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v8, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v8, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    invoke-static {v8, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") with remoteAnimationAdapter"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_c
    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-direct {v0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") with launchedFromBubble=true"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_e
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v8

    if-eqz v8, :cond_11

    invoke-direct {v0, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->isSystemOrSystemUI(II)Z

    move-result v14

    if-nez v14, :cond_11

    const/4 v14, 0x0

    const/4 v1, 0x4

    if-ne v8, v1, :cond_f

    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v14, 0x1

    :cond_f
    if-eqz v14, :cond_10

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") with launchActivityType="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v10

    invoke-static {v10}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_11
    :goto_8
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "(no intent)"

    :goto_0
    return-object v0
.end method

.method private isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method private isSystemOrSystemUI(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-static {v1, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p2, v1, :cond_1

    const-string v1, "ActivityTaskManager"

    const-string v2, "Safe activity options constructed after clearing calling id"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    return-void
.end method


# virtual methods
.method getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_0

    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_1

    iget v9, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v10, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->setCallingPidUidForRemoteAnimationAdapter(Landroid/app/ActivityOptions;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getOriginalOptions()Landroid/app/ActivityOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 3

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    return-object v2
.end method

.method popAppVerificationBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setCallerOptions(Landroid/app/ActivityOptions;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    return-void
.end method
