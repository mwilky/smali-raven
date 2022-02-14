.class Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field private mFocusedApp:Ljava/lang/String;

.field private mFolded:Ljava/lang/Boolean;

.field private final mFoldedArea:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideFoldedArea:Landroid/graphics/Rect;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput p4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v3, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    invoke-direct {v2, p1, v3}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .locals 12

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v9}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v1

    :goto_1
    new-instance v11, Lcom/android/server/policy/DisplayFoldController;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move v5, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V

    return-object v11
.end method

.method private setDeviceFolded(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v5, v1

    neg-int v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayFoldListener;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v3, v4, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method finishedGoingToSleep()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    return-void
.end method

.method finishedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    return-void
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$new$0$DisplayFoldController(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method public synthetic lambda$registerDisplayFoldListener$1$DisplayFoldController(Landroid/view/IDisplayFoldListener;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    return-void
.end method

.method registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
