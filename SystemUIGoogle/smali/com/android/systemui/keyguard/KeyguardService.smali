.class public Lcom/android/systemui/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# static fields
.field public static sEnableRemoteKeyguardGoingAwayAnimation:Z

.field public static sEnableRemoteKeyguardOccludeAnimation:Z


# instance fields
.field public final mBinder:Lcom/android/systemui/keyguard/KeyguardService$5;

.field public final mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardService$2;

.field public final mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mOccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$3;

.field public final mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

.field public final mUnoccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$4;


# direct methods
.method public static -$$Nest$smwrap(Landroid/window/TransitionInfo;Z)[Landroid/view/RemoteAnimationTarget;
    .locals 24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move/from16 v3, p1

    move v6, v5

    goto :goto_1

    :cond_0
    move/from16 v3, p1

    move v6, v1

    :goto_1
    if-eq v3, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2

    :cond_2
    const/4 v7, -0x1

    :goto_2
    move v8, v7

    const/4 v7, 0x0

    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    :cond_3
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr v9, v5

    move-object/from16 v18, v7

    move/from16 v19, v9

    goto :goto_3

    :cond_4
    move/from16 v19, v5

    move-object/from16 v18, v7

    :goto_3
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v11, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v7, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v10, Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v9, 0x4

    if-eq v7, v5, :cond_6

    if-eq v7, v4, :cond_5

    const/4 v12, 0x3

    if-eq v7, v12, :cond_6

    if-eq v7, v9, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v16

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v7

    and-int/2addr v7, v5

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v5, v1

    :cond_8
    :goto_5
    const/4 v12, 0x0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    invoke-direct {v7, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int v14, v7, v2

    new-instance v7, Landroid/graphics/Point;

    move-object v15, v7

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v17, v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v20, 0x0

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v21

    const/16 v23, 0x0

    move-object v7, v10

    move v9, v4

    move-object v4, v10

    move-object/from16 v10, v16

    move-object v6, v11

    move v11, v5

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v23}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "persist.wm.enable_remote_keyguard_animation"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sput-boolean v4, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-lt v0, v1, :cond_1

    move v2, v3

    :cond_1
    sput-boolean v2, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;Lcom/android/wm/shell/transition/ShellTransitions;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$2;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardService$2;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$3;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$3;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$4;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mUnoccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$4;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService$5;-><init>(Lcom/android/systemui/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$5;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardLifecyclesDispatcher:Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    return-void
.end method


# virtual methods
.method public final checkPermission()V
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
    const-string p0, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardService"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Access denied to process: "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mBinder:Lcom/android/systemui/keyguard/KeyguardService$5;

    return-object p0
.end method

.method public final onCreate()V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    const-string v2, "KeyguardService"

    if-eqz v0, :cond_1

    const-string v0, "KeyguardService registerRemote: TRANSIT_KEYGUARD_GOING_AWAY"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v3, 0x100

    iput v3, v0, Landroid/window/TransitionFilter;->mFlags:I

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v4, Landroid/window/RemoteTransition;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardService$2;

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardService$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService$2;)V

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v3, v0, v4}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz v0, :cond_2

    const-string v0, "KeyguardService registerRemote: TRANSIT_KEYGUARD_(UN)OCCLUDE"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    const/16 v2, 0x40

    iput v2, v0, Landroid/window/TransitionFilter;->mFlags:I

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/window/TransitionFilter$Requirement;

    new-instance v5, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v5}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v5}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iput-object v4, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v4, v4, v1

    iput-boolean v1, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    iput v2, v4, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    iput-object v7, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iput-boolean v6, v5, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    iput-boolean v1, v5, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    iput v2, v5, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, v5, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v5, Landroid/window/RemoteTransition;

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardService;->mOccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$3;

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v4, v0, v5}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    new-instance v0, Landroid/window/TransitionFilter;

    invoke-direct {v0}, Landroid/window/TransitionFilter;-><init>()V

    iput v2, v0, Landroid/window/TransitionFilter;->mFlags:I

    new-array v4, v3, [Landroid/window/TransitionFilter$Requirement;

    new-instance v5, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v5}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v5, v4, v1

    new-instance v5, Landroid/window/TransitionFilter$Requirement;

    invoke-direct {v5}, Landroid/window/TransitionFilter$Requirement;-><init>()V

    aput-object v5, v4, v6

    iput-object v4, v0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    iput-boolean v1, v5, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    new-array v7, v3, [I

    fill-array-data v7, :array_2

    iput-object v7, v5, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iput-boolean v6, v5, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    aget-object v4, v4, v1

    iput-boolean v6, v4, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    iput-boolean v1, v4, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    iput v2, v4, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, v4, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    new-instance v2, Landroid/window/RemoteTransition;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mUnoccludeAnimation:Lcom/android/systemui/keyguard/KeyguardService$4;

    invoke-virtual {p0}, Landroid/app/Service;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/transition/ShellTransitions;->registerRemote(Landroid/window/TransitionFilter;Landroid/window/RemoteTransition;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Landroid/view/RemoteAnimationDefinition;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition;-><init>()V

    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardService;->mExitAnimationRunner:Lcom/android/systemui/keyguard/KeyguardService$2;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v3, 0x14

    invoke-virtual {v0, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_4
    sget-boolean v2, Lcom/android/systemui/keyguard/KeyguardService;->sEnableRemoteKeyguardOccludeAnimation:Z

    if-eqz v2, :cond_5

    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$OccludeActivityLaunchRemoteAnimationRunner;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 v3, 0x16

    invoke-virtual {v0, v3, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnoccludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    const/16 p0, 0x17

    invoke-virtual {v0, p0, v2}, Landroid/view/RemoteAnimationDefinition;->addRemoteAnimation(ILandroid/view/RemoteAnimationAdapter;)V

    :cond_5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

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
