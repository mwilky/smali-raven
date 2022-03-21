.class public Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "StatusBarGoogle.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mAnimStartTime:J

.field private final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

.field private mChargingAnimShown:Z

.field private final mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

.field private mNotifIconCenteringController:Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;

.field private mReceivingBatteryLevel:I

.field private mReverseChargingAnimShown:Z

.field private mReverseChargingViewControllerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field private mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mVoiceReplyClient:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;


# direct methods
.method public static synthetic $r8$lambda$I7a-C4Yxdn6PE-0L65BP_mBTV0M(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->lambda$start$0(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "StatusBarGoogle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;Ljava/util/Optional;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/google/android/systemui/LiveWallpaperScrimController;Lcom/android/systemui/statusbar/phone/KeyguardLiftController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Factory;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouter;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/animation/ActivityLaunchAnimator;)V
    .locals 101
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/smartspace/SmartSpaceController;",
            "Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            "Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/statusbar/connectivity/NetworkController;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/google/android/systemui/LiveWallpaperScrimController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardLiftController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/volume/VolumeComponent;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;",
            "Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Factory;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/systemui/InitController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            "Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;",
            "Lcom/android/systemui/util/WallpaperController;",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            "Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy<",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;",
            ">;>;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/concurrency/MessageRouter;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p84

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    move-object/from16 v15, p18

    move-object/from16 v16, p19

    move-object/from16 v17, p20

    move-object/from16 v18, p21

    move-object/from16 v19, p23

    move-object/from16 v20, p24

    move-object/from16 v21, p25

    move-object/from16 v22, p26

    move-object/from16 v23, p27

    move-object/from16 v24, p28

    move-object/from16 v25, p29

    move-object/from16 v26, p30

    move-object/from16 v27, p31

    move-object/from16 v28, p32

    move-object/from16 v29, p33

    move-object/from16 v30, p34

    move-object/from16 v31, p35

    move-object/from16 v32, p36

    move-object/from16 v33, p37

    move-object/from16 v34, p38

    move-object/from16 v35, p39

    move-object/from16 v36, p40

    move-object/from16 v37, p41

    move-object/from16 v38, p42

    move-object/from16 v39, p43

    move-object/from16 v40, p45

    move-object/from16 v41, p46

    move-object/from16 v42, p47

    move-object/from16 v43, p48

    move-object/from16 v44, p49

    move-object/from16 v45, p50

    move-object/from16 v46, p51

    move-object/from16 v47, p52

    move-object/from16 v48, p53

    move-object/from16 v49, p54

    move-object/from16 v50, p55

    move-object/from16 v51, p57

    move-object/from16 v52, p58

    move-object/from16 v53, p59

    move-object/from16 v79, p60

    move-object/from16 v54, p61

    move-object/from16 v55, p62

    move-object/from16 v56, p63

    move-object/from16 v57, p64

    move-object/from16 v58, p65

    move-object/from16 v59, p66

    move-object/from16 v60, p67

    move-object/from16 v61, p68

    move-object/from16 v62, p69

    move-object/from16 v63, p70

    move-object/from16 v64, p71

    move-object/from16 v65, p72

    move-object/from16 v66, p73

    move-object/from16 v67, p74

    move-object/from16 v68, p75

    move-object/from16 v69, p76

    move-object/from16 v70, p77

    move-object/from16 v71, p78

    move-object/from16 v72, p79

    move-object/from16 v73, p80

    move-object/from16 v74, p81

    move-object/from16 v75, p82

    move-object/from16 v76, p83

    move-object/from16 v77, p84

    move-object/from16 v78, p86

    move-object/from16 v80, p87

    move-object/from16 v81, p88

    move-object/from16 v82, p89

    move-object/from16 v83, p91

    move-object/from16 v84, p92

    move-object/from16 v85, p93

    move-object/from16 v86, p94

    move-object/from16 v87, p95

    move-object/from16 v88, p96

    move-object/from16 v89, p97

    move-object/from16 v90, p98

    move-object/from16 v91, p100

    move-object/from16 v92, p101

    move-object/from16 v93, p102

    move-object/from16 v94, p103

    move-object/from16 v95, p104

    move-object/from16 v96, p105

    move-object/from16 v97, p106

    move-object/from16 v98, p107

    move-object/from16 v99, p108

    move-object/from16 v100, p109

    invoke-direct/range {v0 .. v100}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/interruption/BypassHeadsUpNotifier;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Factory;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/LightsOutNotifController;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$Builder;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouter;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/util/Optional;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/animation/ActivityLaunchAnimator;)V

    new-instance v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)V

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    move-object/from16 v0, p99

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mVoiceReplyClient:Ldagger/Lazy;

    move-object/from16 v0, p84

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    move-object/from16 v0, p43

    iput-object v0, v1, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReceivingBatteryLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReceivingBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mAnimStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingAnimShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;IIJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->showChargingAnimation(IIJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object p0
.end method

.method private static synthetic lambda$start$0(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;)V
    .locals 0

    invoke-interface {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;->startClient()Lcom/android/systemui/statusbar/notification/people/Subscription;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mNotifIconCenteringController:Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLockscreenUser(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setLockscreenUser(I)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mSmartSpaceController:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    return-void
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarGoogle"

    const-string v1, "showWirelessChargingAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mChargingAnimShown:Z

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showWirelessChargingAnimation(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mAnimStartTime:J

    return-void
.end method

.method public start()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    invoke-virtual {v0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateSmartSpaceVisibilitySettings()V

    const-class v0, Lcom/android/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->dreamliner_gear:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setDreamlinerGear(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v2, Lcom/android/systemui/R$id;->photo_preview:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setPhotoPreview(Landroid/widget/FrameLayout;)V

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mKeyguardIndicationController:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->setIndicationController(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->registerDockAlignInfo()V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mReverseChargingViewControllerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingViewController;->initialize()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mWallpaperNotifier:Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/phone/WallpaperNotifier;->attach()V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->mVoiceReplyClient:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    sget-object v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
