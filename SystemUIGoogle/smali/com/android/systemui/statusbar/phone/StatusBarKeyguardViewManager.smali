.class public Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/keyguard/KeyguardViewController;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;,
        Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;
    }
.end annotation


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field protected mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private mDismissActionWillAnimateOnKeyguard:Z

.field private final mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

.field private final mFaceAuthScreenBrightnessController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstUpdate:Z

.field private mGesturalNav:Z

.field private mGlobalActionsVisible:Z

.field private mIsDocked:Z

.field private final mKeyguardBouncerFactory:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;

.field private mKeyguardGoneCancelAction:Ljava/lang/Runnable;

.field private mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

.field private final mKeyguardMessageAreaFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastBiometricMode:I

.field private mLastBouncerDismissible:Z

.field private mLastBouncerIsOrWillBeShowing:Z

.field private mLastBouncerShowing:Z

.field private mLastDozing:Z

.field private mLastGesturalNav:Z

.field private mLastGlobalActionsVisible:Z

.field private mLastIsDocked:Z

.field protected mLastOccluded:Z

.field private mLastPulsing:Z

.field protected mLastRemoteInputActive:Z

.field protected mLastShowing:Z

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private mNotificationContainer:Landroid/view/View;

.field private mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field protected mOccluded:Z

.field private mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

.field private mPulsing:Z

.field private mQsExpanded:Z

.field protected mRemoteInputActive:Z

