.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field static final ANIMATION_NONE:I = -0x1

.field static final ANIMATION_STYLEABLE:I = 0x0

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field private static final SHOW_TYPES_FOR_PANIC:[I

.field private static final SHOW_TYPES_FOR_SWIPE:[I

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpDisplayFrameBounds:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpScreenDecorFrame:Landroid/graphics/Rect;

.field private static final sTmpStatusFrame:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllowLockscreenWhenOn:Z

.field private final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field private volatile mAwake:Z

.field private final mBarContentFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private mClimateBarAlt:Lcom/android/server/wm/WindowState;

.field private mClimateBarAltPosition:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private final mDeskDockEnablesAccelerometer:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayCutoutTouchableRegionSize:I

.field private volatile mDockMode:I

.field private final mDockedRootTaskBounds:Landroid/graphics/Rect;

.field private mDreamingLockscreen:Z

.field private mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

.field private mExtraNavBarAltPosition:I

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceShowSystemBars:Z

.field private mForceStatusBar:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field private mIsFreeformWindowOverlappingWithNavBar:Z

.field private volatile mKeyguardDrawComplete:Z

.field private mLastAppearance:I

.field private mLastBehavior:I

.field private mLastDisableFlags:I

.field private mLastDockedAppearance:I

.field private final mLastDockedRootTaskBounds:Landroid/graphics/Rect;

.field private mLastFocusIsFullscreen:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenAppearance:I

.field private mLastImmersiveMode:Z

.field private final mLastNonDockedRootTaskBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field private mLeftGestureInset:I

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private mNavButtonForcedVisible:Z

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAlt:Lcom/android/server/wm/WindowState;

.field private mNavigationBarAltPosition:I

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private mNavigationBarFrameHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationInCarMode:[I

.field private volatile mNavigationBarLetsThroughTaps:Z

.field private mNavigationBarPosition:I

.field private mNavigationBarWidthForRotationDefault:[I

.field private mNavigationBarWidthForRotationInCarMode:[I

.field private final mNonDockedRootTaskBounds:Landroid/graphics/Rect;

.field private mNotificationShade:Lcom/android/server/wm/WindowState;

.field private mPendingPanicGestureUptime:J

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private mRightGestureInset:I

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field private mShouldAttachNavBarToAppDuringTransition:Z

.field private mShowingDream:Z

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private mStatusBarAlt:Lcom/android/server/wm/WindowState;

.field private mStatusBarAltPosition:I

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private final mUiContext:Landroid/content/Context;

.field private volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpStatusFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpScreenDecorFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayFrameBounds:Landroid/graphics/Rect;

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x14
        0x15
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x4

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBarContentFrames:Landroid/util/SparseArray;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedRootTaskBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedRootTaskBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedRootTaskBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    new-instance v3, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    const/16 v6, 0x7d0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, 0x7e3

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110046

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v6, 0x11100a7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-boolean v6, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    :cond_2
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v8, p0, v6}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    new-instance v10, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v10, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v9, v4, v8, v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {p2, v9}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v9, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9, v4}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    new-instance v4, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-boolean v9, p1, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v4, v3, v6, v9}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_3

    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v2, v3}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    nop

    :goto_2
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-boolean v2, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_6

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x111012e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    const-string v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_3

    :cond_4
    const-string v1, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :cond_5
    :goto_3
    goto :goto_4

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :goto_4
    new-instance v1, Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v1, p1, v2, v4}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v1, v8, v3, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/DisplayPolicy;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->checkAltBarSwipeForTransientBars(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    xor-int v4, v0, v3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private checkAltBarSwipeForTransientBars(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    if-ne v1, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    if-ne v1, p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    if-ne v1, p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    :cond_3
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    if-eqz v0, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    return-object v1

    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    return-object p1

    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    move-object v1, p2

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method private clearNavBarOpaqueFlag(I)I
    .locals 1

    and-int/lit8 v0, p1, -0x3

    return v0
.end method

.method private configureNavBarOpacity(IZZ)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_5

    if-nez p2, :cond_3

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->clearNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/16 v4, 0x7e3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    or-int/lit8 p1, p1, 0x40

    :cond_a
    return p1
.end method

.method private configureStatusBarOpacity(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    and-int/lit8 p1, p1, -0x2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    or-int/lit8 p1, p1, 0x20

    :cond_2
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;->dispose()V

    :cond_0
    return-void
.end method

.method private drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    nop

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x4

    return v0

    :sswitch_1
    const/16 v0, 0x8

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowToken;->getFixedRotationBarContentFrame(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBarContentFrames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :goto_0
    return-object v1
.end method

.method private getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getRotatedWindowBounds(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-static {v0, v1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayFrameBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayFrameBounds:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayFrameBounds:Landroid/graphics/Rect;

    invoke-static {p3, v2, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method private getStatusBarAppearance(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v2, p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_3
    nop

    :goto_2
    return v1
.end method

.method private getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0
.end method

.method private isKeyguardOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    return v0
.end method

.method private isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3

    const/high16 v0, 0x1600000

    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$addWindowLw$4(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)I
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->getRotatedWindowBounds(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    sget-object v6, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v7, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    const/4 v7, 0x4

    if-ne v5, v7, :cond_1

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v7

    invoke-virtual {v7, v1, v1}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->computeFrameAndUpdateSourceFrame()V

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return v5
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpStatusFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getRotatedWindowBounds(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->computeFrameAndUpdateSourceFrame()V

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :cond_1
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-interface {v1, v3}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_5

    const/16 v4, 0x15

    invoke-interface {v1, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_6

    const/16 v4, 0x14

    invoke-interface {v1, v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-interface {v1, v4, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    return-void

    :cond_7
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)V

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_5

    :cond_8
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v1, v4, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->transferTouch()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v4, "WindowManager"

    const-string v5, "Could not transfer touch to the status bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    return-void

    :cond_a
    :goto_6
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1

    or-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 5

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isAodShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p2}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    return v2

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_8

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    move v4, v2

    :goto_2
    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1

    :cond_a
    :goto_4
    return v2
.end method

.method private simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowFrames;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    nop

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/InsetsStateController;->computeSimulatedState(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    throw v2
.end method

.method private supportsPointerLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private updateCurrentUserResources()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedTaskDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    iput-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Lcom/android/server/wm/DisplayPolicy;->configureStatusBarOpacity(I)I

    move-result v6

    invoke-direct {v0, v6, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZ)I

    move-result v6

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v7

    xor-int/2addr v7, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_2

    sub-long v10, v8, v10

    const-wide/16 v14, 0x7530

    cmp-long v10, v10, v14

    if-gtz v10, :cond_2

    move v4, v5

    :cond_2
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v10

    if-eqz v4, :cond_3

    if-eqz v7, :cond_3

    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq v1, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-wide v12, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v5

    sget-object v11, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    invoke-virtual {v5, v11}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)V

    :cond_3
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eq v5, v11, :cond_5

    iput-boolean v11, v0, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v12

    if-nez v12, :cond_4

    const/4 v13, -0x1

    goto :goto_2

    :cond_4
    iget v13, v12, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    :goto_2
    iget-object v14, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v15, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v15}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v15

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    invoke-virtual {v14, v13, v11, v15, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(IZZZ)V

    :cond_5
    return v6
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v2, v0

    goto :goto_0

    :sswitch_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_2

    :sswitch_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    sget-object v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x12

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :sswitch_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    goto :goto_1

    :sswitch_4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    goto :goto_1

    :sswitch_5
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    goto :goto_1

    :sswitch_6
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    nop

    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v5}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7f8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
    .end sparse-switch
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 5

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto/16 :goto_0

    :sswitch_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_3
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1004

    if-ltz v0, :cond_0

    iget-wide v3, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    :cond_0
    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_6

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->getAltBarPosition(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x7d5 -> :sswitch_3
        0x7d6 -> :sswitch_2
        0x7dd -> :sswitch_1
        0x7df -> :sswitch_2
        0x7f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    invoke-direct {p0, p1, p4}, Lcom/android/server/wm/DisplayPolicy;->applyKeyguardPolicy(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v2, v4, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    :cond_0
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ge v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v5

    if-eq v5, v3, :cond_2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_8

    if-eqz v0, :cond_8

    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_4

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawn()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_8

    if-nez p3, :cond_8

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_7

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_7
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_8

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    :cond_8
    if-eqz v0, :cond_a

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7ef

    if-ne v6, v7, :cond_a

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_9

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_9

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_a

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_a

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x3

    if-nez v6, :cond_c

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    if-nez p3, :cond_c

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_c

    if-ne v5, v7, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_d
    const/4 v6, 0x0

    :goto_1
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v8, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {p1, v6}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_e

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_f

    if-ne v5, v7, :cond_f

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    :cond_f
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginPostLayoutPolicyLw()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    return-void
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastDisableFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastAppearance="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/InsetsFlags;

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    const-string v3, "appearance"

    invoke-static {v0, v3, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/InsetsFlags;

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    const-string v3, "behavior"

    invoke-static {v0, v3, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExpandedPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mClimateBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mClimateBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExtraNavBarAlt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExtraNavBarAltPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAltPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRemoteInsetsControllerControlsSystemBars="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy;->getRemoteInsetsControllerControlsSystemBars()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public finishKeyguardDrawn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v6, :cond_4

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6

    move v1, v5

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :cond_5
    move v1, v3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_9

    if-nez v1, :cond_8

    or-int/lit8 v0, v0, 0x1

    :cond_8
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()Z

    move-result v2

    if-eqz v2, :cond_a

    or-int/lit8 v0, v0, 0x1

    :cond_a
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_b

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    return v0
.end method

.method public finishScreenTurningOn()Z
    .locals 15

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x6f2b8ffc

    const/16 v11, 0x3ff

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11, v4, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x43f97d42

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    monitor-exit v0

    return v2

    :cond_3
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getAlternateNavBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    return v0
.end method

.method getAlternateStatusBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    return v0
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDockMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    return-object v0
.end method

.method getLayoutHint(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/server/wm/WindowState;->hasCompatScale(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p3, v0, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    :goto_2
    nop

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {p3, v3}, Landroid/view/InsetsState;->scale(F)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v2
.end method

.method public getLidState()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    :goto_0
    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method public isAwake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method isHdmiPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method isKeyguardShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isTopLayoutFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$addWindowLw$1$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$2$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr v2, v3

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$addWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public synthetic lambda$addWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v1, p3, Landroid/graphics/Rect;->left:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v1, v0

    iput v1, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int v1, v0, v1

    iput v1, p3, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    iput v1, p3, Landroid/graphics/Rect;->top:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public synthetic lambda$addWindowLw$8$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$getImeSourceFrameProvider$9$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$DisplayPolicy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyDisplayReady$12$DisplayPolicy()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)I

    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$11$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$13$DisplayPolicy(ILjava/lang/String;I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v8

    move v9, p1

    move-object v10, p2

    invoke-interface {v7, v8, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    move-object v0, v7

    move v1, v8

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    goto :goto_0

    :cond_0
    move v9, p1

    move-object v10, p2

    :goto_0
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mBarContentFrames:Landroid/util/SparseArray;

    const/16 v4, 0x7e3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mBarContentFrames:Landroid/util/SparseArray;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v8

    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v8, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v11, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    and-int/lit16 v13, v5, 0x100

    const/16 v14, 0x100

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    move v13, v12

    :goto_0
    const/high16 v14, 0x10000

    and-int v15, v5, v14

    if-ne v15, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    move v14, v12

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v15

    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {v3, v15, v12, v11}, Landroid/view/ViewRootImpl;->computeWindowBounds(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-nez p2, :cond_7

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v12, v6

    if-eqz v12, :cond_6

    const/16 v12, 0x13

    invoke-virtual {v15, v12}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v12

    if-eqz v12, :cond_5

    move/from16 v17, v6

    move/from16 v18, v7

    const/4 v6, 0x0

    invoke-virtual {v12, v10, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    goto :goto_2

    :cond_5
    move/from16 v17, v6

    move/from16 v18, v7

    :goto_2
    goto :goto_4

    :cond_6
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    move/from16 v18, v7

    and-int/lit16 v6, v5, 0x100

    if-nez v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v11

    :goto_3
    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_4
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_13

    if-eqz p2, :cond_9

    if-nez v13, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v16

    const/4 v12, 0x1

    xor-int/lit8 v16, v16, 0x1

    nop

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v21

    if-nez v21, :cond_a

    if-eqz v13, :cond_a

    if-eq v4, v12, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v3

    iget-object v3, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    if-ne v6, v3, :cond_c

    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    move-object/from16 v22, v15

    iget v15, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    if-ge v3, v15, :cond_b

    const/high16 v3, -0x80000000

    iput v3, v1, Landroid/graphics/Rect;->top:I

    const v15, 0x7fffffff

    iput v15, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    :cond_b
    const/high16 v3, -0x80000000

    const v15, 0x7fffffff

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v15, v1, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_c
    move-object/from16 v22, v15

    :goto_7
    if-eqz v13, :cond_e

    if-eqz v14, :cond_e

    if-nez v16, :cond_e

    if-eqz v6, :cond_d

    const/4 v3, 0x1

    if-ne v6, v3, :cond_e

    :cond_d
    const/high16 v3, -0x80000000

    iput v3, v1, Landroid/graphics/Rect;->top:I

    :cond_e
    if-eqz v13, :cond_10

    if-eqz v14, :cond_10

    if-nez v20, :cond_10

    if-eqz v6, :cond_f

    const/4 v3, 0x1

    if-ne v6, v3, :cond_10

    :cond_f
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    const v3, 0x7fffffff

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :pswitch_2
    const v3, 0x7fffffff

    iput v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_8

    :pswitch_3
    const/high16 v3, -0x80000000

    iput v3, v1, Landroid/graphics/Rect;->left:I

    :cond_10
    :goto_8
    const/16 v3, 0x7db

    if-ne v4, v3, :cond_11

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v15, 0x4

    if-ne v3, v15, :cond_11

    const v3, 0x7fffffff

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_11
    if-nez v7, :cond_12

    if-nez v12, :cond_12

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v15, 0x1

    xor-int/2addr v3, v15

    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    :cond_12
    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_13
    move-object/from16 v19, v3

    move-object/from16 v22, v15

    :goto_9
    and-int/lit16 v1, v5, 0x200

    if-eqz v1, :cond_14

    const/16 v1, 0x7da

    if-eq v4, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, -0x2710

    iput v1, v11, Landroid/graphics/Rect;->top:I

    iput v1, v11, Landroid/graphics/Rect;->left:I

    const/16 v1, 0x2710

    iput v1, v11, Landroid/graphics/Rect;->bottom:I

    iput v1, v11, Landroid/graphics/Rect;->right:I

    :cond_14
    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->computeFrameAndUpdateSourceFrame()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public navigationBarCanMove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    return v1

    :cond_0
    if-ne p3, v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050278

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050277

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    const v7, 0x105012c

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    iput v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayCutoutTouchableRegionSize:I

    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501ca

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501cc

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501c6

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501c7

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x10501cf

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    const v7, 0x10e0092

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    const v7, 0x111010d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    const v7, 0x111010a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    const v7, 0x10501c8

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    const v7, 0x1110029

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v8, v7, :cond_1

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    :cond_1
    return-void
.end method

.method onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method onPowerKeyDown(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method onSystemUiSettingsChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onSettingChanged(I)Z

    move-result v0

    return v0
.end method

.method onVrStateChangedLw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    return-void
.end method

.method release()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_6

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_2

    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_7

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    :cond_7
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()Z

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const v4, 0x10a002d

    const v5, 0x10a002e

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v1, v3, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_0

    goto :goto_0

    :cond_0
    if-eq v2, v10, :cond_1

    if-ne v2, v6, :cond_1d

    :cond_1
    return v4

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const v11, 0x10a0029

    const v12, 0x10a002b

    const v13, 0x10a0026

    const v14, 0x10a002a

    const v15, 0x10a0027

    const v16, 0x10a002c

    if-ne v1, v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_4

    return v7

    :cond_4
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v3, v8, :cond_9

    if-eq v2, v9, :cond_7

    if-ne v2, v8, :cond_5

    goto :goto_1

    :cond_5
    if-eq v2, v10, :cond_6

    if-ne v2, v6, :cond_1d

    :cond_6
    return v13

    :cond_7
    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10a0028

    return v3

    :cond_8
    return v15

    :cond_9
    if-ne v3, v9, :cond_d

    if-eq v2, v9, :cond_c

    if-ne v2, v8, :cond_a

    goto :goto_2

    :cond_a
    if-eq v2, v10, :cond_b

    if-ne v2, v6, :cond_1d

    :cond_b
    return v12

    :cond_c
    :goto_2
    return v16

    :cond_d
    if-ne v3, v10, :cond_1d

    if-eq v2, v9, :cond_10

    if-ne v2, v8, :cond_e

    goto :goto_3

    :cond_e
    if-eq v2, v10, :cond_f

    if-ne v2, v6, :cond_1d

    :cond_f
    return v11

    :cond_10
    :goto_3
    return v14

    :cond_11
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_12

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_12

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eq v1, v3, :cond_12

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_1d

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_13

    return v7

    :cond_13
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-ne v1, v3, :cond_14

    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAltPosition:I

    goto :goto_4

    :cond_14
    iget v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAltPosition:I

    :goto_4
    if-eq v2, v9, :cond_16

    if-ne v2, v8, :cond_15

    goto :goto_5

    :cond_15
    move v8, v7

    goto :goto_6

    :cond_16
    :goto_5
    move v8, v10

    :goto_6
    if-eq v2, v10, :cond_18

    if-ne v2, v6, :cond_17

    goto :goto_7

    :cond_17
    move v10, v7

    :cond_18
    :goto_7
    move v6, v10

    sparse-switch v3, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    if-eqz v8, :cond_19

    return v5

    :cond_19
    if-eqz v6, :cond_1d

    return v4

    :sswitch_1
    if-eqz v8, :cond_1a

    return v15

    :cond_1a
    if-eqz v6, :cond_1d

    return v13

    :sswitch_2
    if-eqz v8, :cond_1b

    return v16

    :cond_1b
    if-eqz v6, :cond_1d

    return v12

    :sswitch_3
    if-eqz v8, :cond_1c

    return v14

    :cond_1c
    if-eqz v6, :cond_1d

    return v11

    :cond_1d
    :goto_8
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    const v3, 0x10a0013

    return v3

    :cond_1f
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAwake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return-void
.end method

.method public setDockMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public setHdmiPlugged(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .locals 3

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public setLidState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method shouldAttachNavBarToAppDuringTransition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v3}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    new-instance v11, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v11, p0, p1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v6, p0

    move-object v8, p1

    move-object v9, v3

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public switchUser()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    return-void
.end method

.method systemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public takeScreenshot(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_2

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move v1, p1

    move v2, v4

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method topAppHidesStatusBar()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_0

    const v1, 0x111010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    return-void
.end method

.method updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 1

    if-eqz p5, :cond_2

    if-eq p5, p4, :cond_1

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p5, p3, :cond_2

    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 p1, p1, -0x11

    iget-object v0, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Lcom/android/server/wm/DisplayPolicy;->isLightBarAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v0

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, -0x11

    :cond_3
    return p1
.end method

.method updateSystemUiVisibilityLw()Z
    .locals 27

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    nop

    const/4 v6, 0x0

    if-nez v0, :cond_1

    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v14, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v14

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_4
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_2
    move-object v0, v2

    if-nez v0, :cond_5

    return v6

    :cond_5
    move-object/from16 v16, v0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v0

    :goto_3
    move-object/from16 v13, v16

    iput-object v13, v15, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v17

    if-eqz v17, :cond_7

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x3

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/wm/WindowManagerService;->getRootTaskBounds(IILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_7
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_4
    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x4

    if-eqz v17, :cond_8

    move v1, v7

    goto :goto_5

    :cond_8
    move v1, v14

    :goto_5
    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getRootTaskBounds(IILandroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarAppearance(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v10

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v15, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarAppearance(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v9

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getDisableFlags()I

    move-result v8

    invoke-direct {v15, v13, v8}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;I)I

    move-result v18

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v11, v0, :cond_9

    move v12, v14

    goto :goto_6

    :cond_9
    move v12, v6

    :goto_6
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    or-int v0, v0, v18

    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    invoke-virtual {v13, v6}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    move v2, v6

    goto :goto_8

    :cond_b
    :goto_7
    move v2, v14

    :goto_8
    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-ne v3, v8, :cond_c

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v3, v0, :cond_c

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    if-ne v3, v10, :cond_c

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    if-ne v3, v9, :cond_c

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v3, v1, :cond_c

    iget-boolean v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v3, v2, :cond_c

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedRootTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedRootTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v6

    :cond_c
    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_f

    iget-boolean v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-eq v3, v2, :cond_f

    iget v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v3, v0

    and-int/2addr v3, v7

    if-eqz v3, :cond_f

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v2, :cond_e

    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_d

    goto :goto_9

    :cond_d
    move v4, v6

    goto :goto_a

    :cond_e
    :goto_9
    move v4, v14

    :goto_a
    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    :cond_f
    iput v8, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    iput v0, v15, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    iput v10, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    iput v9, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    iput v1, v15, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    iput-boolean v2, v15, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedRootTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v15, Lcom/android/server/wm/DisplayPolicy;->mLastDockedRootTaskBounds:Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/wm/DisplayPolicy;->mNonDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v15, Lcom/android/server/wm/DisplayPolicy;->mDockedRootTaskBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v17, :cond_10

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/internal/view/AppearanceRegion;

    new-instance v7, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v7, v10, v3}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v7, v5, v6

    new-instance v6, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v6, v9, v4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v6, v5, v14

    goto :goto_b

    :cond_10
    new-array v5, v14, [Lcom/android/internal/view/AppearanceRegion;

    new-instance v7, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v7, v10, v3}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v7, v5, v6

    :goto_b
    move-object/from16 v19, v11

    move-object v11, v5

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v15, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;

    move-object/from16 v20, v6

    move-object/from16 v21, v3

    move-object v3, v7

    move-object/from16 v7, p0

    move/from16 v22, v8

    move/from16 v23, v9

    move-object v9, v5

    move/from16 v24, v10

    move v10, v0

    move-object/from16 v25, v13

    move v13, v1

    move/from16 v26, v14

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/DisplayPolicy;ILjava/lang/String;I[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v26
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 7

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const/4 v3, -0x7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    return v3

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, -0xa

    return v0

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v3

    :cond_6
    :goto_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_7
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_d

    aget v5, v0, v2

    sparse-switch v5, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mExtraNavBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_c

    return v3

    :sswitch_7
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mClimateBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_c

    return v3

    :sswitch_8
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_9
    return v3

    :sswitch_9
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAlt:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    return v3

    :cond_c
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_d
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_5
        0x7de -> :sswitch_4
        0x7e1 -> :sswitch_3
        0x7e3 -> :sswitch_2
        0x7e8 -> :sswitch_1
        0x7f1 -> :sswitch_3
        0x7f8 -> :sswitch_0
        0x7f9 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
    .end sparse-switch
.end method
