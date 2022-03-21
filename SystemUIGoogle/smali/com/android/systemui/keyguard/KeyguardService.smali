.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# static fields
.field private static final sEnableRemoteKeyguardAnimation:I

.field public static sEnableRemoteKeyguardGoingAwayAnimation:Z

.field public static sEnableRemoteKeyguardOccludeAnimation:Z


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private final mExitAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

.field private final mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final mOccludeAnimation:Landroid/window/IRemoteTransition;

.field private final mOccludeAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

.field private final mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

.field final mUnoccludeAnimation:Landroid/window/IRemoteTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "persist.wm.enable_remote_keyguard_animation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardAnimation:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;Lcom/android/wm/shell/transition/ShellTransitions;)V
    .locals 8

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/keyguard/KeyguardService$3;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$4;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimation:Landroid/window/IRemoteTransition;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$5;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mUnoccludeAnimation:Landroid/window/IRemoteTransition;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$6;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    if-eqz p3, :cond_0

    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {p0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    sget-boolean p1, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 p2, 0x14

    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 p2, 0x15

    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_1
    sget-boolean p1, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v4, 0x0

    const-wide/16 p2, 0x0

    move-object v2, p1

    move-object v3, v6

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 p2, 0x16

    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 p2, 0x17

    invoke-virtual {p0, p2, p1}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/app/ActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/window/TransitionInfo;Z)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardService;->wrap(Landroid/window/TransitionInfo;Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(II[Landroid/view/RemoteAnimationTarget;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardService;->getTransitionOldType(II[Landroid/view/RemoteAnimationTarget;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/internal/policy/IKeyguardService$Stub;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    return-object p0
.end method

.method private static getTransitionOldType(II[Landroid/view/RemoteAnimationTarget;)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    if-ne p0, p1, :cond_1

    const/16 p0, 0x16

    return p0

    :cond_1
    const/16 p1, 0x9

    if-ne p0, p1, :cond_2

    const/16 p0, 0x17

    return p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected transit type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    array-length p0, p2

    if-nez p0, :cond_4

    const/16 p0, 0x15

    goto :goto_1

    :cond_4
    const/16 p0, 0x14

    :goto_1
    return p0
.end method

.method private static newModeToLegacyMode(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method

.method private static wrap(Landroid/window/TransitionInfo;Z)[Landroid/view/RemoteAnimationTarget;
    .locals 23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move/from16 v3, p1

    move v5, v4

    goto :goto_1

    :cond_0
    move/from16 v3, p1

    move v5, v1

    :goto_1
    if-eq v3, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v21

    if-eqz v21, :cond_2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    :goto_2
    move v7, v6

    const/4 v6, 0x0

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    :cond_3
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr v8, v4

    move-object/from16 v17, v6

    move/from16 v18, v8

    goto :goto_3

    :cond_4
    move/from16 v18, v4

    move-object/from16 v17, v6

    :goto_3
    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v15, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v15, v6, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v10, Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardService;->newModeToLegacyMode(I)I

    move-result v8

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/2addr v6, v4

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v4, v1

    :cond_6
    :goto_4
    const/4 v11, 0x0

    new-instance v6, Landroid/graphics/Rect;

    move-object v12, v6

    invoke-direct {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v13, v6, v2

    new-instance v6, Landroid/graphics/Point;

    move-object v14, v6

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v16, v6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v19, 0x0

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v20

    const/16 v22, 0x0

    move-object v6, v10

    move-object v1, v10

    move v10, v4

    invoke-direct/range {v6 .. v22}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardService"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    const-string v1, "KeyguardService"

    if-eqz v0, :cond_1

    const-string v0, "KeyguardService registerRemote: TRANSIT_KEYGUARD_GOING_AWAY"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v2, 0x100

    iput v2, v0, Landroid/window/TransitionFilter;->mFlags:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v3, Landroid/window/RemoteTransition;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Landroid/view/IRemoteAnimationRunner$Stub;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardService;->wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v2, v0, v3}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardService registerRemote: TRANSIT_KEYGUARD_(UN)OCCLUDE"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v1, 0x40

    iput v1, v0, Landroid/window/TransitionFilter;->mFlags:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/window/TransitionFilter$Requirement;

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iput-object v3, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v3, v5

    iput-boolean v5, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    aget-object v4, v3, v5

    iput v1, v4, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    aget-object v4, v3, v5

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    iput-object v7, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget-object v4, v3, v6

    iput-boolean v6, v4, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    aget-object v4, v3, v6

    iput-boolean v5, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    aget-object v4, v3, v6

    iput v1, v4, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    aget-object v3, v3, v6

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    iput-object v4, v3, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v4, Landroid/window/RemoteTransition;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimation:Landroid/window/IRemoteTransition;

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v3, v0, v4}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    iput v1, v0, Landroid/window/TransitionFilter;->mFlags:I

    new-array v3, v2, [Landroid/window/TransitionFilter$Requirement;

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v4, v3, v5

    new-instance v4, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v4}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v4, v3, v6

    iput-object v3, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v3, v6

    iput-boolean v5, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    aget-object v4, v3, v6

    new-array v7, v2, [I

    fill-array-data v7, :array_2

    iput-object v7, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget-object v4, v3, v6

    iput-boolean v6, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    aget-object v4, v3, v5

    iput-boolean v6, v4, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    aget-object v4, v3, v5

    iput-boolean v5, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    aget-object v4, v3, v5

    iput v1, v4, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    aget-object v1, v3, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    iput-object v2, v1, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v2, Landroid/window/RemoteTransition;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mUnoccludeAnimation:Landroid/window/IRemoteTransition;

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
    .end array-data
.end method
