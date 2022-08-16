.class public final Lcom/android/systemui/biometrics/UdfpsController;
.super Ljava/lang/Object;
.source "UdfpsController.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsController$Callback;,
        Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
    }
.end annotation


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAcquiredReceived:Z

.field public mActivePointerId:I

.field public final mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final mAlternateTouchProvider:Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;

.field public mAodInterruptRunnable:Ljava/lang/Runnable;

.field public mAttemptedToDismissKeyguard:Z

.field public mAuthControllerUpdateUdfpsLocation:Ljava/lang/Runnable;

.field public final mBiometricExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastReceiver:Lcom/android/systemui/biometrics/UdfpsController$2;

.field public final mCallbacks:Ljava/util/HashSet;

.field public mCancelAodTimeoutAction:Ljava/lang/Runnable;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mHalControlsIllumination:Z

.field public final mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsAodInterruptActive:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mOnFingerDown:Z

.field public final mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

.field public mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mPanelExpansionStateManager:Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenObserver:Lcom/android/systemui/biometrics/UdfpsController$1;

.field public mScreenOn:Z

.field public mSensorId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mTouchLogTime:J

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/FalsingManager;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;Lcom/android/systemui/biometrics/UdfpsShell;Ljava/util/Optional;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/animation/ActivityLaunchAnimator;Ljava/util/Optional;Ljava/util/concurrent/Executor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Landroid/view/LayoutInflater;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;",
            "Lcom/android/systemui/biometrics/UdfpsShell;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/UdfpsHbmProvider;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/hardware/display/DisplayManager;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/biometrics/UdfpsOverlayParams;-><init>(I)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/HashSet;

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/UdfpsController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenObserver:Lcom/android/systemui/biometrics/UdfpsController$1;

    new-instance v5, Lcom/android/systemui/biometrics/UdfpsController$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/UdfpsController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    iput-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBroadcastReceiver:Lcom/android/systemui/biometrics/UdfpsController$2;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    move-object v6, p2

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object v6, p3

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v6, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPanelExpansionStateManager:Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

    move-object v7, p6

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v7, p21

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v7, p27

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v7, 0x0

    move-object/from16 v8, p20

    invoke-virtual {v8, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    iput-object v8, v0, Lcom/android/systemui/biometrics/UdfpsController;->mHbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    iget-object v8, v2, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v2, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, v0, Lcom/android/systemui/biometrics/UdfpsController;->mScreenOn:Z

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    move-object/from16 v2, p30

    invoke-virtual {v2, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateTouchProvider:Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;

    move-object/from16 v2, p31

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mBiometricExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    sget-object v4, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$UnderDisplayFingerprint;->INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$UnderDisplayFingerprint;

    new-instance v7, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    move-object p2, v2

    move-object p3, p1

    move-object/from16 p4, p22

    move-object/from16 p5, p23

    move-object p6, v4

    move-object/from16 p7, v7

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;-><init>(Lcom/android/systemui/biometrics/UdfpsController;)V

    invoke-virtual {v6, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-object/from16 v1, p18

    iput-object v0, v1, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v0, p19

    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsShell;->udfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-void
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsView;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public final hideUdfpsOverlay()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    const/4 v1, 0x0

    const-string v2, "UdfpsController"

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz v3, :cond_0

    iget-wide v4, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v6, v3, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iput-object v1, v3, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    iget-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideUdfpsOverlay | removing window: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v0, "hideUdfpsOverlay | the overlay is already hidden"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->disable()V

    return-void
.end method

.method public final isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTouchTranslation()Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    const/4 p0, 0x0

    invoke-direct {v0, p0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    iget p4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, p4

    iget-object p4, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p4, v0

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    div-float/2addr v5, v4

    iget v0, p1, Lcom/android/systemui/biometrics/UdfpsView;->sensorTouchAreaCoefficient:F

    mul-float/2addr v3, v0

    sub-float v4, p0, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    add-float/2addr v3, p0

    cmpg-float p0, p2, v3

    if-gez p0, :cond_3

    mul-float/2addr v5, v0

    sub-float p0, p4, v5

    cmpl-float p0, p3, p0

    if-lez p0, :cond_3

    add-float/2addr v5, p4

    cmpg-float p0, p3, v5

    if-gez p0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez p1, :cond_5

    move-object p4, v0

    goto :goto_3

    :cond_5
    iget-object p4, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    :goto_3
    if-nez p4, :cond_6

    goto :goto_6

    :cond_6
    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    return v1

    :cond_9
    :goto_6
    return v2
.end method

.method public final onCancelUdfps()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodTimeoutAction:Ljava/lang/Runnable;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    return-void
.end method

.method public final onFingerDown(JIIFF)V
    .locals 15

    move-object v8, p0

    move-wide/from16 v9, p1

    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    const-string v1, "UdfpsController"

    if-nez v0, :cond_0

    const-string v0, "Null request in onFingerDown"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v2, v9

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v11

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v12

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched fingerDown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v2, v2, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-boolean v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    if-ne v1, v12, :cond_4

    move v1, v12

    goto :goto_2

    :cond_4
    move v1, v11

    :goto_2
    if-nez v1, :cond_5

    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Z)V

    :cond_5
    iput-boolean v12, v8, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateTouchProvider:Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;

    if-eqz v0, :cond_6

    iget-object v13, v8, Lcom/android/systemui/biometrics/UdfpsController;->mBiometricExecutor:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController;JIIFF)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, v8, Lcom/android/systemui/biometrics/UdfpsController;->mSensorId:I

    move-wide/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerDown(JIIIFF)V

    :goto_3
    const-string v0, "UdfpsController.e2e.onPointerDown"

    invoke-static {v0, v11}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v9, v10}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController;J)V

    iput-boolean v12, v0, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested:Z

    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onIlluminationStarting()V

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getView()Lcom/android/systemui/biometrics/UdfpsAnimationView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->postInvalidate()V

    :goto_4
    iget-object v2, v0, Lcom/android/systemui/biometrics/UdfpsView;->hbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v3, v0, Lcom/android/systemui/biometrics/UdfpsView;->halControlsIllumination:Z

    new-instance v4, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;

    invoke-direct {v4, v1, v0}, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;-><init>(Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;Lcom/android/systemui/biometrics/UdfpsView;)V

    invoke-interface {v2, v4, v3}, Lcom/android/systemui/biometrics/UdfpsHbmProvider;->enableHbm(Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;Z)V

    :cond_9
    :goto_5
    iget-object v0, v8, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/biometrics/UdfpsController$Callback;->onFingerDown()V

    goto :goto_6

    :cond_a
    return-void
