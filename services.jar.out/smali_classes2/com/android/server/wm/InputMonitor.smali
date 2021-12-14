.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$UpdateInputWindows;,
        Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    }
.end annotation


# instance fields
.field private mDisableWallpaperTouchEvents:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayRemoved:Z

.field private mDisplayWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mInputFocus:Landroid/os/IBinder;

.field private final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field private final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field private mUpdateInputWindowsImmediately:Z

.field private mUpdateInputWindowsNeeded:Z

.field private mUpdateInputWindowsPending:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputConsumerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object v0
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isTrustedOverlay(I)Z
    .locals 1

    const/16 v0, 0x7f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7ef

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    return-void
.end method

.method static populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setVisible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputFeatures(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    const/16 v1, 0x38

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsFlags(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPortalToDisplayId(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->clearTouchableRegion()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setFocusedWindow(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/SurfaceControl$Transaction;

    const v0, 0xf231

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "reason=UpdateInputWindows"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x94479f7

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private scheduleUpdateInputWindows()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_0
    return-void
.end method

.method static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v1, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    invoke-virtual {v0, p3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTrustedOverlay(Z)V

    invoke-static {v0, v1}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Lcom/android/server/wm/InputWindowHandleWrapper;Z)V

    invoke-static {p1, p0, v0}, Lcom/android/server/wm/InputMonitor;->setInputWindowInfoIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/server/wm/InputWindowHandleWrapper;)V

    return-void
.end method

.method private updateInputFocusRequest(Lcom/android/server/wm/InputConsumerImpl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/InputConsumerImpl;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void

    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v5}, Lcom/android/server/wm/InputWindowHandleWrapper;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/InputMonitor;->requestFocus(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v5, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x2d58587f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", display: "

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "wallpaper_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "pip_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "recents_animation_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal input consumer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v4, v1, Landroid/view/InputWindowHandle;->focusable:Z

    goto :goto_1

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v4, v1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    nop

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing input consumer found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x5af18033 -> :sswitch_2
        0x3d13fc73 -> :sswitch_1
        0x5463dca8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    return-object v0
.end method

.method public synthetic lambda$onDisplayRemoved$0$InputMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    return-void
.end method

.method layoutInputConsumers(II)V
    .locals 5

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayHeight:I

    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method onDisplayRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InputMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method populateInputWindowHandle(Lcom/android/server/wm/InputWindowHandleWrapper;Lcom/android/server/wm/WindowState;)V
    .locals 10

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputApplicationHandle(Landroid/view/InputApplicationHandle;)V

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setDispatchingTimeoutMillis(J)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTouchOcclusionMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchOcclusionMode(I)V

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputFeatures(I)V

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setPaused(Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setVisible(Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-virtual {p1, v4}, Lcom/android/server/wm/InputWindowHandleWrapper;->setHasWallpaper(Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFrame(IIII)V

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setSurfaceInset(I)V

    iget v6, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    iget v6, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v7, v6

    :cond_5
    invoke-virtual {p1, v7}, Lcom/android/server/wm/InputWindowHandleWrapper;->setScaleFactor(F)V

    iget-object v6, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    iget-object v7, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2, v6, v7}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/graphics/Region;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/InputMonitor;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {p1, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setLayoutParamsFlags(I)V

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v9

    if-eq v9, v3, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    const/4 v7, 0x1

    :cond_7
    :goto_4
    if-nez v7, :cond_8

    invoke-virtual {p1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setReplaceTouchableRegionWithCrop(Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    :cond_8
    return-void
.end method

.method resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_0
    return-void
.end method

.method setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x55b8d160

    const/4 v7, 0x4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const/4 v9, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    :cond_1
    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowToken;->paused:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_4
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return-void
.end method

.method updateInputWindowsImmediately(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method updateInputWindowsLw(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    return-void
.end method