.field protected mShowing:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static synthetic $r8$lambda$Ck6RpPvpyZoDBwqW39ub7mIjSZw(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$wakeAndUnlockDejank$6(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDTyclLxf9FhvM3xjT6lDH_iDQo(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$onStartedGoingToSleep$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ScsmqB6z5xz1Dh_hPdE_Tr5V8WU(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$onKeyguardFadedAway$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sde4G-TzvyuwlO0RfXqrYfFr9QU(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$registerStatusBar$0(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_B3-SeqqSnSJViVpXhQPfPNt7o(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$onStartedWakingUp$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kSDIQl5e--oIIft4zkKC1p7C_vk(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$hide$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$vCVgWX8oiFlqXy9Ph9xNb4_swnA(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->lambda$hide$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardBouncerFactory:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/dock/DockManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x140

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isWakeAndUnlocking()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$hide$3()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardFadedAway()V

    return-void
.end method

.method private synthetic lambda$hide$4()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    return-void
.end method

.method private synthetic lambda$onKeyguardFadedAway$5()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardFadingAway(Z)V

    return-void
.end method

.method private static synthetic lambda$onStartedGoingToSleep$2(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x7d

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$onStartedWakingUp$1(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x7d

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$registerStatusBar$0(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V
    .locals 1

    new-instance v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->attach(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$wakeAndUnlockDejank$6(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method private needsBypassFading()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private registerListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockEventListener:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    :cond_0
    return-void
.end method

.method private setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    :cond_2
    return-void
.end method

.method private updateAlternateAuthShowing(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setAltBouncerShowing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setAltBouncerShowing(Z)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    :cond_1
    return-void
.end method

.method private wakeAndUnlockDejank()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getBiometricType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/hardware/biometrics/BiometricSourceType;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blockPanelExpansionFromCurrentTouch()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->blockExpansionForCurrentTouch()V

    return-void
.end method

.method public bouncerIsOrWillBeShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->getShowingSoon()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bouncerNeedsScrimming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->willDismissWithAction()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFullScreenUserSwitcherState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public cancelPendingWakeupAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public cancelPostAuthActions()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public dismissAndCollapse()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    return-void
.end method

.method public dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->willRunAnimationOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->showAlternateAuthBouncer()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateAuthShowing(Z)V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public dispatchBackKeyEventPreIme()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchBackKeyEventPreIme()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "StatusBarKeyguardViewManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOccluded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRemoteInputActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAfterKeyguardGoneRunnables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingWakeupAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz v0, :cond_1

    const-string v0, "AltAuthInterceptor: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-object p0
.end method

.method protected getLastNavBarVisible()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-nez v0, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public hide(JJ)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p3

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x30

    add-long v6, p1, v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v8

    const/4 v15, 0x1

    if-nez v8, :cond_9

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFlingingToDismissKeyguard()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move/from16 v16, v15

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result v17

    if-eqz v17, :cond_3

    const-wide/16 v2, 0x43

    :goto_2
    move-wide v11, v4

    goto :goto_3

    :cond_3
    if-eqz v16, :cond_4

    const-wide/16 v2, 0xf0

    goto :goto_2

    :cond_4
    move-wide v11, v6

    :goto_3
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-wide/from16 v9, p1

    move-wide v13, v2

    move v4, v15

    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardFadingAway(JJJZ)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startKeyguardFadingAway()V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    if-eqz v16, :cond_6

    if-eqz v17, :cond_5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardWhilePulsing()V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_6

    :cond_6
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardFadingAway(Z)V

    if-eqz v17, :cond_7

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    :goto_5
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->wakeAndUnlockDejank()V

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardShowing(Z)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    goto :goto_8

    :cond_9
    :goto_7
    move v4, v15

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFlingingToDismissKeyguard()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Z)V

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_8
    const/16 v0, 0x3e

    invoke-static {v0, v4}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method

.method hideBouncer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPostAuthActions()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->hide(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isBouncerShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isGoingToNotificationShade()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p0

    return p0
.end method

.method protected isNavBarVisible()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-nez v1, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    return v2
.end method

.method public isOccluded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpanded:Z

    return p0
.end method

.method public isSecure()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return p0
.end method

.method public isShowingAlternateAuth()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->isShowingAlternateAuthBouncer()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingAlternateAuthOrAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->isShowingAlternateAuthBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockWithWallpaper()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->isShowingWallpaper()Z

    move-result p0

    return p0
.end method

.method public keyguardGoingAway()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->keyguardGoingAway()V

    return-void
.end method

.method public launchPendingWakeupAction()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->notifyKeyguardAuthenticated(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuthOrAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    :cond_0
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->endAffordanceLaunch()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setDozing(Z)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    return-void
.end method

.method public onKeyguardFadedAway()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->finishKeyguardFadingAway()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->finishKeyguardFadingAway()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_2
    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz p2, :cond_4

    cmpl-float p1, p1, v2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const-string p2, "BOUNCER_VISIBLE"

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->forEachView(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda6;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->forEachView(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isScrimmed()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public readyForKeyguardDone()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardBouncerFactory:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-virtual {p1, p2, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;->create(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->create(Lcom/android/keyguard/KeyguardMessageArea;)Lcom/android/keyguard/KeyguardMessageAreaController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFaceAuthScreenBrightnessController:Ljava/util/Optional;

    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->registerListeners()V

    return-void
.end method

.method public removeAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    return-void
.end method

.method public requestFace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    return-void
.end method

.method public requestFp(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFingerprintAuthOnOccludingApp(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->requestUdfps(ZI)V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetViews(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardReset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_3
    return-void
.end method

.method public resetAlternateAuth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->hideAlternateAuthBouncer()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateAuthShowing(Z)V

    return-void
.end method

.method public setAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    return-void
.end method

.method public setGlobalActionsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public setKeyguardGoingAwayState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardNeedsInput(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setOccluded(Z)V

    const/16 v0, 0x3e

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardOccluded(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_5
    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateKeyguardUnoccluding()V

    :cond_6
    return-void
.end method

.method public setPulsing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpanded:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->setQsExpanded(Z)V

    :cond_0
    return-void
.end method

.method protected shouldDestroyViewOnReset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result p0

    return p0
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->shouldDismissOnMenuPressed()Z

    move-result p0

    return p0
.end method

.method public shouldSubtleWindowAnimationsForUnlock()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->needsBypassFading()Z

    move-result p0

    return p0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setKeyguardShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyKeyguardState(ZZ)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    const/16 p0, 0x3e

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method

.method public showBouncer(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected showBouncerOrKeyguard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDestroyViewOnReset()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->prepare()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public showGenericBouncer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;->showAlternateAuthBouncer()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateAlternateAuthShowing(Z)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBouncerPreHideAnimation()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->blockExpansionForCurrentTouch()V

    return-void
.end method

.method public updateKeyguardPosition(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateKeyguardPosition(F)V

    :cond_0
    return-void
.end method

.method protected updateNavigationBarVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateResources()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateResources()V

    :cond_0
    return-void
.end method

.method protected updateStates()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const/4 v8, 0x0

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v6

    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v6

    :goto_3
    if-ne v9, v10, :cond_5

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_8

    :cond_5
    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v10, 0x400000

    or-int/2addr v0, v10

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v10, -0x400001

    and-int/2addr v0, v10

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v9

    if-ne v0, v9, :cond_9

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_a

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateNavigationBarVisibility(Z)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v3, v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setBouncerShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setBouncerShowing(Z)V

    :cond_c
    if-eqz v1, :cond_d

    if-nez v2, :cond_d

    move v0, v6

    goto :goto_6

    :cond_d
    move v0, v8

    :goto_6
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_e

    move v9, v6

    goto :goto_7

    :cond_e
    move v9, v8

    :goto_7
    if-ne v0, v9, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    goto :goto_8

    :cond_10
    move v6, v8

    :goto_8
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onKeyguardVisibilityChanged(Z)V

    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerIsOrWillBeShowing:Z

    if-ne v4, v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    :cond_13
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerIsOrWillBeShowing:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastDozing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastPulsing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastBiometricMode:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastGesturalNav:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mIsDocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mLastIsDocked:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onKeyguardViewManagerStatesUpdated()V

    return-void
.end method
