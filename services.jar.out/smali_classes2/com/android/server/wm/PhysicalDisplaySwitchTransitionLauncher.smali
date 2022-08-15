.class public Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;
.super Ljava/lang/Object;
.source "PhysicalDisplaySwitchTransitionLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsFolded:Z

.field public mTransition:Lcom/android/server/wm/Transition;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsFolded(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TransitionController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const-class p2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-virtual {p2, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDeviceStateListener:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$DeviceStateListener;

    invoke-virtual {v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_0
    return-void
.end method

.method public onDisplayUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->setAllReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    :cond_0
    return-void
.end method

.method public requestDisplaySwitchTransitionIfNeeded(IIIII)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mIsFolded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v9, Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-direct {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v9, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object v3, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    move-object v6, v7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    iget-object p2, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p3, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    :cond_4
    return-void
.end method