.end method

.method public final onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateTouchProvider:Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mBiometricExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsController;->mSensorId:I

    invoke-virtual {v1, p1, p2, v2}, Landroid/hardware/fingerprint/FingerprintManager;->onPointerUp(JI)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/UdfpsController$Callback;

    invoke-interface {p2}, Lcom/android/systemui/biometrics/UdfpsController$Callback;->onFingerUp()V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iget-boolean p0, p3, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested:Z

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    :cond_2
    return-void
.end method

.method public onTouch(JLandroid/view/MotionEvent;Z)Z
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v1, p1

    move-object/from16 v0, p3

    move/from16 v3, p4

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    const/4 v8, 0x0

    const-string v9, "UdfpsController"

    if-nez v4, :cond_0

    const-string v0, "ignoring onTouch with null overlay"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget-wide v5, v4, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    cmp-long v5, v5, v1

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v11

    :goto_1
    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring stale touch event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget-wide v1, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    iget-object v4, v4, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    iget-boolean v5, v4, Lcom/android/systemui/biometrics/UdfpsView;->isIlluminationRequested:Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v12, -0x1

    if-eq v6, v11, :cond_18

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v6, v15, :cond_6

    if-eq v6, v13, :cond_18

    if-eq v6, v14, :cond_4

    const/4 v10, 0x7

    if-eq v6, v10, :cond_6

    const/16 v5, 0x9

    if-eq v6, v5, :cond_1a

    const/16 v0, 0xa

    if-eq v6, v0, :cond_18

    goto/16 :goto_d

    :cond_4
    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onTouchOutsideView()V

    :goto_2
    return v11

    :cond_6
    const-string v6, "UdfpsController.onTouch.ACTION_MOVE"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v6, v7, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    if-ne v6, v12, :cond_7

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    if-ne v6, v10, :cond_17

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {v7, v4, v10, v12, v3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result v10

    if-nez v3, :cond_8

    if-eqz v10, :cond_c

    :cond_8
    iget-object v3, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    iget-object v3, v3, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    :goto_4
    instance-of v3, v3, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-eqz v3, :cond_a

    iget-object v3, v7, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    if-nez v3, :cond_a

    move v3, v11

    goto :goto_5

    :cond_a
    move v3, v8

    :goto_5
    if-eqz v3, :cond_c

    const-string/jumbo v0, "onTouch | dismiss keyguard ACTION_MOVE"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    :cond_b
    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated()V

    iput-boolean v11, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    goto/16 :goto_d

    :cond_c
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v3, v12, v15}, Landroid/graphics/Point;-><init>(II)V

    iget-object v12, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget v12, v12, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->rotation:I

    if-eq v12, v11, :cond_d

    if-ne v12, v13, :cond_12

    :cond_d
    invoke-static {v12, v8}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v12

    iget-object v15, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget v8, v15, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->rotation:I

    if-eq v8, v11, :cond_f

    if-ne v8, v13, :cond_e

    goto :goto_6

    :cond_e
    iget v14, v15, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->naturalDisplayWidth:I

    goto :goto_7

    :cond_f
    :goto_6
    iget v14, v15, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->naturalDisplayHeight:I

    :goto_7
    if-eq v8, v11, :cond_11

    if-ne v8, v13, :cond_10

    goto :goto_8

    :cond_10
    iget v8, v15, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->naturalDisplayHeight:I

    goto :goto_9

    :cond_11
    :goto_8
    iget v8, v15, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->naturalDisplayWidth:I

    :goto_9
    invoke-static {v3, v12, v14, v8}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    :cond_12
    iget-object v8, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget v8, v8, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->scaleFactor:F

    iget v12, v3, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    div-float/2addr v12, v8

    float-to-int v12, v12

    iput v12, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    div-float/2addr v12, v8

    float-to-int v8, v12

    iput v8, v3, Landroid/graphics/Point;->y:I

    if-eqz v10, :cond_16

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_13
    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, v7, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-double v14, v10

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move-object v10, v9

    float-to-double v8, v4

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v9

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v0

    const v6, 0x443b8000    # 750.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_14

    const/4 v6, 0x1

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    :goto_a
    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v11, v13

    const-string v4, "minor: %.1f, major: %.1f, v: %.1f, exceedsVelocityThreshold: %b"

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v7, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    sub-long/2addr v12, v14

    if-nez v5, :cond_15

    iget-boolean v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    if-nez v4, :cond_15

    if-nez v6, :cond_15

    iget-object v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget v4, v4, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->scaleFactor:F

    div-float v5, v9, v4

    div-float v6, v0, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIIFF)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouch | finger down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    const/4 v8, 0x1

    goto :goto_c

    :cond_15
    const-wide/16 v0, 0x32

    cmp-long v0, v12, v0

    if-ltz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouch | finger move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mTouchLogTime:J

    goto :goto_b

    :cond_16
    move-object v10, v9

    const-string/jumbo v0, "onTouch | finger outside"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v1, v2, v4}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v7, v3}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    :goto_b
    const/4 v8, 0x0

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_11

    :cond_18
    move-object v10, v9

    const-string v0, "UdfpsController.onTouch.ACTION_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput v12, v7, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v5, 0x0

    iput-object v5, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_19
    const-string/jumbo v0, "onTouch | finger up"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    invoke-virtual {v7, v1, v2, v4}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerUp(JLcom/android/systemui/biometrics/UdfpsView;)V

    iget-object v0, v7, Lcom/android/systemui/biometrics/UdfpsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_d
    const/4 v8, 0x0

    goto/16 :goto_11

    :cond_1a
    move-object v10, v9

    const/4 v5, 0x0

    const-string v1, "UdfpsController.onTouch.ACTION_DOWN"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_1b
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v7, v4, v1, v2, v3}, Lcom/android/systemui/biometrics/UdfpsController;->isWithinSensorArea(Lcom/android/systemui/biometrics/UdfpsView;FFZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v2, "UdfpsController.e2e.onPointerDown"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    const-string/jumbo v2, "onTouch | action down"

    invoke-static {v10, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v7, Lcom/android/systemui/biometrics/UdfpsController;->mActivePointerId:I

    iget-object v2, v7, Lcom/android/systemui/biometrics/UdfpsController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v4, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAcquiredReceived:Z

    const/4 v0, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    move v0, v4

    :goto_f
    if-nez v1, :cond_1d

    if-eqz v3, :cond_21

    :cond_1d
    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    if-nez v1, :cond_1e

    move-object v1, v5

    goto :goto_10

    :cond_1e
    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    :goto_10
    instance-of v1, v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-eqz v1, :cond_1f

    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    if-nez v1, :cond_1f

    const/4 v4, 0x1

    :cond_1f
    if-eqz v4, :cond_21

    const-string/jumbo v1, "onTouch | dismiss keyguard ACTION_DOWN"

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    if-nez v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    :cond_20
    iget-object v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated()V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    :cond_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move v8, v0

    :goto_11
    return v8
.end method

.method public playStartHaptic()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/biometrics/UdfpsController;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    sget-object v6, Lcom/android/systemui/biometrics/UdfpsController;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const-string/jumbo v5, "udfps-onStart-click"

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_0
    return-void
.end method

.method public final showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    iget v0, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    const/4 v1, 0x4

    const-string v2, "UdfpsController"

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Attempting to showUdfpsOverlay when fingerprint detection isn\'t running on keyguard. Skip show."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget-object v3, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    const-string v4, "UdfpsControllerOverlay"

    const-string/jumbo v5, "showUdfpsOverlay | the overlay is already showing"

    const/4 v6, 0x0

    if-nez v3, :cond_7

    iput-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    const/4 v3, 0x1

    :try_start_0
    iget-object v7, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0e02c0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    check-cast v7, Lcom/android/systemui/biometrics/UdfpsView;

    iput-object v1, v7, Lcom/android/systemui/biometrics/UdfpsView;->overlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    iget-boolean v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->halControlsIllumination:Z

    iput-boolean v1, v7, Lcom/android/systemui/biometrics/UdfpsView;->halControlsIllumination:Z

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->hbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    iput-object v1, v7, Lcom/android/systemui/biometrics/UdfpsView;->hbmProvider:Lcom/android/systemui/biometrics/UdfpsHbmProvider;

    invoke-virtual {p1, v7, p0}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflateUdfpsAnimation(Lcom/android/systemui/biometrics/UdfpsView;Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iput-object v1, v7, Lcom/android/systemui/biometrics/UdfpsView;->animationViewController:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    :cond_1
    iget v8, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    const/4 v9, 0x2

    if-eq v8, v3, :cond_3

    if-eq v8, v9, :cond_3

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    goto :goto_0

    :cond_2
    move v8, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v3

    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_4
    iget-object v8, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v9, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v9, v1}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    invoke-interface {v8, v7, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->touchExplorationEnabled:Z

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    invoke-direct {v1, p1, v7}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;Lcom/android/systemui/biometrics/UdfpsView;)V

    iput-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    iget-object v8, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;->onTouchExplorationStateChanged(Z)V

    :goto_2
    iput-object v7, p1, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayView:Lcom/android/systemui/biometrics/UdfpsView;

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.android.systemui.biometrics.UdfpsView"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string/jumbo v1, "showUdfpsOverlay | failed to add window"

    invoke-static {v4, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    :goto_3
    if-eqz v3, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showUdfpsOverlay | adding window reason="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOnFingerDown:Z

    iput-boolean v6, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAttemptedToDismissKeyguard:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    goto :goto_4

    :cond_8
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
